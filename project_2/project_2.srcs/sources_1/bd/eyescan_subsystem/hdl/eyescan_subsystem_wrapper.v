//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Wed Dec 10 11:32:18 2014
//Host        : XCOLUISB33 running 64-bit Service Pack 1  (build 7601)
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
    gt_drp_1_daddr,
    gt_drp_1_den,
    gt_drp_1_di,
    gt_drp_1_do,
    gt_drp_1_drdy,
    gt_drp_1_dwe,
    gt_drp_2_daddr,
    gt_drp_2_den,
    gt_drp_2_di,
    gt_drp_2_do,
    gt_drp_2_drdy,
    gt_drp_2_dwe,
    gt_drp_3_daddr,
    gt_drp_3_den,
    gt_drp_3_di,
    gt_drp_3_do,
    gt_drp_3_drdy,
    gt_drp_3_dwe,
    gt_drp_4_daddr,
    gt_drp_4_den,
    gt_drp_4_di,
    gt_drp_4_do,
    gt_drp_4_drdy,
    gt_drp_4_dwe,
    gt_drp_5_daddr,
    gt_drp_5_den,
    gt_drp_5_di,
    gt_drp_5_do,
    gt_drp_5_drdy,
    gt_drp_5_dwe,
    gt_drp_6_daddr,
    gt_drp_6_den,
    gt_drp_6_di,
    gt_drp_6_do,
    gt_drp_6_drdy,
    gt_drp_6_dwe,
    gt_drp_7_daddr,
    gt_drp_7_den,
    gt_drp_7_di,
    gt_drp_7_do,
    gt_drp_7_drdy,
    gt_drp_7_dwe,
    reset);
  input AXI_aclk;
  output [8:0]gt_drp_0_daddr;
  output gt_drp_0_den;
  output [15:0]gt_drp_0_di;
  input [15:0]gt_drp_0_do;
  input gt_drp_0_drdy;
  output gt_drp_0_dwe;
  output [8:0]gt_drp_1_daddr;
  output gt_drp_1_den;
  output [15:0]gt_drp_1_di;
  input [15:0]gt_drp_1_do;
  input gt_drp_1_drdy;
  output gt_drp_1_dwe;
  output [8:0]gt_drp_2_daddr;
  output gt_drp_2_den;
  output [15:0]gt_drp_2_di;
  input [15:0]gt_drp_2_do;
  input gt_drp_2_drdy;
  output gt_drp_2_dwe;
  output [8:0]gt_drp_3_daddr;
  output gt_drp_3_den;
  output [15:0]gt_drp_3_di;
  input [15:0]gt_drp_3_do;
  input gt_drp_3_drdy;
  output gt_drp_3_dwe;
  output [8:0]gt_drp_4_daddr;
  output gt_drp_4_den;
  output [15:0]gt_drp_4_di;
  input [15:0]gt_drp_4_do;
  input gt_drp_4_drdy;
  output gt_drp_4_dwe;
  output [8:0]gt_drp_5_daddr;
  output gt_drp_5_den;
  output [15:0]gt_drp_5_di;
  input [15:0]gt_drp_5_do;
  input gt_drp_5_drdy;
  output gt_drp_5_dwe;
  output [8:0]gt_drp_6_daddr;
  output gt_drp_6_den;
  output [15:0]gt_drp_6_di;
  input [15:0]gt_drp_6_do;
  input gt_drp_6_drdy;
  output gt_drp_6_dwe;
  output [8:0]gt_drp_7_daddr;
  output gt_drp_7_den;
  output [15:0]gt_drp_7_di;
  input [15:0]gt_drp_7_do;
  input gt_drp_7_drdy;
  output gt_drp_7_dwe;
  input reset;

  wire AXI_aclk;
  wire [8:0]gt_drp_0_daddr;
  wire gt_drp_0_den;
  wire [15:0]gt_drp_0_di;
  wire [15:0]gt_drp_0_do;
  wire gt_drp_0_drdy;
  wire gt_drp_0_dwe;
  wire [8:0]gt_drp_1_daddr;
  wire gt_drp_1_den;
  wire [15:0]gt_drp_1_di;
  wire [15:0]gt_drp_1_do;
  wire gt_drp_1_drdy;
  wire gt_drp_1_dwe;
  wire [8:0]gt_drp_2_daddr;
  wire gt_drp_2_den;
  wire [15:0]gt_drp_2_di;
  wire [15:0]gt_drp_2_do;
  wire gt_drp_2_drdy;
  wire gt_drp_2_dwe;
  wire [8:0]gt_drp_3_daddr;
  wire gt_drp_3_den;
  wire [15:0]gt_drp_3_di;
  wire [15:0]gt_drp_3_do;
  wire gt_drp_3_drdy;
  wire gt_drp_3_dwe;
  wire [8:0]gt_drp_4_daddr;
  wire gt_drp_4_den;
  wire [15:0]gt_drp_4_di;
  wire [15:0]gt_drp_4_do;
  wire gt_drp_4_drdy;
  wire gt_drp_4_dwe;
  wire [8:0]gt_drp_5_daddr;
  wire gt_drp_5_den;
  wire [15:0]gt_drp_5_di;
  wire [15:0]gt_drp_5_do;
  wire gt_drp_5_drdy;
  wire gt_drp_5_dwe;
  wire [8:0]gt_drp_6_daddr;
  wire gt_drp_6_den;
  wire [15:0]gt_drp_6_di;
  wire [15:0]gt_drp_6_do;
  wire gt_drp_6_drdy;
  wire gt_drp_6_dwe;
  wire [8:0]gt_drp_7_daddr;
  wire gt_drp_7_den;
  wire [15:0]gt_drp_7_di;
  wire [15:0]gt_drp_7_do;
  wire gt_drp_7_drdy;
  wire gt_drp_7_dwe;
  wire reset;

