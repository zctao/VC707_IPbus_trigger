`timescale 1ns/1ns

module drp_bridge #(
  parameter DRP_ADDR_WIDTH = 9,                
  parameter DRP_DATA_WIDTH = 16,
  parameter C_S_AXI_ADDR_WIDTH   = 20,              
  parameter C_S_AXI_DATA_WIDTH   = 32 
)(
  input         AXI_aclk,
  input         AXI_aresetn,
  
  input  [31:0] AXI_araddr,
  output reg    AXI_arready,
  input         AXI_arvalid,
  input  [2:0]  AXI_arprot,
  
  input [31:0]  AXI_awaddr,
  output reg    AXI_awready,
  input         AXI_awvalid,
  input  [2:0]  AXI_awprot,
  
  output [1:0]  AXI_bresp,  
  input         AXI_bready,
  output reg    AXI_bvalid,
  
  output reg [31:0] AXI_rdata,
  input         AXI_rready,
  output reg    AXI_rvalid,
  output [1:0]  AXI_rresp,
  
  input  [31:0] AXI_wdata,
  output reg    AXI_wready,
  input         AXI_wvalid,
  input  [3:0]  AXI_wstrb,
  
  //-------------- Dynamic Reconfiguration Port (DRP) --------------
  output reg                        drp_en,
  output reg                        drp_we,
  output reg [DRP_ADDR_WIDTH-1: 0]  drp_addr,
  output reg [DRP_DATA_WIDTH-1: 0]  drp_di,
  input  [DRP_DATA_WIDTH-1: 0]      drp_do,
  input                             drp_rdy  ) ; // drp_bridge
        
localparam dly = 1;
reg read_pending;
wire drp_write_done;
wire drp_read_done; 
//+---------------------------------------------------------------+
//|                            reset                              |
//+---------------------------------------------------------------+
reg AXI_aresetn_r1 ;
reg AXI_aresetn_r2 ;
wire AXI_sreset ;

always @ (posedge AXI_aclk or negedge AXI_aresetn)
begin
 if (AXI_aresetn == 1'b0) begin
  AXI_aresetn_r1                   <= #(dly) 1'd1;
  AXI_aresetn_r2                   <= #(dly) 1'd1;
 end
 else begin
  AXI_aresetn_r1                   <= #(dly) 1'b0;
  AXI_aresetn_r2                   <= #(dly) AXI_aresetn_r1;
 end
end

assign AXI_sreset = AXI_aresetn_r2;                
       
//+-------+-------+-------+-------------+--------+------------+------------------+-------------+-----+
//| 31:28,| 27:24,| 23:20,| 19,18,17,16,|   15   |    14,     | 13, 12, 11,10,9  |     8:2     | 1,0 |
//+-------+-------+-------+-------------+--------+------------+------------------+-------------+-----+
//|       |       |       |             |        |            |                  |   DRP Reg   | x,x |
//+-------+-------+-------+-------------+--------+------------+------------------+-------------+-----+
	
//State Machine Signals:
  localparam idle_state          = 3'b000;
  localparam drp_write_state     = 3'b001;
  localparam drp_write_wait      = 3'b010;
  localparam write_response      = 3'b011;
  localparam drp_read_state      = 3'b100;
  localparam drp_read_wait       = 3'b101;
  reg [2:0] state_wr             = idle_state;
  
//+---------------------------------------------------------------------------+
//|                 Main State Machine                                        |
//+---------------------------------------------------------------------------+
reg [2:0] state_wr_r;
always @ (posedge AXI_aclk)
begin
  if ( AXI_sreset == 1'b1) 
    state_wr_r         <= #(dly) 0;
  else
    state_wr_r         <= #(dly) state_wr;
end

always @(posedge AXI_aclk)
begin
 if ( AXI_sreset == 1'b1) begin
   state_wr <= #(dly) idle_state;
 end
 else begin
   case (state_wr)
     idle_state : begin  //wait for a command to come in
       if ( AXI_awvalid ) //AXI has independant channels; need to handle both
         state_wr <= #(dly) drp_write_state;
       else if( AXI_arvalid )
         state_wr <= #(dly) drp_read_state;
       else
         state_wr <= #(dly) idle_state;
     end
     drp_write_state : begin //writing to DRP
       if ( AXI_wvalid ) 
         state_wr <= #(dly) drp_write_wait;       
     end     
     drp_write_wait : begin //writing to DRP
       if ( drp_write_done )
         state_wr <= #(dly) write_response;
       else
         state_wr <= #(dly) drp_write_wait;       
     end 
     write_response : begin //writing to DRP
       if ( AXI_bvalid && AXI_bready && AXI_arvalid )
         state_wr <= #(dly) drp_read_state;
       else if (AXI_bvalid && AXI_bready && !AXI_arvalid)
         state_wr <= #(dly) idle_state;         
       else 
         state_wr <= #(dly) write_response;
     end           
     drp_read_state : begin //reading from DRP
       state_wr <= #(dly) drp_read_wait;
     end
     drp_read_wait : begin //reading from DRP
       if (drp_read_done)
         state_wr <= #(dly) idle_state;
       else 
         state_wr <= #(dly) drp_read_wait;
     end
   endcase
 end // not AXI_sreset
end // AXI_aclk domain

//+----------------------------------------------------------------------------+
//|                 AXI Outputs                                                |
//+----------------------------------------------------------------------------+

always @ (posedge AXI_aclk or posedge AXI_sreset)
begin
  if (AXI_sreset == 1'b1)
    AXI_arready                  <= #(dly) 1'b0;
  else if (state_wr == drp_read_state) 
    AXI_arready                  <= #(dly) 1'b1;
  else
    AXI_arready                  <= #(dly) 1'b0;
end

always @ (posedge AXI_aclk or posedge AXI_sreset)
begin
  if (AXI_sreset == 1'b1)
    AXI_awready                  <= #(dly) 1'b0;
  else if ((state_wr == drp_write_state) && (state_wr_r == idle_state)) 
    AXI_awready                  <= #(dly) 1'b1;
  else
    AXI_awready                  <= #(dly) 1'b0;
end

always @ (posedge AXI_aclk or posedge AXI_sreset)
begin
  if (AXI_sreset == 1'b1)
    AXI_bvalid                  <= #(dly) 1'b0;
  else if ( state_wr == write_response && !AXI_bready)  
    AXI_bvalid                  <= #(dly) 1'b1;
  else if ((state_wr_r != write_response) && (state_wr == write_response))
    AXI_bvalid                  <= #(dly) 1'b1;
  else
    AXI_bvalid                  <= #(dly) 1'b0;  
end

always @ (posedge AXI_aclk or posedge AXI_sreset) 
begin
  if (AXI_sreset == 1'b1)
    AXI_rvalid                  <= #(dly) 1'b0;
  else if ((state_wr_r == drp_read_wait) && drp_rdy && read_pending) begin    
    AXI_rvalid                  <= #(dly) 1'b1;
  end else if ((state_wr == drp_read_wait) && !AXI_rready && !read_pending)
    AXI_rvalid                  <= #(dly) 1'b1;
  else
    AXI_rvalid                  <= #(dly) 1'b0;
end

always @ (posedge AXI_aclk) 
begin
  if (drp_rdy)
   // AXI_rdata                   <= #(dly) {drp_do[7:0], drp_do[15:8], 16'd0};
    AXI_rdata                   <= #(dly) drp_do;
end

always @ (posedge AXI_aclk )
begin
  if (state_wr == idle_state)
    read_pending                  <= #(dly) 1'b0;
  else if (state_wr == drp_read_state)  
    read_pending                  <= #(dly) 1'b1;
  else if (drp_rdy)
    read_pending                  <= #(dly) 1'b0; 
     
end

always @ (posedge AXI_aclk )
begin
  if (AXI_sreset == 1'b1)
    AXI_wready                  <= #(dly) 1'b0;
  else if ((state_wr == drp_write_state) && AXI_wvalid ) 
    AXI_wready                  <= #(dly) 1'b1;
  else begin
    AXI_wready                  <= #(dly) 1'b0;
 end
end

always @ (posedge AXI_aclk or posedge AXI_sreset)
begin
  if (AXI_sreset == 1'b1) begin
    drp_we                     <= 1'b0;
    drp_en                     <= 1'b0;  
  end else if (AXI_wready && AXI_wvalid && (state_wr == drp_write_wait)) begin  
    //drp_di                     <= #(dly) {AXI_wdata[23:16],AXI_wdata[31:24]};
    drp_di                     <= #(dly) AXI_wdata[DRP_DATA_WIDTH-1:0];
    drp_we                     <= 1'b1;
    drp_en                     <= 1'b1;
  end else if ( state_wr == drp_read_state ) begin
    drp_en                     <= 1'b1;
  end else begin
    drp_we                     <= 1'b0;
    drp_en                     <= 1'b0;
  end  
end

always @ (posedge AXI_aclk )
begin
  if ((state_wr == drp_write_state) && (state_wr_r == idle_state))  
    drp_addr                  <= #(dly) AXI_awaddr[DRP_ADDR_WIDTH+1:2];
  else if (state_wr == drp_read_state) 
    drp_addr                  <= #(dly) AXI_araddr[DRP_ADDR_WIDTH+1:2];  
end

assign drp_write_done = drp_rdy && (state_wr == drp_write_wait);
assign drp_read_done  = AXI_rready && AXI_rvalid && (state_wr == drp_read_wait);

assign AXI_bresp = 2'b00;
assign AXI_rresp = 2'b0;

endmodule
