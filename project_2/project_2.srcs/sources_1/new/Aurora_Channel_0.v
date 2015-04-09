`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  Based on Charlie's design for g-2 experiment
//  WFD5_git_master/hdl/one_channel.v
//  Modifications are made for tracklet project
//////////////////////////////////////////////////////////////////////////////////

module Aurora_Channel_0(
    input wire clk,
    input wire reset,
    input wire en_proc,
    // programming interface
    // inputs
    input wire io_clk,                  // programming clock
    input wire io_sel,                  // this module has been selected for an I/O operation
    input wire io_sync,                 // start the I/O operation
    input wire [19:0] io_addr,          // slave address, memory or register. Top 16 bits already consumed.
    input wire io_rd_en,                // this is a read operation
    input wire io_wr_en,                // this is a write operation
    input wire [31:0] io_wr_data,       // data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,      // data returned for read operations
    output wire io_rd_ack,              // 'read' data from this module is ready
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk,

    //Links
    //clocks and reset
    input wire init_clk,
    input wire gt_reset_in,
    input wire gt_refclk,
    input wire axis_resetn,                  //system side reset for fifo
    //state machine enable
    input wire fsm_en,
    //serial I/O pins
    input wire rxp, rxn,
    output wire txp, txn,
    // QPLL Ports
    input wire gt0_qplllock,                 // input
    input wire gt0_qpllrefclklost,           // input
    input wire gt_qpllclk_quad,             // input
    input wire gt_qpllrefclk_quad,          // input
    output wire gt0_qpllreset,               // output
    //signal output for timer
    output wire aurora_user_clk_out,
    output wire local_tx_tvalid_out,
    output wire local_rx_tvalid_out
     
//    output wire aurora_user_clk,             // used to connect to the parallel side of the Aurora
//    output wire frame_err,                    // output, to IPbus I/O
//    output wire hard_err,                     // output, to IPbus I/O
//    output wire soft_err,                     // output, to IPbus I/O
//    output wire channel_up,                   // output, to IPbus I/O
//    output wire lane_up,                      // output, to IPbus I/O
//    //output wire pll_not_locked,               // input, from channel clock module
//    output wire tx_resetdone_out,             // output, to IPbus I/O
//    output wire rx_resetdone_out,             // output, to IPbus I/O
//    output wire link_reset_out               // output, to IPbus I/O   
);
    
    wire [31:0] link_io_rd_data, stat_io_rd_data;
    wire link_io_rd_ack, stat_io_rd_ack;
    
    wire link_io_sel, stat_io_sel;
    //address assignments
    //top 12 bits [31:20] already consumed.
    assign link_io_sel = io_sel && (io_addr[19:16] == 4'b0001);
    assign stat_io_sel = io_sel && (io_addr[19:16] == 4'b0010); 
      
    wire pll_not_locked;
    wire local_axis_resetn;                    // a local reset synched to the Aurora 'user_clk'
    wire aurora_user_clk;                      
    wire [15:0] local_axis_tx_tdata, local_axis_rx_tdata;
    wire [1:0] local_axis_tx_tkeep, local_axis_rx_tkeep;
    wire local_axis_tx_tvalid, local_axis_rx_tvalid;
    wire local_axis_tx_tready;
    
    wire drdy_out_unused;
    wire [15:0] drpdo_out_unused;

    // tie off unused signals, use 'init_clk' for DRP clock
    wire [8:0] drpaddr_in;
    wire drpen_in, drpwe_in;
    wire [15:0] drpdi_in;
    assign drpaddr_in = 9'h0;
    assign drpen_in = 1'b0;
    assign drpdi_in = 16'h0;
    assign drpwe_in = 1'b0;
    wire power_down;
    assign power_down = 1'b0;

    // local connections
    wire [2:0] loopback_set;

    assign local_axis_resetn = ~sys_reset_out;    
    assign aurora_user_clk_out = aurora_user_clk;
    
    //timer ports
    assign local_tx_tvalid_out = local_axis_tx_tvalid;
    assign local_rx_tvalid_out = local_axis_rx_tvalid;
      
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ipbus interface for aurora data sending and receiving
    Link_Interface data_io (
        // programming interface
        .io_clk(io_clk),                    // io clock
        .io_reset(reset),                   // active HI
        .io_sel(link_io_sel),               // this module is selected for an I/O operation
        .io_addr(io_addr[15:0]),            // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                  // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),      // data to write for write operations
        // outputs
        .io_rd_data(link_io_rd_data),       // data returned for read operations
        .io_rd_ack(link_io_rd_ack),         // 'read' data from this module is ready
        
        //clocks
        .clk(io_clk),                                         //input, clock for data stream sending to the link fifo from system side
        .aurora_user_clk(aurora_user_clk),                    //input from aurora user clock
        //reset
        .axis_resetn(axis_resetn),                            // input, reset from system side
        .local_axis_resetn(local_axis_resetn),                // input, reset from aurora side
        //enable
        .fsm_en(fsm_en),
        //tx ports
        .local_axis_tx_tvalid(local_axis_tx_tvalid),          // output to aurora s_axi_tx_tvalid
        .local_axis_tx_tdata(local_axis_tx_tdata),            // output to aurora s_axi_tx_tdata
        .local_axis_tx_tkeep(local_axis_tx_tkeep),            // output to aurora s_axi_tx_tkeep
        .local_axis_tx_tlast(local_axis_tx_tlast),            // output to aurora s_axi_tx_tlast
        .local_axis_tx_tready(local_axis_tx_tready),          // input from aurora s_axi_tx_tready
        //rx ports
        .local_axis_rx_tvalid(local_axis_rx_tvalid),          // input from aurora m_axi_rx_tvalid
        .local_axis_rx_tdata(local_axis_rx_tdata),            // input from aurora m_axi_rx_tdata
        .local_axis_rx_tkeep(local_axis_rx_tkeep),            // input from aurora m_axi_rx_tkeep
        .local_axis_rx_tlast(local_axis_rx_tlast)             // input from aurora m_axi_rx_tlast
    );
    
        
    aurora_8b10b_0 aurora_8b10b_0 (
        // AXI TX Interface from transmit FIFO
        .s_axi_tx_tdata(local_axis_tx_tdata),   // input [0:31], from TX FIFO
        .s_axi_tx_tkeep(local_axis_tx_tkeep),   // input [0:3], from TX FIFO
        .s_axi_tx_tvalid(local_axis_tx_tvalid), // input, from TX FIFO
        .s_axi_tx_tlast(local_axis_tx_tlast),   // input, from TX FIFO
        .s_axi_tx_tready(local_axis_tx_tready), // output, to TX FIFO
        // AXI RX Interface to receive FIFO
        .m_axi_rx_tdata(local_axis_rx_tdata),   // output [0:31], to RX FIFO
        .m_axi_rx_tkeep(local_axis_rx_tkeep),   // output [0:3], to RX FIFO
        .m_axi_rx_tvalid(local_axis_rx_tvalid), // output, to RX FIFO
        .m_axi_rx_tlast(local_axis_rx_tlast),   // output, to RX FIFO
        // GT Serial I/O
        .rxp(rxp), .rxn(rxn),                   // input, from package pins
        .txp(txp), .txn(txn),                   // output, to package pins
        // GT Reference Clock Interface
        .gt_refclk1(gt_refclk),                 // input, passed to module from an IBUFDS_GTE
        // Error Detection and Status Interface
        .frame_err(frame_err),                  // output, to IPbus I/O
        .hard_err(hard_err),                    // output, to IPbus I/O
        .soft_err(soft_err),                    // output, to IPbus I/O
        .channel_up(channel_up),                // output, to IPbus I/O
        .lane_up(lane_up),                      // output, to IPbus I/O
        // Clock Compensation Control Interface
        .warn_cc(warn_cc),                      // input, from clock compensation module
        .do_cc(do_cc),                          // input, from clock compensation module
        // System Interface Inputs
        .user_clk(aurora_user_clk),             // input, from channel clock module
        .sync_clk(sync_clk),                    // input, from channel clock module
        .tx_out_clk(tx_out_clk),                // output, from channel clock module
        .tx_lock(tx_lock),                      // input, from channel clock module
        .reset(system_reset),                   // input, from aurora_8b10b_0_SUPPORT_RESET_LOGIC
        .gt_reset(local_gt_reset),              // input, from aurora_8b10b_0_SUPPORT_RESET_LOGIC
        .sys_reset_out(sys_reset_out),          // output, synched to 'aurora_user_clk', to TX FIFO and RX FIFO
        .power_down(power_down),                // input, from IPbus I/O
        .loopback(loopback_set[2:0]),           // input [2:0], from IPbus I/O
        .init_clk_in(init_clk),                 // input, 50 MHz clock, passed to module
        .pll_not_locked(pll_not_locked),        // input, from channel clock module
        .tx_resetdone_out(tx_resetdone_out),        // output, to IPbus I/O
        .rx_resetdone_out(rx_resetdone_out),        // output, to IPbus I/O
        .link_reset_out(link_reset_out),            // output, to IPbus I/O
        // drp interface is not used
        .drpclk_in(init_clk),                   // input, unused, but we drive the clock
        .drpaddr_in(drpaddr_in),                // input [8:0], tied off
        .drpen_in(drpen_in),                    // input, tied off
        .drpdi_in(drpdi_in),                    // input [15:0], tied off
        .drpwe_in(drpwe_in),                    // input, tied off
        .drprdy_out(drprdy_out_unused),         // output [15:0], unused
        .drpdo_out(drpdo_out_unused),           // output, unused
        // QPLL Ports
        .gt0_qplllock_in(gt0_qplllock),               // input
        .gt0_qpllrefclklost_in(gt0_qpllrefclklost),   // input
        .gt_qpllrefclk_quad6_in(gt_qpllrefclk_quad), // input
        .gt_qpllclk_quad6_in(gt_qpllclk_quad),       // input
        .gt0_qpllreset_out(gt0_qpllreset)            // output    
    );
    
    // Instantiate an aurora clock module
    aurora_8b10b_CLOCK_MODULE clock_module (
      // inputs
      .GT_CLK(tx_out_clk),
      .GT_CLK_LOCKED(tx_lock),
       // outputs
      .USER_CLK(aurora_user_clk),
      .SYNC_CLK(sync_clk),
      .PLL_NOT_LOCKED(pll_not_locked)
    );
  
    // connect a clock-compensation module
    aurora_8b10b_STANDARD_CC_MODULE standard_cc_module (
      .RESET(rst_cc_module_i),
      // Clock Compensation Control Interface
      .WARN_CC(warn_cc),
      .DO_CC(do_cc),
      // System Interface
      .PLL_NOT_LOCKED( pll_not_locked),
      .USER_CLK(aurora_user_clk)
    );
  
    // connect a reset module
    // the names of I/O ports are confusing
    aurora_8b10b_SUPPORT_RESET_LOGIC reset_logic (
      // inputs
      .INIT_CLK_IN(init_clk),             // 50 MHz utility clock, always running
      .GT_RESET_IN(gt_reset_in),          // 
      .RESET(reset),                      // direct input to 'user_clk' domain, activates 'system_reset'
      .USER_CLK(aurora_user_clk),         // Aurora interface clock, goes away at times
     // outputs 
      .SYSTEM_RESET(system_reset),        // local reset signal in 'aurora_user_clk' domain
      .GT_RESET_OUT(local_gt_reset)       // local reset signal in init_clk domain
    );
  
    //SLACK Registers
    // This is from the example code. I don't know what it does.
    reg lane_up_r, lane_up_r2;
    always @ (posedge aurora_user_clk)
    begin
      lane_up_r    <=  lane_up;
      lane_up_r2   <=  lane_up_r;
    end
    assign lane_up_reduce_i  = &lane_up_r2;
    assign rst_cc_module_i   = !lane_up_reduce_i; 
    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ipbus interface for aurora loopback setting and status checking
    aurora_io_block io_block(
      // programming interface
      .io_clk(io_clk),                    // programming clock
      .io_reset(reset),                   // active HI
      .io_sel(stat_io_sel),               // this module is selected for an I/O operation
      .io_addr(io_addr[15:0]),            // memory address, top 16 bits alread consumed
      .io_sync(io_sync),                  // start the I/O operation
      .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
      .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
      .io_wr_data(io_wr_data[31:0]),      // data to write for write operations
      // outputs
      .io_rd_data(stat_io_rd_data),       // data returned for read operations
      .io_rd_ack(stat_io_rd_ack),         // 'read' data from this module is ready
      // data from 'write' registers
      .loopback_set(loopback_set[2:0]),         // 3-bit setting for the Aurora loopback port
  
      // data to 'read-only' registers
      .frame_err(frame_err),                  // input, to IPbus I/O
      .hard_err(hard_err),                    // input, to IPbus I/O
      .soft_err(soft_err),                    // input, to IPbus I/O
      .channel_up(channel_up),                // input, to IPbus I/O
      .lane_up(lane_up),                      // input, to IPbus I/O
      .pll_not_locked(pll_not_locked),        // input, from channel clock module
      .tx_resetdone_out(tx_resetdone_out),        // input, to IPbus I/O
      .rx_resetdone_out(rx_resetdone_out),        // input, to IPbus I/O
      .link_reset_out(link_reset_out)             // input, to IPbus I/O
    );       
 
    // readback mux
    // If a particular block is addressed, connect that block's signals
    // to the 'rdbk' output. At the same time, assert 'rdbk_sel' to tell downstream muxes to
    // use the 'rdbk' from this module as their source of data.
    reg [31:0] io_rd_data_reg;
    assign io_rd_data = io_rd_data_reg;
    // Assert 'io_rd_ack' if any module is asserting its 'rd_ack'.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @ (posedge io_clk) begin
        io_rd_ack_reg <= link_io_rd_ack | stat_io_rd_ack;
    end
    // Route the selected register to the 'rdbk' output.
    always @(posedge io_clk) begin
        if (link_io_sel) io_rd_data_reg[31:0] <= link_io_rd_data[31:0];
        if (stat_io_sel) io_rd_data_reg[31:0] <= stat_io_rd_data[31:0];
     end
    
endmodule
