//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
//Date        : Mon May 25 10:53:04 2015
//Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target eyescan_subsystem_wrapper.bd
//Design      : eyescan_subsystem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module eyescan_subsystem_wrapper
   (AXI_aclk,
    gt_drp_0_daddr,
    gt_drp_0_den,
    gt_drp_0_di,
    gt_drp_0_do,
    gt_drp_0_drdy,
    gt_drp_0_dwe,
    reset);
  input AXI_aclk;
  output [8:0]gt_drp_0_daddr;
  output gt_drp_0_den;
  output [15:0]gt_drp_0_di;
  input [15:0]gt_drp_0_do;
  input gt_drp_0_drdy;
  output gt_drp_0_dwe;
  input reset;

  wire AXI_aclk;
  wire [8:0]gt_drp_0_daddr;
  wire gt_drp_0_den;
  wire [15:0]gt_drp_0_di;
  wire [15:0]gt_drp_0_do;
  wire gt_drp_0_drdy;
  wire gt_drp_0_dwe;
  wire reset;

eyescan_subsystem eyescan_subsystem_i
       (.AXI_aclk(AXI_aclk),
        .gt_drp_0_daddr(gt_drp_0_daddr),
        .gt_drp_0_den(gt_drp_0_den),
        .gt_drp_0_di(gt_drp_0_di),
        .gt_drp_0_do(gt_drp_0_do),
        .gt_drp_0_drdy(gt_drp_0_drdy),
        .gt_drp_0_dwe(gt_drp_0_dwe),
        .reset(reset));
endmodule
