//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
//Date        : Wed May 06 16:29:14 2015
//Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target eyescan_subsystem.bd
//Design      : eyescan_subsystem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DRP_Bridge_hier_imp_17A6W6O
   (AXI0_araddr,
    AXI0_arprot,
    AXI0_arready,
    AXI0_arvalid,
    AXI0_awaddr,
    AXI0_awprot,
    AXI0_awready,
    AXI0_awvalid,
    AXI0_bready,
    AXI0_bresp,
    AXI0_bvalid,
    AXI0_rdata,
    AXI0_rready,
    AXI0_rresp,
    AXI0_rvalid,
    AXI0_wdata,
    AXI0_wready,
    AXI0_wstrb,
    AXI0_wvalid,
    AXI1_araddr,
    AXI1_arprot,
    AXI1_arready,
    AXI1_arvalid,
    AXI1_awaddr,
    AXI1_awprot,
    AXI1_awready,
    AXI1_awvalid,
    AXI1_bready,
    AXI1_bresp,
    AXI1_bvalid,
    AXI1_rdata,
    AXI1_rready,
    AXI1_rresp,
    AXI1_rvalid,
    AXI1_wdata,
    AXI1_wready,
    AXI1_wstrb,
    AXI1_wvalid,
    AXI2_araddr,
    AXI2_arprot,
    AXI2_arready,
    AXI2_arvalid,
    AXI2_awaddr,
    AXI2_awprot,
    AXI2_awready,
    AXI2_awvalid,
    AXI2_bready,
    AXI2_bresp,
    AXI2_bvalid,
    AXI2_rdata,
    AXI2_rready,
    AXI2_rresp,
    AXI2_rvalid,
    AXI2_wdata,
    AXI2_wready,
    AXI2_wstrb,
    AXI2_wvalid,
    AXI3_araddr,
    AXI3_arprot,
    AXI3_arready,
    AXI3_arvalid,
    AXI3_awaddr,
    AXI3_awprot,
    AXI3_awready,
    AXI3_awvalid,
    AXI3_bready,
    AXI3_bresp,
    AXI3_bvalid,
    AXI3_rdata,
    AXI3_rready,
    AXI3_rresp,
    AXI3_rvalid,
    AXI3_wdata,
    AXI3_wready,
    AXI3_wstrb,
    AXI3_wvalid,
    AXI4_araddr,
    AXI4_arprot,
    AXI4_arready,
    AXI4_arvalid,
    AXI4_awaddr,
    AXI4_awprot,
    AXI4_awready,
    AXI4_awvalid,
    AXI4_bready,
    AXI4_bresp,
    AXI4_bvalid,
    AXI4_rdata,
    AXI4_rready,
    AXI4_rresp,
    AXI4_rvalid,
    AXI4_wdata,
    AXI4_wready,
    AXI4_wstrb,
    AXI4_wvalid,
    AXI5_araddr,
    AXI5_arprot,
    AXI5_arready,
    AXI5_arvalid,
    AXI5_awaddr,
    AXI5_awprot,
    AXI5_awready,
    AXI5_awvalid,
    AXI5_bready,
    AXI5_bresp,
    AXI5_bvalid,
    AXI5_rdata,
    AXI5_rready,
    AXI5_rresp,
    AXI5_rvalid,
    AXI5_wdata,
    AXI5_wready,
    AXI5_wstrb,
    AXI5_wvalid,
    AXI6_araddr,
    AXI6_arprot,
    AXI6_arready,
    AXI6_arvalid,
    AXI6_awaddr,
    AXI6_awprot,
    AXI6_awready,
    AXI6_awvalid,
    AXI6_bready,
    AXI6_bresp,
    AXI6_bvalid,
    AXI6_rdata,
    AXI6_rready,
    AXI6_rresp,
    AXI6_rvalid,
    AXI6_wdata,
    AXI6_wready,
    AXI6_wstrb,
    AXI6_wvalid,
    AXI7_araddr,
    AXI7_arprot,
    AXI7_arready,
    AXI7_arvalid,
    AXI7_awaddr,
    AXI7_awprot,
    AXI7_awready,
    AXI7_awvalid,
    AXI7_bready,
    AXI7_bresp,
    AXI7_bvalid,
    AXI7_rdata,
    AXI7_rready,
    AXI7_rresp,
    AXI7_rvalid,
    AXI7_wdata,
    AXI7_wready,
    AXI7_wstrb,
    AXI7_wvalid,
    AXI_aclk,
    AXI_aresetn,
    DRP0_daddr,
    DRP0_den,
    DRP0_di,
    DRP0_do,
    DRP0_drdy,
    DRP0_dwe,
    DRP1_daddr,
    DRP1_den,
    DRP1_di,
    DRP1_do,
    DRP1_drdy,
    DRP1_dwe,
    DRP2_daddr,
    DRP2_den,
    DRP2_di,
    DRP2_do,
    DRP2_drdy,
    DRP2_dwe,
    DRP3_daddr,
    DRP3_den,
    DRP3_di,
    DRP3_do,
    DRP3_drdy,
    DRP3_dwe,
    DRP4_daddr,
    DRP4_den,
    DRP4_di,
    DRP4_do,
    DRP4_drdy,
    DRP4_dwe,
    DRP5_daddr,
    DRP5_den,
    DRP5_di,
    DRP5_do,
    DRP5_drdy,
    DRP5_dwe,
    DRP6_daddr,
    DRP6_den,
    DRP6_di,
    DRP6_do,
    DRP6_drdy,
    DRP6_dwe,
    DRP7_daddr,
    DRP7_den,
    DRP7_di,
    DRP7_do,
    DRP7_drdy,
    DRP7_dwe);
  input [31:0]AXI0_araddr;
  input [2:0]AXI0_arprot;
  output AXI0_arready;
  input AXI0_arvalid;
  input [31:0]AXI0_awaddr;
  input [2:0]AXI0_awprot;
  output AXI0_awready;
  input AXI0_awvalid;
  input AXI0_bready;
  output [1:0]AXI0_bresp;
  output AXI0_bvalid;
  output [31:0]AXI0_rdata;
  input AXI0_rready;
  output [1:0]AXI0_rresp;
  output AXI0_rvalid;
  input [31:0]AXI0_wdata;
  output AXI0_wready;
  input [3:0]AXI0_wstrb;
  input AXI0_wvalid;
  input [31:0]AXI1_araddr;
  input [2:0]AXI1_arprot;
  output AXI1_arready;
  input AXI1_arvalid;
  input [31:0]AXI1_awaddr;
  input [2:0]AXI1_awprot;
  output AXI1_awready;
  input AXI1_awvalid;
  input AXI1_bready;
  output [1:0]AXI1_bresp;
  output AXI1_bvalid;
  output [31:0]AXI1_rdata;
  input AXI1_rready;
  output [1:0]AXI1_rresp;
  output AXI1_rvalid;
  input [31:0]AXI1_wdata;
  output AXI1_wready;
  input [3:0]AXI1_wstrb;
  input AXI1_wvalid;
  input [31:0]AXI2_araddr;
  input [2:0]AXI2_arprot;
  output AXI2_arready;
  input AXI2_arvalid;
  input [31:0]AXI2_awaddr;
  input [2:0]AXI2_awprot;
  output AXI2_awready;
  input AXI2_awvalid;
  input AXI2_bready;
  output [1:0]AXI2_bresp;
  output AXI2_bvalid;
  output [31:0]AXI2_rdata;
  input AXI2_rready;
  output [1:0]AXI2_rresp;
  output AXI2_rvalid;
  input [31:0]AXI2_wdata;
  output AXI2_wready;
  input [3:0]AXI2_wstrb;
  input AXI2_wvalid;
  input [31:0]AXI3_araddr;
  input [2:0]AXI3_arprot;
  output AXI3_arready;
  input AXI3_arvalid;
  input [31:0]AXI3_awaddr;
  input [2:0]AXI3_awprot;
  output AXI3_awready;
  input AXI3_awvalid;
  input AXI3_bready;
  output [1:0]AXI3_bresp;
  output AXI3_bvalid;
  output [31:0]AXI3_rdata;
  input AXI3_rready;
  output [1:0]AXI3_rresp;
  output AXI3_rvalid;
  input [31:0]AXI3_wdata;
  output AXI3_wready;
  input [3:0]AXI3_wstrb;
  input AXI3_wvalid;
  input [31:0]AXI4_araddr;
  input [2:0]AXI4_arprot;
  output AXI4_arready;
  input AXI4_arvalid;
  input [31:0]AXI4_awaddr;
  input [2:0]AXI4_awprot;
  output AXI4_awready;
  input AXI4_awvalid;
  input AXI4_bready;
  output [1:0]AXI4_bresp;
  output AXI4_bvalid;
  output [31:0]AXI4_rdata;
  input AXI4_rready;
  output [1:0]AXI4_rresp;
  output AXI4_rvalid;
  input [31:0]AXI4_wdata;
  output AXI4_wready;
  input [3:0]AXI4_wstrb;
  input AXI4_wvalid;
  input [31:0]AXI5_araddr;
  input [2:0]AXI5_arprot;
  output AXI5_arready;
  input AXI5_arvalid;
  input [31:0]AXI5_awaddr;
  input [2:0]AXI5_awprot;
  output AXI5_awready;
  input AXI5_awvalid;
  input AXI5_bready;
  output [1:0]AXI5_bresp;
  output AXI5_bvalid;
  output [31:0]AXI5_rdata;
  input AXI5_rready;
  output [1:0]AXI5_rresp;
  output AXI5_rvalid;
  input [31:0]AXI5_wdata;
  output AXI5_wready;
  input [3:0]AXI5_wstrb;
  input AXI5_wvalid;
  input [31:0]AXI6_araddr;
  input [2:0]AXI6_arprot;
  output AXI6_arready;
  input AXI6_arvalid;
  input [31:0]AXI6_awaddr;
  input [2:0]AXI6_awprot;
  output AXI6_awready;
  input AXI6_awvalid;
  input AXI6_bready;
  output [1:0]AXI6_bresp;
  output AXI6_bvalid;
  output [31:0]AXI6_rdata;
  input AXI6_rready;
  output [1:0]AXI6_rresp;
  output AXI6_rvalid;
  input [31:0]AXI6_wdata;
  output AXI6_wready;
  input [3:0]AXI6_wstrb;
  input AXI6_wvalid;
  input [31:0]AXI7_araddr;
  input [2:0]AXI7_arprot;
  output AXI7_arready;
  input AXI7_arvalid;
  input [31:0]AXI7_awaddr;
  input [2:0]AXI7_awprot;
  output AXI7_awready;
  input AXI7_awvalid;
  input AXI7_bready;
  output [1:0]AXI7_bresp;
  output AXI7_bvalid;
  output [31:0]AXI7_rdata;
  input AXI7_rready;
  output [1:0]AXI7_rresp;
  output AXI7_rvalid;
  input [31:0]AXI7_wdata;
  output AXI7_wready;
  input [3:0]AXI7_wstrb;
  input AXI7_wvalid;
  input AXI_aclk;
  input [0:0]AXI_aresetn;
  output [8:0]DRP0_daddr;
  output DRP0_den;
  output [15:0]DRP0_di;
  input [15:0]DRP0_do;
  input DRP0_drdy;
  output DRP0_dwe;
  output [8:0]DRP1_daddr;
  output DRP1_den;
  output [15:0]DRP1_di;
  input [15:0]DRP1_do;
  input DRP1_drdy;
  output DRP1_dwe;
  output [8:0]DRP2_daddr;
  output DRP2_den;
  output [15:0]DRP2_di;
  input [15:0]DRP2_do;
  input DRP2_drdy;
  output DRP2_dwe;
  output [8:0]DRP3_daddr;
  output DRP3_den;
  output [15:0]DRP3_di;
  input [15:0]DRP3_do;
  input DRP3_drdy;
  output DRP3_dwe;
  output [8:0]DRP4_daddr;
  output DRP4_den;
  output [15:0]DRP4_di;
  input [15:0]DRP4_do;
  input DRP4_drdy;
  output DRP4_dwe;
  output [8:0]DRP5_daddr;
  output DRP5_den;
  output [15:0]DRP5_di;
  input [15:0]DRP5_do;
  input DRP5_drdy;
  output DRP5_dwe;
  output [8:0]DRP6_daddr;
  output DRP6_den;
  output [15:0]DRP6_di;
  input [15:0]DRP6_do;
  input DRP6_drdy;
  output DRP6_dwe;
  output [8:0]DRP7_daddr;
  output DRP7_den;
  output [15:0]DRP7_di;
  input [15:0]DRP7_do;
  input DRP7_drdy;
  output DRP7_dwe;

  wire axi_aclk_1;
  wire [8:0]drp_bridge_4_drp_DADDR;
  wire drp_bridge_4_drp_DEN;
  wire [15:0]drp_bridge_4_drp_DI;
  wire [15:0]drp_bridge_4_drp_DO;
  wire drp_bridge_4_drp_DRDY;
  wire drp_bridge_4_drp_DWE;
  wire [8:0]drp_bridge_5_drp_DADDR;
  wire drp_bridge_5_drp_DEN;
  wire [15:0]drp_bridge_5_drp_DI;
  wire [15:0]drp_bridge_5_drp_DO;
  wire drp_bridge_5_drp_DRDY;
  wire drp_bridge_5_drp_DWE;
  wire [8:0]drp_bridge_6_drp_DADDR;
  wire drp_bridge_6_drp_DEN;
  wire [15:0]drp_bridge_6_drp_DI;
  wire [15:0]drp_bridge_6_drp_DO;
  wire drp_bridge_6_drp_DRDY;
  wire drp_bridge_6_drp_DWE;
  wire [8:0]drp_bridge_7_drp_DADDR;
  wire drp_bridge_7_drp_DEN;
  wire [15:0]drp_bridge_7_drp_DI;
  wire [15:0]drp_bridge_7_drp_DO;
  wire drp_bridge_7_drp_DRDY;
  wire drp_bridge_7_drp_DWE;
  wire [8:0]drp_mux_0_gt_drp_DADDR;
  wire drp_mux_0_gt_drp_DEN;
  wire [15:0]drp_mux_0_gt_drp_DI;
  wire [15:0]drp_mux_0_gt_drp_DO;
  wire drp_mux_0_gt_drp_DRDY;
  wire drp_mux_0_gt_drp_DWE;
  wire [8:0]drp_mux_1_gt_drp_DADDR;
  wire drp_mux_1_gt_drp_DEN;
  wire [15:0]drp_mux_1_gt_drp_DI;
  wire [15:0]drp_mux_1_gt_drp_DO;
  wire drp_mux_1_gt_drp_DRDY;
  wire drp_mux_1_gt_drp_DWE;
  wire [8:0]drp_mux_2_gt_drp_DADDR;
  wire drp_mux_2_gt_drp_DEN;
  wire [15:0]drp_mux_2_gt_drp_DI;
  wire [15:0]drp_mux_2_gt_drp_DO;
  wire drp_mux_2_gt_drp_DRDY;
  wire drp_mux_2_gt_drp_DWE;
  wire [8:0]drp_mux_3_gt_drp_DADDR;
  wire drp_mux_3_gt_drp_DEN;
  wire [15:0]drp_mux_3_gt_drp_DI;
  wire [15:0]drp_mux_3_gt_drp_DO;
  wire drp_mux_3_gt_drp_DRDY;
  wire drp_mux_3_gt_drp_DWE;
  wire [31:0]microblaze_1_axi_periph_m00_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m00_axi_ARPROT;
  wire microblaze_1_axi_periph_m00_axi_ARREADY;
  wire microblaze_1_axi_periph_m00_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m00_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m00_axi_AWPROT;
  wire microblaze_1_axi_periph_m00_axi_AWREADY;
  wire microblaze_1_axi_periph_m00_axi_AWVALID;
  wire microblaze_1_axi_periph_m00_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m00_axi_BRESP;
  wire microblaze_1_axi_periph_m00_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m00_axi_RDATA;
  wire microblaze_1_axi_periph_m00_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m00_axi_RRESP;
  wire microblaze_1_axi_periph_m00_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m00_axi_WDATA;
  wire microblaze_1_axi_periph_m00_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m00_axi_WSTRB;
  wire microblaze_1_axi_periph_m00_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m01_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m01_axi_ARPROT;
  wire microblaze_1_axi_periph_m01_axi_ARREADY;
  wire microblaze_1_axi_periph_m01_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m01_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m01_axi_AWPROT;
  wire microblaze_1_axi_periph_m01_axi_AWREADY;
  wire microblaze_1_axi_periph_m01_axi_AWVALID;
  wire microblaze_1_axi_periph_m01_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m01_axi_BRESP;
  wire microblaze_1_axi_periph_m01_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m01_axi_RDATA;
  wire microblaze_1_axi_periph_m01_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m01_axi_RRESP;
  wire microblaze_1_axi_periph_m01_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m01_axi_WDATA;
  wire microblaze_1_axi_periph_m01_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m01_axi_WSTRB;
  wire microblaze_1_axi_periph_m01_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m02_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m02_axi_ARPROT;
  wire microblaze_1_axi_periph_m02_axi_ARREADY;
  wire microblaze_1_axi_periph_m02_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m02_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m02_axi_AWPROT;
  wire microblaze_1_axi_periph_m02_axi_AWREADY;
  wire microblaze_1_axi_periph_m02_axi_AWVALID;
  wire microblaze_1_axi_periph_m02_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m02_axi_BRESP;
  wire microblaze_1_axi_periph_m02_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m02_axi_RDATA;
  wire microblaze_1_axi_periph_m02_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m02_axi_RRESP;
  wire microblaze_1_axi_periph_m02_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m02_axi_WDATA;
  wire microblaze_1_axi_periph_m02_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m02_axi_WSTRB;
  wire microblaze_1_axi_periph_m02_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m03_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m03_axi_ARPROT;
  wire microblaze_1_axi_periph_m03_axi_ARREADY;
  wire microblaze_1_axi_periph_m03_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m03_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m03_axi_AWPROT;
  wire microblaze_1_axi_periph_m03_axi_AWREADY;
  wire microblaze_1_axi_periph_m03_axi_AWVALID;
  wire microblaze_1_axi_periph_m03_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m03_axi_BRESP;
  wire microblaze_1_axi_periph_m03_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m03_axi_RDATA;
  wire microblaze_1_axi_periph_m03_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m03_axi_RRESP;
  wire microblaze_1_axi_periph_m03_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m03_axi_WDATA;
  wire microblaze_1_axi_periph_m03_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m03_axi_WSTRB;
  wire microblaze_1_axi_periph_m03_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m04_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m04_axi_ARPROT;
  wire microblaze_1_axi_periph_m04_axi_ARREADY;
  wire microblaze_1_axi_periph_m04_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m04_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m04_axi_AWPROT;
  wire microblaze_1_axi_periph_m04_axi_AWREADY;
  wire microblaze_1_axi_periph_m04_axi_AWVALID;
  wire microblaze_1_axi_periph_m04_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m04_axi_BRESP;
  wire microblaze_1_axi_periph_m04_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m04_axi_RDATA;
  wire microblaze_1_axi_periph_m04_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m04_axi_RRESP;
  wire microblaze_1_axi_periph_m04_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m04_axi_WDATA;
  wire microblaze_1_axi_periph_m04_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m04_axi_WSTRB;
  wire microblaze_1_axi_periph_m04_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m05_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m05_axi_ARPROT;
  wire microblaze_1_axi_periph_m05_axi_ARREADY;
  wire microblaze_1_axi_periph_m05_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m05_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m05_axi_AWPROT;
  wire microblaze_1_axi_periph_m05_axi_AWREADY;
  wire microblaze_1_axi_periph_m05_axi_AWVALID;
  wire microblaze_1_axi_periph_m05_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m05_axi_BRESP;
  wire microblaze_1_axi_periph_m05_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m05_axi_RDATA;
  wire microblaze_1_axi_periph_m05_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m05_axi_RRESP;
  wire microblaze_1_axi_periph_m05_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m05_axi_WDATA;
  wire microblaze_1_axi_periph_m05_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m05_axi_WSTRB;
  wire microblaze_1_axi_periph_m05_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m06_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m06_axi_ARPROT;
  wire microblaze_1_axi_periph_m06_axi_ARREADY;
  wire microblaze_1_axi_periph_m06_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m06_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m06_axi_AWPROT;
  wire microblaze_1_axi_periph_m06_axi_AWREADY;
  wire microblaze_1_axi_periph_m06_axi_AWVALID;
  wire microblaze_1_axi_periph_m06_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m06_axi_BRESP;
  wire microblaze_1_axi_periph_m06_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m06_axi_RDATA;
  wire microblaze_1_axi_periph_m06_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m06_axi_RRESP;
  wire microblaze_1_axi_periph_m06_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m06_axi_WDATA;
  wire microblaze_1_axi_periph_m06_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m06_axi_WSTRB;
  wire microblaze_1_axi_periph_m06_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m07_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m07_axi_ARPROT;
  wire microblaze_1_axi_periph_m07_axi_ARREADY;
  wire microblaze_1_axi_periph_m07_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m07_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m07_axi_AWPROT;
  wire microblaze_1_axi_periph_m07_axi_AWREADY;
  wire microblaze_1_axi_periph_m07_axi_AWVALID;
  wire microblaze_1_axi_periph_m07_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m07_axi_BRESP;
  wire microblaze_1_axi_periph_m07_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m07_axi_RDATA;
  wire microblaze_1_axi_periph_m07_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m07_axi_RRESP;
  wire microblaze_1_axi_periph_m07_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m07_axi_WDATA;
  wire microblaze_1_axi_periph_m07_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m07_axi_WSTRB;
  wire microblaze_1_axi_periph_m07_axi_WVALID;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;

  assign AXI0_arready = microblaze_1_axi_periph_m01_axi_ARREADY;
  assign AXI0_awready = microblaze_1_axi_periph_m01_axi_AWREADY;
  assign AXI0_bresp[1:0] = microblaze_1_axi_periph_m01_axi_BRESP;
  assign AXI0_bvalid = microblaze_1_axi_periph_m01_axi_BVALID;
  assign AXI0_rdata[31:0] = microblaze_1_axi_periph_m01_axi_RDATA;
  assign AXI0_rresp[1:0] = microblaze_1_axi_periph_m01_axi_RRESP;
  assign AXI0_rvalid = microblaze_1_axi_periph_m01_axi_RVALID;
  assign AXI0_wready = microblaze_1_axi_periph_m01_axi_WREADY;
  assign AXI1_arready = microblaze_1_axi_periph_m02_axi_ARREADY;
  assign AXI1_awready = microblaze_1_axi_periph_m02_axi_AWREADY;
  assign AXI1_bresp[1:0] = microblaze_1_axi_periph_m02_axi_BRESP;
  assign AXI1_bvalid = microblaze_1_axi_periph_m02_axi_BVALID;
  assign AXI1_rdata[31:0] = microblaze_1_axi_periph_m02_axi_RDATA;
  assign AXI1_rresp[1:0] = microblaze_1_axi_periph_m02_axi_RRESP;
  assign AXI1_rvalid = microblaze_1_axi_periph_m02_axi_RVALID;
  assign AXI1_wready = microblaze_1_axi_periph_m02_axi_WREADY;
  assign AXI2_arready = microblaze_1_axi_periph_m03_axi_ARREADY;
  assign AXI2_awready = microblaze_1_axi_periph_m03_axi_AWREADY;
  assign AXI2_bresp[1:0] = microblaze_1_axi_periph_m03_axi_BRESP;
  assign AXI2_bvalid = microblaze_1_axi_periph_m03_axi_BVALID;
  assign AXI2_rdata[31:0] = microblaze_1_axi_periph_m03_axi_RDATA;
  assign AXI2_rresp[1:0] = microblaze_1_axi_periph_m03_axi_RRESP;
  assign AXI2_rvalid = microblaze_1_axi_periph_m03_axi_RVALID;
  assign AXI2_wready = microblaze_1_axi_periph_m03_axi_WREADY;
  assign AXI3_arready = microblaze_1_axi_periph_m04_axi_ARREADY;
  assign AXI3_awready = microblaze_1_axi_periph_m04_axi_AWREADY;
  assign AXI3_bresp[1:0] = microblaze_1_axi_periph_m04_axi_BRESP;
  assign AXI3_bvalid = microblaze_1_axi_periph_m04_axi_BVALID;
  assign AXI3_rdata[31:0] = microblaze_1_axi_periph_m04_axi_RDATA;
  assign AXI3_rresp[1:0] = microblaze_1_axi_periph_m04_axi_RRESP;
  assign AXI3_rvalid = microblaze_1_axi_periph_m04_axi_RVALID;
  assign AXI3_wready = microblaze_1_axi_periph_m04_axi_WREADY;
  assign AXI4_arready = microblaze_1_axi_periph_m05_axi_ARREADY;
  assign AXI4_awready = microblaze_1_axi_periph_m05_axi_AWREADY;
  assign AXI4_bresp[1:0] = microblaze_1_axi_periph_m05_axi_BRESP;
  assign AXI4_bvalid = microblaze_1_axi_periph_m05_axi_BVALID;
  assign AXI4_rdata[31:0] = microblaze_1_axi_periph_m05_axi_RDATA;
  assign AXI4_rresp[1:0] = microblaze_1_axi_periph_m05_axi_RRESP;
  assign AXI4_rvalid = microblaze_1_axi_periph_m05_axi_RVALID;
  assign AXI4_wready = microblaze_1_axi_periph_m05_axi_WREADY;
  assign AXI5_arready = microblaze_1_axi_periph_m06_axi_ARREADY;
  assign AXI5_awready = microblaze_1_axi_periph_m06_axi_AWREADY;
  assign AXI5_bresp[1:0] = microblaze_1_axi_periph_m06_axi_BRESP;
  assign AXI5_bvalid = microblaze_1_axi_periph_m06_axi_BVALID;
  assign AXI5_rdata[31:0] = microblaze_1_axi_periph_m06_axi_RDATA;
  assign AXI5_rresp[1:0] = microblaze_1_axi_periph_m06_axi_RRESP;
  assign AXI5_rvalid = microblaze_1_axi_periph_m06_axi_RVALID;
  assign AXI5_wready = microblaze_1_axi_periph_m06_axi_WREADY;
  assign AXI6_arready = microblaze_1_axi_periph_m07_axi_ARREADY;
  assign AXI6_awready = microblaze_1_axi_periph_m07_axi_AWREADY;
  assign AXI6_bresp[1:0] = microblaze_1_axi_periph_m07_axi_BRESP;
  assign AXI6_bvalid = microblaze_1_axi_periph_m07_axi_BVALID;
  assign AXI6_rdata[31:0] = microblaze_1_axi_periph_m07_axi_RDATA;
  assign AXI6_rresp[1:0] = microblaze_1_axi_periph_m07_axi_RRESP;
  assign AXI6_rvalid = microblaze_1_axi_periph_m07_axi_RVALID;
  assign AXI6_wready = microblaze_1_axi_periph_m07_axi_WREADY;
  assign AXI7_arready = microblaze_1_axi_periph_m00_axi_ARREADY;
  assign AXI7_awready = microblaze_1_axi_periph_m00_axi_AWREADY;
  assign AXI7_bresp[1:0] = microblaze_1_axi_periph_m00_axi_BRESP;
  assign AXI7_bvalid = microblaze_1_axi_periph_m00_axi_BVALID;
  assign AXI7_rdata[31:0] = microblaze_1_axi_periph_m00_axi_RDATA;
  assign AXI7_rresp[1:0] = microblaze_1_axi_periph_m00_axi_RRESP;
  assign AXI7_rvalid = microblaze_1_axi_periph_m00_axi_RVALID;
  assign AXI7_wready = microblaze_1_axi_periph_m00_axi_WREADY;
  assign DRP0_daddr[8:0] = drp_mux_1_gt_drp_DADDR;
  assign DRP0_den = drp_mux_1_gt_drp_DEN;
  assign DRP0_di[15:0] = drp_mux_1_gt_drp_DI;
  assign DRP0_dwe = drp_mux_1_gt_drp_DWE;
  assign DRP1_daddr[8:0] = drp_mux_2_gt_drp_DADDR;
  assign DRP1_den = drp_mux_2_gt_drp_DEN;
  assign DRP1_di[15:0] = drp_mux_2_gt_drp_DI;
  assign DRP1_dwe = drp_mux_2_gt_drp_DWE;
  assign DRP2_daddr[8:0] = drp_mux_3_gt_drp_DADDR;
  assign DRP2_den = drp_mux_3_gt_drp_DEN;
  assign DRP2_di[15:0] = drp_mux_3_gt_drp_DI;
  assign DRP2_dwe = drp_mux_3_gt_drp_DWE;
  assign DRP3_daddr[8:0] = drp_bridge_4_drp_DADDR;
  assign DRP3_den = drp_bridge_4_drp_DEN;
  assign DRP3_di[15:0] = drp_bridge_4_drp_DI;
  assign DRP3_dwe = drp_bridge_4_drp_DWE;
  assign DRP4_daddr[8:0] = drp_bridge_5_drp_DADDR;
  assign DRP4_den = drp_bridge_5_drp_DEN;
  assign DRP4_di[15:0] = drp_bridge_5_drp_DI;
  assign DRP4_dwe = drp_bridge_5_drp_DWE;
  assign DRP5_daddr[8:0] = drp_bridge_6_drp_DADDR;
  assign DRP5_den = drp_bridge_6_drp_DEN;
  assign DRP5_di[15:0] = drp_bridge_6_drp_DI;
  assign DRP5_dwe = drp_bridge_6_drp_DWE;
  assign DRP6_daddr[8:0] = drp_bridge_7_drp_DADDR;
  assign DRP6_den = drp_bridge_7_drp_DEN;
  assign DRP6_di[15:0] = drp_bridge_7_drp_DI;
  assign DRP6_dwe = drp_bridge_7_drp_DWE;
  assign DRP7_daddr[8:0] = drp_mux_0_gt_drp_DADDR;
  assign DRP7_den = drp_mux_0_gt_drp_DEN;
  assign DRP7_di[15:0] = drp_mux_0_gt_drp_DI;
  assign DRP7_dwe = drp_mux_0_gt_drp_DWE;
  assign axi_aclk_1 = AXI_aclk;
  assign drp_bridge_4_drp_DO = DRP3_do[15:0];
  assign drp_bridge_4_drp_DRDY = DRP3_drdy;
  assign drp_bridge_5_drp_DO = DRP4_do[15:0];
  assign drp_bridge_5_drp_DRDY = DRP4_drdy;
  assign drp_bridge_6_drp_DO = DRP5_do[15:0];
  assign drp_bridge_6_drp_DRDY = DRP5_drdy;
  assign drp_bridge_7_drp_DO = DRP6_do[15:0];
  assign drp_bridge_7_drp_DRDY = DRP6_drdy;
  assign drp_mux_0_gt_drp_DO = DRP7_do[15:0];
  assign drp_mux_0_gt_drp_DRDY = DRP7_drdy;
  assign drp_mux_1_gt_drp_DO = DRP0_do[15:0];
  assign drp_mux_1_gt_drp_DRDY = DRP0_drdy;
  assign drp_mux_2_gt_drp_DO = DRP1_do[15:0];
  assign drp_mux_2_gt_drp_DRDY = DRP1_drdy;
  assign drp_mux_3_gt_drp_DO = DRP2_do[15:0];
  assign drp_mux_3_gt_drp_DRDY = DRP2_drdy;
  assign microblaze_1_axi_periph_m00_axi_ARADDR = AXI7_araddr[31:0];
  assign microblaze_1_axi_periph_m00_axi_ARPROT = AXI7_arprot[2:0];
  assign microblaze_1_axi_periph_m00_axi_ARVALID = AXI7_arvalid;
  assign microblaze_1_axi_periph_m00_axi_AWADDR = AXI7_awaddr[31:0];
  assign microblaze_1_axi_periph_m00_axi_AWPROT = AXI7_awprot[2:0];
  assign microblaze_1_axi_periph_m00_axi_AWVALID = AXI7_awvalid;
  assign microblaze_1_axi_periph_m00_axi_BREADY = AXI7_bready;
  assign microblaze_1_axi_periph_m00_axi_RREADY = AXI7_rready;
  assign microblaze_1_axi_periph_m00_axi_WDATA = AXI7_wdata[31:0];
  assign microblaze_1_axi_periph_m00_axi_WSTRB = AXI7_wstrb[3:0];
  assign microblaze_1_axi_periph_m00_axi_WVALID = AXI7_wvalid;
  assign microblaze_1_axi_periph_m01_axi_ARADDR = AXI0_araddr[31:0];
  assign microblaze_1_axi_periph_m01_axi_ARPROT = AXI0_arprot[2:0];
  assign microblaze_1_axi_periph_m01_axi_ARVALID = AXI0_arvalid;
  assign microblaze_1_axi_periph_m01_axi_AWADDR = AXI0_awaddr[31:0];
  assign microblaze_1_axi_periph_m01_axi_AWPROT = AXI0_awprot[2:0];
  assign microblaze_1_axi_periph_m01_axi_AWVALID = AXI0_awvalid;
  assign microblaze_1_axi_periph_m01_axi_BREADY = AXI0_bready;
  assign microblaze_1_axi_periph_m01_axi_RREADY = AXI0_rready;
  assign microblaze_1_axi_periph_m01_axi_WDATA = AXI0_wdata[31:0];
  assign microblaze_1_axi_periph_m01_axi_WSTRB = AXI0_wstrb[3:0];
  assign microblaze_1_axi_periph_m01_axi_WVALID = AXI0_wvalid;
  assign microblaze_1_axi_periph_m02_axi_ARADDR = AXI1_araddr[31:0];
  assign microblaze_1_axi_periph_m02_axi_ARPROT = AXI1_arprot[2:0];
  assign microblaze_1_axi_periph_m02_axi_ARVALID = AXI1_arvalid;
  assign microblaze_1_axi_periph_m02_axi_AWADDR = AXI1_awaddr[31:0];
  assign microblaze_1_axi_periph_m02_axi_AWPROT = AXI1_awprot[2:0];
  assign microblaze_1_axi_periph_m02_axi_AWVALID = AXI1_awvalid;
  assign microblaze_1_axi_periph_m02_axi_BREADY = AXI1_bready;
  assign microblaze_1_axi_periph_m02_axi_RREADY = AXI1_rready;
  assign microblaze_1_axi_periph_m02_axi_WDATA = AXI1_wdata[31:0];
  assign microblaze_1_axi_periph_m02_axi_WSTRB = AXI1_wstrb[3:0];
  assign microblaze_1_axi_periph_m02_axi_WVALID = AXI1_wvalid;
  assign microblaze_1_axi_periph_m03_axi_ARADDR = AXI2_araddr[31:0];
  assign microblaze_1_axi_periph_m03_axi_ARPROT = AXI2_arprot[2:0];
  assign microblaze_1_axi_periph_m03_axi_ARVALID = AXI2_arvalid;
  assign microblaze_1_axi_periph_m03_axi_AWADDR = AXI2_awaddr[31:0];
  assign microblaze_1_axi_periph_m03_axi_AWPROT = AXI2_awprot[2:0];
  assign microblaze_1_axi_periph_m03_axi_AWVALID = AXI2_awvalid;
  assign microblaze_1_axi_periph_m03_axi_BREADY = AXI2_bready;
  assign microblaze_1_axi_periph_m03_axi_RREADY = AXI2_rready;
  assign microblaze_1_axi_periph_m03_axi_WDATA = AXI2_wdata[31:0];
  assign microblaze_1_axi_periph_m03_axi_WSTRB = AXI2_wstrb[3:0];
  assign microblaze_1_axi_periph_m03_axi_WVALID = AXI2_wvalid;
  assign microblaze_1_axi_periph_m04_axi_ARADDR = AXI3_araddr[31:0];
  assign microblaze_1_axi_periph_m04_axi_ARPROT = AXI3_arprot[2:0];
  assign microblaze_1_axi_periph_m04_axi_ARVALID = AXI3_arvalid;
  assign microblaze_1_axi_periph_m04_axi_AWADDR = AXI3_awaddr[31:0];
  assign microblaze_1_axi_periph_m04_axi_AWPROT = AXI3_awprot[2:0];
  assign microblaze_1_axi_periph_m04_axi_AWVALID = AXI3_awvalid;
  assign microblaze_1_axi_periph_m04_axi_BREADY = AXI3_bready;
  assign microblaze_1_axi_periph_m04_axi_RREADY = AXI3_rready;
  assign microblaze_1_axi_periph_m04_axi_WDATA = AXI3_wdata[31:0];
  assign microblaze_1_axi_periph_m04_axi_WSTRB = AXI3_wstrb[3:0];
  assign microblaze_1_axi_periph_m04_axi_WVALID = AXI3_wvalid;
  assign microblaze_1_axi_periph_m05_axi_ARADDR = AXI4_araddr[31:0];
  assign microblaze_1_axi_periph_m05_axi_ARPROT = AXI4_arprot[2:0];
  assign microblaze_1_axi_periph_m05_axi_ARVALID = AXI4_arvalid;
  assign microblaze_1_axi_periph_m05_axi_AWADDR = AXI4_awaddr[31:0];
  assign microblaze_1_axi_periph_m05_axi_AWPROT = AXI4_awprot[2:0];
  assign microblaze_1_axi_periph_m05_axi_AWVALID = AXI4_awvalid;
  assign microblaze_1_axi_periph_m05_axi_BREADY = AXI4_bready;
  assign microblaze_1_axi_periph_m05_axi_RREADY = AXI4_rready;
  assign microblaze_1_axi_periph_m05_axi_WDATA = AXI4_wdata[31:0];
  assign microblaze_1_axi_periph_m05_axi_WSTRB = AXI4_wstrb[3:0];
  assign microblaze_1_axi_periph_m05_axi_WVALID = AXI4_wvalid;
  assign microblaze_1_axi_periph_m06_axi_ARADDR = AXI5_araddr[31:0];
  assign microblaze_1_axi_periph_m06_axi_ARPROT = AXI5_arprot[2:0];
  assign microblaze_1_axi_periph_m06_axi_ARVALID = AXI5_arvalid;
  assign microblaze_1_axi_periph_m06_axi_AWADDR = AXI5_awaddr[31:0];
  assign microblaze_1_axi_periph_m06_axi_AWPROT = AXI5_awprot[2:0];
  assign microblaze_1_axi_periph_m06_axi_AWVALID = AXI5_awvalid;
  assign microblaze_1_axi_periph_m06_axi_BREADY = AXI5_bready;
  assign microblaze_1_axi_periph_m06_axi_RREADY = AXI5_rready;
  assign microblaze_1_axi_periph_m06_axi_WDATA = AXI5_wdata[31:0];
  assign microblaze_1_axi_periph_m06_axi_WSTRB = AXI5_wstrb[3:0];
  assign microblaze_1_axi_periph_m06_axi_WVALID = AXI5_wvalid;
  assign microblaze_1_axi_periph_m07_axi_ARADDR = AXI6_araddr[31:0];
  assign microblaze_1_axi_periph_m07_axi_ARPROT = AXI6_arprot[2:0];
  assign microblaze_1_axi_periph_m07_axi_ARVALID = AXI6_arvalid;
  assign microblaze_1_axi_periph_m07_axi_AWADDR = AXI6_awaddr[31:0];
  assign microblaze_1_axi_periph_m07_axi_AWPROT = AXI6_awprot[2:0];
  assign microblaze_1_axi_periph_m07_axi_AWVALID = AXI6_awvalid;
  assign microblaze_1_axi_periph_m07_axi_BREADY = AXI6_bready;
  assign microblaze_1_axi_periph_m07_axi_RREADY = AXI6_rready;
  assign microblaze_1_axi_periph_m07_axi_WDATA = AXI6_wdata[31:0];
  assign microblaze_1_axi_periph_m07_axi_WSTRB = AXI6_wstrb[3:0];
  assign microblaze_1_axi_periph_m07_axi_WVALID = AXI6_wvalid;
  assign proc_sys_reset_1_peripheral_aresetn = AXI_aresetn[0];
