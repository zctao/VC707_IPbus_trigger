// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Mon Apr 13 13:59:04 2015
// Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/ZhengchengTao/Documents/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth_0/trigger_clock_synth_stub.v
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
