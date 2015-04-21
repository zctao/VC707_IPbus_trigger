// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Tue Apr 21 13:11:50 2015
// Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ZhengchengTao/Documents/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/axis_dwidth_converter_0/axis_dwidth_converter_0_funcsim.v
// Design      : axis_dwidth_converter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "axis_dwidth_converter_v1_1_axis_dwidth_converter,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "axis_dwidth_converter_0,axis_dwidth_converter_v1_1_axis_dwidth_converter,{}" *) (* CORE_GENERATION_INFO = "axis_dwidth_converter_0,axis_dwidth_converter_v1_1_axis_dwidth_converter,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_dwidth_converter,x_ipVersion=1.1,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_S_AXIS_TDATA_WIDTH=64,C_M_AXIS_TDATA_WIDTH=16,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_S_AXIS_TUSER_WIDTH=1,C_M_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000000000000000000000000011011}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module axis_dwidth_converter_0
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CLKENIF CE" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [15:0]m_axis_tdata;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

(* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_M_AXIS_TDATA_WIDTH = "16" *) 
   (* C_M_AXIS_TUSER_WIDTH = "1" *) 
   (* C_S_AXIS_TDATA_WIDTH = "64" *) 
   (* C_S_AXIS_TUSER_WIDTH = "1" *) 
   (* DONT_TOUCH *) 
   (* DowngradeIPIdentifiedWarnings = "yes" *) 
   (* G_INDX_SS_TDATA = "1" *) 
   (* G_INDX_SS_TDEST = "6" *) 
   (* G_INDX_SS_TID = "5" *) 
   (* G_INDX_SS_TKEEP = "3" *) 
   (* G_INDX_SS_TLAST = "4" *) 
   (* G_INDX_SS_TREADY = "0" *) 
   (* G_INDX_SS_TSTRB = "2" *) 
   (* G_INDX_SS_TUSER = "7" *) 
   (* G_MASK_SS_TDATA = "2" *) 
   (* G_MASK_SS_TDEST = "64" *) 
   (* G_MASK_SS_TID = "32" *) 
   (* G_MASK_SS_TKEEP = "8" *) 
   (* G_MASK_SS_TLAST = "16" *) 
   (* G_MASK_SS_TREADY = "1" *) 
   (* G_MASK_SS_TSTRB = "4" *) 
   (* G_MASK_SS_TUSER = "128" *) 
   (* G_TASK_SEVERITY_ERR = "2" *) 
   (* G_TASK_SEVERITY_INFO = "0" *) 
   (* G_TASK_SEVERITY_WARNING = "1" *) 
   (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
   (* P_D1_REG_CONFIG = "0" *) 
   (* P_D1_TUSER_WIDTH = "8" *) 
   (* P_D2_TDATA_WIDTH = "64" *) 
   (* P_D2_TUSER_WIDTH = "8" *) 
   (* P_D3_REG_CONFIG = "0" *) 
   (* P_D3_TUSER_WIDTH = "2" *) 
   (* P_M_RATIO = "4" *) 
   (* P_SS_TKEEP_REQUIRED = "8" *) 
   (* P_S_RATIO = "1" *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) 
   axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[1:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* C_FAMILY = "virtex7" *) (* C_S_AXIS_TDATA_WIDTH = "64" *) 
(* C_M_AXIS_TDATA_WIDTH = "16" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_S_AXIS_TUSER_WIDTH = "1" *) (* C_M_AXIS_TUSER_WIDTH = "1" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
(* G_INDX_SS_TREADY = "0" *) (* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TSTRB = "2" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TREADY = "1" *) 
(* G_MASK_SS_TDATA = "2" *) (* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TDEST = "64" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_WARNING = "1" *) 
(* G_TASK_SEVERITY_INFO = "0" *) (* P_SS_TKEEP_REQUIRED = "8" *) (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
(* P_S_RATIO = "1" *) (* P_M_RATIO = "4" *) (* P_D2_TDATA_WIDTH = "64" *) 
(* P_D1_TUSER_WIDTH = "8" *) (* P_D2_TUSER_WIDTH = "8" *) (* P_D3_TUSER_WIDTH = "2" *) 
(* P_D1_REG_CONFIG = "0" *) (* P_D3_REG_CONFIG = "0" *) (* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_axis_dwidth_converter" *) 
module axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tstrb;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tstrb;
  output [1:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire aresetn;
  wire [15:0]m_axis_tdata;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire n_0_areset_r_i_1;
  wire [63:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [7:0]s_axis_tstrb;
  wire s_axis_tvalid;

  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
LUT1 #(
    .INIT(2'h1)) 
     areset_r_i_1
       (.I0(aresetn),
        .O(n_0_areset_r_i_1));
FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_areset_r_i_1),
        .Q(areset_r),
        .R(\<const0> ));
axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axisc_downsizer \gen_downsizer_conversion.axisc_downsizer_0 
       (.O1(s_axis_tready),
        .O2(m_axis_tvalid),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_axisc_downsizer" *) 
module axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axisc_downsizer
   (O1,
    O2,
    m_axis_tlast,
    m_axis_tdata,
    m_axis_tkeep,
    aclk,
    s_axis_tvalid,
    m_axis_tready,
    aclken,
    s_axis_tlast,
    s_axis_tkeep,
    areset_r,
    s_axis_tdata);
  output O1;
  output O2;
  output m_axis_tlast;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tkeep;
  input aclk;
  input s_axis_tvalid;
  input m_axis_tready;
  input aclken;
  input s_axis_tlast;
  input [7:0]s_axis_tkeep;
  input areset_r;
  input [63:0]s_axis_tdata;

  wire O1;
  wire O2;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire last_out0;
  wire [15:0]m_axis_tdata;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire \n_0_r0_data[63]_i_1 ;
  wire \n_0_r0_is_null_r[1]_i_1 ;
  wire \n_0_r0_is_null_r[2]_i_1 ;
  wire \n_0_r0_is_null_r[3]_i_1 ;
  wire \n_0_r0_is_null_r_reg[3] ;
  wire n_0_r0_last_i_1;
  wire n_0_r0_last_reg;
  wire \n_0_r0_out_sel_next_r[0]_i_1 ;
  wire \n_0_r0_out_sel_next_r[0]_i_2 ;
  wire \n_0_r0_out_sel_next_r[0]_i_5 ;
  wire \n_0_r0_out_sel_next_r[1]_i_1 ;
  wire \n_0_r0_out_sel_next_r[1]_i_2 ;
  wire \n_0_r0_out_sel_next_r_reg[0] ;
  wire \n_0_r0_out_sel_next_r_reg[1] ;
  wire \n_0_r0_out_sel_r[0]_i_1 ;
  wire \n_0_r0_out_sel_r[1]_i_1 ;
  wire \n_0_r0_out_sel_r[1]_i_2 ;
  wire \n_0_r0_out_sel_r_reg[0] ;
  wire \n_0_r0_out_sel_r_reg[1] ;
  wire \n_0_r1_data[0]_i_1 ;
  wire \n_0_r1_data[10]_i_1 ;
  wire \n_0_r1_data[11]_i_1 ;
  wire \n_0_r1_data[12]_i_1 ;
  wire \n_0_r1_data[13]_i_1 ;
  wire \n_0_r1_data[14]_i_1 ;
  wire \n_0_r1_data[15]_i_1 ;
  wire \n_0_r1_data[15]_i_2 ;
  wire \n_0_r1_data[1]_i_1 ;
  wire \n_0_r1_data[2]_i_1 ;
  wire \n_0_r1_data[3]_i_1 ;
  wire \n_0_r1_data[4]_i_1 ;
  wire \n_0_r1_data[5]_i_1 ;
  wire \n_0_r1_data[6]_i_1 ;
  wire \n_0_r1_data[7]_i_1 ;
  wire \n_0_r1_data[8]_i_1 ;
  wire \n_0_r1_data[9]_i_1 ;
  wire \n_0_r1_keep[0]_i_1 ;
  wire \n_0_r1_keep[1]_i_1 ;
  wire n_0_r1_last_i_1;
  wire n_0_r1_last_reg;
  wire \n_0_state[0]_i_1 ;
  wire \n_0_state[0]_i_2 ;
  wire \n_0_state[0]_i_3 ;
  wire \n_0_state[1]_i_1 ;
  wire \n_0_state[1]_i_2 ;
  wire \n_0_state[2]_i_1 ;
  wire \n_0_state_reg[2] ;
  wire [63:0]p_0_in;
  wire p_0_in_0;
  wire [7:0]p_1_in;
  wire [63:48]r0_data;
  wire [2:1]r0_is_null_r;
  wire r0_is_null_r_1;
  wire [7:6]r0_keep;
  wire [63:0]s_axis_tdata;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire state14_out;
  wire xfer_is_end;

LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[0]_INST_0 
       (.I0(p_0_in[48]),
        .I1(p_0_in[16]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[32]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[0]),
        .O(m_axis_tdata[0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[10]_INST_0 
       (.I0(p_0_in[58]),
        .I1(p_0_in[26]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[42]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[10]),
        .O(m_axis_tdata[10]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[11]_INST_0 
       (.I0(p_0_in[59]),
        .I1(p_0_in[27]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[43]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[11]),
        .O(m_axis_tdata[11]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[12]_INST_0 
       (.I0(p_0_in[60]),
        .I1(p_0_in[28]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[44]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[12]),
        .O(m_axis_tdata[12]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[13]_INST_0 
       (.I0(p_0_in[61]),
        .I1(p_0_in[29]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[45]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[13]),
        .O(m_axis_tdata[13]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[14]_INST_0 
       (.I0(p_0_in[62]),
        .I1(p_0_in[30]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[46]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[14]),
        .O(m_axis_tdata[14]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[15]_INST_0 
       (.I0(p_0_in[63]),
        .I1(p_0_in[31]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[47]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[15]),
        .O(m_axis_tdata[15]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[1]_INST_0 
       (.I0(p_0_in[49]),
        .I1(p_0_in[17]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[33]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[1]),
        .O(m_axis_tdata[1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[2]_INST_0 
       (.I0(p_0_in[50]),
        .I1(p_0_in[18]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[34]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[2]),
        .O(m_axis_tdata[2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[3]_INST_0 
       (.I0(p_0_in[51]),
        .I1(p_0_in[19]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[35]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[3]),
        .O(m_axis_tdata[3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[4]_INST_0 
       (.I0(p_0_in[52]),
        .I1(p_0_in[20]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[36]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[4]),
        .O(m_axis_tdata[4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[5]_INST_0 
       (.I0(p_0_in[53]),
        .I1(p_0_in[21]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[37]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[5]),
        .O(m_axis_tdata[5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[6]_INST_0 
       (.I0(p_0_in[54]),
        .I1(p_0_in[22]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[38]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[6]),
        .O(m_axis_tdata[6]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[7]_INST_0 
       (.I0(p_0_in[55]),
        .I1(p_0_in[23]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[39]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[7]),
        .O(m_axis_tdata[7]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[8]_INST_0 
       (.I0(p_0_in[56]),
        .I1(p_0_in[24]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[40]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[8]),
        .O(m_axis_tdata[8]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tdata[9]_INST_0 
       (.I0(p_0_in[57]),
        .I1(p_0_in[25]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_0_in[41]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_0_in[9]),
        .O(m_axis_tdata[9]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tkeep[0]_INST_0 
       (.I0(p_1_in[6]),
        .I1(p_1_in[2]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_1_in[4]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_1_in[0]),
        .O(m_axis_tkeep[0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \m_axis_tkeep[1]_INST_0 
       (.I0(p_1_in[7]),
        .I1(p_1_in[3]),
        .I2(\n_0_r0_out_sel_r_reg[0] ),
        .I3(p_1_in[5]),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .I5(p_1_in[1]),
        .O(m_axis_tkeep[1]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hFBBF0880)) 
     m_axis_tlast_INST_0
       (.I0(n_0_r1_last_reg),
        .I1(O2),
        .I2(\n_0_state_reg[2] ),
        .I3(O1),
        .I4(last_out0),
        .O(m_axis_tlast));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     m_axis_tlast_INST_0_i_1
       (.I0(r0_is_null_r[1]),
        .I1(\n_0_r0_is_null_r_reg[3] ),
        .I2(r0_is_null_r[2]),
        .I3(n_0_r0_last_reg),
        .O(last_out0));
LUT3 #(
    .INIT(8'h08)) 
     \r0_data[63]_i_1 
       (.I0(aclken),
        .I1(O1),
        .I2(\n_0_state_reg[2] ),
        .O(\n_0_r0_data[63]_i_1 ));
FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[0]),
        .Q(p_0_in[0]),
        .R(1'b0));
FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[10]),
        .Q(p_0_in[10]),
        .R(1'b0));
FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[11]),
        .Q(p_0_in[11]),
        .R(1'b0));
FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[12]),
        .Q(p_0_in[12]),
        .R(1'b0));
FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[13]),
        .Q(p_0_in[13]),
        .R(1'b0));
FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[14]),
        .Q(p_0_in[14]),
        .R(1'b0));
FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[15]),
        .Q(p_0_in[15]),
        .R(1'b0));
FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[16]),
        .Q(p_0_in[16]),
        .R(1'b0));
FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[17]),
        .Q(p_0_in[17]),
        .R(1'b0));
FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[18]),
        .Q(p_0_in[18]),
        .R(1'b0));
FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[19]),
        .Q(p_0_in[19]),
        .R(1'b0));
FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[20]),
        .Q(p_0_in[20]),
        .R(1'b0));
FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[21]),
        .Q(p_0_in[21]),
        .R(1'b0));
FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[22]),
        .Q(p_0_in[22]),
        .R(1'b0));
FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[23]),
        .Q(p_0_in[23]),
        .R(1'b0));
FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[24]),
        .Q(p_0_in[24]),
        .R(1'b0));
FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[25]),
        .Q(p_0_in[25]),
        .R(1'b0));
FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[26]),
        .Q(p_0_in[26]),
        .R(1'b0));
FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[27]),
        .Q(p_0_in[27]),
        .R(1'b0));
FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[28]),
        .Q(p_0_in[28]),
        .R(1'b0));
FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[29]),
        .Q(p_0_in[29]),
        .R(1'b0));
FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[2]),
        .Q(p_0_in[2]),
        .R(1'b0));
FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[30]),
        .Q(p_0_in[30]),
        .R(1'b0));
FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[31]),
        .Q(p_0_in[31]),
        .R(1'b0));
FDRE \r0_data_reg[32] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[32]),
        .Q(p_0_in[32]),
        .R(1'b0));
FDRE \r0_data_reg[33] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[33]),
        .Q(p_0_in[33]),
        .R(1'b0));
FDRE \r0_data_reg[34] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[34]),
        .Q(p_0_in[34]),
        .R(1'b0));
FDRE \r0_data_reg[35] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[35]),
        .Q(p_0_in[35]),
        .R(1'b0));
FDRE \r0_data_reg[36] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[36]),
        .Q(p_0_in[36]),
        .R(1'b0));
FDRE \r0_data_reg[37] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[37]),
        .Q(p_0_in[37]),
        .R(1'b0));
FDRE \r0_data_reg[38] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[38]),
        .Q(p_0_in[38]),
        .R(1'b0));
FDRE \r0_data_reg[39] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[39]),
        .Q(p_0_in[39]),
        .R(1'b0));
FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[3]),
        .Q(p_0_in[3]),
        .R(1'b0));
FDRE \r0_data_reg[40] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[40]),
        .Q(p_0_in[40]),
        .R(1'b0));
FDRE \r0_data_reg[41] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[41]),
        .Q(p_0_in[41]),
        .R(1'b0));
FDRE \r0_data_reg[42] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[42]),
        .Q(p_0_in[42]),
        .R(1'b0));
FDRE \r0_data_reg[43] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[43]),
        .Q(p_0_in[43]),
        .R(1'b0));
FDRE \r0_data_reg[44] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[44]),
        .Q(p_0_in[44]),
        .R(1'b0));
FDRE \r0_data_reg[45] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[45]),
        .Q(p_0_in[45]),
        .R(1'b0));
FDRE \r0_data_reg[46] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[46]),
        .Q(p_0_in[46]),
        .R(1'b0));
FDRE \r0_data_reg[47] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[47]),
        .Q(p_0_in[47]),
        .R(1'b0));
FDRE \r0_data_reg[48] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[48]),
        .Q(r0_data[48]),
        .R(1'b0));
FDRE \r0_data_reg[49] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[49]),
        .Q(r0_data[49]),
        .R(1'b0));
FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[4]),
        .Q(p_0_in[4]),
        .R(1'b0));
FDRE \r0_data_reg[50] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[50]),
        .Q(r0_data[50]),
        .R(1'b0));
FDRE \r0_data_reg[51] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[51]),
        .Q(r0_data[51]),
        .R(1'b0));
FDRE \r0_data_reg[52] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[52]),
        .Q(r0_data[52]),
        .R(1'b0));
FDRE \r0_data_reg[53] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[53]),
        .Q(r0_data[53]),
        .R(1'b0));
FDRE \r0_data_reg[54] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[54]),
        .Q(r0_data[54]),
        .R(1'b0));
FDRE \r0_data_reg[55] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[55]),
        .Q(r0_data[55]),
        .R(1'b0));
FDRE \r0_data_reg[56] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[56]),
        .Q(r0_data[56]),
        .R(1'b0));
FDRE \r0_data_reg[57] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[57]),
        .Q(r0_data[57]),
        .R(1'b0));
FDRE \r0_data_reg[58] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[58]),
        .Q(r0_data[58]),
        .R(1'b0));
FDRE \r0_data_reg[59] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[59]),
        .Q(r0_data[59]),
        .R(1'b0));
FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[5]),
        .Q(p_0_in[5]),
        .R(1'b0));
FDRE \r0_data_reg[60] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[60]),
        .Q(r0_data[60]),
        .R(1'b0));
FDRE \r0_data_reg[61] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[61]),
        .Q(r0_data[61]),
        .R(1'b0));
FDRE \r0_data_reg[62] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[62]),
        .Q(r0_data[62]),
        .R(1'b0));
FDRE \r0_data_reg[63] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[63]),
        .Q(r0_data[63]),
        .R(1'b0));
FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[6]),
        .Q(p_0_in[6]),
        .R(1'b0));
FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[7]),
        .Q(p_0_in[7]),
        .R(1'b0));
FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[8]),
        .Q(p_0_in[8]),
        .R(1'b0));
FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tdata[9]),
        .Q(p_0_in[9]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h1F10)) 
     \r0_is_null_r[1]_i_1 
       (.I0(s_axis_tkeep[3]),
        .I1(s_axis_tkeep[2]),
        .I2(r0_is_null_r_1),
        .I3(r0_is_null_r[1]),
        .O(\n_0_r0_is_null_r[1]_i_1 ));
LUT4 #(
    .INIT(16'h1F10)) 
     \r0_is_null_r[2]_i_1 
       (.I0(s_axis_tkeep[5]),
        .I1(s_axis_tkeep[4]),
        .I2(r0_is_null_r_1),
        .I3(r0_is_null_r[2]),
        .O(\n_0_r0_is_null_r[2]_i_1 ));
LUT4 #(
    .INIT(16'h1F10)) 
     \r0_is_null_r[3]_i_1 
       (.I0(s_axis_tkeep[7]),
        .I1(s_axis_tkeep[6]),
        .I2(r0_is_null_r_1),
        .I3(\n_0_r0_is_null_r_reg[3] ),
        .O(\n_0_r0_is_null_r[3]_i_1 ));
LUT4 #(
    .INIT(16'h0800)) 
     \r0_is_null_r[3]_i_2 
       (.I0(O1),
        .I1(aclken),
        .I2(\n_0_state_reg[2] ),
        .I3(s_axis_tvalid),
        .O(r0_is_null_r_1));
FDRE \r0_is_null_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_r0_is_null_r[1]_i_1 ),
        .Q(r0_is_null_r[1]),
        .R(areset_r));
FDRE \r0_is_null_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_r0_is_null_r[2]_i_1 ),
        .Q(r0_is_null_r[2]),
        .R(areset_r));
FDRE \r0_is_null_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_r0_is_null_r[3]_i_1 ),
        .Q(\n_0_r0_is_null_r_reg[3] ),
        .R(areset_r));
FDRE \r0_keep_reg[0] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tkeep[0]),
        .Q(p_1_in[0]),
        .R(1'b0));
FDRE \r0_keep_reg[1] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tkeep[1]),
        .Q(p_1_in[1]),
        .R(1'b0));
FDRE \r0_keep_reg[2] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tkeep[2]),
        .Q(p_1_in[2]),
        .R(1'b0));
FDRE \r0_keep_reg[3] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tkeep[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
FDRE \r0_keep_reg[4] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tkeep[4]),
        .Q(p_1_in[4]),
        .R(1'b0));
FDRE \r0_keep_reg[5] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tkeep[5]),
        .Q(p_1_in[5]),
        .R(1'b0));
FDRE \r0_keep_reg[6] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tkeep[6]),
        .Q(r0_keep[6]),
        .R(1'b0));
FDRE \r0_keep_reg[7] 
       (.C(aclk),
        .CE(\n_0_r0_data[63]_i_1 ),
        .D(s_axis_tkeep[7]),
        .Q(r0_keep[7]),
        .R(1'b0));
LUT5 #(
    .INIT(32'hEFFF2000)) 
     r0_last_i_1
       (.I0(s_axis_tlast),
        .I1(\n_0_state_reg[2] ),
        .I2(aclken),
        .I3(O1),
        .I4(n_0_r0_last_reg),
        .O(n_0_r0_last_i_1));
FDRE r0_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_r0_last_i_1),
        .Q(n_0_r0_last_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFAEAEAEA)) 
     \r0_out_sel_next_r[0]_i_1 
       (.I0(areset_r),
        .I1(p_0_in_0),
        .I2(aclken),
        .I3(xfer_is_end),
        .I4(m_axis_tready),
        .O(\n_0_r0_out_sel_next_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hF0F0F0F0F8787878)) 
     \r0_out_sel_next_r[0]_i_2 
       (.I0(m_axis_tready),
        .I1(aclken),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(\n_0_r0_is_null_r_reg[3] ),
        .I4(r0_is_null_r[2]),
        .I5(\n_0_r0_out_sel_next_r[0]_i_5 ),
        .O(\n_0_r0_out_sel_next_r[0]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \r0_out_sel_next_r[0]_i_3 
       (.I0(O1),
        .I1(\n_0_state_reg[2] ),
        .I2(O2),
        .O(p_0_in_0));
LUT5 #(
    .INIT(32'hFFAAA080)) 
     \r0_out_sel_next_r[0]_i_4 
       (.I0(\n_0_r0_is_null_r_reg[3] ),
        .I1(r0_is_null_r[1]),
        .I2(r0_is_null_r[2]),
        .I3(\n_0_r0_out_sel_r_reg[0] ),
        .I4(\n_0_r0_out_sel_r_reg[1] ),
        .O(xfer_is_end));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hBAAA8888)) 
     \r0_out_sel_next_r[0]_i_5 
       (.I0(\n_0_r0_out_sel_next_r_reg[1] ),
        .I1(\n_0_r0_out_sel_next_r_reg[0] ),
        .I2(r0_is_null_r[2]),
        .I3(r0_is_null_r[1]),
        .I4(\n_0_r0_is_null_r_reg[3] ),
        .O(\n_0_r0_out_sel_next_r[0]_i_5 ));
LUT4 #(
    .INIT(16'h006A)) 
     \r0_out_sel_next_r[1]_i_1 
       (.I0(\n_0_r0_out_sel_next_r_reg[1] ),
        .I1(\n_0_r0_out_sel_next_r[1]_i_2 ),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(\n_0_r0_out_sel_next_r[0]_i_1 ),
        .O(\n_0_r0_out_sel_next_r[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000000008888888)) 
     \r0_out_sel_next_r[1]_i_2 
       (.I0(m_axis_tready),
        .I1(aclken),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(\n_0_r0_is_null_r_reg[3] ),
        .I4(r0_is_null_r[2]),
        .I5(\n_0_r0_out_sel_next_r[0]_i_5 ),
        .O(\n_0_r0_out_sel_next_r[1]_i_2 ));
FDSE \r0_out_sel_next_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_r0_out_sel_next_r[0]_i_2 ),
        .Q(\n_0_r0_out_sel_next_r_reg[0] ),
        .S(\n_0_r0_out_sel_next_r[0]_i_1 ));
FDRE \r0_out_sel_next_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_r0_out_sel_next_r[1]_i_1 ),
        .Q(\n_0_r0_out_sel_next_r_reg[1] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000FFC0BF80)) 
     \r0_out_sel_r[0]_i_1 
       (.I0(\n_0_r0_out_sel_next_r_reg[0] ),
        .I1(aclken),
        .I2(m_axis_tready),
        .I3(\n_0_r0_out_sel_r_reg[0] ),
        .I4(\n_0_r0_out_sel_r[1]_i_2 ),
        .I5(\n_0_r0_out_sel_next_r[0]_i_1 ),
        .O(\n_0_r0_out_sel_r[0]_i_1 ));
LUT6 #(
    .INIT(64'h00000000FFC0BF80)) 
     \r0_out_sel_r[1]_i_1 
       (.I0(\n_0_r0_out_sel_next_r_reg[1] ),
        .I1(aclken),
        .I2(m_axis_tready),
        .I3(\n_0_r0_out_sel_r_reg[1] ),
        .I4(\n_0_r0_out_sel_r[1]_i_2 ),
        .I5(\n_0_r0_out_sel_next_r[0]_i_1 ),
        .O(\n_0_r0_out_sel_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFCCCEC00)) 
     \r0_out_sel_r[1]_i_2 
       (.I0(r0_is_null_r[1]),
        .I1(\n_0_r0_out_sel_next_r_reg[1] ),
        .I2(r0_is_null_r[2]),
        .I3(\n_0_r0_is_null_r_reg[3] ),
        .I4(\n_0_r0_out_sel_next_r_reg[0] ),
        .O(\n_0_r0_out_sel_r[1]_i_2 ));
FDRE \r0_out_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_r0_out_sel_r[0]_i_1 ),
        .Q(\n_0_r0_out_sel_r_reg[0] ),
        .R(1'b0));
FDRE \r0_out_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_r0_out_sel_r[1]_i_1 ),
        .Q(\n_0_r0_out_sel_r_reg[1] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[0]_i_1 
       (.I0(r0_data[48]),
        .I1(p_0_in[16]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[32]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[0]),
        .O(\n_0_r1_data[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[10]_i_1 
       (.I0(r0_data[58]),
        .I1(p_0_in[26]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[42]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[10]),
        .O(\n_0_r1_data[10]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[11]_i_1 
       (.I0(r0_data[59]),
        .I1(p_0_in[27]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[43]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[11]),
        .O(\n_0_r1_data[11]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[12]_i_1 
       (.I0(r0_data[60]),
        .I1(p_0_in[28]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[44]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[12]),
        .O(\n_0_r1_data[12]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[13]_i_1 
       (.I0(r0_data[61]),
        .I1(p_0_in[29]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[45]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[13]),
        .O(\n_0_r1_data[13]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[14]_i_1 
       (.I0(r0_data[62]),
        .I1(p_0_in[30]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[46]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[14]),
        .O(\n_0_r1_data[14]_i_1 ));
LUT4 #(
    .INIT(16'h0020)) 
     \r1_data[15]_i_1 
       (.I0(aclken),
        .I1(O1),
        .I2(O2),
        .I3(\n_0_state_reg[2] ),
        .O(\n_0_r1_data[15]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[15]_i_2 
       (.I0(r0_data[63]),
        .I1(p_0_in[31]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[47]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[15]),
        .O(\n_0_r1_data[15]_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[1]_i_1 
       (.I0(r0_data[49]),
        .I1(p_0_in[17]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[33]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[1]),
        .O(\n_0_r1_data[1]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[2]_i_1 
       (.I0(r0_data[50]),
        .I1(p_0_in[18]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[34]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[2]),
        .O(\n_0_r1_data[2]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[3]_i_1 
       (.I0(r0_data[51]),
        .I1(p_0_in[19]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[35]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[3]),
        .O(\n_0_r1_data[3]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[4]_i_1 
       (.I0(r0_data[52]),
        .I1(p_0_in[20]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[36]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[4]),
        .O(\n_0_r1_data[4]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[5]_i_1 
       (.I0(r0_data[53]),
        .I1(p_0_in[21]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[37]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[5]),
        .O(\n_0_r1_data[5]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[6]_i_1 
       (.I0(r0_data[54]),
        .I1(p_0_in[22]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[38]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[6]),
        .O(\n_0_r1_data[6]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[7]_i_1 
       (.I0(r0_data[55]),
        .I1(p_0_in[23]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[39]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[7]),
        .O(\n_0_r1_data[7]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[8]_i_1 
       (.I0(r0_data[56]),
        .I1(p_0_in[24]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[40]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[8]),
        .O(\n_0_r1_data[8]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_data[9]_i_1 
       (.I0(r0_data[57]),
        .I1(p_0_in[25]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_0_in[41]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_0_in[9]),
        .O(\n_0_r1_data[9]_i_1 ));
FDRE \r1_data_reg[0] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[0]_i_1 ),
        .Q(p_0_in[48]),
        .R(1'b0));
FDRE \r1_data_reg[10] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[10]_i_1 ),
        .Q(p_0_in[58]),
        .R(1'b0));
FDRE \r1_data_reg[11] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[11]_i_1 ),
        .Q(p_0_in[59]),
        .R(1'b0));
FDRE \r1_data_reg[12] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[12]_i_1 ),
        .Q(p_0_in[60]),
        .R(1'b0));
FDRE \r1_data_reg[13] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[13]_i_1 ),
        .Q(p_0_in[61]),
        .R(1'b0));
FDRE \r1_data_reg[14] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[14]_i_1 ),
        .Q(p_0_in[62]),
        .R(1'b0));
FDRE \r1_data_reg[15] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[15]_i_2 ),
        .Q(p_0_in[63]),
        .R(1'b0));
FDRE \r1_data_reg[1] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[1]_i_1 ),
        .Q(p_0_in[49]),
        .R(1'b0));
FDRE \r1_data_reg[2] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[2]_i_1 ),
        .Q(p_0_in[50]),
        .R(1'b0));
FDRE \r1_data_reg[3] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[3]_i_1 ),
        .Q(p_0_in[51]),
        .R(1'b0));
FDRE \r1_data_reg[4] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[4]_i_1 ),
        .Q(p_0_in[52]),
        .R(1'b0));
FDRE \r1_data_reg[5] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[5]_i_1 ),
        .Q(p_0_in[53]),
        .R(1'b0));
FDRE \r1_data_reg[6] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[6]_i_1 ),
        .Q(p_0_in[54]),
        .R(1'b0));
FDRE \r1_data_reg[7] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[7]_i_1 ),
        .Q(p_0_in[55]),
        .R(1'b0));
FDRE \r1_data_reg[8] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[8]_i_1 ),
        .Q(p_0_in[56]),
        .R(1'b0));
FDRE \r1_data_reg[9] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_data[9]_i_1 ),
        .Q(p_0_in[57]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_keep[0]_i_1 
       (.I0(r0_keep[6]),
        .I1(p_1_in[2]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_1_in[4]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_1_in[0]),
        .O(\n_0_r1_keep[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \r1_keep[1]_i_1 
       (.I0(r0_keep[7]),
        .I1(p_1_in[3]),
        .I2(\n_0_r0_out_sel_next_r_reg[0] ),
        .I3(p_1_in[5]),
        .I4(\n_0_r0_out_sel_next_r_reg[1] ),
        .I5(p_1_in[1]),
        .O(\n_0_r1_keep[1]_i_1 ));
FDRE \r1_keep_reg[0] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_keep[0]_i_1 ),
        .Q(p_1_in[6]),
        .R(1'b0));
FDRE \r1_keep_reg[1] 
       (.C(aclk),
        .CE(\n_0_r1_data[15]_i_1 ),
        .D(\n_0_r1_keep[1]_i_1 ),
        .Q(p_1_in[7]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
     r1_last_i_1
       (.I0(n_0_r0_last_reg),
        .I1(O1),
        .I2(O2),
        .I3(\n_0_state_reg[2] ),
        .I4(aclken),
        .I5(n_0_r1_last_reg),
        .O(n_0_r1_last_i_1));
FDRE r1_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_r1_last_i_1),
        .Q(n_0_r1_last_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFA3FFFF0FAF0000)) 
     \state[0]_i_1 
       (.I0(\n_0_state[0]_i_2 ),
        .I1(s_axis_tvalid),
        .I2(O2),
        .I3(\n_0_state_reg[2] ),
        .I4(aclken),
        .I5(O1),
        .O(\n_0_state[0]_i_1 ));
LUT6 #(
    .INIT(64'h0F0FFFFF0F0FEE00)) 
     \state[0]_i_2 
       (.I0(\n_0_state[0]_i_3 ),
        .I1(\n_0_r0_out_sel_next_r[0]_i_5 ),
        .I2(s_axis_tvalid),
        .I3(m_axis_tready),
        .I4(O1),
        .I5(state14_out),
        .O(\n_0_state[0]_i_2 ));
LUT3 #(
    .INIT(8'h80)) 
     \state[0]_i_3 
       (.I0(\n_0_r0_out_sel_next_r_reg[0] ),
        .I1(\n_0_r0_is_null_r_reg[3] ),
        .I2(r0_is_null_r[2]),
        .O(\n_0_state[0]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \state[0]_i_4 
       (.I0(m_axis_tready),
        .I1(r0_is_null_r[2]),
        .I2(r0_is_null_r[1]),
        .I3(\n_0_r0_is_null_r_reg[3] ),
        .O(state14_out));
LUT6 #(
    .INIT(64'h0CFCFFFF0A000000)) 
     \state[1]_i_1 
       (.I0(s_axis_tvalid),
        .I1(\n_0_state[1]_i_2 ),
        .I2(\n_0_state_reg[2] ),
        .I3(O1),
        .I4(aclken),
        .I5(O2),
        .O(\n_0_state[1]_i_1 ));
LUT6 #(
    .INIT(64'hAAFFAAFF3FFFFFFF)) 
     \state[1]_i_2 
       (.I0(s_axis_tvalid),
        .I1(\n_0_r0_is_null_r_reg[3] ),
        .I2(r0_is_null_r[1]),
        .I3(m_axis_tready),
        .I4(r0_is_null_r[2]),
        .I5(O1),
        .O(\n_0_state[1]_i_2 ));
LUT6 #(
    .INIT(64'h000CFFFF00800000)) 
     \state[2]_i_1 
       (.I0(s_axis_tvalid),
        .I1(O2),
        .I2(O1),
        .I3(m_axis_tready),
        .I4(aclken),
        .I5(\n_0_state_reg[2] ),
        .O(\n_0_state[2]_i_1 ));
FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_state[0]_i_1 ),
        .Q(O1),
        .R(areset_r));
FDRE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_state[1]_i_1 ),
        .Q(O2),
        .R(areset_r));
FDRE \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\n_0_state[2]_i_1 ),
        .Q(\n_0_state_reg[2] ),
        .R(areset_r));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