eyescan_subsystem_drp_bridge_0_0 drp_bridge_0
       (.AXI_aclk(axi_aclk_1),
        .AXI_araddr(microblaze_1_axi_periph_m01_axi_ARADDR),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .AXI_arprot(microblaze_1_axi_periph_m01_axi_ARPROT),
        .AXI_arready(microblaze_1_axi_periph_m01_axi_ARREADY),
        .AXI_arvalid(microblaze_1_axi_periph_m01_axi_ARVALID),
        .AXI_awaddr(microblaze_1_axi_periph_m01_axi_AWADDR),
        .AXI_awprot(microblaze_1_axi_periph_m01_axi_AWPROT),
        .AXI_awready(microblaze_1_axi_periph_m01_axi_AWREADY),
        .AXI_awvalid(microblaze_1_axi_periph_m01_axi_AWVALID),
        .AXI_bready(microblaze_1_axi_periph_m01_axi_BREADY),
        .AXI_bresp(microblaze_1_axi_periph_m01_axi_BRESP),
        .AXI_bvalid(microblaze_1_axi_periph_m01_axi_BVALID),
        .AXI_rdata(microblaze_1_axi_periph_m01_axi_RDATA),
        .AXI_rready(microblaze_1_axi_periph_m01_axi_RREADY),
        .AXI_rresp(microblaze_1_axi_periph_m01_axi_RRESP),
        .AXI_rvalid(microblaze_1_axi_periph_m01_axi_RVALID),
        .AXI_wdata(microblaze_1_axi_periph_m01_axi_WDATA),
        .AXI_wready(microblaze_1_axi_periph_m01_axi_WREADY),
        .AXI_wstrb(microblaze_1_axi_periph_m01_axi_WSTRB),
        .AXI_wvalid(microblaze_1_axi_periph_m01_axi_WVALID),
        .drp_addr(drp_mux_1_gt_drp_DADDR),
        .drp_di(drp_mux_1_gt_drp_DI),
        .drp_do(drp_mux_1_gt_drp_DO),
        .drp_en(drp_mux_1_gt_drp_DEN),
        .drp_rdy(drp_mux_1_gt_drp_DRDY),
        .drp_we(drp_mux_1_gt_drp_DWE));
eyescan_subsystem_drp_bridge_1_0 drp_bridge_1
       (.AXI_aclk(axi_aclk_1),
        .AXI_araddr(microblaze_1_axi_periph_m02_axi_ARADDR),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .AXI_arprot(microblaze_1_axi_periph_m02_axi_ARPROT),
        .AXI_arready(microblaze_1_axi_periph_m02_axi_ARREADY),
        .AXI_arvalid(microblaze_1_axi_periph_m02_axi_ARVALID),
        .AXI_awaddr(microblaze_1_axi_periph_m02_axi_AWADDR),
        .AXI_awprot(microblaze_1_axi_periph_m02_axi_AWPROT),
        .AXI_awready(microblaze_1_axi_periph_m02_axi_AWREADY),
        .AXI_awvalid(microblaze_1_axi_periph_m02_axi_AWVALID),
        .AXI_bready(microblaze_1_axi_periph_m02_axi_BREADY),
        .AXI_bresp(microblaze_1_axi_periph_m02_axi_BRESP),
        .AXI_bvalid(microblaze_1_axi_periph_m02_axi_BVALID),
        .AXI_rdata(microblaze_1_axi_periph_m02_axi_RDATA),
        .AXI_rready(microblaze_1_axi_periph_m02_axi_RREADY),
        .AXI_rresp(microblaze_1_axi_periph_m02_axi_RRESP),
        .AXI_rvalid(microblaze_1_axi_periph_m02_axi_RVALID),
        .AXI_wdata(microblaze_1_axi_periph_m02_axi_WDATA),
        .AXI_wready(microblaze_1_axi_periph_m02_axi_WREADY),
        .AXI_wstrb(microblaze_1_axi_periph_m02_axi_WSTRB),
        .AXI_wvalid(microblaze_1_axi_periph_m02_axi_WVALID),
        .drp_addr(drp_mux_2_gt_drp_DADDR),
        .drp_di(drp_mux_2_gt_drp_DI),
        .drp_do(drp_mux_2_gt_drp_DO),
        .drp_en(drp_mux_2_gt_drp_DEN),
        .drp_rdy(drp_mux_2_gt_drp_DRDY),
        .drp_we(drp_mux_2_gt_drp_DWE));
eyescan_subsystem_drp_bridge_2_0 drp_bridge_2
       (.AXI_aclk(axi_aclk_1),
        .AXI_araddr(microblaze_1_axi_periph_m03_axi_ARADDR),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .AXI_arprot(microblaze_1_axi_periph_m03_axi_ARPROT),
        .AXI_arready(microblaze_1_axi_periph_m03_axi_ARREADY),
        .AXI_arvalid(microblaze_1_axi_periph_m03_axi_ARVALID),
        .AXI_awaddr(microblaze_1_axi_periph_m03_axi_AWADDR),
        .AXI_awprot(microblaze_1_axi_periph_m03_axi_AWPROT),
        .AXI_awready(microblaze_1_axi_periph_m03_axi_AWREADY),
        .AXI_awvalid(microblaze_1_axi_periph_m03_axi_AWVALID),
        .AXI_bready(microblaze_1_axi_periph_m03_axi_BREADY),
        .AXI_bresp(microblaze_1_axi_periph_m03_axi_BRESP),
        .AXI_bvalid(microblaze_1_axi_periph_m03_axi_BVALID),
        .AXI_rdata(microblaze_1_axi_periph_m03_axi_RDATA),
        .AXI_rready(microblaze_1_axi_periph_m03_axi_RREADY),
        .AXI_rresp(microblaze_1_axi_periph_m03_axi_RRESP),
        .AXI_rvalid(microblaze_1_axi_periph_m03_axi_RVALID),
        .AXI_wdata(microblaze_1_axi_periph_m03_axi_WDATA),
        .AXI_wready(microblaze_1_axi_periph_m03_axi_WREADY),
        .AXI_wstrb(microblaze_1_axi_periph_m03_axi_WSTRB),
        .AXI_wvalid(microblaze_1_axi_periph_m03_axi_WVALID),
        .drp_addr(drp_mux_3_gt_drp_DADDR),
        .drp_di(drp_mux_3_gt_drp_DI),
        .drp_do(drp_mux_3_gt_drp_DO),
        .drp_en(drp_mux_3_gt_drp_DEN),
        .drp_rdy(drp_mux_3_gt_drp_DRDY),
        .drp_we(drp_mux_3_gt_drp_DWE));
eyescan_subsystem_drp_bridge_3_0 drp_bridge_3
       (.AXI_aclk(axi_aclk_1),
        .AXI_araddr(microblaze_1_axi_periph_m04_axi_ARADDR),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .AXI_arprot(microblaze_1_axi_periph_m04_axi_ARPROT),
        .AXI_arready(microblaze_1_axi_periph_m04_axi_ARREADY),
        .AXI_arvalid(microblaze_1_axi_periph_m04_axi_ARVALID),
        .AXI_awaddr(microblaze_1_axi_periph_m04_axi_AWADDR),
        .AXI_awprot(microblaze_1_axi_periph_m04_axi_AWPROT),
        .AXI_awready(microblaze_1_axi_periph_m04_axi_AWREADY),
        .AXI_awvalid(microblaze_1_axi_periph_m04_axi_AWVALID),
        .AXI_bready(microblaze_1_axi_periph_m04_axi_BREADY),
        .AXI_bresp(microblaze_1_axi_periph_m04_axi_BRESP),
        .AXI_bvalid(microblaze_1_axi_periph_m04_axi_BVALID),
        .AXI_rdata(microblaze_1_axi_periph_m04_axi_RDATA),
        .AXI_rready(microblaze_1_axi_periph_m04_axi_RREADY),
        .AXI_rresp(microblaze_1_axi_periph_m04_axi_RRESP),
        .AXI_rvalid(microblaze_1_axi_periph_m04_axi_RVALID),
        .AXI_wdata(microblaze_1_axi_periph_m04_axi_WDATA),
        .AXI_wready(microblaze_1_axi_periph_m04_axi_WREADY),
        .AXI_wstrb(microblaze_1_axi_periph_m04_axi_WSTRB),
        .AXI_wvalid(microblaze_1_axi_periph_m04_axi_WVALID),
        .drp_addr(drp_bridge_4_drp_DADDR),
        .drp_di(drp_bridge_4_drp_DI),
        .drp_do(drp_bridge_4_drp_DO),
        .drp_en(drp_bridge_4_drp_DEN),
        .drp_rdy(drp_bridge_4_drp_DRDY),
        .drp_we(drp_bridge_4_drp_DWE));
eyescan_subsystem_drp_bridge_4_0 drp_bridge_4
       (.AXI_aclk(axi_aclk_1),
        .AXI_araddr(microblaze_1_axi_periph_m05_axi_ARADDR),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .AXI_arprot(microblaze_1_axi_periph_m05_axi_ARPROT),
        .AXI_arready(microblaze_1_axi_periph_m05_axi_ARREADY),
        .AXI_arvalid(microblaze_1_axi_periph_m05_axi_ARVALID),
        .AXI_awaddr(microblaze_1_axi_periph_m05_axi_AWADDR),
        .AXI_awprot(microblaze_1_axi_periph_m05_axi_AWPROT),
        .AXI_awready(microblaze_1_axi_periph_m05_axi_AWREADY),
        .AXI_awvalid(microblaze_1_axi_periph_m05_axi_AWVALID),
        .AXI_bready(microblaze_1_axi_periph_m05_axi_BREADY),
        .AXI_bresp(microblaze_1_axi_periph_m05_axi_BRESP),
        .AXI_bvalid(microblaze_1_axi_periph_m05_axi_BVALID),
        .AXI_rdata(microblaze_1_axi_periph_m05_axi_RDATA),
        .AXI_rready(microblaze_1_axi_periph_m05_axi_RREADY),
        .AXI_rresp(microblaze_1_axi_periph_m05_axi_RRESP),
        .AXI_rvalid(microblaze_1_axi_periph_m05_axi_RVALID),
        .AXI_wdata(microblaze_1_axi_periph_m05_axi_WDATA),
        .AXI_wready(microblaze_1_axi_periph_m05_axi_WREADY),
        .AXI_wstrb(microblaze_1_axi_periph_m05_axi_WSTRB),
        .AXI_wvalid(microblaze_1_axi_periph_m05_axi_WVALID),
        .drp_addr(drp_bridge_5_drp_DADDR),
        .drp_di(drp_bridge_5_drp_DI),
        .drp_do(drp_bridge_5_drp_DO),
        .drp_en(drp_bridge_5_drp_DEN),
        .drp_rdy(drp_bridge_5_drp_DRDY),
        .drp_we(drp_bridge_5_drp_DWE));
eyescan_subsystem_drp_bridge_5_0 drp_bridge_5
       (.AXI_aclk(axi_aclk_1),
        .AXI_araddr(microblaze_1_axi_periph_m06_axi_ARADDR),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .AXI_arprot(microblaze_1_axi_periph_m06_axi_ARPROT),
        .AXI_arready(microblaze_1_axi_periph_m06_axi_ARREADY),
        .AXI_arvalid(microblaze_1_axi_periph_m06_axi_ARVALID),
        .AXI_awaddr(microblaze_1_axi_periph_m06_axi_AWADDR),
        .AXI_awprot(microblaze_1_axi_periph_m06_axi_AWPROT),
        .AXI_awready(microblaze_1_axi_periph_m06_axi_AWREADY),
        .AXI_awvalid(microblaze_1_axi_periph_m06_axi_AWVALID),
        .AXI_bready(microblaze_1_axi_periph_m06_axi_BREADY),
        .AXI_bresp(microblaze_1_axi_periph_m06_axi_BRESP),
        .AXI_bvalid(microblaze_1_axi_periph_m06_axi_BVALID),
        .AXI_rdata(microblaze_1_axi_periph_m06_axi_RDATA),
        .AXI_rready(microblaze_1_axi_periph_m06_axi_RREADY),
        .AXI_rresp(microblaze_1_axi_periph_m06_axi_RRESP),
        .AXI_rvalid(microblaze_1_axi_periph_m06_axi_RVALID),
        .AXI_wdata(microblaze_1_axi_periph_m06_axi_WDATA),
        .AXI_wready(microblaze_1_axi_periph_m06_axi_WREADY),
        .AXI_wstrb(microblaze_1_axi_periph_m06_axi_WSTRB),
        .AXI_wvalid(microblaze_1_axi_periph_m06_axi_WVALID),
        .drp_addr(drp_bridge_6_drp_DADDR),
        .drp_di(drp_bridge_6_drp_DI),
        .drp_do(drp_bridge_6_drp_DO),
        .drp_en(drp_bridge_6_drp_DEN),
        .drp_rdy(drp_bridge_6_drp_DRDY),
        .drp_we(drp_bridge_6_drp_DWE));
eyescan_subsystem_drp_bridge_6_0 drp_bridge_6
       (.AXI_aclk(axi_aclk_1),
        .AXI_araddr(microblaze_1_axi_periph_m07_axi_ARADDR),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .AXI_arprot(microblaze_1_axi_periph_m07_axi_ARPROT),
        .AXI_arready(microblaze_1_axi_periph_m07_axi_ARREADY),
        .AXI_arvalid(microblaze_1_axi_periph_m07_axi_ARVALID),
        .AXI_awaddr(microblaze_1_axi_periph_m07_axi_AWADDR),
        .AXI_awprot(microblaze_1_axi_periph_m07_axi_AWPROT),
        .AXI_awready(microblaze_1_axi_periph_m07_axi_AWREADY),
        .AXI_awvalid(microblaze_1_axi_periph_m07_axi_AWVALID),
        .AXI_bready(microblaze_1_axi_periph_m07_axi_BREADY),
        .AXI_bresp(microblaze_1_axi_periph_m07_axi_BRESP),
        .AXI_bvalid(microblaze_1_axi_periph_m07_axi_BVALID),
        .AXI_rdata(microblaze_1_axi_periph_m07_axi_RDATA),
        .AXI_rready(microblaze_1_axi_periph_m07_axi_RREADY),
        .AXI_rresp(microblaze_1_axi_periph_m07_axi_RRESP),
        .AXI_rvalid(microblaze_1_axi_periph_m07_axi_RVALID),
        .AXI_wdata(microblaze_1_axi_periph_m07_axi_WDATA),
        .AXI_wready(microblaze_1_axi_periph_m07_axi_WREADY),
        .AXI_wstrb(microblaze_1_axi_periph_m07_axi_WSTRB),
        .AXI_wvalid(microblaze_1_axi_periph_m07_axi_WVALID),
        .drp_addr(drp_bridge_7_drp_DADDR),
        .drp_di(drp_bridge_7_drp_DI),
        .drp_do(drp_bridge_7_drp_DO),
        .drp_en(drp_bridge_7_drp_DEN),
        .drp_rdy(drp_bridge_7_drp_DRDY),
        .drp_we(drp_bridge_7_drp_DWE));
eyescan_subsystem_drp_bridge_7_0 drp_bridge_7
       (.AXI_aclk(axi_aclk_1),
        .AXI_araddr(microblaze_1_axi_periph_m00_axi_ARADDR),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .AXI_arprot(microblaze_1_axi_periph_m00_axi_ARPROT),
        .AXI_arready(microblaze_1_axi_periph_m00_axi_ARREADY),
        .AXI_arvalid(microblaze_1_axi_periph_m00_axi_ARVALID),
        .AXI_awaddr(microblaze_1_axi_periph_m00_axi_AWADDR),
        .AXI_awprot(microblaze_1_axi_periph_m00_axi_AWPROT),
        .AXI_awready(microblaze_1_axi_periph_m00_axi_AWREADY),
        .AXI_awvalid(microblaze_1_axi_periph_m00_axi_AWVALID),
        .AXI_bready(microblaze_1_axi_periph_m00_axi_BREADY),
        .AXI_bresp(microblaze_1_axi_periph_m00_axi_BRESP),
        .AXI_bvalid(microblaze_1_axi_periph_m00_axi_BVALID),
        .AXI_rdata(microblaze_1_axi_periph_m00_axi_RDATA),
        .AXI_rready(microblaze_1_axi_periph_m00_axi_RREADY),
        .AXI_rresp(microblaze_1_axi_periph_m00_axi_RRESP),
        .AXI_rvalid(microblaze_1_axi_periph_m00_axi_RVALID),
        .AXI_wdata(microblaze_1_axi_periph_m00_axi_WDATA),
        .AXI_wready(microblaze_1_axi_periph_m00_axi_WREADY),
        .AXI_wstrb(microblaze_1_axi_periph_m00_axi_WSTRB),
        .AXI_wvalid(microblaze_1_axi_periph_m00_axi_WVALID),
        .drp_addr(drp_mux_0_gt_drp_DADDR),
        .drp_di(drp_mux_0_gt_drp_DI),
        .drp_do(drp_mux_0_gt_drp_DO),
        .drp_en(drp_mux_0_gt_drp_DEN),
        .drp_rdy(drp_mux_0_gt_drp_DRDY),
        .drp_we(drp_mux_0_gt_drp_DWE));
