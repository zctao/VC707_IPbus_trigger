`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2013 07:43:45 AM
// Design Name: 
// Module Name: drp_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module drp_mux (
    input  clk,
    input  reset,
    
    input  pcie_drp_en,
    input  [8:0] pcie_drp_addr,
    input  pcie_drp_we,
    input  [15:0] pcie_drp_di,
    output [15:0] pcie_drp_do,
    output reg pcie_drp_rdy,
    
    input  iscan_drp_en,
    input  [8:0] iscan_drp_addr,
    input  iscan_drp_we,
    input  [15:0] iscan_drp_di,
    output [15:0] iscan_drp_do,
    output reg iscan_drp_rdy,
    
    output gt_drp_en,
    output reg [8:0] gt_drp_addr = 0,
    output gt_drp_we,
    output reg [15:0] gt_drp_di = 0,
    input  [15:0] gt_drp_do,
    input  gt_drp_rdy
   
    
    );
    
    
       localparam RESET         = 4'b0001;
       localparam EYE_FORWARD   = 4'b0010;
       localparam PCIE_FORWARD  = 4'b0100;
       localparam IDLE          = 4'b1000;

    
       reg [3:0] state   = RESET;
       
       wire pcie_drp_rdy_i;
       wire iscan_drp_rdy_i;
       
       reg iscan_req_r;
       reg iscan_req;
       reg pcie_req_r;
       reg pcie_req;

       reg iscan_wr_req_r = 0;
       reg iscan_wr_req = 0;
       reg pcie_wr_req_r = 0;
       reg pcie_wr_req = 0;
       
       reg [15:0] drp_di_hold = 0;
       reg [8:0] drp_addr_hold = 0;


       always @(posedge clk) begin
          iscan_req_r <= iscan_req;
          pcie_req_r  <= pcie_req;
          iscan_wr_req_r <= iscan_wr_req;
          pcie_wr_req_r  <= pcie_wr_req;
          pcie_drp_rdy <= pcie_drp_rdy_i;
          iscan_drp_rdy <= iscan_drp_rdy_i;
       end
 
       assign iscan_req_falling = (iscan_req_r && !iscan_req);
       assign pcie_req_falling =  (pcie_req_r && !pcie_req);
       assign iscan_wr_req_falling =  (iscan_wr_req_r && !iscan_wr_req);
       assign pcie_wr_req_falling  =  (pcie_wr_req_r && !pcie_wr_req);
    
       always @(posedge clk)
          if (reset) begin
             state <= RESET;
             iscan_wr_req <= 0;
             pcie_wr_req <= 0;
             gt_drp_addr <= 0;
             drp_di_hold <= 0;
             drp_addr_hold <= 0;
          end else
             case (state)
                RESET : begin
                   state <= IDLE;
                end
                IDLE : begin
                   if (pcie_drp_en && iscan_drp_en) begin
                      state <= PCIE_FORWARD;
                      pcie_req <= 1'b1;
                      iscan_req <= 1'b1;
                      gt_drp_addr <= pcie_drp_addr;
                      drp_addr_hold <= iscan_drp_addr;
                      if (pcie_drp_we) begin
                         pcie_wr_req <= 1'b1;
                         gt_drp_di <= pcie_drp_di;
                      end
                      if (iscan_drp_we) begin
                         iscan_wr_req <= 1'b1;
                         drp_di_hold <= iscan_drp_di;
                      end
                   end else if (pcie_drp_en && !iscan_drp_en) begin
                      state <= PCIE_FORWARD;
                      pcie_req <= 1'b1;
                      iscan_req <= 1'b0;
                      gt_drp_addr <= pcie_drp_addr;
                      if (pcie_drp_we) begin
                         pcie_wr_req <= 1'b1;
                         gt_drp_di <= pcie_drp_di;
                      end                       
                   end else if (!pcie_drp_en && iscan_drp_en) begin
                      state <= EYE_FORWARD;
                      pcie_req <= 1'b0;
                      iscan_req <= 1'b1;
                      gt_drp_addr <= iscan_drp_addr;
                      if (iscan_drp_we) begin
                         iscan_wr_req <= 1'b1;
                         gt_drp_di <= iscan_drp_di;
                      end 
                   end else begin
                      state <= IDLE;
                      iscan_req <= 1'b0;
                      pcie_req <= 1'b0;
                   end
                end
                EYE_FORWARD : begin
                   iscan_req <= 1'b0;
                   iscan_wr_req <= 1'b0;
                   
                   if (pcie_drp_en) begin
                     pcie_req <= 1'b1;
                   end
                   
                   if (pcie_drp_we) begin
                     pcie_wr_req <= 1'b1;
                     drp_di_hold  <= pcie_drp_di;
                     drp_addr_hold <= pcie_drp_addr;
                   end
                     
                   if (gt_drp_rdy && !pcie_req) begin
                      state <= IDLE;
                   end else if (gt_drp_rdy && pcie_req) begin
                      state <= PCIE_FORWARD;
                      gt_drp_di <= drp_di_hold;
                      gt_drp_addr <= drp_addr_hold;
                   end else begin
                      state <= EYE_FORWARD;
                   end 
                end
                PCIE_FORWARD : begin
                   pcie_req <= 1'b0;
                   pcie_wr_req <= 1'b0;
                   
                   if (iscan_drp_en) begin
                      iscan_req <= 1'b1;
                   end
                      
                   if (iscan_drp_we) begin
                      iscan_wr_req <= 1'b1;
                      drp_di_hold  <= iscan_drp_di;
                      drp_addr_hold <= iscan_drp_addr;
                   end    
                   
                   if (gt_drp_rdy && !iscan_req) begin
                      state <= IDLE;
                   end else if (gt_drp_rdy && iscan_req) begin
                      state <= EYE_FORWARD;
                      gt_drp_di <= drp_di_hold;
                      gt_drp_addr <= drp_addr_hold;
                   end else begin 
                      state <= PCIE_FORWARD;
                   end                   
                end
                default : begin  // Fault Recovery
                   state <= RESET;
                end   
             endcase
    
       assign pcie_drp_do   = gt_drp_do;
       assign iscan_drp_do  = gt_drp_do;
              
       assign pcie_drp_rdy_i  = (state == PCIE_FORWARD) ? gt_drp_rdy : 1'b0;
       
       assign iscan_drp_rdy_i = (state == EYE_FORWARD) ? gt_drp_rdy : 1'b0;
       
       assign gt_drp_en     =  iscan_req_falling || pcie_req_falling; 
       assign gt_drp_we     =  iscan_wr_req_falling || pcie_wr_req_falling;                                  
    
endmodule
