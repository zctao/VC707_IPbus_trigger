`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2015 10:31:33 PM
// Design Name: 
// Module Name: Aurora_test_vc709
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


module Aurora_test(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [23:0] io_addr,        // slave address, memory or register. Top 16 bits already consumed.
    input wire io_rd_en,                // this is a read operation
    input wire io_wr_en,                // this is a write operation
    input wire [31:0] io_wr_data,    // data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,    // data returned for read operations
    output wire io_rd_ack,                // 'read' data from this module is ready
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk,
    
    // links
    output wire txn_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    output wire txp_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    input  wire rxn_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    input  wire rxp_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    output wire txn_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    output wire txp_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    input  wire rxn_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    input  wire rxp_mphi,          //Links to neighbouring sector board with smaller phi (-phi)    
    //clocks
    input wire gt_refclk_p,
    input wire gt_refclk_n,
    input wire init_clk,
    //signal output for timing measurements with scope
    output wire tx_tvalid_out,
    output wire rx_tvalid_out
    
    );
    
    wire [31:0] io_rd_data_pphi, io_rd_data_mphi;
    wire io_rd_ack_pphi, io_rd_ack_mphi;
    
    //timer wires and regs
    wire tx_tvalid_pphi, tx_tvalid_mphi;
    wire rx_tvalid_pphi, rx_tvalid_mphi;
    //wire aurora_user_clk_pphi, aurora_user_clk_mphi;
    wire timer_p2m_sel, timer_m2p_sel;
    wire [31:0] timer_out_p2m;
    wire [31:0] timer_out_m2p;
    reg [31:0] timer_out_p2m_reg;
    reg [31:0] timer_out_m2p_reg;
    
    //Access I/O Block in each aurora module
    wire Aurora_pphi_sel, Aurora_mphi_sel;
    //link reset
    wire link_rst_sel, link_en_sel;
    reg  link_rst;
    reg [1:0] link_en;

    //assign tvalid signal output for timing measurement with scope
    assign tx_tvalid_out = tx_tvalid_pphi;
    assign rx_tvalid_out = rx_tvalid_mphi;
    // for timing measurement in the other direction
    //assign tx_tvalid_out = tx_tvalid_mphi;
    //assign rx_tvalid_out = rx_tvalid_pphi;

    //Address assignments
    //top eight bits [31:24] already consumed. 5a for Aurora test module
    assign Aurora_pphi_sel = io_sel && (io_addr[23:20] == 4'b0000);
    assign Aurora_mphi_sel = io_sel && (io_addr[23:20] == 4'b0001); 
    assign link_rst_sel = io_sel && (io_addr[23:20] == 4'b1000);  
    assign link_en_sel = io_sel && (io_addr[23:20] == 4'b1001);
    assign timer_p2m_sel = io_sel && (io_addr[23:20] == 4'b1010);
    assign timer_m2p_sel = io_sel && (io_addr[23:20] == 4'b1011);
    
    //--- Instance of GT differential buffer ---------//
    IBUFDS_GTE2 IBUFDS_GTE2_CLK1
    (
     .I(gt_refclk_p),
     .IB(gt_refclk_n),
     .CEB(1'b0),
     .O(gt_refclk),
     .ODIV2()
    );
    
    //reset signal
    //wire rst_proc;
    //wire rst_init;
    wire arst_n;            //need to be in sync with the clock used for system side of aurora fifo
    //two stage synchronizer for reset
    Reset_Synchronizer io_clk_reset (
        .CLK(io_clk),
        .RESET_I(link_rst),
        .RESET_O(),
        .RESET_OB(arst_n)
    );
    
    Reset_Synchronizer init_clk_reset (
        .CLK(init_clk),
        .RESET_I(link_rst),
        .RESET_O(rst_init),
        .RESET_OB()
    );
      
    Aurora_Channel_0 LinkProjPhiPlus (
        .clk(clk),
        .reset(reset),
        .en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(io_clk),                    // programming clock
        .io_sel(Aurora_pphi_sel),           // this module has been selected for an I/O operation
        .io_sync(io_sync),                  // start the I/O operation
        .io_addr(io_addr[19:0]),            // Top 12 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation
        .io_wr_en(io_wr_en),                // this is a write operation
        .io_wr_data(io_wr_data),            // data to write for write operations
        // outputs
        .io_rd_data(io_rd_data_pphi),       // data returned for read operations
        .io_rd_ack(io_rd_ack_pphi),         // 'read' data from this module is ready
        //clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
    
        //Links
        //clocks and reset
        .init_clk(init_clk),
        .gt_reset_in(rst_init),
        .gt_refclk(gt_refclk),
        .axis_resetn(arst_n),
        //state machine enable
        .link_en(link_en[0]),
        //serial I/O pins
        .rxp(rxp_pphi), .rxn(rxn_pphi),
        .txp(txp_pphi), .txn(txn_pphi),
        // QPLL Ports
        .gt0_qplllock(1'b1),                 // input
        .gt0_qpllrefclklost(1'b0),           // input
        .gt_qpllclk_quad(1'b0),             // input
        .gt_qpllrefclk_quad(1'b0),          // input
        .gt0_qpllreset(),                    // output
        //timer ports
        .aurora_user_clk_out(aurora_user_clk_pphi),
        .aurora_reset_out(aurora_reset_pphi),
        .local_tx_tvalid_out(tx_tvalid_pphi),
        .local_rx_tvalid_out(rx_tvalid_pphi)
      
//        // counter output ports
//        .frame_err(),                    // output, to IPbus I/O
//        .hard_err(),                     // output, to IPbus I/O
//        .soft_err(),                     // output, to IPbus I/O
//        .channel_up(),                   // output, to IPbus I/O
//        .lane_up(),                      // output, to IPbus I/O
//        .tx_resetdone_out(),             // output, to IPbus I/O
//        .rx_resetdone_out(),             // output, to IPbus I/O
//        .link_reset_out()
    );
    
    Aurora_Channel_1 LinkProjPhiMinus (
        .clk(clk),
        .reset(reset),
        .en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(io_clk),                    // programming clock
        .io_sel(Aurora_mphi_sel),           // this module has been selected for an I/O operation
        .io_sync(io_sync),                  // start the I/O operation
        .io_addr(io_addr[19:0]),            // Top 12 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation
        .io_wr_en(io_wr_en),                // this is a write operation
        .io_wr_data(io_wr_data),            // data to write for write operations
        // outputs
        .io_rd_data(io_rd_data_mphi),       // data returned for read operations
        .io_rd_ack(io_rd_ack_mphi),         // 'read' data from this module is ready
        //clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),

        //Links
        //clocks and reset
        .init_clk(init_clk),
        .gt_reset_in(rst_init),
        .gt_refclk(gt_refclk),
        .axis_resetn(arst_n),
        //state machine enable
        .link_en(link_en[1]),
        //serial I/O pins
        .rxp(rxp_mphi), .rxn(rxn_mphi),
        .txp(txp_mphi), .txn(txn_mphi),
        // QPLL Ports
        .gt0_qplllock(1'b1),                 // input
        .gt0_qpllrefclklost(1'b0),           // input
        .gt_qpllclk_quad(1'b0),             // input
        .gt_qpllrefclk_quad(1'b0),          // input
        .gt0_qpllreset(),                    // output
        //timer ports
        .aurora_user_clk_out(aurora_user_clk_mphi),
        .aurora_reset_out(aurora_reset_mphi),
        .local_tx_tvalid_out(tx_tvalid_mphi),
        .local_rx_tvalid_out(rx_tvalid_mphi)
      
//        // counter output ports
//        .frame_err(),                    // output, to IPbus I/O
//        .hard_err(),                     // output, to IPbus I/O
//        .soft_err(),                     // output, to IPbus I/O
//        .channel_up(),                   // output, to IPbus I/O
//        .lane_up(),                      // output, to IPbus I/O
//        .tx_resetdone_out(),             // output, to IPbus I/O
//        .rx_resetdone_out(),             // output, to IPbus I/O
//        .link_reset_out()
    ); 

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //Timers
    CLK_Counter timer_p2m (
        .clk(aurora_user_clk_pphi),
        .reset(aurora_reset_pphi),
        .start(tx_tvalid_pphi),
        .stop(rx_tvalid_mphi),
        .out(timer_out_p2m)
    );
    
    CLK_Counter timer_m2p (
        .clk(aurora_user_clk_mphi),
        .reset(aurora_reset_mphi),
        .start(tx_tvalid_mphi),
        .stop(rx_tvalid_pphi),
        .out(timer_out_m2p)
    );
    
    always @ (posedge io_clk) begin
        timer_out_p2m_reg <= timer_out_p2m;
        timer_out_m2p_reg <= timer_out_m2p;
    end
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //write reset regs
    always @ (posedge io_clk) begin
        if (io_wr_en && link_rst_sel) link_rst <= io_wr_data[0];
        if (io_wr_en && link_en_sel) link_en <= io_wr_data[1:0];
    end
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // readback mux
    // If a particular register or memory is addressed, connect that register's or memory's signals
    // to the 'io_rd_data' output. At the same time, assert 'io_rd_ack' to tell downstream muxes to
    // use the 'io_rd_data' from this module as their source of data.
    reg [31:0] io_rd_data_reg;
 
    assign io_rd_data[31:0] = io_rd_data_reg[31:0];
    // Assert 'io_rd_ack' if chip select for this module is asserted during a 'read' operation.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge io_clk) begin
        io_rd_ack_reg <= io_rd_ack_pphi | io_rd_ack_mphi | (io_sync & link_rst_sel & io_rd_en) | (io_sync & link_en_sel & io_rd_en) | (io_sync & timer_p2m_sel & io_rd_en) | (io_sync & timer_m2p_sel & io_rd_en);
        
    end
    // Route the selected memory to the 'rdbk' output.
    always @(posedge io_clk) begin
//        if (io_rd_en & in_stub_mem_sel) io_rd_data_reg[31:0] <= in_stub_mem_rd_data;    
//        if (io_rd_en & out_stub_mem_a_sel) io_rd_data_reg[31:0] <= out_stub_mem_a_rd_data;
//        if (io_rd_en & out_stub_mem_b_sel) io_rd_data_reg[31:0] <= out_stub_mem_b_rd_data;
//        if (io_rd_en & out_stub_mem_c_sel) io_rd_data_reg[31:0] <= out_stub_mem_c_rd_data;    

        if (io_rd_en & Aurora_pphi_sel) io_rd_data_reg[31:0] <= io_rd_data_pphi;
        if (io_rd_en & Aurora_mphi_sel) io_rd_data_reg[31:0] <= io_rd_data_mphi;
        if (io_rd_en & link_rst_sel) io_rd_data_reg[31:0] <= {31'b0, link_rst};    
        if (io_rd_en & link_en_sel) io_rd_data_reg[31:0] <= {30'b0, link_en[1:0]};
        if (io_rd_en & timer_p2m_sel) io_rd_data_reg[31:0] <= timer_out_p2m_reg;
        if (io_rd_en & timer_m2p_sel) io_rd_data_reg[31:0] <= timer_out_m2p_reg;
    end
    
endmodule
