// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
// Date        : Mon Mar 09 15:50:34 2015
// Host        : 0602-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/VC707_IPbus_trigger/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_track_fit_fifo/TP_track_fit_fifo_stub.v
// Design      : TP_track_fit_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2014.2" *)
module TP_track_fit_fifo(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[125:0],wr_en,rd_en,dout[125:0],full,empty" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [125:0]din;
  input wr_en;
  input rd_en;
  output [125:0]dout;
  output full;
  output empty;
endmodule
