`timescale 1ns / 1ps
// chan_io_block
//
// This module provides the programmable I/O interface for one channel.
//

module aurora_io_block(
  // programming interface
  // inputs
  input io_clk,                    // programming clock
  input io_reset,					// active HI
  input io_sel,                    // this module has been selected for an I/O operation
  input io_sync,                   // start the I/O operation
  input [15:0] io_addr,            // slave address, memory or register. Top 12 bits already consumed.
  input io_rd_en,                  // this is a read operation
  input io_wr_en,                  // this is a write operation
  input [31:0] io_wr_data,         // data to write for write operations
  // outputs
  output [31:0] io_rd_data,        // data returned for read operations
  output io_rd_ack,                // 'read' data from this module is ready
  // wite/read register data
  output [2:0] loopback_set,       // 3-bit setting for the Aurora loopback port
  // read-only signals
  input frame_err,                  // 
  input hard_err,                   // 
  input soft_err,                   // 
  input channel_up,                 // 
  input lane_up,                    // 
  input pll_not_locked,             // 
  input tx_resetdone_out,           // 
  input rx_resetdone_out,           // 
  input link_reset_out              // 
  
);

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // some common address decoding assignments
  assign reg_wr_en  = io_sync & io_wr_en;
  assign live_status_sel     = io_sel && (io_addr[3:0] == 4'b0000);
  assign loopback_reg_sel    = io_sel && (io_addr[3:0] == 4'b0001);

  // live_status register - instant state of many status bits. Some may be meaningless because they
  // are only valid at particulat times. Gradually fix up that stuff.
  reg [31:0] live_status_reg;
  always @ (posedge io_clk) begin
    live_status_reg[0] <=  channel_up;                 // 
    live_status_reg[1] <=  lane_up;                    // 
    live_status_reg[2] <= frame_err;                   // 
    live_status_reg[3] <=  hard_err;                   // 
    live_status_reg[4] <=  soft_err;                   // 
    live_status_reg[5] <=  pll_not_locked;             // 
    live_status_reg[6] <=  tx_resetdone_out;           // 
    live_status_reg[7] <=  rx_resetdone_out;           // 
    live_status_reg[8] <=  link_reset_out;             // 
    live_status_reg[31:9] <=  23'b0;                   // 
  end
   
  // loopback register - only the 3 LSBs have meaning, and are connected to the Aurora
  wire [31:0] loopback_all;                       // the full register width
  reg32_ce2 loopback_reg(.in(io_wr_data[31:0]), .reset(io_reset), .out(loopback_all), .clk(io_clk),
                         .clk_en1(reg_wr_en), .clk_en2(loopback_reg_sel));
  assign loopback_set[2:0] = loopback_all[2:0];   // the 3 LSBs

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
    io_rd_ack_reg <= io_sync & io_sel & io_rd_en;
  end
  // Route the selected register to the 'io_rd_data' output.
  always @(posedge io_clk) begin
    // 
    if (live_status_sel)  io_rd_data_reg[31:0] <= live_status_reg;
    if (loopback_reg_sel) io_rd_data_reg[31:0] <= loopback_all;
  end

endmodule