endmodule

module eyescan_subsystem
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

  wire axi_aclk_1;
  wire [8:0]drp_bridge_4_drp_DADDR;
  wire drp_bridge_4_drp_DEN;
  wire [15:0]drp_bridge_4_drp_DI;
  wire [15:0]drp_bridge_4_drp_DO;
  wire drp_bridge_4_drp_DRDY;
  wire drp_bridge_4_drp_DWE;
  wire [8:0]drp_bridge_5_drp_DADDR;
  wire drp_bridge_5_drp_DEN;
  wire [15:0]drp_bridge_5_drp_DI;
  wire [15:0]drp_bridge_5_drp_DO;
  wire drp_bridge_5_drp_DRDY;
  wire drp_bridge_5_drp_DWE;
  wire [8:0]drp_bridge_6_drp_DADDR;
  wire drp_bridge_6_drp_DEN;
  wire [15:0]drp_bridge_6_drp_DI;
  wire [15:0]drp_bridge_6_drp_DO;
  wire drp_bridge_6_drp_DRDY;
  wire drp_bridge_6_drp_DWE;
  wire [8:0]drp_bridge_7_drp_DADDR;
  wire drp_bridge_7_drp_DEN;
  wire [15:0]drp_bridge_7_drp_DI;
  wire [15:0]drp_bridge_7_drp_DO;
  wire drp_bridge_7_drp_DRDY;
  wire drp_bridge_7_drp_DWE;
  wire [8:0]drp_mux_0_gt_drp_DADDR;
  wire drp_mux_0_gt_drp_DEN;
  wire [15:0]drp_mux_0_gt_drp_DI;
  wire [15:0]drp_mux_0_gt_drp_DO;
  wire drp_mux_0_gt_drp_DRDY;
  wire drp_mux_0_gt_drp_DWE;
  wire [8:0]drp_mux_1_gt_drp_DADDR;
  wire drp_mux_1_gt_drp_DEN;
  wire [15:0]drp_mux_1_gt_drp_DI;
  wire [15:0]drp_mux_1_gt_drp_DO;
  wire drp_mux_1_gt_drp_DRDY;
  wire drp_mux_1_gt_drp_DWE;
  wire [8:0]drp_mux_2_gt_drp_DADDR;
  wire drp_mux_2_gt_drp_DEN;
  wire [15:0]drp_mux_2_gt_drp_DI;
  wire [15:0]drp_mux_2_gt_drp_DO;
  wire drp_mux_2_gt_drp_DRDY;
  wire drp_mux_2_gt_drp_DWE;
  wire [8:0]drp_mux_3_gt_drp_DADDR;
  wire drp_mux_3_gt_drp_DEN;
  wire [15:0]drp_mux_3_gt_drp_DI;
  wire [15:0]drp_mux_3_gt_drp_DO;
  wire drp_mux_3_gt_drp_DRDY;
  wire drp_mux_3_gt_drp_DWE;
  wire [31:0]jtag_axi_0_m_axi_ARADDR;
  wire [1:0]jtag_axi_0_m_axi_ARBURST;
  wire [3:0]jtag_axi_0_m_axi_ARCACHE;
  wire [0:0]jtag_axi_0_m_axi_ARID;
  wire [7:0]jtag_axi_0_m_axi_ARLEN;
  wire jtag_axi_0_m_axi_ARLOCK;
  wire [2:0]jtag_axi_0_m_axi_ARPROT;
  wire [3:0]jtag_axi_0_m_axi_ARQOS;
  wire [0:0]jtag_axi_0_m_axi_ARREADY;
  wire [2:0]jtag_axi_0_m_axi_ARSIZE;
  wire jtag_axi_0_m_axi_ARVALID;
  wire [31:0]jtag_axi_0_m_axi_AWADDR;
  wire [1:0]jtag_axi_0_m_axi_AWBURST;
  wire [3:0]jtag_axi_0_m_axi_AWCACHE;
  wire [0:0]jtag_axi_0_m_axi_AWID;
  wire [7:0]jtag_axi_0_m_axi_AWLEN;
  wire jtag_axi_0_m_axi_AWLOCK;
  wire [2:0]jtag_axi_0_m_axi_AWPROT;
  wire [3:0]jtag_axi_0_m_axi_AWQOS;
  wire [0:0]jtag_axi_0_m_axi_AWREADY;
  wire [2:0]jtag_axi_0_m_axi_AWSIZE;
  wire jtag_axi_0_m_axi_AWVALID;
  wire [0:0]jtag_axi_0_m_axi_BID;
  wire jtag_axi_0_m_axi_BREADY;
  wire [1:0]jtag_axi_0_m_axi_BRESP;
  wire [0:0]jtag_axi_0_m_axi_BVALID;
  wire [31:0]jtag_axi_0_m_axi_RDATA;
  wire [0:0]jtag_axi_0_m_axi_RID;
  wire [0:0]jtag_axi_0_m_axi_RLAST;
  wire jtag_axi_0_m_axi_RREADY;
  wire [1:0]jtag_axi_0_m_axi_RRESP;
  wire [0:0]jtag_axi_0_m_axi_RVALID;
  wire [31:0]jtag_axi_0_m_axi_WDATA;
  wire jtag_axi_0_m_axi_WLAST;
  wire [0:0]jtag_axi_0_m_axi_WREADY;
  wire [3:0]jtag_axi_0_m_axi_WSTRB;
  wire jtag_axi_0_m_axi_WVALID;
  wire [0:0]m07_aresetn_1;
  wire [31:0]microblaze_1_axi_dp_ARADDR;
  wire [2:0]microblaze_1_axi_dp_ARPROT;
  wire microblaze_1_axi_dp_ARREADY;
  wire microblaze_1_axi_dp_ARVALID;
  wire [31:0]microblaze_1_axi_dp_AWADDR;
  wire [2:0]microblaze_1_axi_dp_AWPROT;
  wire microblaze_1_axi_dp_AWREADY;
  wire microblaze_1_axi_dp_AWVALID;
  wire microblaze_1_axi_dp_BREADY;
  wire [1:0]microblaze_1_axi_dp_BRESP;
  wire microblaze_1_axi_dp_BVALID;
  wire [31:0]microblaze_1_axi_dp_RDATA;
  wire microblaze_1_axi_dp_RREADY;
  wire [1:0]microblaze_1_axi_dp_RRESP;
  wire microblaze_1_axi_dp_RVALID;
  wire [31:0]microblaze_1_axi_dp_WDATA;
  wire microblaze_1_axi_dp_WREADY;
  wire [3:0]microblaze_1_axi_dp_WSTRB;
  wire microblaze_1_axi_dp_WVALID;
  wire [31:0]microblaze_1_axi_periph_m00_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m00_axi_ARPROT;
  wire microblaze_1_axi_periph_m00_axi_ARREADY;
  wire microblaze_1_axi_periph_m00_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m00_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m00_axi_AWPROT;
  wire microblaze_1_axi_periph_m00_axi_AWREADY;
  wire microblaze_1_axi_periph_m00_axi_AWVALID;
  wire microblaze_1_axi_periph_m00_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m00_axi_BRESP;
  wire microblaze_1_axi_periph_m00_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m00_axi_RDATA;
  wire microblaze_1_axi_periph_m00_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m00_axi_RRESP;
  wire microblaze_1_axi_periph_m00_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m00_axi_WDATA;
  wire microblaze_1_axi_periph_m00_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m00_axi_WSTRB;
  wire microblaze_1_axi_periph_m00_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m01_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m01_axi_ARPROT;
  wire microblaze_1_axi_periph_m01_axi_ARREADY;
  wire microblaze_1_axi_periph_m01_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m01_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m01_axi_AWPROT;
  wire microblaze_1_axi_periph_m01_axi_AWREADY;
  wire microblaze_1_axi_periph_m01_axi_AWVALID;
  wire microblaze_1_axi_periph_m01_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m01_axi_BRESP;
  wire microblaze_1_axi_periph_m01_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m01_axi_RDATA;
  wire microblaze_1_axi_periph_m01_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m01_axi_RRESP;
  wire microblaze_1_axi_periph_m01_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m01_axi_WDATA;
  wire microblaze_1_axi_periph_m01_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m01_axi_WSTRB;
  wire microblaze_1_axi_periph_m01_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m02_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m02_axi_ARPROT;
  wire microblaze_1_axi_periph_m02_axi_ARREADY;
  wire microblaze_1_axi_periph_m02_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m02_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m02_axi_AWPROT;
  wire microblaze_1_axi_periph_m02_axi_AWREADY;
  wire microblaze_1_axi_periph_m02_axi_AWVALID;
  wire microblaze_1_axi_periph_m02_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m02_axi_BRESP;
  wire microblaze_1_axi_periph_m02_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m02_axi_RDATA;
  wire microblaze_1_axi_periph_m02_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m02_axi_RRESP;
  wire microblaze_1_axi_periph_m02_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m02_axi_WDATA;
  wire microblaze_1_axi_periph_m02_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m02_axi_WSTRB;
  wire microblaze_1_axi_periph_m02_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m03_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m03_axi_ARPROT;
  wire microblaze_1_axi_periph_m03_axi_ARREADY;
  wire microblaze_1_axi_periph_m03_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m03_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m03_axi_AWPROT;
  wire microblaze_1_axi_periph_m03_axi_AWREADY;
  wire microblaze_1_axi_periph_m03_axi_AWVALID;
  wire microblaze_1_axi_periph_m03_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m03_axi_BRESP;
  wire microblaze_1_axi_periph_m03_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m03_axi_RDATA;
  wire microblaze_1_axi_periph_m03_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m03_axi_RRESP;
  wire microblaze_1_axi_periph_m03_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m03_axi_WDATA;
  wire microblaze_1_axi_periph_m03_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m03_axi_WSTRB;
  wire microblaze_1_axi_periph_m03_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m04_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m04_axi_ARPROT;
  wire microblaze_1_axi_periph_m04_axi_ARREADY;
  wire microblaze_1_axi_periph_m04_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m04_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m04_axi_AWPROT;
  wire microblaze_1_axi_periph_m04_axi_AWREADY;
  wire microblaze_1_axi_periph_m04_axi_AWVALID;
  wire microblaze_1_axi_periph_m04_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m04_axi_BRESP;
  wire microblaze_1_axi_periph_m04_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m04_axi_RDATA;
  wire microblaze_1_axi_periph_m04_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m04_axi_RRESP;
  wire microblaze_1_axi_periph_m04_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m04_axi_WDATA;
  wire microblaze_1_axi_periph_m04_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m04_axi_WSTRB;
  wire microblaze_1_axi_periph_m04_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m05_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m05_axi_ARPROT;
  wire microblaze_1_axi_periph_m05_axi_ARREADY;
  wire microblaze_1_axi_periph_m05_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m05_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m05_axi_AWPROT;
  wire microblaze_1_axi_periph_m05_axi_AWREADY;
  wire microblaze_1_axi_periph_m05_axi_AWVALID;
  wire microblaze_1_axi_periph_m05_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m05_axi_BRESP;
  wire microblaze_1_axi_periph_m05_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m05_axi_RDATA;
  wire microblaze_1_axi_periph_m05_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m05_axi_RRESP;
  wire microblaze_1_axi_periph_m05_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m05_axi_WDATA;
  wire microblaze_1_axi_periph_m05_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m05_axi_WSTRB;
  wire microblaze_1_axi_periph_m05_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m06_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m06_axi_ARPROT;
  wire microblaze_1_axi_periph_m06_axi_ARREADY;
  wire microblaze_1_axi_periph_m06_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m06_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m06_axi_AWPROT;
  wire microblaze_1_axi_periph_m06_axi_AWREADY;
  wire microblaze_1_axi_periph_m06_axi_AWVALID;
  wire microblaze_1_axi_periph_m06_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m06_axi_BRESP;
  wire microblaze_1_axi_periph_m06_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m06_axi_RDATA;
  wire microblaze_1_axi_periph_m06_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m06_axi_RRESP;
  wire microblaze_1_axi_periph_m06_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m06_axi_WDATA;
  wire microblaze_1_axi_periph_m06_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m06_axi_WSTRB;
  wire microblaze_1_axi_periph_m06_axi_WVALID;
  wire [31:0]microblaze_1_axi_periph_m07_axi_ARADDR;
  wire [2:0]microblaze_1_axi_periph_m07_axi_ARPROT;
  wire microblaze_1_axi_periph_m07_axi_ARREADY;
  wire microblaze_1_axi_periph_m07_axi_ARVALID;
  wire [31:0]microblaze_1_axi_periph_m07_axi_AWADDR;
  wire [2:0]microblaze_1_axi_periph_m07_axi_AWPROT;
  wire microblaze_1_axi_periph_m07_axi_AWREADY;
  wire microblaze_1_axi_periph_m07_axi_AWVALID;
  wire microblaze_1_axi_periph_m07_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m07_axi_BRESP;
  wire microblaze_1_axi_periph_m07_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m07_axi_RDATA;
  wire microblaze_1_axi_periph_m07_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m07_axi_RRESP;
  wire microblaze_1_axi_periph_m07_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m07_axi_WDATA;
  wire microblaze_1_axi_periph_m07_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m07_axi_WSTRB;
  wire microblaze_1_axi_periph_m07_axi_WVALID;
  wire [13:0]microblaze_1_axi_periph_m08_axi_ARADDR;
  wire [1:0]microblaze_1_axi_periph_m08_axi_ARBURST;
  wire [3:0]microblaze_1_axi_periph_m08_axi_ARCACHE;
  wire [7:0]microblaze_1_axi_periph_m08_axi_ARLEN;
  wire [0:0]microblaze_1_axi_periph_m08_axi_ARLOCK;
  wire [2:0]microblaze_1_axi_periph_m08_axi_ARPROT;
  wire [0:0]microblaze_1_axi_periph_m08_axi_ARREADY;
  wire [2:0]microblaze_1_axi_periph_m08_axi_ARSIZE;
  wire [0:0]microblaze_1_axi_periph_m08_axi_ARVALID;
  wire [13:0]microblaze_1_axi_periph_m08_axi_AWADDR;
  wire [1:0]microblaze_1_axi_periph_m08_axi_AWBURST;
  wire [3:0]microblaze_1_axi_periph_m08_axi_AWCACHE;
  wire [7:0]microblaze_1_axi_periph_m08_axi_AWLEN;
  wire [0:0]microblaze_1_axi_periph_m08_axi_AWLOCK;
  wire [2:0]microblaze_1_axi_periph_m08_axi_AWPROT;
  wire [0:0]microblaze_1_axi_periph_m08_axi_AWREADY;
  wire [2:0]microblaze_1_axi_periph_m08_axi_AWSIZE;
  wire [0:0]microblaze_1_axi_periph_m08_axi_AWVALID;
  wire [0:0]microblaze_1_axi_periph_m08_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m08_axi_BRESP;
  wire [0:0]microblaze_1_axi_periph_m08_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m08_axi_RDATA;
  wire [0:0]microblaze_1_axi_periph_m08_axi_RLAST;
  wire [0:0]microblaze_1_axi_periph_m08_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m08_axi_RRESP;
  wire [0:0]microblaze_1_axi_periph_m08_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m08_axi_WDATA;
  wire [0:0]microblaze_1_axi_periph_m08_axi_WLAST;
  wire [0:0]microblaze_1_axi_periph_m08_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m08_axi_WSTRB;
  wire [0:0]microblaze_1_axi_periph_m08_axi_WVALID;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire reset_1;

  assign axi_aclk_1 = AXI_aclk;
  assign drp_bridge_4_drp_DO = gt_drp_3_do[15:0];
  assign drp_bridge_4_drp_DRDY = gt_drp_3_drdy;
  assign drp_bridge_5_drp_DO = gt_drp_4_do[15:0];
  assign drp_bridge_5_drp_DRDY = gt_drp_4_drdy;
  assign drp_bridge_6_drp_DO = gt_drp_5_do[15:0];
  assign drp_bridge_6_drp_DRDY = gt_drp_5_drdy;
  assign drp_bridge_7_drp_DO = gt_drp_6_do[15:0];
  assign drp_bridge_7_drp_DRDY = gt_drp_6_drdy;
  assign drp_mux_0_gt_drp_DO = gt_drp_7_do[15:0];
  assign drp_mux_0_gt_drp_DRDY = gt_drp_7_drdy;
  assign drp_mux_1_gt_drp_DO = gt_drp_0_do[15:0];
  assign drp_mux_1_gt_drp_DRDY = gt_drp_0_drdy;
  assign drp_mux_2_gt_drp_DO = gt_drp_1_do[15:0];
  assign drp_mux_2_gt_drp_DRDY = gt_drp_1_drdy;
  assign drp_mux_3_gt_drp_DO = gt_drp_2_do[15:0];
  assign drp_mux_3_gt_drp_DRDY = gt_drp_2_drdy;
  assign gt_drp_0_daddr[8:0] = drp_mux_1_gt_drp_DADDR;
  assign gt_drp_0_den = drp_mux_1_gt_drp_DEN;
  assign gt_drp_0_di[15:0] = drp_mux_1_gt_drp_DI;
  assign gt_drp_0_dwe = drp_mux_1_gt_drp_DWE;
  assign gt_drp_1_daddr[8:0] = drp_mux_2_gt_drp_DADDR;
  assign gt_drp_1_den = drp_mux_2_gt_drp_DEN;
  assign gt_drp_1_di[15:0] = drp_mux_2_gt_drp_DI;
  assign gt_drp_1_dwe = drp_mux_2_gt_drp_DWE;
  assign gt_drp_2_daddr[8:0] = drp_mux_3_gt_drp_DADDR;
  assign gt_drp_2_den = drp_mux_3_gt_drp_DEN;
  assign gt_drp_2_di[15:0] = drp_mux_3_gt_drp_DI;
  assign gt_drp_2_dwe = drp_mux_3_gt_drp_DWE;
  assign gt_drp_3_daddr[8:0] = drp_bridge_4_drp_DADDR;
  assign gt_drp_3_den = drp_bridge_4_drp_DEN;
  assign gt_drp_3_di[15:0] = drp_bridge_4_drp_DI;
  assign gt_drp_3_dwe = drp_bridge_4_drp_DWE;
  assign gt_drp_4_daddr[8:0] = drp_bridge_5_drp_DADDR;
  assign gt_drp_4_den = drp_bridge_5_drp_DEN;
  assign gt_drp_4_di[15:0] = drp_bridge_5_drp_DI;
  assign gt_drp_4_dwe = drp_bridge_5_drp_DWE;
  assign gt_drp_5_daddr[8:0] = drp_bridge_6_drp_DADDR;
  assign gt_drp_5_den = drp_bridge_6_drp_DEN;
  assign gt_drp_5_di[15:0] = drp_bridge_6_drp_DI;
  assign gt_drp_5_dwe = drp_bridge_6_drp_DWE;
  assign gt_drp_6_daddr[8:0] = drp_bridge_7_drp_DADDR;
  assign gt_drp_6_den = drp_bridge_7_drp_DEN;
  assign gt_drp_6_di[15:0] = drp_bridge_7_drp_DI;
  assign gt_drp_6_dwe = drp_bridge_7_drp_DWE;
  assign gt_drp_7_daddr[8:0] = drp_mux_0_gt_drp_DADDR;
  assign gt_drp_7_den = drp_mux_0_gt_drp_DEN;
  assign gt_drp_7_di[15:0] = drp_mux_0_gt_drp_DI;
  assign gt_drp_7_dwe = drp_mux_0_gt_drp_DWE;
  assign reset_1 = reset;
