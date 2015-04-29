// (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:drp_bridge:1.0
// IP Revision: 1

(* X_CORE_INFO = "drp_bridge,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "eyescan_subsystem_drp_bridge_4_0,drp_bridge,{}" *)
(* CORE_GENERATION_INFO = "eyescan_subsystem_drp_bridge_4_0,drp_bridge,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=drp_bridge,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DRP_ADDR_WIDTH=9,DRP_DATA_WIDTH=16,C_S_AXI_ADDR_WIDTH=24,C_S_AXI_DATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module eyescan_subsystem_drp_bridge_4_0 (
  AXI_aclk,
  AXI_aresetn,
  AXI_araddr,
  AXI_arready,
  AXI_arvalid,
  AXI_arprot,
  AXI_awaddr,
  AXI_awready,
  AXI_awvalid,
  AXI_awprot,
  AXI_bresp,
  AXI_bready,
  AXI_bvalid,
  AXI_rdata,
  AXI_rready,
  AXI_rvalid,
  AXI_rresp,
  AXI_wdata,
  AXI_wready,
  AXI_wvalid,
  AXI_wstrb,
  drp_en,
  drp_we,
  drp_addr,
  drp_di,
  drp_do,
  drp_rdy
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_signal_clock CLK" *)
input wire AXI_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_signal_reset RST" *)
input wire AXI_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARADDR" *)
input wire [31 : 0] AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARREADY" *)
output wire AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARVALID" *)
input wire AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARPROT" *)
input wire [2 : 0] AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWADDR" *)
input wire [31 : 0] AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWREADY" *)
output wire AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWVALID" *)
input wire AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWPROT" *)
input wire [2 : 0] AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BRESP" *)
output wire [1 : 0] AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BREADY" *)
input wire AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BVALID" *)
output wire AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RDATA" *)
output wire [31 : 0] AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RREADY" *)
input wire AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RVALID" *)
output wire AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RRESP" *)
output wire [1 : 0] AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WDATA" *)
input wire [31 : 0] AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WREADY" *)
output wire AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WVALID" *)
input wire AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WSTRB" *)
input wire [3 : 0] AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 DRP DEN" *)
output wire drp_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 DRP DWE" *)
output wire drp_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 DRP DADDR" *)
output wire [8 : 0] drp_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 DRP DI" *)
output wire [15 : 0] drp_di;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 DRP DO" *)
input wire [15 : 0] drp_do;
(* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 DRP DRDY" *)
input wire drp_rdy;

  drp_bridge #(
    .DRP_ADDR_WIDTH(9),
    .DRP_DATA_WIDTH(16),
    .C_S_AXI_ADDR_WIDTH(24),
    .C_S_AXI_DATA_WIDTH(32)
  ) inst (
    .AXI_aclk(AXI_aclk),
    .AXI_aresetn(AXI_aresetn),
    .AXI_araddr(AXI_araddr),
    .AXI_arready(AXI_arready),
    .AXI_arvalid(AXI_arvalid),
    .AXI_arprot(AXI_arprot),
    .AXI_awaddr(AXI_awaddr),
    .AXI_awready(AXI_awready),
    .AXI_awvalid(AXI_awvalid),
    .AXI_awprot(AXI_awprot),
    .AXI_bresp(AXI_bresp),
    .AXI_bready(AXI_bready),
    .AXI_bvalid(AXI_bvalid),
    .AXI_rdata(AXI_rdata),
    .AXI_rready(AXI_rready),
    .AXI_rvalid(AXI_rvalid),
    .AXI_rresp(AXI_rresp),
    .AXI_wdata(AXI_wdata),
    .AXI_wready(AXI_wready),
    .AXI_wvalid(AXI_wvalid),
    .AXI_wstrb(AXI_wstrb),
    .drp_en(drp_en),
    .drp_we(drp_we),
    .drp_addr(drp_addr),
    .drp_di(drp_di),
    .drp_do(drp_do),
    .drp_rdy(drp_rdy)
  );
endmodule
