// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
// Date        : Wed Mar 11 11:00:17 2015
// Host        : 0602-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/VC707_IPbus_trigger/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth_0/trigger_clock_synth_stub.v
// Design      : trigger_clock_synth
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module trigger_clock_synth(clk_in1, cross_clk, proc_clk, reset, locked)
/* synthesis syn_black_box black_box_pad_pin="clk_in1,cross_clk,proc_clk,reset,locked" */;
  input clk_in1;
  output cross_clk;
  output proc_clk;
  input reset;
  output locked;
endmodule