DRP_Bridge_hier_imp_17A6W6O DRP_Bridge_hier
       (.AXI0_araddr(microblaze_1_axi_periph_m01_axi_ARADDR),
        .AXI0_arprot(microblaze_1_axi_periph_m01_axi_ARPROT),
        .AXI0_arready(microblaze_1_axi_periph_m01_axi_ARREADY),
        .AXI0_arvalid(microblaze_1_axi_periph_m01_axi_ARVALID),
        .AXI0_awaddr(microblaze_1_axi_periph_m01_axi_AWADDR),
        .AXI0_awprot(microblaze_1_axi_periph_m01_axi_AWPROT),
        .AXI0_awready(microblaze_1_axi_periph_m01_axi_AWREADY),
        .AXI0_awvalid(microblaze_1_axi_periph_m01_axi_AWVALID),
        .AXI0_bready(microblaze_1_axi_periph_m01_axi_BREADY),
        .AXI0_bresp(microblaze_1_axi_periph_m01_axi_BRESP),
        .AXI0_bvalid(microblaze_1_axi_periph_m01_axi_BVALID),
        .AXI0_rdata(microblaze_1_axi_periph_m01_axi_RDATA),
        .AXI0_rready(microblaze_1_axi_periph_m01_axi_RREADY),
        .AXI0_rresp(microblaze_1_axi_periph_m01_axi_RRESP),
        .AXI0_rvalid(microblaze_1_axi_periph_m01_axi_RVALID),
        .AXI0_wdata(microblaze_1_axi_periph_m01_axi_WDATA),
        .AXI0_wready(microblaze_1_axi_periph_m01_axi_WREADY),
        .AXI0_wstrb(microblaze_1_axi_periph_m01_axi_WSTRB),
        .AXI0_wvalid(microblaze_1_axi_periph_m01_axi_WVALID),
        .AXI1_araddr(microblaze_1_axi_periph_m02_axi_ARADDR),
        .AXI1_arprot(microblaze_1_axi_periph_m02_axi_ARPROT),
        .AXI1_arready(microblaze_1_axi_periph_m02_axi_ARREADY),
        .AXI1_arvalid(microblaze_1_axi_periph_m02_axi_ARVALID),
        .AXI1_awaddr(microblaze_1_axi_periph_m02_axi_AWADDR),
        .AXI1_awprot(microblaze_1_axi_periph_m02_axi_AWPROT),
        .AXI1_awready(microblaze_1_axi_periph_m02_axi_AWREADY),
        .AXI1_awvalid(microblaze_1_axi_periph_m02_axi_AWVALID),
        .AXI1_bready(microblaze_1_axi_periph_m02_axi_BREADY),
        .AXI1_bresp(microblaze_1_axi_periph_m02_axi_BRESP),
        .AXI1_bvalid(microblaze_1_axi_periph_m02_axi_BVALID),
        .AXI1_rdata(microblaze_1_axi_periph_m02_axi_RDATA),
        .AXI1_rready(microblaze_1_axi_periph_m02_axi_RREADY),
        .AXI1_rresp(microblaze_1_axi_periph_m02_axi_RRESP),
        .AXI1_rvalid(microblaze_1_axi_periph_m02_axi_RVALID),
        .AXI1_wdata(microblaze_1_axi_periph_m02_axi_WDATA),
        .AXI1_wready(microblaze_1_axi_periph_m02_axi_WREADY),
        .AXI1_wstrb(microblaze_1_axi_periph_m02_axi_WSTRB),
        .AXI1_wvalid(microblaze_1_axi_periph_m02_axi_WVALID),
        .AXI2_araddr(microblaze_1_axi_periph_m03_axi_ARADDR),
        .AXI2_arprot(microblaze_1_axi_periph_m03_axi_ARPROT),
        .AXI2_arready(microblaze_1_axi_periph_m03_axi_ARREADY),
        .AXI2_arvalid(microblaze_1_axi_periph_m03_axi_ARVALID),
        .AXI2_awaddr(microblaze_1_axi_periph_m03_axi_AWADDR),
        .AXI2_awprot(microblaze_1_axi_periph_m03_axi_AWPROT),
        .AXI2_awready(microblaze_1_axi_periph_m03_axi_AWREADY),
        .AXI2_awvalid(microblaze_1_axi_periph_m03_axi_AWVALID),
        .AXI2_bready(microblaze_1_axi_periph_m03_axi_BREADY),
        .AXI2_bresp(microblaze_1_axi_periph_m03_axi_BRESP),
        .AXI2_bvalid(microblaze_1_axi_periph_m03_axi_BVALID),
        .AXI2_rdata(microblaze_1_axi_periph_m03_axi_RDATA),
        .AXI2_rready(microblaze_1_axi_periph_m03_axi_RREADY),
        .AXI2_rresp(microblaze_1_axi_periph_m03_axi_RRESP),
        .AXI2_rvalid(microblaze_1_axi_periph_m03_axi_RVALID),
        .AXI2_wdata(microblaze_1_axi_periph_m03_axi_WDATA),
        .AXI2_wready(microblaze_1_axi_periph_m03_axi_WREADY),
        .AXI2_wstrb(microblaze_1_axi_periph_m03_axi_WSTRB),
        .AXI2_wvalid(microblaze_1_axi_periph_m03_axi_WVALID),
        .AXI3_araddr(microblaze_1_axi_periph_m04_axi_ARADDR),
        .AXI3_arprot(microblaze_1_axi_periph_m04_axi_ARPROT),
        .AXI3_arready(microblaze_1_axi_periph_m04_axi_ARREADY),
        .AXI3_arvalid(microblaze_1_axi_periph_m04_axi_ARVALID),
        .AXI3_awaddr(microblaze_1_axi_periph_m04_axi_AWADDR),
        .AXI3_awprot(microblaze_1_axi_periph_m04_axi_AWPROT),
        .AXI3_awready(microblaze_1_axi_periph_m04_axi_AWREADY),
        .AXI3_awvalid(microblaze_1_axi_periph_m04_axi_AWVALID),
        .AXI3_bready(microblaze_1_axi_periph_m04_axi_BREADY),
        .AXI3_bresp(microblaze_1_axi_periph_m04_axi_BRESP),
        .AXI3_bvalid(microblaze_1_axi_periph_m04_axi_BVALID),
        .AXI3_rdata(microblaze_1_axi_periph_m04_axi_RDATA),
        .AXI3_rready(microblaze_1_axi_periph_m04_axi_RREADY),
        .AXI3_rresp(microblaze_1_axi_periph_m04_axi_RRESP),
        .AXI3_rvalid(microblaze_1_axi_periph_m04_axi_RVALID),
        .AXI3_wdata(microblaze_1_axi_periph_m04_axi_WDATA),
        .AXI3_wready(microblaze_1_axi_periph_m04_axi_WREADY),
        .AXI3_wstrb(microblaze_1_axi_periph_m04_axi_WSTRB),
        .AXI3_wvalid(microblaze_1_axi_periph_m04_axi_WVALID),
        .AXI4_araddr(microblaze_1_axi_periph_m05_axi_ARADDR),
        .AXI4_arprot(microblaze_1_axi_periph_m05_axi_ARPROT),
        .AXI4_arready(microblaze_1_axi_periph_m05_axi_ARREADY),
        .AXI4_arvalid(microblaze_1_axi_periph_m05_axi_ARVALID),
        .AXI4_awaddr(microblaze_1_axi_periph_m05_axi_AWADDR),
        .AXI4_awprot(microblaze_1_axi_periph_m05_axi_AWPROT),
        .AXI4_awready(microblaze_1_axi_periph_m05_axi_AWREADY),
        .AXI4_awvalid(microblaze_1_axi_periph_m05_axi_AWVALID),
        .AXI4_bready(microblaze_1_axi_periph_m05_axi_BREADY),
        .AXI4_bresp(microblaze_1_axi_periph_m05_axi_BRESP),
        .AXI4_bvalid(microblaze_1_axi_periph_m05_axi_BVALID),
        .AXI4_rdata(microblaze_1_axi_periph_m05_axi_RDATA),
        .AXI4_rready(microblaze_1_axi_periph_m05_axi_RREADY),
        .AXI4_rresp(microblaze_1_axi_periph_m05_axi_RRESP),
        .AXI4_rvalid(microblaze_1_axi_periph_m05_axi_RVALID),
        .AXI4_wdata(microblaze_1_axi_periph_m05_axi_WDATA),
        .AXI4_wready(microblaze_1_axi_periph_m05_axi_WREADY),
        .AXI4_wstrb(microblaze_1_axi_periph_m05_axi_WSTRB),
        .AXI4_wvalid(microblaze_1_axi_periph_m05_axi_WVALID),
        .AXI5_araddr(microblaze_1_axi_periph_m06_axi_ARADDR),
        .AXI5_arprot(microblaze_1_axi_periph_m06_axi_ARPROT),
        .AXI5_arready(microblaze_1_axi_periph_m06_axi_ARREADY),
        .AXI5_arvalid(microblaze_1_axi_periph_m06_axi_ARVALID),
        .AXI5_awaddr(microblaze_1_axi_periph_m06_axi_AWADDR),
        .AXI5_awprot(microblaze_1_axi_periph_m06_axi_AWPROT),
        .AXI5_awready(microblaze_1_axi_periph_m06_axi_AWREADY),
        .AXI5_awvalid(microblaze_1_axi_periph_m06_axi_AWVALID),
        .AXI5_bready(microblaze_1_axi_periph_m06_axi_BREADY),
        .AXI5_bresp(microblaze_1_axi_periph_m06_axi_BRESP),
        .AXI5_bvalid(microblaze_1_axi_periph_m06_axi_BVALID),
        .AXI5_rdata(microblaze_1_axi_periph_m06_axi_RDATA),
        .AXI5_rready(microblaze_1_axi_periph_m06_axi_RREADY),
        .AXI5_rresp(microblaze_1_axi_periph_m06_axi_RRESP),
        .AXI5_rvalid(microblaze_1_axi_periph_m06_axi_RVALID),
        .AXI5_wdata(microblaze_1_axi_periph_m06_axi_WDATA),
        .AXI5_wready(microblaze_1_axi_periph_m06_axi_WREADY),
        .AXI5_wstrb(microblaze_1_axi_periph_m06_axi_WSTRB),
        .AXI5_wvalid(microblaze_1_axi_periph_m06_axi_WVALID),
        .AXI6_araddr(microblaze_1_axi_periph_m07_axi_ARADDR),
        .AXI6_arprot(microblaze_1_axi_periph_m07_axi_ARPROT),
        .AXI6_arready(microblaze_1_axi_periph_m07_axi_ARREADY),
        .AXI6_arvalid(microblaze_1_axi_periph_m07_axi_ARVALID),
        .AXI6_awaddr(microblaze_1_axi_periph_m07_axi_AWADDR),
        .AXI6_awprot(microblaze_1_axi_periph_m07_axi_AWPROT),
        .AXI6_awready(microblaze_1_axi_periph_m07_axi_AWREADY),
        .AXI6_awvalid(microblaze_1_axi_periph_m07_axi_AWVALID),
        .AXI6_bready(microblaze_1_axi_periph_m07_axi_BREADY),
        .AXI6_bresp(microblaze_1_axi_periph_m07_axi_BRESP),
        .AXI6_bvalid(microblaze_1_axi_periph_m07_axi_BVALID),
        .AXI6_rdata(microblaze_1_axi_periph_m07_axi_RDATA),
        .AXI6_rready(microblaze_1_axi_periph_m07_axi_RREADY),
        .AXI6_rresp(microblaze_1_axi_periph_m07_axi_RRESP),
        .AXI6_rvalid(microblaze_1_axi_periph_m07_axi_RVALID),
        .AXI6_wdata(microblaze_1_axi_periph_m07_axi_WDATA),
        .AXI6_wready(microblaze_1_axi_periph_m07_axi_WREADY),
        .AXI6_wstrb(microblaze_1_axi_periph_m07_axi_WSTRB),
        .AXI6_wvalid(microblaze_1_axi_periph_m07_axi_WVALID),
        .AXI7_araddr(microblaze_1_axi_periph_m00_axi_ARADDR),
        .AXI7_arprot(microblaze_1_axi_periph_m00_axi_ARPROT),
        .AXI7_arready(microblaze_1_axi_periph_m00_axi_ARREADY),
        .AXI7_arvalid(microblaze_1_axi_periph_m00_axi_ARVALID),
        .AXI7_awaddr(microblaze_1_axi_periph_m00_axi_AWADDR),
        .AXI7_awprot(microblaze_1_axi_periph_m00_axi_AWPROT),
        .AXI7_awready(microblaze_1_axi_periph_m00_axi_AWREADY),
        .AXI7_awvalid(microblaze_1_axi_periph_m00_axi_AWVALID),
        .AXI7_bready(microblaze_1_axi_periph_m00_axi_BREADY),
        .AXI7_bresp(microblaze_1_axi_periph_m00_axi_BRESP),
        .AXI7_bvalid(microblaze_1_axi_periph_m00_axi_BVALID),
        .AXI7_rdata(microblaze_1_axi_periph_m00_axi_RDATA),
        .AXI7_rready(microblaze_1_axi_periph_m00_axi_RREADY),
        .AXI7_rresp(microblaze_1_axi_periph_m00_axi_RRESP),
        .AXI7_rvalid(microblaze_1_axi_periph_m00_axi_RVALID),
        .AXI7_wdata(microblaze_1_axi_periph_m00_axi_WDATA),
        .AXI7_wready(microblaze_1_axi_periph_m00_axi_WREADY),
        .AXI7_wstrb(microblaze_1_axi_periph_m00_axi_WSTRB),
        .AXI7_wvalid(microblaze_1_axi_periph_m00_axi_WVALID),
        .AXI_aclk(axi_aclk_1),
        .AXI_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .DRP0_daddr(drp_mux_1_gt_drp_DADDR),
        .DRP0_den(drp_mux_1_gt_drp_DEN),
        .DRP0_di(drp_mux_1_gt_drp_DI),
        .DRP0_do(drp_mux_1_gt_drp_DO),
        .DRP0_drdy(drp_mux_1_gt_drp_DRDY),
        .DRP0_dwe(drp_mux_1_gt_drp_DWE),
        .DRP1_daddr(drp_mux_2_gt_drp_DADDR),
        .DRP1_den(drp_mux_2_gt_drp_DEN),
        .DRP1_di(drp_mux_2_gt_drp_DI),
        .DRP1_do(drp_mux_2_gt_drp_DO),
        .DRP1_drdy(drp_mux_2_gt_drp_DRDY),
        .DRP1_dwe(drp_mux_2_gt_drp_DWE),
        .DRP2_daddr(drp_mux_3_gt_drp_DADDR),
        .DRP2_den(drp_mux_3_gt_drp_DEN),
        .DRP2_di(drp_mux_3_gt_drp_DI),
        .DRP2_do(drp_mux_3_gt_drp_DO),
        .DRP2_drdy(drp_mux_3_gt_drp_DRDY),
        .DRP2_dwe(drp_mux_3_gt_drp_DWE),
        .DRP3_daddr(drp_bridge_4_drp_DADDR),
        .DRP3_den(drp_bridge_4_drp_DEN),
        .DRP3_di(drp_bridge_4_drp_DI),
        .DRP3_do(drp_bridge_4_drp_DO),
        .DRP3_drdy(drp_bridge_4_drp_DRDY),
        .DRP3_dwe(drp_bridge_4_drp_DWE),
        .DRP4_daddr(drp_bridge_5_drp_DADDR),
        .DRP4_den(drp_bridge_5_drp_DEN),
        .DRP4_di(drp_bridge_5_drp_DI),
        .DRP4_do(drp_bridge_5_drp_DO),
        .DRP4_drdy(drp_bridge_5_drp_DRDY),
        .DRP4_dwe(drp_bridge_5_drp_DWE),
        .DRP5_daddr(drp_bridge_6_drp_DADDR),
        .DRP5_den(drp_bridge_6_drp_DEN),
        .DRP5_di(drp_bridge_6_drp_DI),
        .DRP5_do(drp_bridge_6_drp_DO),
        .DRP5_drdy(drp_bridge_6_drp_DRDY),
        .DRP5_dwe(drp_bridge_6_drp_DWE),
        .DRP6_daddr(drp_bridge_7_drp_DADDR),
        .DRP6_den(drp_bridge_7_drp_DEN),
        .DRP6_di(drp_bridge_7_drp_DI),
        .DRP6_do(drp_bridge_7_drp_DO),
        .DRP6_drdy(drp_bridge_7_drp_DRDY),
        .DRP6_dwe(drp_bridge_7_drp_DWE),
        .DRP7_daddr(drp_mux_0_gt_drp_DADDR),
        .DRP7_den(drp_mux_0_gt_drp_DEN),
        .DRP7_di(drp_mux_0_gt_drp_DI),
        .DRP7_do(drp_mux_0_gt_drp_DO),
        .DRP7_drdy(drp_mux_0_gt_drp_DRDY),
        .DRP7_dwe(drp_mux_0_gt_drp_DWE));
eyescan_subsystem_jtag_axi_0_0 jtag_axi_0
       (.aclk(axi_aclk_1),
        .aresetn(m07_aresetn_1),
        .m_axi_araddr(jtag_axi_0_m_axi_ARADDR),
        .m_axi_arburst(jtag_axi_0_m_axi_ARBURST),
        .m_axi_arcache(jtag_axi_0_m_axi_ARCACHE),
        .m_axi_arid(jtag_axi_0_m_axi_ARID),
        .m_axi_arlen(jtag_axi_0_m_axi_ARLEN),
        .m_axi_arlock(jtag_axi_0_m_axi_ARLOCK),
        .m_axi_arprot(jtag_axi_0_m_axi_ARPROT),
        .m_axi_arqos(jtag_axi_0_m_axi_ARQOS),
        .m_axi_arready(jtag_axi_0_m_axi_ARREADY),
        .m_axi_arsize(jtag_axi_0_m_axi_ARSIZE),
        .m_axi_arvalid(jtag_axi_0_m_axi_ARVALID),
        .m_axi_awaddr(jtag_axi_0_m_axi_AWADDR),
        .m_axi_awburst(jtag_axi_0_m_axi_AWBURST),
        .m_axi_awcache(jtag_axi_0_m_axi_AWCACHE),
        .m_axi_awid(jtag_axi_0_m_axi_AWID),
        .m_axi_awlen(jtag_axi_0_m_axi_AWLEN),
        .m_axi_awlock(jtag_axi_0_m_axi_AWLOCK),
        .m_axi_awprot(jtag_axi_0_m_axi_AWPROT),
        .m_axi_awqos(jtag_axi_0_m_axi_AWQOS),
        .m_axi_awready(jtag_axi_0_m_axi_AWREADY),
        .m_axi_awsize(jtag_axi_0_m_axi_AWSIZE),
        .m_axi_awvalid(jtag_axi_0_m_axi_AWVALID),
        .m_axi_bid(jtag_axi_0_m_axi_BID),
        .m_axi_bready(jtag_axi_0_m_axi_BREADY),
        .m_axi_bresp(jtag_axi_0_m_axi_BRESP),
        .m_axi_bvalid(jtag_axi_0_m_axi_BVALID),
        .m_axi_rdata(jtag_axi_0_m_axi_RDATA),
        .m_axi_rid(jtag_axi_0_m_axi_RID),
        .m_axi_rlast(jtag_axi_0_m_axi_RLAST),
        .m_axi_rready(jtag_axi_0_m_axi_RREADY),
        .m_axi_rresp(jtag_axi_0_m_axi_RRESP),
        .m_axi_rvalid(jtag_axi_0_m_axi_RVALID),
        .m_axi_wdata(jtag_axi_0_m_axi_WDATA),
        .m_axi_wlast(jtag_axi_0_m_axi_WLAST),
        .m_axi_wready(jtag_axi_0_m_axi_WREADY),
        .m_axi_wstrb(jtag_axi_0_m_axi_WSTRB),
        .m_axi_wvalid(jtag_axi_0_m_axi_WVALID));
mb_ps_imp_1944EB9 mb_ps
       (.M_AXI_DP_araddr(microblaze_1_axi_dp_ARADDR),
        .M_AXI_DP_arprot(microblaze_1_axi_dp_ARPROT),
        .M_AXI_DP_arready(microblaze_1_axi_dp_ARREADY),
        .M_AXI_DP_arvalid(microblaze_1_axi_dp_ARVALID),
        .M_AXI_DP_awaddr(microblaze_1_axi_dp_AWADDR),
        .M_AXI_DP_awprot(microblaze_1_axi_dp_AWPROT),
        .M_AXI_DP_awready(microblaze_1_axi_dp_AWREADY),
        .M_AXI_DP_awvalid(microblaze_1_axi_dp_AWVALID),
        .M_AXI_DP_bready(microblaze_1_axi_dp_BREADY),
        .M_AXI_DP_bresp(microblaze_1_axi_dp_BRESP),
        .M_AXI_DP_bvalid(microblaze_1_axi_dp_BVALID),
        .M_AXI_DP_rdata(microblaze_1_axi_dp_RDATA),
        .M_AXI_DP_rready(microblaze_1_axi_dp_RREADY),
        .M_AXI_DP_rresp(microblaze_1_axi_dp_RRESP),
        .M_AXI_DP_rvalid(microblaze_1_axi_dp_RVALID),
        .M_AXI_DP_wdata(microblaze_1_axi_dp_WDATA),
        .M_AXI_DP_wready(microblaze_1_axi_dp_WREADY),
        .M_AXI_DP_wstrb(microblaze_1_axi_dp_WSTRB),
        .M_AXI_DP_wvalid(microblaze_1_axi_dp_WVALID),
        .S_AXI_ACLK(axi_aclk_1),
        .S_AXI_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S_AXI_araddr(microblaze_1_axi_periph_m08_axi_ARADDR),
        .S_AXI_arburst(microblaze_1_axi_periph_m08_axi_ARBURST),
        .S_AXI_arcache(microblaze_1_axi_periph_m08_axi_ARCACHE),
        .S_AXI_arlen(microblaze_1_axi_periph_m08_axi_ARLEN),
        .S_AXI_arlock(microblaze_1_axi_periph_m08_axi_ARLOCK),
        .S_AXI_arprot(microblaze_1_axi_periph_m08_axi_ARPROT),
        .S_AXI_arready(microblaze_1_axi_periph_m08_axi_ARREADY),
        .S_AXI_arsize(microblaze_1_axi_periph_m08_axi_ARSIZE),
        .S_AXI_arvalid(microblaze_1_axi_periph_m08_axi_ARVALID),
        .S_AXI_awaddr(microblaze_1_axi_periph_m08_axi_AWADDR),
        .S_AXI_awburst(microblaze_1_axi_periph_m08_axi_AWBURST),
        .S_AXI_awcache(microblaze_1_axi_periph_m08_axi_AWCACHE),
        .S_AXI_awlen(microblaze_1_axi_periph_m08_axi_AWLEN),
        .S_AXI_awlock(microblaze_1_axi_periph_m08_axi_AWLOCK),
        .S_AXI_awprot(microblaze_1_axi_periph_m08_axi_AWPROT),
        .S_AXI_awready(microblaze_1_axi_periph_m08_axi_AWREADY),
        .S_AXI_awsize(microblaze_1_axi_periph_m08_axi_AWSIZE),
        .S_AXI_awvalid(microblaze_1_axi_periph_m08_axi_AWVALID),
        .S_AXI_bready(microblaze_1_axi_periph_m08_axi_BREADY),
        .S_AXI_bresp(microblaze_1_axi_periph_m08_axi_BRESP),
        .S_AXI_bvalid(microblaze_1_axi_periph_m08_axi_BVALID),
        .S_AXI_rdata(microblaze_1_axi_periph_m08_axi_RDATA),
        .S_AXI_rlast(microblaze_1_axi_periph_m08_axi_RLAST),
        .S_AXI_rready(microblaze_1_axi_periph_m08_axi_RREADY),
        .S_AXI_rresp(microblaze_1_axi_periph_m08_axi_RRESP),
        .S_AXI_rvalid(microblaze_1_axi_periph_m08_axi_RVALID),
        .S_AXI_wdata(microblaze_1_axi_periph_m08_axi_WDATA),
        .S_AXI_wlast(microblaze_1_axi_periph_m08_axi_WLAST),
        .S_AXI_wready(microblaze_1_axi_periph_m08_axi_WREADY),
        .S_AXI_wstrb(microblaze_1_axi_periph_m08_axi_WSTRB),
        .S_AXI_wvalid(microblaze_1_axi_periph_m08_axi_WVALID),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(m07_aresetn_1));
eyescan_subsystem_microblaze_1_axi_periph_0 microblaze_1_axi_periph
       (.ACLK(axi_aclk_1),
        .ARESETN(m07_aresetn_1),
        .M00_ACLK(axi_aclk_1),
        .M00_ARESETN(m07_aresetn_1),
        .M00_AXI_araddr(microblaze_1_axi_periph_m00_axi_ARADDR),
        .M00_AXI_arprot(microblaze_1_axi_periph_m00_axi_ARPROT),
        .M00_AXI_arready(microblaze_1_axi_periph_m00_axi_ARREADY),
        .M00_AXI_arvalid(microblaze_1_axi_periph_m00_axi_ARVALID),
        .M00_AXI_awaddr(microblaze_1_axi_periph_m00_axi_AWADDR),
        .M00_AXI_awprot(microblaze_1_axi_periph_m00_axi_AWPROT),
        .M00_AXI_awready(microblaze_1_axi_periph_m00_axi_AWREADY),
        .M00_AXI_awvalid(microblaze_1_axi_periph_m00_axi_AWVALID),
        .M00_AXI_bready(microblaze_1_axi_periph_m00_axi_BREADY),
        .M00_AXI_bresp(microblaze_1_axi_periph_m00_axi_BRESP),
        .M00_AXI_bvalid(microblaze_1_axi_periph_m00_axi_BVALID),
        .M00_AXI_rdata(microblaze_1_axi_periph_m00_axi_RDATA),
        .M00_AXI_rready(microblaze_1_axi_periph_m00_axi_RREADY),
        .M00_AXI_rresp(microblaze_1_axi_periph_m00_axi_RRESP),
        .M00_AXI_rvalid(microblaze_1_axi_periph_m00_axi_RVALID),
        .M00_AXI_wdata(microblaze_1_axi_periph_m00_axi_WDATA),
        .M00_AXI_wready(microblaze_1_axi_periph_m00_axi_WREADY),
        .M00_AXI_wstrb(microblaze_1_axi_periph_m00_axi_WSTRB),
        .M00_AXI_wvalid(microblaze_1_axi_periph_m00_axi_WVALID),
        .M01_ACLK(axi_aclk_1),
        .M01_ARESETN(m07_aresetn_1),
        .M01_AXI_araddr(microblaze_1_axi_periph_m01_axi_ARADDR),
        .M01_AXI_arprot(microblaze_1_axi_periph_m01_axi_ARPROT),
        .M01_AXI_arready(microblaze_1_axi_periph_m01_axi_ARREADY),
        .M01_AXI_arvalid(microblaze_1_axi_periph_m01_axi_ARVALID),
        .M01_AXI_awaddr(microblaze_1_axi_periph_m01_axi_AWADDR),
        .M01_AXI_awprot(microblaze_1_axi_periph_m01_axi_AWPROT),
        .M01_AXI_awready(microblaze_1_axi_periph_m01_axi_AWREADY),
        .M01_AXI_awvalid(microblaze_1_axi_periph_m01_axi_AWVALID),
        .M01_AXI_bready(microblaze_1_axi_periph_m01_axi_BREADY),
        .M01_AXI_bresp(microblaze_1_axi_periph_m01_axi_BRESP),
        .M01_AXI_bvalid(microblaze_1_axi_periph_m01_axi_BVALID),
        .M01_AXI_rdata(microblaze_1_axi_periph_m01_axi_RDATA),
        .M01_AXI_rready(microblaze_1_axi_periph_m01_axi_RREADY),
        .M01_AXI_rresp(microblaze_1_axi_periph_m01_axi_RRESP),
        .M01_AXI_rvalid(microblaze_1_axi_periph_m01_axi_RVALID),
        .M01_AXI_wdata(microblaze_1_axi_periph_m01_axi_WDATA),
        .M01_AXI_wready(microblaze_1_axi_periph_m01_axi_WREADY),
        .M01_AXI_wstrb(microblaze_1_axi_periph_m01_axi_WSTRB),
        .M01_AXI_wvalid(microblaze_1_axi_periph_m01_axi_WVALID),
        .M02_ACLK(axi_aclk_1),
        .M02_ARESETN(m07_aresetn_1),
        .M02_AXI_araddr(microblaze_1_axi_periph_m02_axi_ARADDR),
        .M02_AXI_arprot(microblaze_1_axi_periph_m02_axi_ARPROT),
        .M02_AXI_arready(microblaze_1_axi_periph_m02_axi_ARREADY),
        .M02_AXI_arvalid(microblaze_1_axi_periph_m02_axi_ARVALID),
        .M02_AXI_awaddr(microblaze_1_axi_periph_m02_axi_AWADDR),
        .M02_AXI_awprot(microblaze_1_axi_periph_m02_axi_AWPROT),
        .M02_AXI_awready(microblaze_1_axi_periph_m02_axi_AWREADY),
        .M02_AXI_awvalid(microblaze_1_axi_periph_m02_axi_AWVALID),
        .M02_AXI_bready(microblaze_1_axi_periph_m02_axi_BREADY),
        .M02_AXI_bresp(microblaze_1_axi_periph_m02_axi_BRESP),
        .M02_AXI_bvalid(microblaze_1_axi_periph_m02_axi_BVALID),
        .M02_AXI_rdata(microblaze_1_axi_periph_m02_axi_RDATA),
        .M02_AXI_rready(microblaze_1_axi_periph_m02_axi_RREADY),
        .M02_AXI_rresp(microblaze_1_axi_periph_m02_axi_RRESP),
        .M02_AXI_rvalid(microblaze_1_axi_periph_m02_axi_RVALID),
        .M02_AXI_wdata(microblaze_1_axi_periph_m02_axi_WDATA),
        .M02_AXI_wready(microblaze_1_axi_periph_m02_axi_WREADY),
        .M02_AXI_wstrb(microblaze_1_axi_periph_m02_axi_WSTRB),
        .M02_AXI_wvalid(microblaze_1_axi_periph_m02_axi_WVALID),
        .M03_ACLK(axi_aclk_1),
        .M03_ARESETN(m07_aresetn_1),
        .M03_AXI_araddr(microblaze_1_axi_periph_m03_axi_ARADDR),
        .M03_AXI_arprot(microblaze_1_axi_periph_m03_axi_ARPROT),
        .M03_AXI_arready(microblaze_1_axi_periph_m03_axi_ARREADY),
        .M03_AXI_arvalid(microblaze_1_axi_periph_m03_axi_ARVALID),
        .M03_AXI_awaddr(microblaze_1_axi_periph_m03_axi_AWADDR),
        .M03_AXI_awprot(microblaze_1_axi_periph_m03_axi_AWPROT),
        .M03_AXI_awready(microblaze_1_axi_periph_m03_axi_AWREADY),
        .M03_AXI_awvalid(microblaze_1_axi_periph_m03_axi_AWVALID),
        .M03_AXI_bready(microblaze_1_axi_periph_m03_axi_BREADY),
        .M03_AXI_bresp(microblaze_1_axi_periph_m03_axi_BRESP),
        .M03_AXI_bvalid(microblaze_1_axi_periph_m03_axi_BVALID),
        .M03_AXI_rdata(microblaze_1_axi_periph_m03_axi_RDATA),
        .M03_AXI_rready(microblaze_1_axi_periph_m03_axi_RREADY),
        .M03_AXI_rresp(microblaze_1_axi_periph_m03_axi_RRESP),
        .M03_AXI_rvalid(microblaze_1_axi_periph_m03_axi_RVALID),
        .M03_AXI_wdata(microblaze_1_axi_periph_m03_axi_WDATA),
        .M03_AXI_wready(microblaze_1_axi_periph_m03_axi_WREADY),
        .M03_AXI_wstrb(microblaze_1_axi_periph_m03_axi_WSTRB),
        .M03_AXI_wvalid(microblaze_1_axi_periph_m03_axi_WVALID),
        .M04_ACLK(axi_aclk_1),
        .M04_ARESETN(m07_aresetn_1),
        .M04_AXI_araddr(microblaze_1_axi_periph_m04_axi_ARADDR),
        .M04_AXI_arprot(microblaze_1_axi_periph_m04_axi_ARPROT),
        .M04_AXI_arready(microblaze_1_axi_periph_m04_axi_ARREADY),
        .M04_AXI_arvalid(microblaze_1_axi_periph_m04_axi_ARVALID),
        .M04_AXI_awaddr(microblaze_1_axi_periph_m04_axi_AWADDR),
        .M04_AXI_awprot(microblaze_1_axi_periph_m04_axi_AWPROT),
        .M04_AXI_awready(microblaze_1_axi_periph_m04_axi_AWREADY),
        .M04_AXI_awvalid(microblaze_1_axi_periph_m04_axi_AWVALID),
        .M04_AXI_bready(microblaze_1_axi_periph_m04_axi_BREADY),
        .M04_AXI_bresp(microblaze_1_axi_periph_m04_axi_BRESP),
        .M04_AXI_bvalid(microblaze_1_axi_periph_m04_axi_BVALID),
        .M04_AXI_rdata(microblaze_1_axi_periph_m04_axi_RDATA),
        .M04_AXI_rready(microblaze_1_axi_periph_m04_axi_RREADY),
        .M04_AXI_rresp(microblaze_1_axi_periph_m04_axi_RRESP),
        .M04_AXI_rvalid(microblaze_1_axi_periph_m04_axi_RVALID),
        .M04_AXI_wdata(microblaze_1_axi_periph_m04_axi_WDATA),
        .M04_AXI_wready(microblaze_1_axi_periph_m04_axi_WREADY),
        .M04_AXI_wstrb(microblaze_1_axi_periph_m04_axi_WSTRB),
        .M04_AXI_wvalid(microblaze_1_axi_periph_m04_axi_WVALID),
        .M05_ACLK(axi_aclk_1),
        .M05_ARESETN(m07_aresetn_1),
        .M05_AXI_araddr(microblaze_1_axi_periph_m05_axi_ARADDR),
        .M05_AXI_arprot(microblaze_1_axi_periph_m05_axi_ARPROT),
        .M05_AXI_arready(microblaze_1_axi_periph_m05_axi_ARREADY),
        .M05_AXI_arvalid(microblaze_1_axi_periph_m05_axi_ARVALID),
        .M05_AXI_awaddr(microblaze_1_axi_periph_m05_axi_AWADDR),
        .M05_AXI_awprot(microblaze_1_axi_periph_m05_axi_AWPROT),
        .M05_AXI_awready(microblaze_1_axi_periph_m05_axi_AWREADY),
        .M05_AXI_awvalid(microblaze_1_axi_periph_m05_axi_AWVALID),
        .M05_AXI_bready(microblaze_1_axi_periph_m05_axi_BREADY),
        .M05_AXI_bresp(microblaze_1_axi_periph_m05_axi_BRESP),
        .M05_AXI_bvalid(microblaze_1_axi_periph_m05_axi_BVALID),
        .M05_AXI_rdata(microblaze_1_axi_periph_m05_axi_RDATA),
        .M05_AXI_rready(microblaze_1_axi_periph_m05_axi_RREADY),
        .M05_AXI_rresp(microblaze_1_axi_periph_m05_axi_RRESP),
        .M05_AXI_rvalid(microblaze_1_axi_periph_m05_axi_RVALID),
        .M05_AXI_wdata(microblaze_1_axi_periph_m05_axi_WDATA),
        .M05_AXI_wready(microblaze_1_axi_periph_m05_axi_WREADY),
        .M05_AXI_wstrb(microblaze_1_axi_periph_m05_axi_WSTRB),
        .M05_AXI_wvalid(microblaze_1_axi_periph_m05_axi_WVALID),
        .M06_ACLK(axi_aclk_1),
        .M06_ARESETN(m07_aresetn_1),
        .M06_AXI_araddr(microblaze_1_axi_periph_m06_axi_ARADDR),
        .M06_AXI_arprot(microblaze_1_axi_periph_m06_axi_ARPROT),
        .M06_AXI_arready(microblaze_1_axi_periph_m06_axi_ARREADY),
        .M06_AXI_arvalid(microblaze_1_axi_periph_m06_axi_ARVALID),
        .M06_AXI_awaddr(microblaze_1_axi_periph_m06_axi_AWADDR),
        .M06_AXI_awprot(microblaze_1_axi_periph_m06_axi_AWPROT),
        .M06_AXI_awready(microblaze_1_axi_periph_m06_axi_AWREADY),
        .M06_AXI_awvalid(microblaze_1_axi_periph_m06_axi_AWVALID),
        .M06_AXI_bready(microblaze_1_axi_periph_m06_axi_BREADY),
        .M06_AXI_bresp(microblaze_1_axi_periph_m06_axi_BRESP),
        .M06_AXI_bvalid(microblaze_1_axi_periph_m06_axi_BVALID),
        .M06_AXI_rdata(microblaze_1_axi_periph_m06_axi_RDATA),
        .M06_AXI_rready(microblaze_1_axi_periph_m06_axi_RREADY),
        .M06_AXI_rresp(microblaze_1_axi_periph_m06_axi_RRESP),
        .M06_AXI_rvalid(microblaze_1_axi_periph_m06_axi_RVALID),
        .M06_AXI_wdata(microblaze_1_axi_periph_m06_axi_WDATA),
        .M06_AXI_wready(microblaze_1_axi_periph_m06_axi_WREADY),
        .M06_AXI_wstrb(microblaze_1_axi_periph_m06_axi_WSTRB),
        .M06_AXI_wvalid(microblaze_1_axi_periph_m06_axi_WVALID),
        .M07_ACLK(axi_aclk_1),
        .M07_ARESETN(m07_aresetn_1),
        .M07_AXI_araddr(microblaze_1_axi_periph_m07_axi_ARADDR),
        .M07_AXI_arprot(microblaze_1_axi_periph_m07_axi_ARPROT),
        .M07_AXI_arready(microblaze_1_axi_periph_m07_axi_ARREADY),
        .M07_AXI_arvalid(microblaze_1_axi_periph_m07_axi_ARVALID),
        .M07_AXI_awaddr(microblaze_1_axi_periph_m07_axi_AWADDR),
        .M07_AXI_awprot(microblaze_1_axi_periph_m07_axi_AWPROT),
        .M07_AXI_awready(microblaze_1_axi_periph_m07_axi_AWREADY),
        .M07_AXI_awvalid(microblaze_1_axi_periph_m07_axi_AWVALID),
        .M07_AXI_bready(microblaze_1_axi_periph_m07_axi_BREADY),
        .M07_AXI_bresp(microblaze_1_axi_periph_m07_axi_BRESP),
        .M07_AXI_bvalid(microblaze_1_axi_periph_m07_axi_BVALID),
        .M07_AXI_rdata(microblaze_1_axi_periph_m07_axi_RDATA),
        .M07_AXI_rready(microblaze_1_axi_periph_m07_axi_RREADY),
        .M07_AXI_rresp(microblaze_1_axi_periph_m07_axi_RRESP),
        .M07_AXI_rvalid(microblaze_1_axi_periph_m07_axi_RVALID),
        .M07_AXI_wdata(microblaze_1_axi_periph_m07_axi_WDATA),
        .M07_AXI_wready(microblaze_1_axi_periph_m07_axi_WREADY),
        .M07_AXI_wstrb(microblaze_1_axi_periph_m07_axi_WSTRB),
        .M07_AXI_wvalid(microblaze_1_axi_periph_m07_axi_WVALID),
        .M08_ACLK(axi_aclk_1),
        .M08_ARESETN(m07_aresetn_1),
        .M08_AXI_araddr(microblaze_1_axi_periph_m08_axi_ARADDR),
        .M08_AXI_arburst(microblaze_1_axi_periph_m08_axi_ARBURST),
        .M08_AXI_arcache(microblaze_1_axi_periph_m08_axi_ARCACHE),
        .M08_AXI_arlen(microblaze_1_axi_periph_m08_axi_ARLEN),
        .M08_AXI_arlock(microblaze_1_axi_periph_m08_axi_ARLOCK),
        .M08_AXI_arprot(microblaze_1_axi_periph_m08_axi_ARPROT),
        .M08_AXI_arready(microblaze_1_axi_periph_m08_axi_ARREADY),
        .M08_AXI_arsize(microblaze_1_axi_periph_m08_axi_ARSIZE),
        .M08_AXI_arvalid(microblaze_1_axi_periph_m08_axi_ARVALID),
        .M08_AXI_awaddr(microblaze_1_axi_periph_m08_axi_AWADDR),
        .M08_AXI_awburst(microblaze_1_axi_periph_m08_axi_AWBURST),
        .M08_AXI_awcache(microblaze_1_axi_periph_m08_axi_AWCACHE),
        .M08_AXI_awlen(microblaze_1_axi_periph_m08_axi_AWLEN),
        .M08_AXI_awlock(microblaze_1_axi_periph_m08_axi_AWLOCK),
        .M08_AXI_awprot(microblaze_1_axi_periph_m08_axi_AWPROT),
        .M08_AXI_awready(microblaze_1_axi_periph_m08_axi_AWREADY),
        .M08_AXI_awsize(microblaze_1_axi_periph_m08_axi_AWSIZE),
        .M08_AXI_awvalid(microblaze_1_axi_periph_m08_axi_AWVALID),
        .M08_AXI_bready(microblaze_1_axi_periph_m08_axi_BREADY),
        .M08_AXI_bresp(microblaze_1_axi_periph_m08_axi_BRESP),
        .M08_AXI_bvalid(microblaze_1_axi_periph_m08_axi_BVALID),
        .M08_AXI_rdata(microblaze_1_axi_periph_m08_axi_RDATA),
        .M08_AXI_rlast(microblaze_1_axi_periph_m08_axi_RLAST),
        .M08_AXI_rready(microblaze_1_axi_periph_m08_axi_RREADY),
        .M08_AXI_rresp(microblaze_1_axi_periph_m08_axi_RRESP),
        .M08_AXI_rvalid(microblaze_1_axi_periph_m08_axi_RVALID),
        .M08_AXI_wdata(microblaze_1_axi_periph_m08_axi_WDATA),
        .M08_AXI_wlast(microblaze_1_axi_periph_m08_axi_WLAST),
        .M08_AXI_wready(microblaze_1_axi_periph_m08_axi_WREADY),
        .M08_AXI_wstrb(microblaze_1_axi_periph_m08_axi_WSTRB),
        .M08_AXI_wvalid(microblaze_1_axi_periph_m08_axi_WVALID),
        .S00_ACLK(axi_aclk_1),
        .S00_ARESETN(m07_aresetn_1),
        .S00_AXI_araddr(microblaze_1_axi_dp_ARADDR),
        .S00_AXI_arprot(microblaze_1_axi_dp_ARPROT),
        .S00_AXI_arready(microblaze_1_axi_dp_ARREADY),
        .S00_AXI_arvalid(microblaze_1_axi_dp_ARVALID),
        .S00_AXI_awaddr(microblaze_1_axi_dp_AWADDR),
        .S00_AXI_awprot(microblaze_1_axi_dp_AWPROT),
        .S00_AXI_awready(microblaze_1_axi_dp_AWREADY),
        .S00_AXI_awvalid(microblaze_1_axi_dp_AWVALID),
        .S00_AXI_bready(microblaze_1_axi_dp_BREADY),
        .S00_AXI_bresp(microblaze_1_axi_dp_BRESP),
        .S00_AXI_bvalid(microblaze_1_axi_dp_BVALID),
        .S00_AXI_rdata(microblaze_1_axi_dp_RDATA),
        .S00_AXI_rready(microblaze_1_axi_dp_RREADY),
        .S00_AXI_rresp(microblaze_1_axi_dp_RRESP),
        .S00_AXI_rvalid(microblaze_1_axi_dp_RVALID),
        .S00_AXI_wdata(microblaze_1_axi_dp_WDATA),
        .S00_AXI_wready(microblaze_1_axi_dp_WREADY),
        .S00_AXI_wstrb(microblaze_1_axi_dp_WSTRB),
        .S00_AXI_wvalid(microblaze_1_axi_dp_WVALID),
        .S01_ACLK(axi_aclk_1),
        .S01_ARESETN(m07_aresetn_1),
        .S01_AXI_araddr(jtag_axi_0_m_axi_ARADDR),
        .S01_AXI_arburst(jtag_axi_0_m_axi_ARBURST),
        .S01_AXI_arcache(jtag_axi_0_m_axi_ARCACHE),
        .S01_AXI_arid(jtag_axi_0_m_axi_ARID),
        .S01_AXI_arlen(jtag_axi_0_m_axi_ARLEN),
        .S01_AXI_arlock(jtag_axi_0_m_axi_ARLOCK),
        .S01_AXI_arprot(jtag_axi_0_m_axi_ARPROT),
        .S01_AXI_arqos(jtag_axi_0_m_axi_ARQOS),
        .S01_AXI_arready(jtag_axi_0_m_axi_ARREADY),
        .S01_AXI_arsize(jtag_axi_0_m_axi_ARSIZE),
        .S01_AXI_arvalid(jtag_axi_0_m_axi_ARVALID),
        .S01_AXI_awaddr(jtag_axi_0_m_axi_AWADDR),
        .S01_AXI_awburst(jtag_axi_0_m_axi_AWBURST),
        .S01_AXI_awcache(jtag_axi_0_m_axi_AWCACHE),
        .S01_AXI_awid(jtag_axi_0_m_axi_AWID),
        .S01_AXI_awlen(jtag_axi_0_m_axi_AWLEN),
        .S01_AXI_awlock(jtag_axi_0_m_axi_AWLOCK),
        .S01_AXI_awprot(jtag_axi_0_m_axi_AWPROT),
        .S01_AXI_awqos(jtag_axi_0_m_axi_AWQOS),
        .S01_AXI_awready(jtag_axi_0_m_axi_AWREADY),
        .S01_AXI_awsize(jtag_axi_0_m_axi_AWSIZE),
        .S01_AXI_awvalid(jtag_axi_0_m_axi_AWVALID),
        .S01_AXI_bid(jtag_axi_0_m_axi_BID),
        .S01_AXI_bready(jtag_axi_0_m_axi_BREADY),
        .S01_AXI_bresp(jtag_axi_0_m_axi_BRESP),
        .S01_AXI_bvalid(jtag_axi_0_m_axi_BVALID),
        .S01_AXI_rdata(jtag_axi_0_m_axi_RDATA),
        .S01_AXI_rid(jtag_axi_0_m_axi_RID),
        .S01_AXI_rlast(jtag_axi_0_m_axi_RLAST),
        .S01_AXI_rready(jtag_axi_0_m_axi_RREADY),
        .S01_AXI_rresp(jtag_axi_0_m_axi_RRESP),
        .S01_AXI_rvalid(jtag_axi_0_m_axi_RVALID),
        .S01_AXI_wdata(jtag_axi_0_m_axi_WDATA),
        .S01_AXI_wlast(jtag_axi_0_m_axi_WLAST),
        .S01_AXI_wready(jtag_axi_0_m_axi_WREADY),
        .S01_AXI_wstrb(jtag_axi_0_m_axi_WSTRB),
        .S01_AXI_wvalid(jtag_axi_0_m_axi_WVALID));
