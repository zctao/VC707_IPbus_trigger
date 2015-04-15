`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 10:57:12 AM
// Design Name: 
// Module Name: verilog_trigger_top
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


module verilog_trigger_top(
    input wire clk200,
    input wire reset,
    // programming interface
    // Note: address and data bus sizes are hard coded in "ipbus_package.vhd"
    // inputs
    input wire ipb_clk,                    // programming clock
    input wire ipb_strobe,                // this ipb space is selected for an I/O operation 
    input wire [31:0] ipb_addr,        // slave address, memory or register
    input wire ipb_write,                // this is a write operation
    input wire [31:0] ipb_wdata,        // data to write for write operations
    // outputs
    output wire [31:0] ipb_rdata,    // data returned for read operations
    output wire ipb_ack,                // 'write' data has been stored, 'read' data is ready
    output wire ipb_err,                    // '1' if error, '0' if OK?
    input wire en_proc_switch ,
    output wire [6:0] lcd,
    
    // links
    output wire txn_pphi,
    output wire txp_pphi,
    input  wire rxn_pphi,
    input  wire rxp_pphi,
    output wire txn_mphi,
    output wire txp_mphi,
    input  wire rxn_mphi,
    input  wire rxp_mphi,
    //gt reference clock
    input wire gt_refclk_p,
    input wire gt_refclk_n,
    //initial clock
    input wire init_clk,
    //tvalid signal output for timing measurements
    output wire tx_tvalid_out,
    output wire rx_tvalid_out  
    );
    
    // Convert the 200 MHz clock to something representing 40 MHz bunch crossing clock,
    // and something representing the faster processing clock, maybe 600 MHz.
    // This is a ratio of 15:1
    // The timing constraint file needs to match
    // 10/24/2014: 'cross_clk' = 10 MHz, 'proc_clk' = 150 MHz
    
     trigger_clock_synth trigger_clock_synth (
        // Clock in ports
        .clk_in1(clk200),           // input clk_in1
        // Clock out ports
        .cross_clk(cross_clk),       // bunch crossing clock
        .proc_clk(proc_clk),        // processing clock
        // Status and control signals
        .reset(reset),              // input reset
        .locked(locked)             // output locked
    );      
    
    // Address decoding to select modules below this level.
    // "ipb_addr[31:30] = 2'b01" have already been used above this point to get here.
    wire tracklet_processing_sel;
    assign tracklet_processing_sel = (ipb_addr[29:28]==2'b01);
    
    wire [31:0] tracklet_processing_io_rd_data;
    wire [31:0] tracklet_processing1_io_rd_data;
    wire [31:0] tracklet_processing2_io_rd_data;
    wire [31:0] tracklet_processing3_io_rd_data;
    wire tracklet_processing_io_rd_ack;
    wire tracklet_processing1_io_rd_ack;
    wire tracklet_processing2_io_rd_ack;
    wire tracklet_processing3_io_rd_ack;
    wire io_sync;
    wire io_rd_en;
    wire io_wr_en;
   
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // create the BX clocks,
    reg [6:0] clk_cnt;      // clock counter that determines how long the BX is
    reg [2:0] BX;           // Bunch Crossing counter
    reg first_clk;
    reg not_first_clk;
   
    reg en_proc;
    reg en_proc_1;
    reg en_proc_2;
    initial begin
        clk_cnt = 7'b0;
        BX = 3'b111;
    end
    
    wire io_sel_en;
    wire en_proc_bufg;
    
    //BUFG enable(.O(en_proc_bufg),.I(en_proc_2)); // Force the enable signal to be a BUFG
    
    assign io_sel_en = (ipb_addr[27:24] == 4'b0101);
    
    always @(posedge ipb_clk) begin
        if(io_wr_en && io_sel_en) 
            en_proc <= ipb_wdata;       // enable comes from IPbus if add == 32'h5500000
        
    end    
    
    always @(posedge proc_clk) begin 
        //en_proc_1 <= en_proc_switch;
        en_proc_1 <= en_proc;
        en_proc_2 <= en_proc_1;         // synchronize enable since it comes from IPbus clock domain
        if(en_proc_2)
        //if(en_proc)
            clk_cnt <= clk_cnt + 1'b1;
        else begin
            clk_cnt <= 7'b0;
            BX <= 3'b111;
        end
        if(clk_cnt == 7'b1) begin
            BX <= BX + 1'b1;
            first_clk <= 1'b1;
            not_first_clk <= 1'b0;
        end
        else begin
            first_clk <= 1'b0;
            not_first_clk <= 1'b1;
        end
    end
    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect each sector
         
    Tracklet_Baseline baseline(
        // clocks and reset
        .reset(reset),                        // active HI
        .clk(proc_clk),                // processing clock at a multiple of the crossing clock
        .en_proc(en_proc_2),
        //.en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(ipb_clk),                    // programming clock
        .io_sel(tracklet_processing_sel),    // this module has been selected for an I/O operation
        .io_sync(io_sync),                // start the I/O operation
        .io_addr(ipb_addr[27:0]),        // slave address, memory or register. Top 4 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(ipb_wdata),    // data to write for write operations
        // outputs
        .io_rd_data(tracklet_processing_io_rd_data),    // data returned for read operations
        .io_rd_ack(tracklet_processing_io_rd_ack),        // 'read' data from this module is ready
        // clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        .lcd(lcd),
        //Links
        .txn_pphi(txn_pphi),
        .txp_pphi(txp_pphi),
        .rxn_pphi(rxn_pphi),
        .rxp_pphi(rxp_pphi),
        .txn_mphi(txn_mphi),
        .txp_mphi(txp_mphi),
        .rxn_mphi(rxn_mphi),
        .rxp_mphi(rxp_mphi),
        //gt reference clock
        .gt_refclk_p(gt_refclk_p),
        .gt_refclk_n(gt_refclk_n),
        //initial clock
        .init_clk(init_clk),
        //tvalid signal output for timing measurement with scope
        .tx_tvalid_out(tx_tvalid_out),
        .rx_tvalid_out(rx_tvalid_out)
        );    
        
//       Tracklet_Layer_Router layer_router(
//        // clocks and reset
//        .reset(reset),                        // active HI
//        .clk(proc_clk),                // processing clock at a multiple of the crossing clock
//        .en_proc(en_proc_2),
//        //.en_proc(en_proc),
//        // programming interface
//        // inputs
//        .io_clk(ipb_clk),                    // programming clock
//        .io_sel(tracklet_processing_sel),    // this module has been selected for an I/O operation
//        .io_sync(io_sync),                // start the I/O operation
//        .io_addr(ipb_addr[27:0]),        // slave address, memory or register. Top 4 bits already consumed.
//        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
//        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
//        .io_wr_data(ipb_wdata),    // data to write for write operations
//        // outputs
//        .io_rd_data(tracklet_processing_io_rd_data),    // data returned for read operations
//        .io_rd_ack(tracklet_processing_io_rd_ack),        // 'read' data from this module is ready
//        // clocks
//        .BX(BX),
//        .first_clk(first_clk),
//        .not_first_clk(not_first_clk)
        
//        );    
        
//     Tracklet_VM_Router vm_router(
//        // clocks and reset
//        .reset(reset),                        // active HI
//        .clk(clk200),                // processing clock at a multiple of the crossing clock
//        .en_proc(en_proc_2),
//        //.en_proc(en_proc),
//        // programming interface
//        // inputs
//        .io_clk(ipb_clk),                    // programming clock
//        .io_sel(tracklet_processing_sel),    // this module has been selected for an I/O operation
//        .io_sync(io_sync),                // start the I/O operation
//        .io_addr(ipb_addr[27:0]),        // slave address, memory or register. Top 4 bits already consumed.
//        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
//        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
//        .io_wr_data(ipb_wdata),    // data to write for write operations
//        // outputs
//        .io_rd_data(tracklet_processing_io_rd_data),    // data returned for read operations
//        .io_rd_ack(tracklet_processing_io_rd_ack),        // 'read' data from this module is ready
//        // clocks
//        .BX(BX),
//        .first_clk(first_clk),
//        .not_first_clk(not_first_clk)
        
//        );    


//    Tracklet_Tracklet_Engine tengine(
//        //clocks and reset
//        .reset(reset),                        // active HI
//        .clk(proc_clk),                // processing clock at a multiple of the crossing clock
//        .en_proc(en_proc_2),
//        //.en_proc(en_proc),
//        // programming interface
//        // inputs
//        .io_clk(ipb_clk),                    // programming clock
//        .io_sel(tracklet_processing_sel),    // this module has been selected for an I/O operation
//        .io_sync(io_sync),                // start the I/O operation
//        .io_addr(ipb_addr[27:0]),        // slave address, memory or register. Top 4 bits already consumed.
//        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
//        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
//        .io_wr_data(ipb_wdata),    // data to write for write operations
//        // outputs
//        .io_rd_data(tracklet_processing_io_rd_data),    // data returned for read operations
//        .io_rd_ack(tracklet_processing_io_rd_ack),        // 'read' data from this module is ready
//        // clocks
//        .BX(BX),
//        .first_clk(first_clk),
//        .not_first_clk(not_first_clk)
//    );
        
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect a state machine to handle the IPbus transactions, wait states and drive 'ipb_ack'
     IPB_IO_interface IPB_IO_interface(
         // inputs
         .clk(ipb_clk),               // IPbus clock
         .res(reset),                // Global reset
         .ipb_strobe(ipb_strobe),    // IPbus strobe
         .ipb_write(ipb_write),     // IPbus write
         .io_rd_ack(io_rd_ack),    // verilog ack
         // outputs
         .io_sync(io_sync),           // An operation is in progress
         .io_rd_en(io_rd_en),            // this is a read operation, enable readback logic
         .io_wr_en(io_wr_en),          // one cycle long write enable
         .ipb_ack(ipb_ack)            // one cycle long ack back to IPbus
     );

    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect a mux to steer the readback data from one of the segments to the ipbus
    reg [31:0] io_rd_data_reg;
    assign ipb_rdata = io_rd_data_reg;
    // Assert 'io_rd_ack' if any modules below this function assert their 'io_rd_ack'.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge ipb_clk) begin
        io_rd_ack_reg <= io_sync & io_rd_en & (tracklet_processing_io_rd_ack);
    end

    always @(posedge ipb_clk) begin
        if (tracklet_processing_io_rd_ack)    io_rd_data_reg <= tracklet_processing_io_rd_data;
    end
    
         
endmodule