eyescan_subsystem eyescan_subsystem_i
       (.AXI_aclk(AXI_aclk),
        .gt_drp_0_daddr(gt_drp_0_daddr),
        .gt_drp_0_den(gt_drp_0_den),
        .gt_drp_0_di(gt_drp_0_di),
        .gt_drp_0_do(gt_drp_0_do),
        .gt_drp_0_drdy(gt_drp_0_drdy),
        .gt_drp_0_dwe(gt_drp_0_dwe),
        .gt_drp_1_daddr(gt_drp_1_daddr),
        .gt_drp_1_den(gt_drp_1_den),
        .gt_drp_1_di(gt_drp_1_di),
        .gt_drp_1_do(gt_drp_1_do),
        .gt_drp_1_drdy(gt_drp_1_drdy),
        .gt_drp_1_dwe(gt_drp_1_dwe),
        .gt_drp_2_daddr(gt_drp_2_daddr),
        .gt_drp_2_den(gt_drp_2_den),
        .gt_drp_2_di(gt_drp_2_di),
        .gt_drp_2_do(gt_drp_2_do),
        .gt_drp_2_drdy(gt_drp_2_drdy),
        .gt_drp_2_dwe(gt_drp_2_dwe),
        .gt_drp_3_daddr(gt_drp_3_daddr),
        .gt_drp_3_den(gt_drp_3_den),
        .gt_drp_3_di(gt_drp_3_di),
        .gt_drp_3_do(gt_drp_3_do),
        .gt_drp_3_drdy(gt_drp_3_drdy),
        .gt_drp_3_dwe(gt_drp_3_dwe),
        .gt_drp_4_daddr(gt_drp_4_daddr),
        .gt_drp_4_den(gt_drp_4_den),
        .gt_drp_4_di(gt_drp_4_di),
        .gt_drp_4_do(gt_drp_4_do),
        .gt_drp_4_drdy(gt_drp_4_drdy),
        .gt_drp_4_dwe(gt_drp_4_dwe),
        .gt_drp_5_daddr(gt_drp_5_daddr),
        .gt_drp_5_den(gt_drp_5_den),
        .gt_drp_5_di(gt_drp_5_di),
        .gt_drp_5_do(gt_drp_5_do),
        .gt_drp_5_drdy(gt_drp_5_drdy),
        .gt_drp_5_dwe(gt_drp_5_dwe),
        .gt_drp_6_daddr(gt_drp_6_daddr),
        .gt_drp_6_den(gt_drp_6_den),
        .gt_drp_6_di(gt_drp_6_di),
        .gt_drp_6_do(gt_drp_6_do),
        .gt_drp_6_drdy(gt_drp_6_drdy),
        .gt_drp_6_dwe(gt_drp_6_dwe),
        .gt_drp_7_daddr(gt_drp_7_daddr),
        .gt_drp_7_den(gt_drp_7_den),
        .gt_drp_7_di(gt_drp_7_di),
        .gt_drp_7_do(gt_drp_7_do),
        .gt_drp_7_drdy(gt_drp_7_drdy),
        .gt_drp_7_dwe(gt_drp_7_dwe),
        .reset(reset));
endmodule