endmodule

module eyescan_subsystem_microblaze_1_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arburst,
    M08_AXI_arcache,
    M08_AXI_arlen,
    M08_AXI_arlock,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arsize,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awburst,
    M08_AXI_awcache,
    M08_AXI_awlen,
    M08_AXI_awlock,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awsize,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rlast,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wlast,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input [0:0]M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input [0:0]M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input [0:0]M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input [0:0]M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input [0:0]M08_ARESETN;
  output [13:0]M08_AXI_araddr;
  output [1:0]M08_AXI_arburst;
  output [3:0]M08_AXI_arcache;
  output [7:0]M08_AXI_arlen;
  output [0:0]M08_AXI_arlock;
  output [2:0]M08_AXI_arprot;
  input [0:0]M08_AXI_arready;
  output [2:0]M08_AXI_arsize;
  output [0:0]M08_AXI_arvalid;
  output [13:0]M08_AXI_awaddr;
  output [1:0]M08_AXI_awburst;
  output [3:0]M08_AXI_awcache;
  output [7:0]M08_AXI_awlen;
  output [0:0]M08_AXI_awlock;
  output [2:0]M08_AXI_awprot;
  input [0:0]M08_AXI_awready;
  output [2:0]M08_AXI_awsize;
  output [0:0]M08_AXI_awvalid;
  output [0:0]M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input [0:0]M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  input [0:0]M08_AXI_rlast;
  output [0:0]M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input [0:0]M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  output [0:0]M08_AXI_wlast;
  input [0:0]M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output [0:0]M08_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input [0:0]S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output [0:0]S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input [0:0]S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rid;
  output [0:0]S01_AXI_rlast;
  input [0:0]S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;

  wire GND_1;
  wire [31:0]m00_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [2:0]m00_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire m00_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire m00_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [2:0]m00_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire m00_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire m00_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire m00_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_microblaze_1_axi_periph_BRESP;
  wire m00_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_microblaze_1_axi_periph_RDATA;
  wire m00_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_microblaze_1_axi_periph_RRESP;
  wire m00_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_microblaze_1_axi_periph_WDATA;
  wire m00_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire m00_couplers_to_microblaze_1_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire m01_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire m01_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire m01_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire m01_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire m01_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_microblaze_1_axi_periph_BRESP;
  wire m01_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_microblaze_1_axi_periph_RDATA;
  wire m01_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_microblaze_1_axi_periph_RRESP;
  wire m01_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_microblaze_1_axi_periph_WDATA;
  wire m01_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire m01_couplers_to_microblaze_1_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [2:0]m02_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire m02_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire m02_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [2:0]m02_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire m02_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire m02_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire m02_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_microblaze_1_axi_periph_BRESP;
  wire m02_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_microblaze_1_axi_periph_RDATA;
  wire m02_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_microblaze_1_axi_periph_RRESP;
  wire m02_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_microblaze_1_axi_periph_WDATA;
  wire m02_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire m02_couplers_to_microblaze_1_axi_periph_WVALID;
  wire [31:0]m03_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [2:0]m03_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire m03_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire m03_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [2:0]m03_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire m03_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire m03_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire m03_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_microblaze_1_axi_periph_BRESP;
  wire m03_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_microblaze_1_axi_periph_RDATA;
  wire m03_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_microblaze_1_axi_periph_RRESP;
  wire m03_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_microblaze_1_axi_periph_WDATA;
  wire m03_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire m03_couplers_to_microblaze_1_axi_periph_WVALID;
  wire [31:0]m04_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [2:0]m04_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire m04_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire m04_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]m04_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [2:0]m04_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire m04_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire m04_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire m04_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_microblaze_1_axi_periph_BRESP;
  wire m04_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_microblaze_1_axi_periph_RDATA;
  wire m04_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_microblaze_1_axi_periph_RRESP;
  wire m04_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_microblaze_1_axi_periph_WDATA;
  wire m04_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire m04_couplers_to_microblaze_1_axi_periph_WVALID;
  wire [31:0]m05_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [2:0]m05_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire m05_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire m05_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]m05_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [2:0]m05_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire m05_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire m05_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire m05_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_microblaze_1_axi_periph_BRESP;
  wire m05_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_microblaze_1_axi_periph_RDATA;
  wire m05_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_microblaze_1_axi_periph_RRESP;
  wire m05_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_microblaze_1_axi_periph_WDATA;
  wire m05_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire m05_couplers_to_microblaze_1_axi_periph_WVALID;
  wire [31:0]m06_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [2:0]m06_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire m06_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire m06_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]m06_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [2:0]m06_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire m06_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire m06_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire m06_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_microblaze_1_axi_periph_BRESP;
  wire m06_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_microblaze_1_axi_periph_RDATA;
  wire m06_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_microblaze_1_axi_periph_RRESP;
  wire m06_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_microblaze_1_axi_periph_WDATA;
  wire m06_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire m06_couplers_to_microblaze_1_axi_periph_WVALID;
  wire [31:0]m07_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [2:0]m07_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire m07_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire m07_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]m07_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [2:0]m07_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire m07_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire m07_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire m07_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_microblaze_1_axi_periph_BRESP;
  wire m07_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_microblaze_1_axi_periph_RDATA;
  wire m07_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_microblaze_1_axi_periph_RRESP;
  wire m07_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_microblaze_1_axi_periph_WDATA;
  wire m07_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire m07_couplers_to_microblaze_1_axi_periph_WVALID;
  wire [13:0]m08_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire [1:0]m08_couplers_to_microblaze_1_axi_periph_ARBURST;
  wire [3:0]m08_couplers_to_microblaze_1_axi_periph_ARCACHE;
  wire [7:0]m08_couplers_to_microblaze_1_axi_periph_ARLEN;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_ARLOCK;
  wire [2:0]m08_couplers_to_microblaze_1_axi_periph_ARPROT;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire [2:0]m08_couplers_to_microblaze_1_axi_periph_ARSIZE;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [13:0]m08_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire [1:0]m08_couplers_to_microblaze_1_axi_periph_AWBURST;
  wire [3:0]m08_couplers_to_microblaze_1_axi_periph_AWCACHE;
  wire [7:0]m08_couplers_to_microblaze_1_axi_periph_AWLEN;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_AWLOCK;
  wire [2:0]m08_couplers_to_microblaze_1_axi_periph_AWPROT;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire [2:0]m08_couplers_to_microblaze_1_axi_periph_AWSIZE;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_microblaze_1_axi_periph_BRESP;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_microblaze_1_axi_periph_RDATA;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_RLAST;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_microblaze_1_axi_periph_RRESP;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_microblaze_1_axi_periph_WDATA;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_WLAST;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire [0:0]m08_couplers_to_microblaze_1_axi_periph_WVALID;
  wire microblaze_1_axi_periph_ACLK_net;
  wire [0:0]microblaze_1_axi_periph_ARESETN_net;
  wire [31:0]microblaze_1_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]microblaze_1_axi_periph_to_s00_couplers_ARPROT;
  wire microblaze_1_axi_periph_to_s00_couplers_ARREADY;
  wire microblaze_1_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]microblaze_1_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]microblaze_1_axi_periph_to_s00_couplers_AWPROT;
  wire microblaze_1_axi_periph_to_s00_couplers_AWREADY;
  wire microblaze_1_axi_periph_to_s00_couplers_AWVALID;
  wire microblaze_1_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]microblaze_1_axi_periph_to_s00_couplers_BRESP;
  wire microblaze_1_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]microblaze_1_axi_periph_to_s00_couplers_RDATA;
  wire microblaze_1_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]microblaze_1_axi_periph_to_s00_couplers_RRESP;
  wire microblaze_1_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]microblaze_1_axi_periph_to_s00_couplers_WDATA;
  wire microblaze_1_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]microblaze_1_axi_periph_to_s00_couplers_WSTRB;
  wire microblaze_1_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]microblaze_1_axi_periph_to_s01_couplers_ARADDR;
  wire [1:0]microblaze_1_axi_periph_to_s01_couplers_ARBURST;
  wire [3:0]microblaze_1_axi_periph_to_s01_couplers_ARCACHE;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_ARID;
  wire [7:0]microblaze_1_axi_periph_to_s01_couplers_ARLEN;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_ARLOCK;
  wire [2:0]microblaze_1_axi_periph_to_s01_couplers_ARPROT;
  wire [3:0]microblaze_1_axi_periph_to_s01_couplers_ARQOS;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_ARREADY;
  wire [2:0]microblaze_1_axi_periph_to_s01_couplers_ARSIZE;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_ARVALID;
  wire [31:0]microblaze_1_axi_periph_to_s01_couplers_AWADDR;
  wire [1:0]microblaze_1_axi_periph_to_s01_couplers_AWBURST;
  wire [3:0]microblaze_1_axi_periph_to_s01_couplers_AWCACHE;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_AWID;
  wire [7:0]microblaze_1_axi_periph_to_s01_couplers_AWLEN;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_AWLOCK;
  wire [2:0]microblaze_1_axi_periph_to_s01_couplers_AWPROT;
  wire [3:0]microblaze_1_axi_periph_to_s01_couplers_AWQOS;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_AWREADY;
  wire [2:0]microblaze_1_axi_periph_to_s01_couplers_AWSIZE;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_AWVALID;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_BID;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_BREADY;
  wire [1:0]microblaze_1_axi_periph_to_s01_couplers_BRESP;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_BVALID;
  wire [31:0]microblaze_1_axi_periph_to_s01_couplers_RDATA;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_RID;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_RLAST;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_RREADY;
  wire [1:0]microblaze_1_axi_periph_to_s01_couplers_RRESP;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_RVALID;
  wire [31:0]microblaze_1_axi_periph_to_s01_couplers_WDATA;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_WLAST;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_WREADY;
  wire [3:0]microblaze_1_axi_periph_to_s01_couplers_WSTRB;
  wire [0:0]microblaze_1_axi_periph_to_s01_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [0:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire [0:0]s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [0:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWVALID;
  wire [3:2]s01_couplers_to_xbar_BID;
  wire [0:0]s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [3:2]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire [0:0]s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [0:0]s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire [0:0]s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [23:20]xbar_to_m05_couplers_ARQOS;
  wire xbar_to_m05_couplers_ARREADY;
  wire [23:20]xbar_to_m05_couplers_ARREGION;
  wire [17:15]xbar_to_m05_couplers_ARSIZE;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [23:20]xbar_to_m05_couplers_AWQOS;
  wire xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [27:24]xbar_to_m06_couplers_ARQOS;
  wire xbar_to_m06_couplers_ARREADY;
  wire [27:24]xbar_to_m06_couplers_ARREGION;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [27:24]xbar_to_m06_couplers_AWQOS;
  wire xbar_to_m06_couplers_AWREADY;
  wire [27:24]xbar_to_m06_couplers_AWREGION;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [31:28]xbar_to_m07_couplers_ARQOS;
  wire xbar_to_m07_couplers_ARREADY;
  wire [31:28]xbar_to_m07_couplers_ARREGION;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [31:28]xbar_to_m07_couplers_AWQOS;
  wire xbar_to_m07_couplers_AWREADY;
  wire [31:28]xbar_to_m07_couplers_AWREGION;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [17:16]xbar_to_m08_couplers_ARBURST;
  wire [35:32]xbar_to_m08_couplers_ARCACHE;
  wire [71:64]xbar_to_m08_couplers_ARLEN;
  wire [8:8]xbar_to_m08_couplers_ARLOCK;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [0:0]xbar_to_m08_couplers_ARREADY;
  wire [26:24]xbar_to_m08_couplers_ARSIZE;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [17:16]xbar_to_m08_couplers_AWBURST;
  wire [35:32]xbar_to_m08_couplers_AWCACHE;
  wire [71:64]xbar_to_m08_couplers_AWLEN;
  wire [8:8]xbar_to_m08_couplers_AWLOCK;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [0:0]xbar_to_m08_couplers_AWREADY;
  wire [26:24]xbar_to_m08_couplers_AWSIZE;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire [0:0]xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [0:0]xbar_to_m08_couplers_RLAST;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire [0:0]xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire [8:8]xbar_to_m08_couplers_WLAST;
  wire [0:0]xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [3:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rid_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_microblaze_1_axi_periph_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_microblaze_1_axi_periph_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_microblaze_1_axi_periph_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_microblaze_1_axi_periph_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_microblaze_1_axi_periph_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M05_AXI_arvalid = m05_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M05_AXI_awvalid = m05_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_microblaze_1_axi_periph_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M06_AXI_arvalid = m06_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M06_AXI_awvalid = m06_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_microblaze_1_axi_periph_WVALID;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M07_AXI_arvalid = m07_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M07_AXI_awvalid = m07_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_microblaze_1_axi_periph_WVALID;
  assign M08_AXI_araddr[13:0] = m08_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M08_AXI_arburst[1:0] = m08_couplers_to_microblaze_1_axi_periph_ARBURST;
  assign M08_AXI_arcache[3:0] = m08_couplers_to_microblaze_1_axi_periph_ARCACHE;
  assign M08_AXI_arlen[7:0] = m08_couplers_to_microblaze_1_axi_periph_ARLEN;
  assign M08_AXI_arlock[0] = m08_couplers_to_microblaze_1_axi_periph_ARLOCK;
  assign M08_AXI_arprot[2:0] = m08_couplers_to_microblaze_1_axi_periph_ARPROT;
  assign M08_AXI_arsize[2:0] = m08_couplers_to_microblaze_1_axi_periph_ARSIZE;
  assign M08_AXI_arvalid[0] = m08_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M08_AXI_awaddr[13:0] = m08_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M08_AXI_awburst[1:0] = m08_couplers_to_microblaze_1_axi_periph_AWBURST;
  assign M08_AXI_awcache[3:0] = m08_couplers_to_microblaze_1_axi_periph_AWCACHE;
  assign M08_AXI_awlen[7:0] = m08_couplers_to_microblaze_1_axi_periph_AWLEN;
  assign M08_AXI_awlock[0] = m08_couplers_to_microblaze_1_axi_periph_AWLOCK;
  assign M08_AXI_awprot[2:0] = m08_couplers_to_microblaze_1_axi_periph_AWPROT;
  assign M08_AXI_awsize[2:0] = m08_couplers_to_microblaze_1_axi_periph_AWSIZE;
  assign M08_AXI_awvalid[0] = m08_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M08_AXI_bready[0] = m08_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M08_AXI_rready[0] = m08_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M08_AXI_wlast[0] = m08_couplers_to_microblaze_1_axi_periph_WLAST;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M08_AXI_wvalid[0] = m08_couplers_to_microblaze_1_axi_periph_WVALID;
  assign S00_AXI_arready = microblaze_1_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = microblaze_1_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = microblaze_1_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = microblaze_1_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = microblaze_1_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = microblaze_1_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = microblaze_1_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = microblaze_1_axi_periph_to_s00_couplers_WREADY;
  assign S01_AXI_arready[0] = microblaze_1_axi_periph_to_s01_couplers_ARREADY;
  assign S01_AXI_awready[0] = microblaze_1_axi_periph_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[0] = microblaze_1_axi_periph_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = microblaze_1_axi_periph_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid[0] = microblaze_1_axi_periph_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = microblaze_1_axi_periph_to_s01_couplers_RDATA;
  assign S01_AXI_rid[0] = microblaze_1_axi_periph_to_s01_couplers_RID;
  assign S01_AXI_rlast[0] = microblaze_1_axi_periph_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = microblaze_1_axi_periph_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid[0] = microblaze_1_axi_periph_to_s01_couplers_RVALID;
  assign S01_AXI_wready[0] = microblaze_1_axi_periph_to_s01_couplers_WREADY;
  assign m00_couplers_to_microblaze_1_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_microblaze_1_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_microblaze_1_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_microblaze_1_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_microblaze_1_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_microblaze_1_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_microblaze_1_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_microblaze_1_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_microblaze_1_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_microblaze_1_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_microblaze_1_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_microblaze_1_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_microblaze_1_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_microblaze_1_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_microblaze_1_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_microblaze_1_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_microblaze_1_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_microblaze_1_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_microblaze_1_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_microblaze_1_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_microblaze_1_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_microblaze_1_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_microblaze_1_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_microblaze_1_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_microblaze_1_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_microblaze_1_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_microblaze_1_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_microblaze_1_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_microblaze_1_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_microblaze_1_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_microblaze_1_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_microblaze_1_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_microblaze_1_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_microblaze_1_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_microblaze_1_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_microblaze_1_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_microblaze_1_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_microblaze_1_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_microblaze_1_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_microblaze_1_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_microblaze_1_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_microblaze_1_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_microblaze_1_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_microblaze_1_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_microblaze_1_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_microblaze_1_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_microblaze_1_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_microblaze_1_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_microblaze_1_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_microblaze_1_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_microblaze_1_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_microblaze_1_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_microblaze_1_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_microblaze_1_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_microblaze_1_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_microblaze_1_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_microblaze_1_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_microblaze_1_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_microblaze_1_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_microblaze_1_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_microblaze_1_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_microblaze_1_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_microblaze_1_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_microblaze_1_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_microblaze_1_axi_periph_ARREADY = M08_AXI_arready[0];
  assign m08_couplers_to_microblaze_1_axi_periph_AWREADY = M08_AXI_awready[0];
  assign m08_couplers_to_microblaze_1_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_microblaze_1_axi_periph_BVALID = M08_AXI_bvalid[0];
  assign m08_couplers_to_microblaze_1_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_microblaze_1_axi_periph_RLAST = M08_AXI_rlast[0];
  assign m08_couplers_to_microblaze_1_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_microblaze_1_axi_periph_RVALID = M08_AXI_rvalid[0];
  assign m08_couplers_to_microblaze_1_axi_periph_WREADY = M08_AXI_wready[0];
  assign microblaze_1_axi_periph_ACLK_net = ACLK;
  assign microblaze_1_axi_periph_ARESETN_net = ARESETN[0];
  assign microblaze_1_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign microblaze_1_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign microblaze_1_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign microblaze_1_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign microblaze_1_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign microblaze_1_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign microblaze_1_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign microblaze_1_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign microblaze_1_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign microblaze_1_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign microblaze_1_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign microblaze_1_axi_periph_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign microblaze_1_axi_periph_to_s01_couplers_ARVALID = S01_AXI_arvalid[0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign microblaze_1_axi_periph_to_s01_couplers_AWVALID = S01_AXI_awvalid[0];
  assign microblaze_1_axi_periph_to_s01_couplers_BREADY = S01_AXI_bready[0];
  assign microblaze_1_axi_periph_to_s01_couplers_RREADY = S01_AXI_rready[0];
  assign microblaze_1_axi_periph_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign microblaze_1_axi_periph_to_s01_couplers_WLAST = S01_AXI_wlast[0];
  assign microblaze_1_axi_periph_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign microblaze_1_axi_periph_to_s01_couplers_WVALID = S01_AXI_wvalid[0];
GND GND
       (.G(GND_1));
m00_couplers_imp_1B8LTN8 m00_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arprot(m00_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m00_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awprot(m00_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m00_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_1ILRYTX m01_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
m02_couplers_imp_X445AU m02_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arprot(m02_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m02_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awprot(m02_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m02_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
m03_couplers_imp_760CD3 m03_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arprot(m03_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awprot(m03_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
m04_couplers_imp_1KBS2DT m04_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arprot(m04_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m04_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awprot(m04_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m04_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
m05_couplers_imp_19XO9XS m05_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arprot(m05_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m05_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awprot(m05_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m05_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m05_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m05_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m05_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m05_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m05_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m05_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m05_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m05_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m05_couplers_RLAST),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
m06_couplers_imp_64RI4Z m06_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arprot(m06_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m06_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awprot(m06_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m06_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m06_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m06_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m06_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m06_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
m07_couplers_imp_XGHV4I m07_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arprot(m07_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m07_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awprot(m07_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m07_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m07_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m07_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m07_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m07_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
m08_couplers_imp_T2EYFY m08_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arburst(m08_couplers_to_microblaze_1_axi_periph_ARBURST),
        .M_AXI_arcache(m08_couplers_to_microblaze_1_axi_periph_ARCACHE),
        .M_AXI_arlen(m08_couplers_to_microblaze_1_axi_periph_ARLEN),
        .M_AXI_arlock(m08_couplers_to_microblaze_1_axi_periph_ARLOCK),
        .M_AXI_arprot(m08_couplers_to_microblaze_1_axi_periph_ARPROT),
        .M_AXI_arready(m08_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arsize(m08_couplers_to_microblaze_1_axi_periph_ARSIZE),
        .M_AXI_arvalid(m08_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awburst(m08_couplers_to_microblaze_1_axi_periph_AWBURST),
        .M_AXI_awcache(m08_couplers_to_microblaze_1_axi_periph_AWCACHE),
        .M_AXI_awlen(m08_couplers_to_microblaze_1_axi_periph_AWLEN),
        .M_AXI_awlock(m08_couplers_to_microblaze_1_axi_periph_AWLOCK),
        .M_AXI_awprot(m08_couplers_to_microblaze_1_axi_periph_AWPROT),
        .M_AXI_awready(m08_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awsize(m08_couplers_to_microblaze_1_axi_periph_AWSIZE),
        .M_AXI_awvalid(m08_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rlast(m08_couplers_to_microblaze_1_axi_periph_RLAST),
        .M_AXI_rready(m08_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wlast(m08_couplers_to_microblaze_1_axi_periph_WLAST),
        .M_AXI_wready(m08_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR[269:256]),
        .S_AXI_arburst(xbar_to_m08_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m08_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m08_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m08_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m08_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR[269:256]),
        .S_AXI_awburst(xbar_to_m08_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m08_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m08_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m08_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m08_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m08_couplers_RLAST),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m08_couplers_WLAST),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
s00_couplers_imp_5BV0X6 s00_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(microblaze_1_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(microblaze_1_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(microblaze_1_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(microblaze_1_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_1_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(microblaze_1_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(microblaze_1_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(microblaze_1_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(microblaze_1_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(microblaze_1_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(microblaze_1_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(microblaze_1_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(microblaze_1_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(microblaze_1_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(microblaze_1_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(microblaze_1_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(microblaze_1_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(microblaze_1_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_1_axi_periph_to_s00_couplers_WVALID));
s01_couplers_imp_YVTD0R s01_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID[2]),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID[2]),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(microblaze_1_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .S_AXI_araddr(microblaze_1_axi_periph_to_s01_couplers_ARADDR),
        .S_AXI_arburst(microblaze_1_axi_periph_to_s01_couplers_ARBURST),
        .S_AXI_arcache(microblaze_1_axi_periph_to_s01_couplers_ARCACHE),
        .S_AXI_arid(microblaze_1_axi_periph_to_s01_couplers_ARID),
        .S_AXI_arlen(microblaze_1_axi_periph_to_s01_couplers_ARLEN),
        .S_AXI_arlock(microblaze_1_axi_periph_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(microblaze_1_axi_periph_to_s01_couplers_ARPROT),
        .S_AXI_arqos(microblaze_1_axi_periph_to_s01_couplers_ARQOS),
        .S_AXI_arready(microblaze_1_axi_periph_to_s01_couplers_ARREADY),
        .S_AXI_arsize(microblaze_1_axi_periph_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(microblaze_1_axi_periph_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_1_axi_periph_to_s01_couplers_AWADDR),
        .S_AXI_awburst(microblaze_1_axi_periph_to_s01_couplers_AWBURST),
        .S_AXI_awcache(microblaze_1_axi_periph_to_s01_couplers_AWCACHE),
        .S_AXI_awid(microblaze_1_axi_periph_to_s01_couplers_AWID),
        .S_AXI_awlen(microblaze_1_axi_periph_to_s01_couplers_AWLEN),
        .S_AXI_awlock(microblaze_1_axi_periph_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(microblaze_1_axi_periph_to_s01_couplers_AWPROT),
        .S_AXI_awqos(microblaze_1_axi_periph_to_s01_couplers_AWQOS),
        .S_AXI_awready(microblaze_1_axi_periph_to_s01_couplers_AWREADY),
        .S_AXI_awsize(microblaze_1_axi_periph_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(microblaze_1_axi_periph_to_s01_couplers_AWVALID),
        .S_AXI_bid(microblaze_1_axi_periph_to_s01_couplers_BID),
        .S_AXI_bready(microblaze_1_axi_periph_to_s01_couplers_BREADY),
        .S_AXI_bresp(microblaze_1_axi_periph_to_s01_couplers_BRESP),
        .S_AXI_bvalid(microblaze_1_axi_periph_to_s01_couplers_BVALID),
        .S_AXI_rdata(microblaze_1_axi_periph_to_s01_couplers_RDATA),
        .S_AXI_rid(microblaze_1_axi_periph_to_s01_couplers_RID),
        .S_AXI_rlast(microblaze_1_axi_periph_to_s01_couplers_RLAST),
        .S_AXI_rready(microblaze_1_axi_periph_to_s01_couplers_RREADY),
        .S_AXI_rresp(microblaze_1_axi_periph_to_s01_couplers_RRESP),
        .S_AXI_rvalid(microblaze_1_axi_periph_to_s01_couplers_RVALID),
        .S_AXI_wdata(microblaze_1_axi_periph_to_s01_couplers_WDATA),
        .S_AXI_wlast(microblaze_1_axi_periph_to_s01_couplers_WLAST),
        .S_AXI_wready(microblaze_1_axi_periph_to_s01_couplers_WREADY),
        .S_AXI_wstrb(microblaze_1_axi_periph_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_1_axi_periph_to_s01_couplers_WVALID));
eyescan_subsystem_xbar_0 xbar
       (.aclk(microblaze_1_axi_periph_ACLK_net),
        .aresetn(microblaze_1_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m08_couplers_ARBURST,xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m08_couplers_ARCACHE,xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m08_couplers_ARLEN,xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m08_couplers_ARLOCK,xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m08_couplers_ARSIZE,xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m08_couplers_AWBURST,xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m08_couplers_AWCACHE,xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m08_couplers_AWLEN,xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m08_couplers_AWLOCK,xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m08_couplers_AWSIZE,xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rlast({xbar_to_m08_couplers_RLAST,xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m08_couplers_WLAST,xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({s01_couplers_to_xbar_ARID,GND_1,GND_1}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({s01_couplers_to_xbar_AWID,GND_1,GND_1}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s01_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[1:0]}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s01_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[1:0]}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module m00_couplers_imp_1B8LTN8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_1ILRYTX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m01_couplers_ARADDR;
  wire [2:0]auto_pc_to_m01_couplers_ARPROT;
  wire auto_pc_to_m01_couplers_ARREADY;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [31:0]auto_pc_to_m01_couplers_AWADDR;
  wire [2:0]auto_pc_to_m01_couplers_AWPROT;
  wire auto_pc_to_m01_couplers_AWREADY;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_pc_ARADDR;
  wire [1:0]m01_couplers_to_auto_pc_ARBURST;
  wire [3:0]m01_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m01_couplers_to_auto_pc_ARLEN;
  wire [0:0]m01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_pc_ARPROT;
  wire [3:0]m01_couplers_to_auto_pc_ARQOS;
  wire m01_couplers_to_auto_pc_ARREADY;
  wire [3:0]m01_couplers_to_auto_pc_ARREGION;
  wire [2:0]m01_couplers_to_auto_pc_ARSIZE;
  wire m01_couplers_to_auto_pc_ARVALID;
  wire [31:0]m01_couplers_to_auto_pc_AWADDR;
  wire [1:0]m01_couplers_to_auto_pc_AWBURST;
  wire [3:0]m01_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m01_couplers_to_auto_pc_AWLEN;
  wire [0:0]m01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_pc_AWPROT;
  wire [3:0]m01_couplers_to_auto_pc_AWQOS;
  wire m01_couplers_to_auto_pc_AWREADY;
  wire [3:0]m01_couplers_to_auto_pc_AWREGION;
  wire [2:0]m01_couplers_to_auto_pc_AWSIZE;
  wire m01_couplers_to_auto_pc_AWVALID;
  wire m01_couplers_to_auto_pc_BREADY;
  wire [1:0]m01_couplers_to_auto_pc_BRESP;
  wire m01_couplers_to_auto_pc_BVALID;
  wire [31:0]m01_couplers_to_auto_pc_RDATA;
  wire m01_couplers_to_auto_pc_RLAST;
  wire m01_couplers_to_auto_pc_RREADY;
  wire [1:0]m01_couplers_to_auto_pc_RRESP;
  wire m01_couplers_to_auto_pc_RVALID;
  wire [31:0]m01_couplers_to_auto_pc_WDATA;
  wire m01_couplers_to_auto_pc_WLAST;
  wire m01_couplers_to_auto_pc_WREADY;
  wire [3:0]m01_couplers_to_auto_pc_WSTRB;
  wire m01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_pc_WVALID));
endmodule

module m02_couplers_imp_X445AU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m02_couplers_ARADDR;
  wire [2:0]auto_pc_to_m02_couplers_ARPROT;
  wire auto_pc_to_m02_couplers_ARREADY;
  wire auto_pc_to_m02_couplers_ARVALID;
  wire [31:0]auto_pc_to_m02_couplers_AWADDR;
  wire [2:0]auto_pc_to_m02_couplers_AWPROT;
  wire auto_pc_to_m02_couplers_AWREADY;
  wire auto_pc_to_m02_couplers_AWVALID;
  wire auto_pc_to_m02_couplers_BREADY;
  wire [1:0]auto_pc_to_m02_couplers_BRESP;
  wire auto_pc_to_m02_couplers_BVALID;
  wire [31:0]auto_pc_to_m02_couplers_RDATA;
  wire auto_pc_to_m02_couplers_RREADY;
  wire [1:0]auto_pc_to_m02_couplers_RRESP;
  wire auto_pc_to_m02_couplers_RVALID;
  wire [31:0]auto_pc_to_m02_couplers_WDATA;
  wire auto_pc_to_m02_couplers_WREADY;
  wire [3:0]auto_pc_to_m02_couplers_WSTRB;
  wire auto_pc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_pc_ARADDR;
  wire [1:0]m02_couplers_to_auto_pc_ARBURST;
  wire [3:0]m02_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m02_couplers_to_auto_pc_ARLEN;
  wire [0:0]m02_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m02_couplers_to_auto_pc_ARPROT;
  wire [3:0]m02_couplers_to_auto_pc_ARQOS;
  wire m02_couplers_to_auto_pc_ARREADY;
  wire [3:0]m02_couplers_to_auto_pc_ARREGION;
  wire [2:0]m02_couplers_to_auto_pc_ARSIZE;
  wire m02_couplers_to_auto_pc_ARVALID;
  wire [31:0]m02_couplers_to_auto_pc_AWADDR;
  wire [1:0]m02_couplers_to_auto_pc_AWBURST;
  wire [3:0]m02_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m02_couplers_to_auto_pc_AWLEN;
  wire [0:0]m02_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m02_couplers_to_auto_pc_AWPROT;
  wire [3:0]m02_couplers_to_auto_pc_AWQOS;
  wire m02_couplers_to_auto_pc_AWREADY;
  wire [3:0]m02_couplers_to_auto_pc_AWREGION;
  wire [2:0]m02_couplers_to_auto_pc_AWSIZE;
  wire m02_couplers_to_auto_pc_AWVALID;
  wire m02_couplers_to_auto_pc_BREADY;
  wire [1:0]m02_couplers_to_auto_pc_BRESP;
  wire m02_couplers_to_auto_pc_BVALID;
  wire [31:0]m02_couplers_to_auto_pc_RDATA;
  wire m02_couplers_to_auto_pc_RLAST;
  wire m02_couplers_to_auto_pc_RREADY;
  wire [1:0]m02_couplers_to_auto_pc_RRESP;
  wire m02_couplers_to_auto_pc_RVALID;
  wire [31:0]m02_couplers_to_auto_pc_WDATA;
  wire m02_couplers_to_auto_pc_WLAST;
  wire m02_couplers_to_auto_pc_WREADY;
  wire [3:0]m02_couplers_to_auto_pc_WSTRB;
  wire m02_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m02_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m02_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m02_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m02_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m02_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m02_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m02_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m02_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m02_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m02_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m02_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m02_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m02_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_pc_WVALID));
endmodule

module m03_couplers_imp_760CD3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m03_couplers_ARADDR;
  wire [2:0]auto_pc_to_m03_couplers_ARPROT;
  wire auto_pc_to_m03_couplers_ARREADY;
  wire auto_pc_to_m03_couplers_ARVALID;
  wire [31:0]auto_pc_to_m03_couplers_AWADDR;
  wire [2:0]auto_pc_to_m03_couplers_AWPROT;
  wire auto_pc_to_m03_couplers_AWREADY;
  wire auto_pc_to_m03_couplers_AWVALID;
  wire auto_pc_to_m03_couplers_BREADY;
  wire [1:0]auto_pc_to_m03_couplers_BRESP;
  wire auto_pc_to_m03_couplers_BVALID;
  wire [31:0]auto_pc_to_m03_couplers_RDATA;
  wire auto_pc_to_m03_couplers_RREADY;
  wire [1:0]auto_pc_to_m03_couplers_RRESP;
  wire auto_pc_to_m03_couplers_RVALID;
  wire [31:0]auto_pc_to_m03_couplers_WDATA;
  wire auto_pc_to_m03_couplers_WREADY;
  wire [3:0]auto_pc_to_m03_couplers_WSTRB;
  wire auto_pc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_pc_ARADDR;
  wire [1:0]m03_couplers_to_auto_pc_ARBURST;
  wire [3:0]m03_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m03_couplers_to_auto_pc_ARLEN;
  wire [0:0]m03_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m03_couplers_to_auto_pc_ARPROT;
  wire [3:0]m03_couplers_to_auto_pc_ARQOS;
  wire m03_couplers_to_auto_pc_ARREADY;
  wire [3:0]m03_couplers_to_auto_pc_ARREGION;
  wire [2:0]m03_couplers_to_auto_pc_ARSIZE;
  wire m03_couplers_to_auto_pc_ARVALID;
  wire [31:0]m03_couplers_to_auto_pc_AWADDR;
  wire [1:0]m03_couplers_to_auto_pc_AWBURST;
  wire [3:0]m03_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m03_couplers_to_auto_pc_AWLEN;
  wire [0:0]m03_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m03_couplers_to_auto_pc_AWPROT;
  wire [3:0]m03_couplers_to_auto_pc_AWQOS;
  wire m03_couplers_to_auto_pc_AWREADY;
  wire [3:0]m03_couplers_to_auto_pc_AWREGION;
  wire [2:0]m03_couplers_to_auto_pc_AWSIZE;
  wire m03_couplers_to_auto_pc_AWVALID;
  wire m03_couplers_to_auto_pc_BREADY;
  wire [1:0]m03_couplers_to_auto_pc_BRESP;
  wire m03_couplers_to_auto_pc_BVALID;
  wire [31:0]m03_couplers_to_auto_pc_RDATA;
  wire m03_couplers_to_auto_pc_RLAST;
  wire m03_couplers_to_auto_pc_RREADY;
  wire [1:0]m03_couplers_to_auto_pc_RRESP;
  wire m03_couplers_to_auto_pc_RVALID;
  wire [31:0]m03_couplers_to_auto_pc_WDATA;
  wire m03_couplers_to_auto_pc_WLAST;
  wire m03_couplers_to_auto_pc_WREADY;
  wire [3:0]m03_couplers_to_auto_pc_WSTRB;
  wire m03_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m03_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m03_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m03_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m03_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m03_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m03_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m03_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m03_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m03_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_pc_WVALID));
endmodule

module m04_couplers_imp_1KBS2DT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m04_couplers_ARADDR;
  wire [2:0]auto_pc_to_m04_couplers_ARPROT;
  wire auto_pc_to_m04_couplers_ARREADY;
  wire auto_pc_to_m04_couplers_ARVALID;
  wire [31:0]auto_pc_to_m04_couplers_AWADDR;
  wire [2:0]auto_pc_to_m04_couplers_AWPROT;
  wire auto_pc_to_m04_couplers_AWREADY;
  wire auto_pc_to_m04_couplers_AWVALID;
  wire auto_pc_to_m04_couplers_BREADY;
  wire [1:0]auto_pc_to_m04_couplers_BRESP;
  wire auto_pc_to_m04_couplers_BVALID;
  wire [31:0]auto_pc_to_m04_couplers_RDATA;
  wire auto_pc_to_m04_couplers_RREADY;
  wire [1:0]auto_pc_to_m04_couplers_RRESP;
  wire auto_pc_to_m04_couplers_RVALID;
  wire [31:0]auto_pc_to_m04_couplers_WDATA;
  wire auto_pc_to_m04_couplers_WREADY;
  wire [3:0]auto_pc_to_m04_couplers_WSTRB;
  wire auto_pc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_pc_ARADDR;
  wire [1:0]m04_couplers_to_auto_pc_ARBURST;
  wire [3:0]m04_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m04_couplers_to_auto_pc_ARLEN;
  wire [0:0]m04_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m04_couplers_to_auto_pc_ARPROT;
  wire [3:0]m04_couplers_to_auto_pc_ARQOS;
  wire m04_couplers_to_auto_pc_ARREADY;
  wire [3:0]m04_couplers_to_auto_pc_ARREGION;
  wire [2:0]m04_couplers_to_auto_pc_ARSIZE;
  wire m04_couplers_to_auto_pc_ARVALID;
  wire [31:0]m04_couplers_to_auto_pc_AWADDR;
  wire [1:0]m04_couplers_to_auto_pc_AWBURST;
  wire [3:0]m04_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m04_couplers_to_auto_pc_AWLEN;
  wire [0:0]m04_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m04_couplers_to_auto_pc_AWPROT;
  wire [3:0]m04_couplers_to_auto_pc_AWQOS;
  wire m04_couplers_to_auto_pc_AWREADY;
  wire [3:0]m04_couplers_to_auto_pc_AWREGION;
  wire [2:0]m04_couplers_to_auto_pc_AWSIZE;
  wire m04_couplers_to_auto_pc_AWVALID;
  wire m04_couplers_to_auto_pc_BREADY;
  wire [1:0]m04_couplers_to_auto_pc_BRESP;
  wire m04_couplers_to_auto_pc_BVALID;
  wire [31:0]m04_couplers_to_auto_pc_RDATA;
  wire m04_couplers_to_auto_pc_RLAST;
  wire m04_couplers_to_auto_pc_RREADY;
  wire [1:0]m04_couplers_to_auto_pc_RRESP;
  wire m04_couplers_to_auto_pc_RVALID;
  wire [31:0]m04_couplers_to_auto_pc_WDATA;
  wire m04_couplers_to_auto_pc_WLAST;
  wire m04_couplers_to_auto_pc_WREADY;
  wire [3:0]m04_couplers_to_auto_pc_WSTRB;
  wire m04_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m04_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m04_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m04_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m04_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m04_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m04_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m04_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m04_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m04_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m04_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m04_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m04_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m04_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m04_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m04_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m04_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m04_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m04_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m04_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m04_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m04_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m04_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m04_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m04_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m04_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m04_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m04_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m04_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m04_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m04_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m04_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m04_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_pc_WVALID));
endmodule

module m05_couplers_imp_19XO9XS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m05_couplers_ARADDR;
  wire [2:0]auto_pc_to_m05_couplers_ARPROT;
  wire auto_pc_to_m05_couplers_ARREADY;
  wire auto_pc_to_m05_couplers_ARVALID;
  wire [31:0]auto_pc_to_m05_couplers_AWADDR;
  wire [2:0]auto_pc_to_m05_couplers_AWPROT;
  wire auto_pc_to_m05_couplers_AWREADY;
  wire auto_pc_to_m05_couplers_AWVALID;
  wire auto_pc_to_m05_couplers_BREADY;
  wire [1:0]auto_pc_to_m05_couplers_BRESP;
  wire auto_pc_to_m05_couplers_BVALID;
  wire [31:0]auto_pc_to_m05_couplers_RDATA;
  wire auto_pc_to_m05_couplers_RREADY;
  wire [1:0]auto_pc_to_m05_couplers_RRESP;
  wire auto_pc_to_m05_couplers_RVALID;
  wire [31:0]auto_pc_to_m05_couplers_WDATA;
  wire auto_pc_to_m05_couplers_WREADY;
  wire [3:0]auto_pc_to_m05_couplers_WSTRB;
  wire auto_pc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_pc_ARADDR;
  wire [1:0]m05_couplers_to_auto_pc_ARBURST;
  wire [3:0]m05_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m05_couplers_to_auto_pc_ARLEN;
  wire [0:0]m05_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m05_couplers_to_auto_pc_ARPROT;
  wire [3:0]m05_couplers_to_auto_pc_ARQOS;
  wire m05_couplers_to_auto_pc_ARREADY;
  wire [3:0]m05_couplers_to_auto_pc_ARREGION;
  wire [2:0]m05_couplers_to_auto_pc_ARSIZE;
  wire m05_couplers_to_auto_pc_ARVALID;
  wire [31:0]m05_couplers_to_auto_pc_AWADDR;
  wire [1:0]m05_couplers_to_auto_pc_AWBURST;
  wire [3:0]m05_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m05_couplers_to_auto_pc_AWLEN;
  wire [0:0]m05_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m05_couplers_to_auto_pc_AWPROT;
  wire [3:0]m05_couplers_to_auto_pc_AWQOS;
  wire m05_couplers_to_auto_pc_AWREADY;
  wire [3:0]m05_couplers_to_auto_pc_AWREGION;
  wire [2:0]m05_couplers_to_auto_pc_AWSIZE;
  wire m05_couplers_to_auto_pc_AWVALID;
  wire m05_couplers_to_auto_pc_BREADY;
  wire [1:0]m05_couplers_to_auto_pc_BRESP;
  wire m05_couplers_to_auto_pc_BVALID;
  wire [31:0]m05_couplers_to_auto_pc_RDATA;
  wire m05_couplers_to_auto_pc_RLAST;
  wire m05_couplers_to_auto_pc_RREADY;
  wire [1:0]m05_couplers_to_auto_pc_RRESP;
  wire m05_couplers_to_auto_pc_RVALID;
  wire [31:0]m05_couplers_to_auto_pc_WDATA;
  wire m05_couplers_to_auto_pc_WLAST;
  wire m05_couplers_to_auto_pc_WREADY;
  wire [3:0]m05_couplers_to_auto_pc_WSTRB;
  wire m05_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m05_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m05_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m05_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m05_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m05_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m05_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m05_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_5 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m05_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m05_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m05_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m05_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m05_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m05_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m05_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m05_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m05_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m05_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m05_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m05_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m05_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m05_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m05_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m05_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m05_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m05_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m05_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m05_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m05_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m05_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m05_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m05_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m05_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m05_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m05_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m05_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m05_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_pc_WVALID));
endmodule

module m06_couplers_imp_64RI4Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m06_couplers_ARADDR;
  wire [2:0]auto_pc_to_m06_couplers_ARPROT;
  wire auto_pc_to_m06_couplers_ARREADY;
  wire auto_pc_to_m06_couplers_ARVALID;
  wire [31:0]auto_pc_to_m06_couplers_AWADDR;
  wire [2:0]auto_pc_to_m06_couplers_AWPROT;
  wire auto_pc_to_m06_couplers_AWREADY;
  wire auto_pc_to_m06_couplers_AWVALID;
  wire auto_pc_to_m06_couplers_BREADY;
  wire [1:0]auto_pc_to_m06_couplers_BRESP;
  wire auto_pc_to_m06_couplers_BVALID;
  wire [31:0]auto_pc_to_m06_couplers_RDATA;
  wire auto_pc_to_m06_couplers_RREADY;
  wire [1:0]auto_pc_to_m06_couplers_RRESP;
  wire auto_pc_to_m06_couplers_RVALID;
  wire [31:0]auto_pc_to_m06_couplers_WDATA;
  wire auto_pc_to_m06_couplers_WREADY;
  wire [3:0]auto_pc_to_m06_couplers_WSTRB;
  wire auto_pc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_pc_ARADDR;
  wire [1:0]m06_couplers_to_auto_pc_ARBURST;
  wire [3:0]m06_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m06_couplers_to_auto_pc_ARLEN;
  wire [0:0]m06_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m06_couplers_to_auto_pc_ARPROT;
  wire [3:0]m06_couplers_to_auto_pc_ARQOS;
  wire m06_couplers_to_auto_pc_ARREADY;
  wire [3:0]m06_couplers_to_auto_pc_ARREGION;
  wire [2:0]m06_couplers_to_auto_pc_ARSIZE;
  wire m06_couplers_to_auto_pc_ARVALID;
  wire [31:0]m06_couplers_to_auto_pc_AWADDR;
  wire [1:0]m06_couplers_to_auto_pc_AWBURST;
  wire [3:0]m06_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m06_couplers_to_auto_pc_AWLEN;
  wire [0:0]m06_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m06_couplers_to_auto_pc_AWPROT;
  wire [3:0]m06_couplers_to_auto_pc_AWQOS;
  wire m06_couplers_to_auto_pc_AWREADY;
  wire [3:0]m06_couplers_to_auto_pc_AWREGION;
  wire [2:0]m06_couplers_to_auto_pc_AWSIZE;
  wire m06_couplers_to_auto_pc_AWVALID;
  wire m06_couplers_to_auto_pc_BREADY;
  wire [1:0]m06_couplers_to_auto_pc_BRESP;
  wire m06_couplers_to_auto_pc_BVALID;
  wire [31:0]m06_couplers_to_auto_pc_RDATA;
  wire m06_couplers_to_auto_pc_RLAST;
  wire m06_couplers_to_auto_pc_RREADY;
  wire [1:0]m06_couplers_to_auto_pc_RRESP;
  wire m06_couplers_to_auto_pc_RVALID;
  wire [31:0]m06_couplers_to_auto_pc_WDATA;
  wire m06_couplers_to_auto_pc_WLAST;
  wire m06_couplers_to_auto_pc_WREADY;
  wire [3:0]m06_couplers_to_auto_pc_WSTRB;
  wire m06_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m06_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m06_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m06_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m06_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m06_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m06_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m06_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m06_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m06_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m06_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m06_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m06_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m06_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m06_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m06_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m06_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m06_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_6 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m06_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m06_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m06_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m06_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m06_couplers_WVALID),
        .s_axi_araddr(m06_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m06_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m06_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m06_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m06_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m06_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m06_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m06_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m06_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m06_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m06_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m06_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m06_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m06_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m06_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m06_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m06_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m06_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m06_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m06_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m06_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m06_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m06_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m06_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m06_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m06_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_pc_WVALID));
endmodule

module m07_couplers_imp_XGHV4I
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_m07_couplers_ARADDR;
  wire [2:0]auto_pc_to_m07_couplers_ARPROT;
  wire auto_pc_to_m07_couplers_ARREADY;
  wire auto_pc_to_m07_couplers_ARVALID;
  wire [31:0]auto_pc_to_m07_couplers_AWADDR;
  wire [2:0]auto_pc_to_m07_couplers_AWPROT;
  wire auto_pc_to_m07_couplers_AWREADY;
  wire auto_pc_to_m07_couplers_AWVALID;
  wire auto_pc_to_m07_couplers_BREADY;
  wire [1:0]auto_pc_to_m07_couplers_BRESP;
  wire auto_pc_to_m07_couplers_BVALID;
  wire [31:0]auto_pc_to_m07_couplers_RDATA;
  wire auto_pc_to_m07_couplers_RREADY;
  wire [1:0]auto_pc_to_m07_couplers_RRESP;
  wire auto_pc_to_m07_couplers_RVALID;
  wire [31:0]auto_pc_to_m07_couplers_WDATA;
  wire auto_pc_to_m07_couplers_WREADY;
  wire [3:0]auto_pc_to_m07_couplers_WSTRB;
  wire auto_pc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_pc_ARADDR;
  wire [1:0]m07_couplers_to_auto_pc_ARBURST;
  wire [3:0]m07_couplers_to_auto_pc_ARCACHE;
  wire [7:0]m07_couplers_to_auto_pc_ARLEN;
  wire [0:0]m07_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m07_couplers_to_auto_pc_ARPROT;
  wire [3:0]m07_couplers_to_auto_pc_ARQOS;
  wire m07_couplers_to_auto_pc_ARREADY;
  wire [3:0]m07_couplers_to_auto_pc_ARREGION;
  wire [2:0]m07_couplers_to_auto_pc_ARSIZE;
  wire m07_couplers_to_auto_pc_ARVALID;
  wire [31:0]m07_couplers_to_auto_pc_AWADDR;
  wire [1:0]m07_couplers_to_auto_pc_AWBURST;
  wire [3:0]m07_couplers_to_auto_pc_AWCACHE;
  wire [7:0]m07_couplers_to_auto_pc_AWLEN;
  wire [0:0]m07_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m07_couplers_to_auto_pc_AWPROT;
  wire [3:0]m07_couplers_to_auto_pc_AWQOS;
  wire m07_couplers_to_auto_pc_AWREADY;
  wire [3:0]m07_couplers_to_auto_pc_AWREGION;
  wire [2:0]m07_couplers_to_auto_pc_AWSIZE;
  wire m07_couplers_to_auto_pc_AWVALID;
  wire m07_couplers_to_auto_pc_BREADY;
  wire [1:0]m07_couplers_to_auto_pc_BRESP;
  wire m07_couplers_to_auto_pc_BVALID;
  wire [31:0]m07_couplers_to_auto_pc_RDATA;
  wire m07_couplers_to_auto_pc_RLAST;
  wire m07_couplers_to_auto_pc_RREADY;
  wire [1:0]m07_couplers_to_auto_pc_RRESP;
  wire m07_couplers_to_auto_pc_RVALID;
  wire [31:0]m07_couplers_to_auto_pc_WDATA;
  wire m07_couplers_to_auto_pc_WLAST;
  wire m07_couplers_to_auto_pc_WREADY;
  wire [3:0]m07_couplers_to_auto_pc_WSTRB;
  wire m07_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m07_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m07_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = m07_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = m07_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m07_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m07_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m07_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m07_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m07_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_7 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m07_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m07_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m07_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m07_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m07_couplers_WVALID),
        .s_axi_araddr(m07_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m07_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m07_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(m07_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m07_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m07_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m07_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m07_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m07_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m07_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m07_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m07_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m07_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(m07_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m07_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m07_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m07_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m07_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m07_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m07_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m07_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(m07_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m07_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m07_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m07_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_pc_WVALID));
endmodule

module m08_couplers_imp_T2EYFY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [13:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [13:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [13:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [13:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [13:0]m08_couplers_to_m08_couplers_ARADDR;
  wire [1:0]m08_couplers_to_m08_couplers_ARBURST;
  wire [3:0]m08_couplers_to_m08_couplers_ARCACHE;
  wire [7:0]m08_couplers_to_m08_couplers_ARLEN;
  wire [0:0]m08_couplers_to_m08_couplers_ARLOCK;
  wire [2:0]m08_couplers_to_m08_couplers_ARPROT;
  wire [0:0]m08_couplers_to_m08_couplers_ARREADY;
  wire [2:0]m08_couplers_to_m08_couplers_ARSIZE;
  wire [0:0]m08_couplers_to_m08_couplers_ARVALID;
  wire [13:0]m08_couplers_to_m08_couplers_AWADDR;
  wire [1:0]m08_couplers_to_m08_couplers_AWBURST;
  wire [3:0]m08_couplers_to_m08_couplers_AWCACHE;
  wire [7:0]m08_couplers_to_m08_couplers_AWLEN;
  wire [0:0]m08_couplers_to_m08_couplers_AWLOCK;
  wire [2:0]m08_couplers_to_m08_couplers_AWPROT;
  wire [0:0]m08_couplers_to_m08_couplers_AWREADY;
  wire [2:0]m08_couplers_to_m08_couplers_AWSIZE;
  wire [0:0]m08_couplers_to_m08_couplers_AWVALID;
  wire [0:0]m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire [0:0]m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire [0:0]m08_couplers_to_m08_couplers_RLAST;
  wire [0:0]m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire [0:0]m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire [0:0]m08_couplers_to_m08_couplers_WLAST;
  wire [0:0]m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire [0:0]m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[13:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m08_couplers_to_m08_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m08_couplers_to_m08_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m08_couplers_to_m08_couplers_ARLEN;
  assign M_AXI_arlock[0] = m08_couplers_to_m08_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m08_couplers_to_m08_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m08_couplers_to_m08_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[13:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m08_couplers_to_m08_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m08_couplers_to_m08_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m08_couplers_to_m08_couplers_AWLEN;
  assign M_AXI_awlock[0] = m08_couplers_to_m08_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m08_couplers_to_m08_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m08_couplers_to_m08_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready[0] = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready[0] = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wlast[0] = m08_couplers_to_m08_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready[0] = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready[0] = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid[0] = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rlast[0] = m08_couplers_to_m08_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid[0] = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready[0] = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[13:0];
  assign m08_couplers_to_m08_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m08_couplers_to_m08_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m08_couplers_to_m08_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m08_couplers_to_m08_couplers_ARLOCK = S_AXI_arlock[0];
  assign m08_couplers_to_m08_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready[0];
  assign m08_couplers_to_m08_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid[0];
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[13:0];
  assign m08_couplers_to_m08_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m08_couplers_to_m08_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m08_couplers_to_m08_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m08_couplers_to_m08_couplers_AWLOCK = S_AXI_awlock[0];
  assign m08_couplers_to_m08_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready[0];
  assign m08_couplers_to_m08_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid[0];
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready[0];
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid[0];
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RLAST = M_AXI_rlast[0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready[0];
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid[0];
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WLAST = S_AXI_wlast[0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready[0];
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module mb_ps_imp_1944EB9
   (M_AXI_DP_araddr,
    M_AXI_DP_arprot,
    M_AXI_DP_arready,
    M_AXI_DP_arvalid,
    M_AXI_DP_awaddr,
    M_AXI_DP_awprot,
    M_AXI_DP_awready,
    M_AXI_DP_awvalid,
    M_AXI_DP_bready,
    M_AXI_DP_bresp,
    M_AXI_DP_bvalid,
    M_AXI_DP_rdata,
    M_AXI_DP_rready,
    M_AXI_DP_rresp,
    M_AXI_DP_rvalid,
    M_AXI_DP_wdata,
    M_AXI_DP_wready,
    M_AXI_DP_wstrb,
    M_AXI_DP_wvalid,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    ext_reset_in,
    interconnect_aresetn);
  output [31:0]M_AXI_DP_araddr;
  output [2:0]M_AXI_DP_arprot;
  input M_AXI_DP_arready;
  output M_AXI_DP_arvalid;
  output [31:0]M_AXI_DP_awaddr;
  output [2:0]M_AXI_DP_awprot;
  input M_AXI_DP_awready;
  output M_AXI_DP_awvalid;
  output M_AXI_DP_bready;
  input [1:0]M_AXI_DP_bresp;
  input M_AXI_DP_bvalid;
  input [31:0]M_AXI_DP_rdata;
  output M_AXI_DP_rready;
  input [1:0]M_AXI_DP_rresp;
  input M_AXI_DP_rvalid;
  output [31:0]M_AXI_DP_wdata;
  input M_AXI_DP_wready;
  output [3:0]M_AXI_DP_wstrb;
  output M_AXI_DP_wvalid;
  input S_AXI_ACLK;
  output [0:0]S_AXI_ARESETN;
  input [13:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [13:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input ext_reset_in;
  output [0:0]interconnect_aresetn;

  wire GND_1;
  wire axi_aclk_1;
  wire [13:0]axi_bram_ctrl_1_bram_porta_ADDR;
  wire axi_bram_ctrl_1_bram_porta_CLK;
  wire [31:0]axi_bram_ctrl_1_bram_porta_DIN;
  wire [31:0]axi_bram_ctrl_1_bram_porta_DOUT;
  wire axi_bram_ctrl_1_bram_porta_EN;
  wire axi_bram_ctrl_1_bram_porta_RST;
  wire [3:0]axi_bram_ctrl_1_bram_porta_WE;
  wire [13:0]axi_bram_ctrl_1_bram_portb_ADDR;
  wire axi_bram_ctrl_1_bram_portb_CLK;
  wire [31:0]axi_bram_ctrl_1_bram_portb_DIN;
  wire [31:0]axi_bram_ctrl_1_bram_portb_DOUT;
  wire axi_bram_ctrl_1_bram_portb_EN;
  wire axi_bram_ctrl_1_bram_portb_RST;
  wire [3:0]axi_bram_ctrl_1_bram_portb_WE;
  wire [0:0]m07_aresetn_1;
  wire mdm_1_debug_sys_rst;
  wire mdm_1_mbdebug_0_CAPTURE;
  wire mdm_1_mbdebug_0_CLK;
  wire [0:7]mdm_1_mbdebug_0_REG_EN;
  wire mdm_1_mbdebug_0_RST;
  wire mdm_1_mbdebug_0_SHIFT;
  wire mdm_1_mbdebug_0_TDI;
  wire mdm_1_mbdebug_0_TDO;
  wire mdm_1_mbdebug_0_UPDATE;
  wire [31:0]microblaze_1_axi_dp_ARADDR;
  wire [2:0]microblaze_1_axi_dp_ARPROT;
  wire microblaze_1_axi_dp_ARREADY;
  wire microblaze_1_axi_dp_ARVALID;
  wire [31:0]microblaze_1_axi_dp_AWADDR;
  wire [2:0]microblaze_1_axi_dp_AWPROT;
  wire microblaze_1_axi_dp_AWREADY;
  wire microblaze_1_axi_dp_AWVALID;
  wire microblaze_1_axi_dp_BREADY;
  wire [1:0]microblaze_1_axi_dp_BRESP;
  wire microblaze_1_axi_dp_BVALID;
  wire [31:0]microblaze_1_axi_dp_RDATA;
  wire microblaze_1_axi_dp_RREADY;
  wire [1:0]microblaze_1_axi_dp_RRESP;
  wire microblaze_1_axi_dp_RVALID;
  wire [31:0]microblaze_1_axi_dp_WDATA;
  wire microblaze_1_axi_dp_WREADY;
  wire [3:0]microblaze_1_axi_dp_WSTRB;
  wire microblaze_1_axi_dp_WVALID;
  wire [13:0]microblaze_1_axi_periph_m08_axi_ARADDR;
  wire [1:0]microblaze_1_axi_periph_m08_axi_ARBURST;
  wire [3:0]microblaze_1_axi_periph_m08_axi_ARCACHE;
  wire [7:0]microblaze_1_axi_periph_m08_axi_ARLEN;
  wire [0:0]microblaze_1_axi_periph_m08_axi_ARLOCK;
  wire [2:0]microblaze_1_axi_periph_m08_axi_ARPROT;
  wire microblaze_1_axi_periph_m08_axi_ARREADY;
  wire [2:0]microblaze_1_axi_periph_m08_axi_ARSIZE;
  wire [0:0]microblaze_1_axi_periph_m08_axi_ARVALID;
  wire [13:0]microblaze_1_axi_periph_m08_axi_AWADDR;
  wire [1:0]microblaze_1_axi_periph_m08_axi_AWBURST;
  wire [3:0]microblaze_1_axi_periph_m08_axi_AWCACHE;
  wire [7:0]microblaze_1_axi_periph_m08_axi_AWLEN;
  wire [0:0]microblaze_1_axi_periph_m08_axi_AWLOCK;
  wire [2:0]microblaze_1_axi_periph_m08_axi_AWPROT;
  wire microblaze_1_axi_periph_m08_axi_AWREADY;
  wire [2:0]microblaze_1_axi_periph_m08_axi_AWSIZE;
  wire [0:0]microblaze_1_axi_periph_m08_axi_AWVALID;
  wire [0:0]microblaze_1_axi_periph_m08_axi_BREADY;
  wire [1:0]microblaze_1_axi_periph_m08_axi_BRESP;
  wire microblaze_1_axi_periph_m08_axi_BVALID;
  wire [31:0]microblaze_1_axi_periph_m08_axi_RDATA;
  wire microblaze_1_axi_periph_m08_axi_RLAST;
  wire [0:0]microblaze_1_axi_periph_m08_axi_RREADY;
  wire [1:0]microblaze_1_axi_periph_m08_axi_RRESP;
  wire microblaze_1_axi_periph_m08_axi_RVALID;
  wire [31:0]microblaze_1_axi_periph_m08_axi_WDATA;
  wire [0:0]microblaze_1_axi_periph_m08_axi_WLAST;
  wire microblaze_1_axi_periph_m08_axi_WREADY;
  wire [3:0]microblaze_1_axi_periph_m08_axi_WSTRB;
  wire [0:0]microblaze_1_axi_periph_m08_axi_WVALID;
  wire [0:31]microblaze_1_dlmb_ABUS;
  wire microblaze_1_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_BE;
  wire microblaze_1_dlmb_CE;
  wire [0:31]microblaze_1_dlmb_READDBUS;
  wire microblaze_1_dlmb_READSTROBE;
  wire microblaze_1_dlmb_READY;
  wire microblaze_1_dlmb_UE;
  wire microblaze_1_dlmb_WAIT;
  wire [0:31]microblaze_1_dlmb_WRITEDBUS;
  wire microblaze_1_dlmb_WRITESTROBE;
  wire [0:31]microblaze_1_ilmb_ABUS;
  wire microblaze_1_ilmb_ADDRSTROBE;
  wire microblaze_1_ilmb_CE;
  wire [0:31]microblaze_1_ilmb_READDBUS;
  wire microblaze_1_ilmb_READSTROBE;
  wire microblaze_1_ilmb_READY;
  wire microblaze_1_ilmb_UE;
  wire microblaze_1_ilmb_WAIT;
  wire [0:0]proc_sys_reset_1_bus_struct_reset;
  wire proc_sys_reset_1_mb_reset;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire reset_1;
  wire [0:0]xlconstant_1_const;

  assign M_AXI_DP_araddr[31:0] = microblaze_1_axi_dp_ARADDR;
  assign M_AXI_DP_arprot[2:0] = microblaze_1_axi_dp_ARPROT;
  assign M_AXI_DP_arvalid = microblaze_1_axi_dp_ARVALID;
  assign M_AXI_DP_awaddr[31:0] = microblaze_1_axi_dp_AWADDR;
  assign M_AXI_DP_awprot[2:0] = microblaze_1_axi_dp_AWPROT;
  assign M_AXI_DP_awvalid = microblaze_1_axi_dp_AWVALID;
  assign M_AXI_DP_bready = microblaze_1_axi_dp_BREADY;
  assign M_AXI_DP_rready = microblaze_1_axi_dp_RREADY;
  assign M_AXI_DP_wdata[31:0] = microblaze_1_axi_dp_WDATA;
  assign M_AXI_DP_wstrb[3:0] = microblaze_1_axi_dp_WSTRB;
  assign M_AXI_DP_wvalid = microblaze_1_axi_dp_WVALID;
  assign S_AXI_ARESETN[0] = proc_sys_reset_1_peripheral_aresetn;
  assign S_AXI_arready[0] = microblaze_1_axi_periph_m08_axi_ARREADY;
  assign S_AXI_awready[0] = microblaze_1_axi_periph_m08_axi_AWREADY;
  assign S_AXI_bresp[1:0] = microblaze_1_axi_periph_m08_axi_BRESP;
  assign S_AXI_bvalid[0] = microblaze_1_axi_periph_m08_axi_BVALID;
  assign S_AXI_rdata[31:0] = microblaze_1_axi_periph_m08_axi_RDATA;
  assign S_AXI_rlast[0] = microblaze_1_axi_periph_m08_axi_RLAST;
  assign S_AXI_rresp[1:0] = microblaze_1_axi_periph_m08_axi_RRESP;
  assign S_AXI_rvalid[0] = microblaze_1_axi_periph_m08_axi_RVALID;
  assign S_AXI_wready[0] = microblaze_1_axi_periph_m08_axi_WREADY;
  assign axi_aclk_1 = S_AXI_ACLK;
  assign interconnect_aresetn[0] = m07_aresetn_1;
  assign microblaze_1_axi_dp_ARREADY = M_AXI_DP_arready;
  assign microblaze_1_axi_dp_AWREADY = M_AXI_DP_awready;
  assign microblaze_1_axi_dp_BRESP = M_AXI_DP_bresp[1:0];
  assign microblaze_1_axi_dp_BVALID = M_AXI_DP_bvalid;
  assign microblaze_1_axi_dp_RDATA = M_AXI_DP_rdata[31:0];
  assign microblaze_1_axi_dp_RRESP = M_AXI_DP_rresp[1:0];
  assign microblaze_1_axi_dp_RVALID = M_AXI_DP_rvalid;
  assign microblaze_1_axi_dp_WREADY = M_AXI_DP_wready;
  assign microblaze_1_axi_periph_m08_axi_ARADDR = S_AXI_araddr[13:0];
  assign microblaze_1_axi_periph_m08_axi_ARBURST = S_AXI_arburst[1:0];
  assign microblaze_1_axi_periph_m08_axi_ARCACHE = S_AXI_arcache[3:0];
  assign microblaze_1_axi_periph_m08_axi_ARLEN = S_AXI_arlen[7:0];
  assign microblaze_1_axi_periph_m08_axi_ARLOCK = S_AXI_arlock[0];
  assign microblaze_1_axi_periph_m08_axi_ARPROT = S_AXI_arprot[2:0];
  assign microblaze_1_axi_periph_m08_axi_ARSIZE = S_AXI_arsize[2:0];
  assign microblaze_1_axi_periph_m08_axi_ARVALID = S_AXI_arvalid[0];
  assign microblaze_1_axi_periph_m08_axi_AWADDR = S_AXI_awaddr[13:0];
  assign microblaze_1_axi_periph_m08_axi_AWBURST = S_AXI_awburst[1:0];
  assign microblaze_1_axi_periph_m08_axi_AWCACHE = S_AXI_awcache[3:0];
  assign microblaze_1_axi_periph_m08_axi_AWLEN = S_AXI_awlen[7:0];
  assign microblaze_1_axi_periph_m08_axi_AWLOCK = S_AXI_awlock[0];
  assign microblaze_1_axi_periph_m08_axi_AWPROT = S_AXI_awprot[2:0];
  assign microblaze_1_axi_periph_m08_axi_AWSIZE = S_AXI_awsize[2:0];
  assign microblaze_1_axi_periph_m08_axi_AWVALID = S_AXI_awvalid[0];
  assign microblaze_1_axi_periph_m08_axi_BREADY = S_AXI_bready[0];
  assign microblaze_1_axi_periph_m08_axi_RREADY = S_AXI_rready[0];
  assign microblaze_1_axi_periph_m08_axi_WDATA = S_AXI_wdata[31:0];
  assign microblaze_1_axi_periph_m08_axi_WLAST = S_AXI_wlast[0];
  assign microblaze_1_axi_periph_m08_axi_WSTRB = S_AXI_wstrb[3:0];
  assign microblaze_1_axi_periph_m08_axi_WVALID = S_AXI_wvalid[0];
  assign reset_1 = ext_reset_in;
GND GND
       (.G(GND_1));
(* BMM_INFO_ADDRESS_SPACE = "byte  0xC2000000 32 >  eyescan_subsystem mb_ps/blk_mem_gen_1" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   eyescan_subsystem_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_bram_porta_ADDR),
        .bram_addr_b(axi_bram_ctrl_1_bram_portb_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_bram_porta_CLK),
        .bram_clk_b(axi_bram_ctrl_1_bram_portb_CLK),
        .bram_en_a(axi_bram_ctrl_1_bram_porta_EN),
        .bram_en_b(axi_bram_ctrl_1_bram_portb_EN),
        .bram_rddata_a(axi_bram_ctrl_1_bram_porta_DOUT),
        .bram_rddata_b(axi_bram_ctrl_1_bram_portb_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_bram_porta_RST),
        .bram_rst_b(axi_bram_ctrl_1_bram_portb_RST),
        .bram_we_a(axi_bram_ctrl_1_bram_porta_WE),
        .bram_we_b(axi_bram_ctrl_1_bram_portb_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_bram_porta_DIN),
        .bram_wrdata_b(axi_bram_ctrl_1_bram_portb_DIN),
        .s_axi_aclk(axi_aclk_1),
        .s_axi_araddr(microblaze_1_axi_periph_m08_axi_ARADDR),
        .s_axi_arburst(microblaze_1_axi_periph_m08_axi_ARBURST),
        .s_axi_arcache(microblaze_1_axi_periph_m08_axi_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(microblaze_1_axi_periph_m08_axi_ARLEN),
        .s_axi_arlock(microblaze_1_axi_periph_m08_axi_ARLOCK),
        .s_axi_arprot(microblaze_1_axi_periph_m08_axi_ARPROT),
        .s_axi_arready(microblaze_1_axi_periph_m08_axi_ARREADY),
        .s_axi_arsize(microblaze_1_axi_periph_m08_axi_ARSIZE),
        .s_axi_arvalid(microblaze_1_axi_periph_m08_axi_ARVALID),
        .s_axi_awaddr(microblaze_1_axi_periph_m08_axi_AWADDR),
        .s_axi_awburst(microblaze_1_axi_periph_m08_axi_AWBURST),
        .s_axi_awcache(microblaze_1_axi_periph_m08_axi_AWCACHE),
        .s_axi_awlen(microblaze_1_axi_periph_m08_axi_AWLEN),
        .s_axi_awlock(microblaze_1_axi_periph_m08_axi_AWLOCK),
        .s_axi_awprot(microblaze_1_axi_periph_m08_axi_AWPROT),
        .s_axi_awready(microblaze_1_axi_periph_m08_axi_AWREADY),
        .s_axi_awsize(microblaze_1_axi_periph_m08_axi_AWSIZE),
        .s_axi_awvalid(microblaze_1_axi_periph_m08_axi_AWVALID),
        .s_axi_bready(microblaze_1_axi_periph_m08_axi_BREADY),
        .s_axi_bresp(microblaze_1_axi_periph_m08_axi_BRESP),
        .s_axi_bvalid(microblaze_1_axi_periph_m08_axi_BVALID),
        .s_axi_rdata(microblaze_1_axi_periph_m08_axi_RDATA),
        .s_axi_rlast(microblaze_1_axi_periph_m08_axi_RLAST),
        .s_axi_rready(microblaze_1_axi_periph_m08_axi_RREADY),
        .s_axi_rresp(microblaze_1_axi_periph_m08_axi_RRESP),
        .s_axi_rvalid(microblaze_1_axi_periph_m08_axi_RVALID),
        .s_axi_wdata(microblaze_1_axi_periph_m08_axi_WDATA),
        .s_axi_wlast(microblaze_1_axi_periph_m08_axi_WLAST),
        .s_axi_wready(microblaze_1_axi_periph_m08_axi_WREADY),
        .s_axi_wstrb(microblaze_1_axi_periph_m08_axi_WSTRB),
        .s_axi_wvalid(microblaze_1_axi_periph_m08_axi_WVALID));
eyescan_subsystem_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(axi_bram_ctrl_1_bram_porta_ADDR),
        .addrb(axi_bram_ctrl_1_bram_portb_ADDR),
        .clka(axi_bram_ctrl_1_bram_porta_CLK),
        .clkb(axi_bram_ctrl_1_bram_portb_CLK),
        .dina(axi_bram_ctrl_1_bram_porta_DIN),
        .dinb(axi_bram_ctrl_1_bram_portb_DIN),
        .douta(axi_bram_ctrl_1_bram_porta_DOUT),
        .doutb(axi_bram_ctrl_1_bram_portb_DOUT),
        .ena(axi_bram_ctrl_1_bram_porta_EN),
        .enb(axi_bram_ctrl_1_bram_portb_EN),
        .rsta(axi_bram_ctrl_1_bram_porta_RST),
        .rstb(axi_bram_ctrl_1_bram_portb_RST),
        .wea(axi_bram_ctrl_1_bram_porta_WE),
        .web(axi_bram_ctrl_1_bram_portb_WE));
eyescan_subsystem_mdm_1_0 mdm_1
       (.Dbg_Capture_0(mdm_1_mbdebug_0_CAPTURE),
        .Dbg_Clk_0(mdm_1_mbdebug_0_CLK),
        .Dbg_Reg_En_0(mdm_1_mbdebug_0_REG_EN),
        .Dbg_Rst_0(mdm_1_mbdebug_0_RST),
        .Dbg_Shift_0(mdm_1_mbdebug_0_SHIFT),
        .Dbg_TDI_0(mdm_1_mbdebug_0_TDI),
        .Dbg_TDO_0(mdm_1_mbdebug_0_TDO),
        .Dbg_Update_0(mdm_1_mbdebug_0_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
(* BMM_INFO_PROCESSOR = "microblaze-le > eyescan_subsystem mb_ps/microblaze_1_local_memory/dlmb_bram_if_cntlr eyescan_subsystem mb_ps/axi_bram_ctrl_1" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   eyescan_subsystem_microblaze_1_0 microblaze_1
       (.Byte_Enable(microblaze_1_dlmb_BE),
        .Clk(axi_aclk_1),
        .DCE(microblaze_1_dlmb_CE),
        .DReady(microblaze_1_dlmb_READY),
        .DUE(microblaze_1_dlmb_UE),
        .DWait(microblaze_1_dlmb_WAIT),
        .D_AS(microblaze_1_dlmb_ADDRSTROBE),
        .Data_Addr(microblaze_1_dlmb_ABUS),
        .Data_Read(microblaze_1_dlmb_READDBUS),
        .Data_Write(microblaze_1_dlmb_WRITEDBUS),
        .Dbg_Capture(mdm_1_mbdebug_0_CAPTURE),
        .Dbg_Clk(mdm_1_mbdebug_0_CLK),
        .Dbg_Reg_En(mdm_1_mbdebug_0_REG_EN),
        .Dbg_Shift(mdm_1_mbdebug_0_SHIFT),
        .Dbg_TDI(mdm_1_mbdebug_0_TDI),
        .Dbg_TDO(mdm_1_mbdebug_0_TDO),
        .Dbg_Update(mdm_1_mbdebug_0_UPDATE),
        .Debug_Rst(mdm_1_mbdebug_0_RST),
        .ICE(microblaze_1_ilmb_CE),
        .IFetch(microblaze_1_ilmb_READSTROBE),
        .IReady(microblaze_1_ilmb_READY),
        .IUE(microblaze_1_ilmb_UE),
        .IWAIT(microblaze_1_ilmb_WAIT),
        .I_AS(microblaze_1_ilmb_ADDRSTROBE),
        .Instr(microblaze_1_ilmb_READDBUS),
        .Instr_Addr(microblaze_1_ilmb_ABUS),
        .Interrupt(GND_1),
        .Interrupt_Address({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .M_AXI_DP_ARADDR(microblaze_1_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_1_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_1_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_1_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_1_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_1_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_1_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_1_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(microblaze_1_axi_dp_BREADY),
        .M_AXI_DP_BRESP(microblaze_1_axi_dp_BRESP),
        .M_AXI_DP_BVALID(microblaze_1_axi_dp_BVALID),
        .M_AXI_DP_RDATA(microblaze_1_axi_dp_RDATA),
        .M_AXI_DP_RREADY(microblaze_1_axi_dp_RREADY),
        .M_AXI_DP_RRESP(microblaze_1_axi_dp_RRESP),
        .M_AXI_DP_RVALID(microblaze_1_axi_dp_RVALID),
        .M_AXI_DP_WDATA(microblaze_1_axi_dp_WDATA),
        .M_AXI_DP_WREADY(microblaze_1_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(microblaze_1_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(microblaze_1_axi_dp_WVALID),
        .Read_Strobe(microblaze_1_dlmb_READSTROBE),
        .Reset(proc_sys_reset_1_mb_reset),
        .Write_Strobe(microblaze_1_dlmb_WRITESTROBE));
microblaze_1_local_memory_imp_1FHT669 microblaze_1_local_memory
       (.DLMB_abus(microblaze_1_dlmb_ABUS),
        .DLMB_addrstrobe(microblaze_1_dlmb_ADDRSTROBE),
        .DLMB_be(microblaze_1_dlmb_BE),
        .DLMB_ce(microblaze_1_dlmb_CE),
        .DLMB_readdbus(microblaze_1_dlmb_READDBUS),
        .DLMB_readstrobe(microblaze_1_dlmb_READSTROBE),
        .DLMB_ready(microblaze_1_dlmb_READY),
        .DLMB_ue(microblaze_1_dlmb_UE),
        .DLMB_wait(microblaze_1_dlmb_WAIT),
        .DLMB_writedbus(microblaze_1_dlmb_WRITEDBUS),
        .DLMB_writestrobe(microblaze_1_dlmb_WRITESTROBE),
        .ILMB_abus(microblaze_1_ilmb_ABUS),
        .ILMB_addrstrobe(microblaze_1_ilmb_ADDRSTROBE),
        .ILMB_ce(microblaze_1_ilmb_CE),
        .ILMB_readdbus(microblaze_1_ilmb_READDBUS),
        .ILMB_readstrobe(microblaze_1_ilmb_READSTROBE),
        .ILMB_ready(microblaze_1_ilmb_READY),
        .ILMB_ue(microblaze_1_ilmb_UE),
        .ILMB_wait(microblaze_1_ilmb_WAIT),
        .LMB_Clk(axi_aclk_1),
        .LMB_Rst(proc_sys_reset_1_bus_struct_reset));
eyescan_subsystem_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(xlconstant_1_const),
        .bus_struct_reset(proc_sys_reset_1_bus_struct_reset),
        .dcm_locked(xlconstant_1_const),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(m07_aresetn_1),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(proc_sys_reset_1_mb_reset),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(axi_aclk_1));
eyescan_subsystem_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_const));
endmodule

module microblaze_1_local_memory_imp_1FHT669
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    LMB_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input [0:0]LMB_Rst;

  wire GND_1;
  wire microblaze_1_Clk;
  wire [0:31]microblaze_1_dlmb_ABUS;
  wire microblaze_1_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_BE;
  wire microblaze_1_dlmb_CE;
  wire [0:31]microblaze_1_dlmb_READDBUS;
  wire microblaze_1_dlmb_READSTROBE;
  wire microblaze_1_dlmb_READY;
  wire microblaze_1_dlmb_UE;
  wire microblaze_1_dlmb_WAIT;
  wire [0:31]microblaze_1_dlmb_WRITEDBUS;
  wire microblaze_1_dlmb_WRITESTROBE;
  wire [0:31]microblaze_1_dlmb_bus_ABUS;
  wire microblaze_1_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_bus_BE;
  wire microblaze_1_dlmb_bus_CE;
  wire [0:31]microblaze_1_dlmb_bus_READDBUS;
  wire microblaze_1_dlmb_bus_READSTROBE;
  wire microblaze_1_dlmb_bus_READY;
  wire microblaze_1_dlmb_bus_UE;
  wire microblaze_1_dlmb_bus_WAIT;
  wire [0:31]microblaze_1_dlmb_bus_WRITEDBUS;
  wire microblaze_1_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_1_dlmb_cntlr_ADDR;
  wire microblaze_1_dlmb_cntlr_CLK;
  wire [0:31]microblaze_1_dlmb_cntlr_DIN;
  wire [31:0]microblaze_1_dlmb_cntlr_DOUT;
  wire microblaze_1_dlmb_cntlr_EN;
  wire microblaze_1_dlmb_cntlr_RST;
  wire [0:3]microblaze_1_dlmb_cntlr_WE;
  wire [0:31]microblaze_1_ilmb_ABUS;
  wire microblaze_1_ilmb_ADDRSTROBE;
  wire microblaze_1_ilmb_CE;
  wire [0:31]microblaze_1_ilmb_READDBUS;
  wire microblaze_1_ilmb_READSTROBE;
  wire microblaze_1_ilmb_READY;
  wire microblaze_1_ilmb_UE;
  wire microblaze_1_ilmb_WAIT;
  wire [0:31]microblaze_1_ilmb_bus_ABUS;
  wire microblaze_1_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_1_ilmb_bus_BE;
  wire microblaze_1_ilmb_bus_CE;
  wire [0:31]microblaze_1_ilmb_bus_READDBUS;
  wire microblaze_1_ilmb_bus_READSTROBE;
  wire microblaze_1_ilmb_bus_READY;
  wire microblaze_1_ilmb_bus_UE;
  wire microblaze_1_ilmb_bus_WAIT;
  wire [0:31]microblaze_1_ilmb_bus_WRITEDBUS;
  wire microblaze_1_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_1_ilmb_cntlr_ADDR;
  wire microblaze_1_ilmb_cntlr_CLK;
  wire [0:31]microblaze_1_ilmb_cntlr_DIN;
  wire [31:0]microblaze_1_ilmb_cntlr_DOUT;
  wire microblaze_1_ilmb_cntlr_EN;
  wire microblaze_1_ilmb_cntlr_RST;
  wire [0:3]microblaze_1_ilmb_cntlr_WE;
  wire [0:0]proc_sys_reset_1_bus_struct_reset;

  assign DLMB_ce = microblaze_1_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_1_dlmb_READDBUS;
  assign DLMB_ready = microblaze_1_dlmb_READY;
  assign DLMB_ue = microblaze_1_dlmb_UE;
  assign DLMB_wait = microblaze_1_dlmb_WAIT;
  assign ILMB_ce = microblaze_1_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_1_ilmb_READDBUS;
  assign ILMB_ready = microblaze_1_ilmb_READY;
  assign ILMB_ue = microblaze_1_ilmb_UE;
  assign ILMB_wait = microblaze_1_ilmb_WAIT;
  assign microblaze_1_Clk = LMB_Clk;
  assign microblaze_1_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_1_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_1_dlmb_BE = DLMB_be[0:3];
  assign microblaze_1_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_1_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_1_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_1_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_1_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_1_ilmb_READSTROBE = ILMB_readstrobe;
  assign proc_sys_reset_1_bus_struct_reset = LMB_Rst[0];
GND GND
       (.G(GND_1));
(* BMM_INFO_ADDRESS_SPACE = "byte  0x0 32 >  eyescan_subsystem mb_ps/microblaze_1_local_memory/lmb_bram" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   eyescan_subsystem_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_1_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_1_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_1_dlmb_cntlr_DOUT[31],microblaze_1_dlmb_cntlr_DOUT[30],microblaze_1_dlmb_cntlr_DOUT[29],microblaze_1_dlmb_cntlr_DOUT[28],microblaze_1_dlmb_cntlr_DOUT[27],microblaze_1_dlmb_cntlr_DOUT[26],microblaze_1_dlmb_cntlr_DOUT[25],microblaze_1_dlmb_cntlr_DOUT[24],microblaze_1_dlmb_cntlr_DOUT[23],microblaze_1_dlmb_cntlr_DOUT[22],microblaze_1_dlmb_cntlr_DOUT[21],microblaze_1_dlmb_cntlr_DOUT[20],microblaze_1_dlmb_cntlr_DOUT[19],microblaze_1_dlmb_cntlr_DOUT[18],microblaze_1_dlmb_cntlr_DOUT[17],microblaze_1_dlmb_cntlr_DOUT[16],microblaze_1_dlmb_cntlr_DOUT[15],microblaze_1_dlmb_cntlr_DOUT[14],microblaze_1_dlmb_cntlr_DOUT[13],microblaze_1_dlmb_cntlr_DOUT[12],microblaze_1_dlmb_cntlr_DOUT[11],microblaze_1_dlmb_cntlr_DOUT[10],microblaze_1_dlmb_cntlr_DOUT[9],microblaze_1_dlmb_cntlr_DOUT[8],microblaze_1_dlmb_cntlr_DOUT[7],microblaze_1_dlmb_cntlr_DOUT[6],microblaze_1_dlmb_cntlr_DOUT[5],microblaze_1_dlmb_cntlr_DOUT[4],microblaze_1_dlmb_cntlr_DOUT[3],microblaze_1_dlmb_cntlr_DOUT[2],microblaze_1_dlmb_cntlr_DOUT[1],microblaze_1_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_1_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_1_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_1_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_1_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_1_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_dlmb_bus_BE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadStrobe(microblaze_1_dlmb_bus_READSTROBE),
        .LMB_Rst(proc_sys_reset_1_bus_struct_reset),
        .LMB_WriteDBus(microblaze_1_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_1_dlmb_bus_CE),
        .Sl_DBus(microblaze_1_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_dlmb_bus_READY),
        .Sl_UE(microblaze_1_dlmb_bus_UE),
        .Sl_Wait(microblaze_1_dlmb_bus_WAIT));
eyescan_subsystem_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_1_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_dlmb_bus_BE),
        .LMB_CE(microblaze_1_dlmb_CE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadDBus(microblaze_1_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_1_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_1_dlmb_READY),
        .LMB_UE(microblaze_1_dlmb_UE),
        .LMB_Wait(microblaze_1_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_1_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_1_dlmb_ABUS),
        .M_AddrStrobe(microblaze_1_dlmb_ADDRSTROBE),
        .M_BE(microblaze_1_dlmb_BE),
        .M_DBus(microblaze_1_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_1_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_1_dlmb_WRITESTROBE),
        .SYS_Rst(proc_sys_reset_1_bus_struct_reset),
        .Sl_CE(microblaze_1_dlmb_bus_CE),
        .Sl_DBus(microblaze_1_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_dlmb_bus_READY),
        .Sl_UE(microblaze_1_dlmb_bus_UE),
        .Sl_Wait(microblaze_1_dlmb_bus_WAIT));
eyescan_subsystem_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_1_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_1_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_1_ilmb_cntlr_DOUT[31],microblaze_1_ilmb_cntlr_DOUT[30],microblaze_1_ilmb_cntlr_DOUT[29],microblaze_1_ilmb_cntlr_DOUT[28],microblaze_1_ilmb_cntlr_DOUT[27],microblaze_1_ilmb_cntlr_DOUT[26],microblaze_1_ilmb_cntlr_DOUT[25],microblaze_1_ilmb_cntlr_DOUT[24],microblaze_1_ilmb_cntlr_DOUT[23],microblaze_1_ilmb_cntlr_DOUT[22],microblaze_1_ilmb_cntlr_DOUT[21],microblaze_1_ilmb_cntlr_DOUT[20],microblaze_1_ilmb_cntlr_DOUT[19],microblaze_1_ilmb_cntlr_DOUT[18],microblaze_1_ilmb_cntlr_DOUT[17],microblaze_1_ilmb_cntlr_DOUT[16],microblaze_1_ilmb_cntlr_DOUT[15],microblaze_1_ilmb_cntlr_DOUT[14],microblaze_1_ilmb_cntlr_DOUT[13],microblaze_1_ilmb_cntlr_DOUT[12],microblaze_1_ilmb_cntlr_DOUT[11],microblaze_1_ilmb_cntlr_DOUT[10],microblaze_1_ilmb_cntlr_DOUT[9],microblaze_1_ilmb_cntlr_DOUT[8],microblaze_1_ilmb_cntlr_DOUT[7],microblaze_1_ilmb_cntlr_DOUT[6],microblaze_1_ilmb_cntlr_DOUT[5],microblaze_1_ilmb_cntlr_DOUT[4],microblaze_1_ilmb_cntlr_DOUT[3],microblaze_1_ilmb_cntlr_DOUT[2],microblaze_1_ilmb_cntlr_DOUT[1],microblaze_1_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_1_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_1_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_1_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_1_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_1_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_ilmb_bus_BE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadStrobe(microblaze_1_ilmb_bus_READSTROBE),
        .LMB_Rst(proc_sys_reset_1_bus_struct_reset),
        .LMB_WriteDBus(microblaze_1_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_1_ilmb_bus_CE),
        .Sl_DBus(microblaze_1_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_ilmb_bus_READY),
        .Sl_UE(microblaze_1_ilmb_bus_UE),
        .Sl_Wait(microblaze_1_ilmb_bus_WAIT));
eyescan_subsystem_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_1_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_ilmb_bus_BE),
        .LMB_CE(microblaze_1_ilmb_CE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadDBus(microblaze_1_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_1_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_1_ilmb_READY),
        .LMB_UE(microblaze_1_ilmb_UE),
        .LMB_Wait(microblaze_1_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_1_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_1_ilmb_ABUS),
        .M_AddrStrobe(microblaze_1_ilmb_ADDRSTROBE),
        .M_BE({GND_1,GND_1,GND_1,GND_1}),
        .M_DBus({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .M_ReadStrobe(microblaze_1_ilmb_READSTROBE),
        .M_WriteStrobe(GND_1),
        .SYS_Rst(proc_sys_reset_1_bus_struct_reset),
        .Sl_CE(microblaze_1_ilmb_bus_CE),
        .Sl_DBus(microblaze_1_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_ilmb_bus_READY),
        .Sl_UE(microblaze_1_ilmb_bus_UE),
        .Sl_Wait(microblaze_1_ilmb_bus_WAIT));
eyescan_subsystem_lmb_bram_0 lmb_bram
       (.addra({microblaze_1_dlmb_cntlr_ADDR[0],microblaze_1_dlmb_cntlr_ADDR[1],microblaze_1_dlmb_cntlr_ADDR[2],microblaze_1_dlmb_cntlr_ADDR[3],microblaze_1_dlmb_cntlr_ADDR[4],microblaze_1_dlmb_cntlr_ADDR[5],microblaze_1_dlmb_cntlr_ADDR[6],microblaze_1_dlmb_cntlr_ADDR[7],microblaze_1_dlmb_cntlr_ADDR[8],microblaze_1_dlmb_cntlr_ADDR[9],microblaze_1_dlmb_cntlr_ADDR[10],microblaze_1_dlmb_cntlr_ADDR[11],microblaze_1_dlmb_cntlr_ADDR[12],microblaze_1_dlmb_cntlr_ADDR[13],microblaze_1_dlmb_cntlr_ADDR[14],microblaze_1_dlmb_cntlr_ADDR[15],microblaze_1_dlmb_cntlr_ADDR[16],microblaze_1_dlmb_cntlr_ADDR[17],microblaze_1_dlmb_cntlr_ADDR[18],microblaze_1_dlmb_cntlr_ADDR[19],microblaze_1_dlmb_cntlr_ADDR[20],microblaze_1_dlmb_cntlr_ADDR[21],microblaze_1_dlmb_cntlr_ADDR[22],microblaze_1_dlmb_cntlr_ADDR[23],microblaze_1_dlmb_cntlr_ADDR[24],microblaze_1_dlmb_cntlr_ADDR[25],microblaze_1_dlmb_cntlr_ADDR[26],microblaze_1_dlmb_cntlr_ADDR[27],microblaze_1_dlmb_cntlr_ADDR[28],microblaze_1_dlmb_cntlr_ADDR[29],microblaze_1_dlmb_cntlr_ADDR[30],microblaze_1_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_1_ilmb_cntlr_ADDR[0],microblaze_1_ilmb_cntlr_ADDR[1],microblaze_1_ilmb_cntlr_ADDR[2],microblaze_1_ilmb_cntlr_ADDR[3],microblaze_1_ilmb_cntlr_ADDR[4],microblaze_1_ilmb_cntlr_ADDR[5],microblaze_1_ilmb_cntlr_ADDR[6],microblaze_1_ilmb_cntlr_ADDR[7],microblaze_1_ilmb_cntlr_ADDR[8],microblaze_1_ilmb_cntlr_ADDR[9],microblaze_1_ilmb_cntlr_ADDR[10],microblaze_1_ilmb_cntlr_ADDR[11],microblaze_1_ilmb_cntlr_ADDR[12],microblaze_1_ilmb_cntlr_ADDR[13],microblaze_1_ilmb_cntlr_ADDR[14],microblaze_1_ilmb_cntlr_ADDR[15],microblaze_1_ilmb_cntlr_ADDR[16],microblaze_1_ilmb_cntlr_ADDR[17],microblaze_1_ilmb_cntlr_ADDR[18],microblaze_1_ilmb_cntlr_ADDR[19],microblaze_1_ilmb_cntlr_ADDR[20],microblaze_1_ilmb_cntlr_ADDR[21],microblaze_1_ilmb_cntlr_ADDR[22],microblaze_1_ilmb_cntlr_ADDR[23],microblaze_1_ilmb_cntlr_ADDR[24],microblaze_1_ilmb_cntlr_ADDR[25],microblaze_1_ilmb_cntlr_ADDR[26],microblaze_1_ilmb_cntlr_ADDR[27],microblaze_1_ilmb_cntlr_ADDR[28],microblaze_1_ilmb_cntlr_ADDR[29],microblaze_1_ilmb_cntlr_ADDR[30],microblaze_1_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_1_dlmb_cntlr_CLK),
        .clkb(microblaze_1_ilmb_cntlr_CLK),
        .dina({microblaze_1_dlmb_cntlr_DIN[0],microblaze_1_dlmb_cntlr_DIN[1],microblaze_1_dlmb_cntlr_DIN[2],microblaze_1_dlmb_cntlr_DIN[3],microblaze_1_dlmb_cntlr_DIN[4],microblaze_1_dlmb_cntlr_DIN[5],microblaze_1_dlmb_cntlr_DIN[6],microblaze_1_dlmb_cntlr_DIN[7],microblaze_1_dlmb_cntlr_DIN[8],microblaze_1_dlmb_cntlr_DIN[9],microblaze_1_dlmb_cntlr_DIN[10],microblaze_1_dlmb_cntlr_DIN[11],microblaze_1_dlmb_cntlr_DIN[12],microblaze_1_dlmb_cntlr_DIN[13],microblaze_1_dlmb_cntlr_DIN[14],microblaze_1_dlmb_cntlr_DIN[15],microblaze_1_dlmb_cntlr_DIN[16],microblaze_1_dlmb_cntlr_DIN[17],microblaze_1_dlmb_cntlr_DIN[18],microblaze_1_dlmb_cntlr_DIN[19],microblaze_1_dlmb_cntlr_DIN[20],microblaze_1_dlmb_cntlr_DIN[21],microblaze_1_dlmb_cntlr_DIN[22],microblaze_1_dlmb_cntlr_DIN[23],microblaze_1_dlmb_cntlr_DIN[24],microblaze_1_dlmb_cntlr_DIN[25],microblaze_1_dlmb_cntlr_DIN[26],microblaze_1_dlmb_cntlr_DIN[27],microblaze_1_dlmb_cntlr_DIN[28],microblaze_1_dlmb_cntlr_DIN[29],microblaze_1_dlmb_cntlr_DIN[30],microblaze_1_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_1_ilmb_cntlr_DIN[0],microblaze_1_ilmb_cntlr_DIN[1],microblaze_1_ilmb_cntlr_DIN[2],microblaze_1_ilmb_cntlr_DIN[3],microblaze_1_ilmb_cntlr_DIN[4],microblaze_1_ilmb_cntlr_DIN[5],microblaze_1_ilmb_cntlr_DIN[6],microblaze_1_ilmb_cntlr_DIN[7],microblaze_1_ilmb_cntlr_DIN[8],microblaze_1_ilmb_cntlr_DIN[9],microblaze_1_ilmb_cntlr_DIN[10],microblaze_1_ilmb_cntlr_DIN[11],microblaze_1_ilmb_cntlr_DIN[12],microblaze_1_ilmb_cntlr_DIN[13],microblaze_1_ilmb_cntlr_DIN[14],microblaze_1_ilmb_cntlr_DIN[15],microblaze_1_ilmb_cntlr_DIN[16],microblaze_1_ilmb_cntlr_DIN[17],microblaze_1_ilmb_cntlr_DIN[18],microblaze_1_ilmb_cntlr_DIN[19],microblaze_1_ilmb_cntlr_DIN[20],microblaze_1_ilmb_cntlr_DIN[21],microblaze_1_ilmb_cntlr_DIN[22],microblaze_1_ilmb_cntlr_DIN[23],microblaze_1_ilmb_cntlr_DIN[24],microblaze_1_ilmb_cntlr_DIN[25],microblaze_1_ilmb_cntlr_DIN[26],microblaze_1_ilmb_cntlr_DIN[27],microblaze_1_ilmb_cntlr_DIN[28],microblaze_1_ilmb_cntlr_DIN[29],microblaze_1_ilmb_cntlr_DIN[30],microblaze_1_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_1_dlmb_cntlr_DOUT),
        .doutb(microblaze_1_ilmb_cntlr_DOUT),
        .ena(microblaze_1_dlmb_cntlr_EN),
        .enb(microblaze_1_ilmb_cntlr_EN),
        .rsta(microblaze_1_dlmb_cntlr_RST),
        .rstb(microblaze_1_ilmb_cntlr_RST),
        .wea({microblaze_1_dlmb_cntlr_WE[0],microblaze_1_dlmb_cntlr_WE[1],microblaze_1_dlmb_cntlr_WE[2],microblaze_1_dlmb_cntlr_WE[3]}),
        .web({microblaze_1_ilmb_cntlr_WE[0],microblaze_1_ilmb_cntlr_WE[1],microblaze_1_ilmb_cntlr_WE[2],microblaze_1_ilmb_cntlr_WE[3]}));
endmodule

module s00_couplers_imp_5BV0X6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [7:0]auto_pc_to_s00_couplers_ARLEN;
  wire [0:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [7:0]auto_pc_to_s00_couplers_AWLEN;
  wire [0:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
eyescan_subsystem_auto_pc_8 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_YVTD0R
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s01_couplers_to_s01_couplers_ARADDR;
  wire [1:0]s01_couplers_to_s01_couplers_ARBURST;
  wire [3:0]s01_couplers_to_s01_couplers_ARCACHE;
  wire [0:0]s01_couplers_to_s01_couplers_ARID;
  wire [7:0]s01_couplers_to_s01_couplers_ARLEN;
  wire [0:0]s01_couplers_to_s01_couplers_ARLOCK;
  wire [2:0]s01_couplers_to_s01_couplers_ARPROT;
  wire [3:0]s01_couplers_to_s01_couplers_ARQOS;
  wire [0:0]s01_couplers_to_s01_couplers_ARREADY;
  wire [2:0]s01_couplers_to_s01_couplers_ARSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_ARVALID;
  wire [31:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [1:0]s01_couplers_to_s01_couplers_AWBURST;
  wire [3:0]s01_couplers_to_s01_couplers_AWCACHE;
  wire [0:0]s01_couplers_to_s01_couplers_AWID;
  wire [7:0]s01_couplers_to_s01_couplers_AWLEN;
  wire [0:0]s01_couplers_to_s01_couplers_AWLOCK;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire [3:0]s01_couplers_to_s01_couplers_AWQOS;
  wire [0:0]s01_couplers_to_s01_couplers_AWREADY;
  wire [2:0]s01_couplers_to_s01_couplers_AWSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_AWVALID;
  wire [0:0]s01_couplers_to_s01_couplers_BID;
  wire [0:0]s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire [0:0]s01_couplers_to_s01_couplers_BVALID;
  wire [31:0]s01_couplers_to_s01_couplers_RDATA;
  wire [0:0]s01_couplers_to_s01_couplers_RID;
  wire [0:0]s01_couplers_to_s01_couplers_RLAST;
  wire [0:0]s01_couplers_to_s01_couplers_RREADY;
  wire [1:0]s01_couplers_to_s01_couplers_RRESP;
  wire [0:0]s01_couplers_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_s01_couplers_WDATA;
  wire [0:0]s01_couplers_to_s01_couplers_WLAST;
  wire [0:0]s01_couplers_to_s01_couplers_WREADY;
  wire [3:0]s01_couplers_to_s01_couplers_WSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s01_couplers_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_couplers_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_couplers_to_s01_couplers_ARCACHE;
  assign M_AXI_arid[0] = s01_couplers_to_s01_couplers_ARID;
  assign M_AXI_arlen[7:0] = s01_couplers_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_couplers_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_couplers_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_couplers_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_couplers_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s01_couplers_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_couplers_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_couplers_to_s01_couplers_AWCACHE;
  assign M_AXI_awid[0] = s01_couplers_to_s01_couplers_AWID;
  assign M_AXI_awlen[7:0] = s01_couplers_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_couplers_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_couplers_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_couplers_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready[0] = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_rready[0] = s01_couplers_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wlast[0] = s01_couplers_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_arready[0] = s01_couplers_to_s01_couplers_ARREADY;
  assign S_AXI_awready[0] = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bid[0] = s01_couplers_to_s01_couplers_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid[0] = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_couplers_RDATA;
  assign S_AXI_rid[0] = s01_couplers_to_s01_couplers_RID;
  assign S_AXI_rlast[0] = s01_couplers_to_s01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_couplers_RRESP;
  assign S_AXI_rvalid[0] = s01_couplers_to_s01_couplers_RVALID;
  assign S_AXI_wready[0] = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_couplers_ARID = S_AXI_arid[0];
  assign s01_couplers_to_s01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_couplers_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_couplers_ARREADY = M_AXI_arready[0];
  assign s01_couplers_to_s01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_couplers_ARVALID = S_AXI_arvalid[0];
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_couplers_AWID = S_AXI_awid[0];
  assign s01_couplers_to_s01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_couplers_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready[0];
  assign s01_couplers_to_s01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid[0];
  assign s01_couplers_to_s01_couplers_BID = M_AXI_bid[0];
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready[0];
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid[0];
  assign s01_couplers_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign s01_couplers_to_s01_couplers_RID = M_AXI_rid[0];
  assign s01_couplers_to_s01_couplers_RLAST = M_AXI_rlast[0];
  assign s01_couplers_to_s01_couplers_RREADY = S_AXI_rready[0];
  assign s01_couplers_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_couplers_to_s01_couplers_RVALID = M_AXI_rvalid[0];
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_couplers_WLAST = S_AXI_wlast[0];
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready[0];
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid[0];
endmodule
