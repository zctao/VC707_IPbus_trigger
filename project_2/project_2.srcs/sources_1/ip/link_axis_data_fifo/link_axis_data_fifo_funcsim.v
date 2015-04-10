// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Thu Apr 09 19:03:13 2015
// Host        : 0602-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/ztaotest/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo_funcsim.v
// Design      : link_axis_data_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "axis_data_fifo_v1_1_axis_data_fifo,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "link_axis_data_fifo,axis_data_fifo_v1_1_axis_data_fifo,{}" *) (* CORE_GENERATION_INFO = "link_axis_data_fifo,axis_data_fifo_v1_1_axis_data_fifo,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_data_fifo,x_ipVersion=1.1,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_AXIS_TDATA_WIDTH=16,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000000000000000000000000011011,C_FIFO_DEPTH=1024,C_FIFO_MODE=1,C_IS_ACLK_ASYNC=1,C_SYNCHRONIZER_STAGE=2,C_ACLKEN_CONV_MODE=0}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module link_axis_data_fifo
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_RSTIF RST" *) input m_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_CLKIF CLK" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire [31:0]axis_data_count;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [15:0]m_axis_tdata;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [15:0]s_axis_tdata;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

(* C_ACLKEN_CONV_MODE = "0" *) 
   (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
   (* C_AXIS_TDATA_WIDTH = "16" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TUSER_WIDTH = "1" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "4" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_DATA_COUNT_WIDTH = "10" *) 
   (* C_DIN_WIDTH = "18" *) 
   (* C_DOUT_WIDTH = "18" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_FIFO_DEPTH = "1024" *) 
   (* C_FIFO_MODE = "1" *) 
   (* C_IS_ACLK_ASYNC = "1" *) 
   (* C_RD_DATA_COUNT_WIDTH = "10" *) 
   (* C_RD_PNTR_WIDTH = "10" *) 
   (* C_RD_PNTR_WIDTH_RACH = "4" *) 
   (* C_RD_PNTR_WIDTH_RDCH = "10" *) 
   (* C_RD_PNTR_WIDTH_WACH = "4" *) 
   (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
   (* C_RD_PNTR_WIDTH_WRCH = "4" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_WR_DATA_COUNT_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
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
   (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
   (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
   (* P_APPLICATION_TYPE_AXIS = "0" *) 
   (* P_AXIS_PAYLOAD_WIDTH = "19" *) 
   (* P_COMMON_CLOCK = "0" *) 
   (* P_FIFO_COUNT_WIDTH = "11" *) 
   (* P_FIFO_TYPE = "1" *) 
   (* P_IMPLEMENTATION_TYPE_AXIS = "11" *) 
   (* P_MSGON_VAL = "0" *) 
   (* P_TDATA_EXISTS = "1" *) 
   (* P_TDEST_EXISTS = "0" *) 
   (* P_TID_EXISTS = "0" *) 
   (* P_TKEEP_EXISTS = "1" *) 
   (* P_TLAST_EXISTS = "1" *) 
   (* P_TREADY_EXISTS = "1" *) 
   (* P_TSTRB_EXISTS = "0" *) 
   (* P_TUSER_EXISTS = "0" *) 
   (* P_WR_PNTR_WIDTH = "10" *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) 
   link_axis_data_fifo_axis_data_fifo_v1_1_axis_data_fifo inst
       (.axis_data_count(axis_data_count),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aclken(1'b1),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[1:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_FAMILY = "virtex7" *) (* C_AXIS_TDATA_WIDTH = "16" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
(* C_FIFO_DEPTH = "1024" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "1" *) 
(* C_SYNCHRONIZER_STAGE = "2" *) (* C_ACLKEN_CONV_MODE = "0" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TKEEP = "3" *) 
(* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) 
(* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TUSER = "128" *) 
(* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* P_TREADY_EXISTS = "1" *) (* P_TDATA_EXISTS = "1" *) (* P_TSTRB_EXISTS = "0" *) 
(* P_TKEEP_EXISTS = "1" *) (* P_TLAST_EXISTS = "1" *) (* P_TID_EXISTS = "0" *) 
(* P_TDEST_EXISTS = "0" *) (* P_TUSER_EXISTS = "0" *) (* P_AXIS_PAYLOAD_WIDTH = "19" *) 
(* P_WR_PNTR_WIDTH = "10" *) (* P_FIFO_COUNT_WIDTH = "11" *) (* P_FIFO_TYPE = "1" *) 
(* P_IMPLEMENTATION_TYPE_AXIS = "11" *) (* P_COMMON_CLOCK = "0" *) (* P_MSGON_VAL = "0" *) 
(* P_APPLICATION_TYPE_AXIS = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
(* C_DIN_WIDTH = "18" *) (* C_RD_PNTR_WIDTH = "10" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_DOUT_WIDTH = "18" *) (* C_DATA_COUNT_WIDTH = "10" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DATA_COUNT_WIDTH = "10" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) 
(* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_RD_PNTR_WIDTH_RACH = "4" *) 
(* C_RD_PNTR_WIDTH_RDCH = "10" *) (* C_RD_PNTR_WIDTH_WACH = "4" *) (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
(* C_RD_PNTR_WIDTH_WRCH = "4" *) (* C_WR_PNTR_WIDTH_AXIS = "10" *) (* ORIG_REF_NAME = "axis_data_fifo_v1_1_axis_data_fifo" *) 
module link_axis_data_fifo_axis_data_fifo_v1_1_axis_data_fifo
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tstrb;
  input [1:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output [15:0]m_axis_tdata;
  output [1:0]m_axis_tstrb;
  output [1:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [10:0]\^axis_rd_data_count ;
  wire [10:0]\^axis_wr_data_count ;
  wire m_axis_aclk;
  wire m_axis_aclken;
  wire m_axis_aresetn;
  wire [15:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [1:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
(* RTL_KEEP = "true" *)   wire s_and_m_aresetn_i;
  wire s_axis_aclk;
  wire s_axis_aclken;
  wire s_axis_aresetn;
  wire [15:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axis_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED ;
  wire [17:0]\NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED ;
  wire [31:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED ;
  wire [31:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED ;

  assign axis_data_count[31] = \<const0> ;
  assign axis_data_count[30] = \<const0> ;
  assign axis_data_count[29] = \<const0> ;
  assign axis_data_count[28] = \<const0> ;
  assign axis_data_count[27] = \<const0> ;
  assign axis_data_count[26] = \<const0> ;
  assign axis_data_count[25] = \<const0> ;
  assign axis_data_count[24] = \<const0> ;
  assign axis_data_count[23] = \<const0> ;
  assign axis_data_count[22] = \<const0> ;
  assign axis_data_count[21] = \<const0> ;
  assign axis_data_count[20] = \<const0> ;
  assign axis_data_count[19] = \<const0> ;
  assign axis_data_count[18] = \<const0> ;
  assign axis_data_count[17] = \<const0> ;
  assign axis_data_count[16] = \<const0> ;
  assign axis_data_count[15] = \<const0> ;
  assign axis_data_count[14] = \<const0> ;
  assign axis_data_count[13] = \<const0> ;
  assign axis_data_count[12] = \<const0> ;
  assign axis_data_count[11] = \<const0> ;
  assign axis_data_count[10:0] = \^axis_wr_data_count [10:0];
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10:0] = \^axis_rd_data_count [10:0];
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10:0] = \^axis_wr_data_count [10:0];
GND GND
       (.G(\<const0> ));
(* C_ADD_NGC_CONSTRAINT = "0" *) 
   (* C_APPLICATION_TYPE_AXIS = "0" *) 
   (* C_APPLICATION_TYPE_RACH = "0" *) 
   (* C_APPLICATION_TYPE_RDCH = "0" *) 
   (* C_APPLICATION_TYPE_WACH = "0" *) 
   (* C_APPLICATION_TYPE_WDCH = "0" *) 
   (* C_APPLICATION_TYPE_WRCH = "0" *) 
   (* C_AXIS_TDATA_WIDTH = "16" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TKEEP_WIDTH = "2" *) 
   (* C_AXIS_TSTRB_WIDTH = "2" *) 
   (* C_AXIS_TUSER_WIDTH = "1" *) 
   (* C_AXIS_TYPE = "0" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "4" *) 
   (* C_AXI_LEN_WIDTH = "8" *) 
   (* C_AXI_LOCK_WIDTH = "2" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_TYPE = "0" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_COMMON_CLOCK = "0" *) 
   (* C_COUNT_TYPE = "0" *) 
   (* C_DATA_COUNT_WIDTH = "10" *) 
   (* C_DEFAULT_VALUE = "BlankString" *) 
   (* C_DIN_WIDTH = "18" *) 
   (* C_DIN_WIDTH_AXIS = "19" *) 
   (* C_DIN_WIDTH_RACH = "32" *) 
   (* C_DIN_WIDTH_RDCH = "64" *) 
   (* C_DIN_WIDTH_WACH = "32" *) 
   (* C_DIN_WIDTH_WDCH = "64" *) 
   (* C_DIN_WIDTH_WRCH = "2" *) 
   (* C_DOUT_RST_VAL = "0" *) 
   (* C_DOUT_WIDTH = "18" *) 
   (* C_ENABLE_RLOCS = "0" *) 
   (* C_ENABLE_RST_SYNC = "1" *) 
   (* C_ERROR_INJECTION_TYPE = "0" *) 
   (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_FULL_FLAGS_RST_VAL = "1" *) 
   (* C_HAS_ALMOST_EMPTY = "0" *) 
   (* C_HAS_ALMOST_FULL = "0" *) 
   (* C_HAS_AXIS_TDATA = "1" *) 
   (* C_HAS_AXIS_TDEST = "0" *) 
   (* C_HAS_AXIS_TID = "0" *) 
   (* C_HAS_AXIS_TKEEP = "1" *) 
   (* C_HAS_AXIS_TLAST = "1" *) 
   (* C_HAS_AXIS_TREADY = "1" *) 
   (* C_HAS_AXIS_TSTRB = "0" *) 
   (* C_HAS_AXIS_TUSER = "0" *) 
   (* C_HAS_AXI_ARUSER = "0" *) 
   (* C_HAS_AXI_AWUSER = "0" *) 
   (* C_HAS_AXI_BUSER = "0" *) 
   (* C_HAS_AXI_ID = "0" *) 
   (* C_HAS_AXI_RD_CHANNEL = "0" *) 
   (* C_HAS_AXI_RUSER = "0" *) 
   (* C_HAS_AXI_WR_CHANNEL = "0" *) 
   (* C_HAS_AXI_WUSER = "0" *) 
   (* C_HAS_BACKUP = "0" *) 
   (* C_HAS_DATA_COUNT = "0" *) 
   (* C_HAS_DATA_COUNTS_AXIS = "1" *) 
   (* C_HAS_DATA_COUNTS_RACH = "0" *) 
   (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WACH = "0" *) 
   (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
   (* C_HAS_INT_CLK = "0" *) 
   (* C_HAS_MASTER_CE = "0" *) 
   (* C_HAS_MEMINIT_FILE = "0" *) 
   (* C_HAS_OVERFLOW = "0" *) 
   (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
   (* C_HAS_PROG_FLAGS_RACH = "0" *) 
   (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WACH = "0" *) 
   (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
   (* C_HAS_RD_DATA_COUNT = "0" *) 
   (* C_HAS_RD_RST = "0" *) 
   (* C_HAS_RST = "1" *) 
   (* C_HAS_SLAVE_CE = "0" *) 
   (* C_HAS_SRST = "0" *) 
   (* C_HAS_UNDERFLOW = "0" *) 
   (* C_HAS_VALID = "0" *) 
   (* C_HAS_WR_ACK = "0" *) 
   (* C_HAS_WR_DATA_COUNT = "0" *) 
   (* C_HAS_WR_RST = "0" *) 
   (* C_IMPLEMENTATION_TYPE = "0" *) 
   (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) 
   (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
   (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
   (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
   (* C_INIT_WR_PNTR_VAL = "0" *) 
   (* C_INTERFACE_TYPE = "1" *) 
   (* C_MEMORY_TYPE = "1" *) 
   (* C_MIF_FILE_NAME = "BlankString" *) 
   (* C_MSGON_VAL = "0" *) 
   (* C_OPTIMIZATION_MODE = "0" *) 
   (* C_OVERFLOW_LOW = "0" *) 
   (* C_POWER_SAVING_MODE = "0" *) 
   (* C_PRELOAD_LATENCY = "1" *) 
   (* C_PRELOAD_REGS = "0" *) 
   (* C_PRIM_FIFO_TYPE = "4kx4" *) 
   (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
   (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
   (* C_PROG_EMPTY_TYPE = "0" *) 
   (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
   (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
   (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
   (* C_PROG_FULL_TYPE = "0" *) 
   (* C_PROG_FULL_TYPE_AXIS = "0" *) 
   (* C_PROG_FULL_TYPE_RACH = "0" *) 
   (* C_PROG_FULL_TYPE_RDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WACH = "0" *) 
   (* C_PROG_FULL_TYPE_WDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WRCH = "0" *) 
   (* C_RACH_TYPE = "0" *) 
   (* C_RDCH_TYPE = "0" *) 
   (* C_RD_DATA_COUNT_WIDTH = "10" *) 
   (* C_RD_DEPTH = "1024" *) 
   (* C_RD_FREQ = "1" *) 
   (* C_RD_PNTR_WIDTH = "10" *) 
   (* C_REG_SLICE_MODE_AXIS = "0" *) 
   (* C_REG_SLICE_MODE_RACH = "0" *) 
   (* C_REG_SLICE_MODE_RDCH = "0" *) 
   (* C_REG_SLICE_MODE_WACH = "0" *) 
   (* C_REG_SLICE_MODE_WDCH = "0" *) 
   (* C_REG_SLICE_MODE_WRCH = "0" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_UNDERFLOW_LOW = "0" *) 
   (* C_USE_COMMON_OVERFLOW = "0" *) 
   (* C_USE_COMMON_UNDERFLOW = "0" *) 
   (* C_USE_DEFAULT_SETTINGS = "0" *) 
   (* C_USE_DOUT_RST = "1" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_ECC_AXIS = "0" *) 
   (* C_USE_ECC_RACH = "0" *) 
   (* C_USE_ECC_RDCH = "0" *) 
   (* C_USE_ECC_WACH = "0" *) 
   (* C_USE_ECC_WDCH = "0" *) 
   (* C_USE_ECC_WRCH = "0" *) 
   (* C_USE_EMBEDDED_REG = "0" *) 
   (* C_USE_FIFO16_FLAGS = "0" *) 
   (* C_USE_FWFT_DATA_COUNT = "0" *) 
   (* C_USE_PIPELINE_REG = "0" *) 
   (* C_VALID_LOW = "0" *) 
   (* C_WACH_TYPE = "0" *) 
   (* C_WDCH_TYPE = "0" *) 
   (* C_WRCH_TYPE = "0" *) 
   (* C_WR_ACK_LOW = "0" *) 
   (* C_WR_DATA_COUNT_WIDTH = "10" *) 
   (* C_WR_DEPTH = "1024" *) 
   (* C_WR_DEPTH_AXIS = "1024" *) 
   (* C_WR_DEPTH_RACH = "16" *) 
   (* C_WR_DEPTH_RDCH = "1024" *) 
   (* C_WR_DEPTH_WACH = "16" *) 
   (* C_WR_DEPTH_WDCH = "1024" *) 
   (* C_WR_DEPTH_WRCH = "16" *) 
   (* C_WR_FREQ = "1" *) 
   (* C_WR_PNTR_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
   (* C_WR_RESPONSE_LATENCY = "1" *) 
   (* DONT_TOUCH *) 
   link_axis_data_fifo_fifo_generator_v12_0 \gen_fifo_generator.fifo_generator_inst 
       (.almost_empty(\NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED ),
        .axi_ar_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED [4:0]),
        .axi_ar_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED ),
        .axi_ar_injectdbiterr(\<const0> ),
        .axi_ar_injectsbiterr(\<const0> ),
        .axi_ar_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED ),
        .axi_ar_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED ),
        .axi_ar_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_ar_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED ),
        .axi_ar_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_ar_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED [4:0]),
        .axi_ar_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED ),
        .axi_ar_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED ),
        .axi_ar_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED [4:0]),
        .axi_aw_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED [4:0]),
        .axi_aw_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED ),
        .axi_aw_injectdbiterr(\<const0> ),
        .axi_aw_injectsbiterr(\<const0> ),
        .axi_aw_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED ),
        .axi_aw_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED ),
        .axi_aw_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_aw_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED ),
        .axi_aw_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_aw_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED [4:0]),
        .axi_aw_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED ),
        .axi_aw_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED ),
        .axi_aw_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED [4:0]),
        .axi_b_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED [4:0]),
        .axi_b_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED ),
        .axi_b_injectdbiterr(\<const0> ),
        .axi_b_injectsbiterr(\<const0> ),
        .axi_b_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED ),
        .axi_b_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED ),
        .axi_b_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_b_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED ),
        .axi_b_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_b_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED [4:0]),
        .axi_b_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED ),
        .axi_b_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED ),
        .axi_b_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED [4:0]),
        .axi_r_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED [10:0]),
        .axi_r_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED ),
        .axi_r_injectdbiterr(\<const0> ),
        .axi_r_injectsbiterr(\<const0> ),
        .axi_r_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED ),
        .axi_r_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED ),
        .axi_r_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_r_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED ),
        .axi_r_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_r_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED [10:0]),
        .axi_r_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED ),
        .axi_r_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED ),
        .axi_r_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED [10:0]),
        .axi_w_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED [10:0]),
        .axi_w_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED ),
        .axi_w_injectdbiterr(\<const0> ),
        .axi_w_injectsbiterr(\<const0> ),
        .axi_w_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED ),
        .axi_w_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED ),
        .axi_w_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_w_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED ),
        .axi_w_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_w_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED [10:0]),
        .axi_w_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED ),
        .axi_w_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED ),
        .axi_w_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED [10:0]),
        .axis_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axis_data_count_UNCONNECTED [10:0]),
        .axis_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED ),
        .axis_injectdbiterr(\<const0> ),
        .axis_injectsbiterr(\<const0> ),
        .axis_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED ),
        .axis_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED ),
        .axis_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axis_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED ),
        .axis_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axis_rd_data_count(\^axis_rd_data_count ),
        .axis_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED ),
        .axis_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED ),
        .axis_wr_data_count(\^axis_wr_data_count ),
        .backup(\<const0> ),
        .backup_marker(\<const0> ),
        .clk(\<const0> ),
        .data_count(\NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED [9:0]),
        .dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED ),
        .din({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .dout(\NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED [17:0]),
        .empty(\NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED ),
        .full(\NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED ),
        .injectdbiterr(\<const0> ),
        .injectsbiterr(\<const0> ),
        .int_clk(\<const0> ),
        .m_aclk(m_axis_aclk),
        .m_aclk_en(\<const0> ),
        .m_axi_araddr(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED [31:0]),
        .m_axi_arburst(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED [1:0]),
        .m_axi_arcache(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED [3:0]),
        .m_axi_arid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED [3:0]),
        .m_axi_arlen(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED [7:0]),
        .m_axi_arlock(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED [1:0]),
        .m_axi_arprot(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED [2:0]),
        .m_axi_arqos(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED [3:0]),
        .m_axi_arready(\<const0> ),
        .m_axi_arregion(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED [3:0]),
        .m_axi_arsize(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED [2:0]),
        .m_axi_aruser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED [0]),
        .m_axi_arvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED ),
        .m_axi_awaddr(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED [31:0]),
        .m_axi_awburst(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED [1:0]),
        .m_axi_awcache(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED [3:0]),
        .m_axi_awid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED [3:0]),
        .m_axi_awlen(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED [7:0]),
        .m_axi_awlock(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED [1:0]),
        .m_axi_awprot(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED [2:0]),
        .m_axi_awqos(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED [3:0]),
        .m_axi_awready(\<const0> ),
        .m_axi_awregion(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED [3:0]),
        .m_axi_awsize(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED [2:0]),
        .m_axi_awuser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED [0]),
        .m_axi_awvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED ),
        .m_axi_bid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .m_axi_bready(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED ),
        .m_axi_bresp({\<const0> ,\<const0> }),
        .m_axi_buser(\<const0> ),
        .m_axi_bvalid(\<const0> ),
        .m_axi_rdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .m_axi_rid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .m_axi_rlast(\<const0> ),
        .m_axi_rready(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED ),
        .m_axi_rresp({\<const0> ,\<const0> }),
        .m_axi_ruser(\<const0> ),
        .m_axi_rvalid(\<const0> ),
        .m_axi_wdata(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED [63:0]),
        .m_axi_wid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED [3:0]),
        .m_axi_wlast(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED ),
        .m_axi_wready(\<const0> ),
        .m_axi_wstrb(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED [7:0]),
        .m_axi_wuser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED [0]),
        .m_axi_wvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(\NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED ),
        .prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_empty_thresh_assert({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_empty_thresh_negate({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED ),
        .prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full_thresh_assert({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full_thresh_negate({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .rd_clk(\<const0> ),
        .rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED [9:0]),
        .rd_en(\<const0> ),
        .rd_rst(\<const0> ),
        .rd_rst_busy(\NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED ),
        .rst(\<const0> ),
        .s_aclk(s_axis_aclk),
        .s_aclk_en(\<const0> ),
        .s_aresetn(s_and_m_aresetn_i),
        .s_axi_araddr({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arburst({\<const0> ,\<const0> }),
        .s_axi_arcache({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arlen({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arlock({\<const0> ,\<const0> }),
        .s_axi_arprot({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arqos({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED ),
        .s_axi_arregion({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arsize({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_aruser(\<const0> ),
        .s_axi_arvalid(\<const0> ),
        .s_axi_awaddr({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awburst({\<const0> ,\<const0> }),
        .s_axi_awcache({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awlen({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awlock({\<const0> ,\<const0> }),
        .s_axi_awprot({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awqos({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED ),
        .s_axi_awregion({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awsize({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awuser(\<const0> ),
        .s_axi_awvalid(\<const0> ),
        .s_axi_bid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED [3:0]),
        .s_axi_bready(\<const0> ),
        .s_axi_bresp(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED [1:0]),
        .s_axi_buser(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED [0]),
        .s_axi_bvalid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED ),
        .s_axi_rdata(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED [63:0]),
        .s_axi_rid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED [3:0]),
        .s_axi_rlast(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED ),
        .s_axi_rready(\<const0> ),
        .s_axi_rresp(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED [1:0]),
        .s_axi_ruser(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED [0]),
        .s_axi_rvalid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED ),
        .s_axi_wdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wlast(\<const0> ),
        .s_axi_wready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED ),
        .s_axi_wstrb({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wuser(\<const0> ),
        .s_axi_wvalid(\<const0> ),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED ),
        .sleep(\<const0> ),
        .srst(\<const0> ),
        .underflow(\NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED ),
        .valid(\NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED ),
        .wr_ack(\NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED ),
        .wr_clk(\<const0> ),
        .wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED [9:0]),
        .wr_en(\<const0> ),
        .wr_rst(\<const0> ),
        .wr_rst_busy(\NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED ));
LUT2 #(
    .INIT(4'h8)) 
     s_and_m_aresetn_i_inferred_i_1
       (.I0(s_axis_aresetn),
        .I1(m_axis_aresetn),
        .O(s_and_m_aresetn_i));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module link_axis_data_fifo_blk_mem_gen_generic_cstr
   (D,
    E,
    s_aclk,
    ram_rd_en_i,
    m_aclk,
    Q,
    O2,
    DIADI);
  output [18:0]D;
  input [0:0]E;
  input s_aclk;
  input ram_rd_en_i;
  input m_aclk;
  input [9:0]Q;
  input [9:0]O2;
  input [18:0]DIADI;

  wire [18:0]D;
  wire [18:0]DIADI;
  wire [0:0]E;
  wire [9:0]O2;
  wire [9:0]Q;
  wire m_aclk;
  wire ram_rd_en_i;
  wire s_aclk;

link_axis_data_fifo_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.D(D),
        .DIADI(DIADI),
        .E(E),
        .O2(O2),
        .Q(Q),
        .m_aclk(m_aclk),
        .ram_rd_en_i(ram_rd_en_i),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module link_axis_data_fifo_blk_mem_gen_prim_width
   (D,
    E,
    s_aclk,
    ram_rd_en_i,
    m_aclk,
    Q,
    O2,
    DIADI);
  output [18:0]D;
  input [0:0]E;
  input s_aclk;
  input ram_rd_en_i;
  input m_aclk;
  input [9:0]Q;
  input [9:0]O2;
  input [18:0]DIADI;

  wire [18:0]D;
  wire [18:0]DIADI;
  wire [0:0]E;
  wire [9:0]O2;
  wire [9:0]Q;
  wire m_aclk;
  wire ram_rd_en_i;
  wire s_aclk;

link_axis_data_fifo_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.D(D),
        .DIADI(DIADI),
        .E(E),
        .O2(O2),
        .Q(Q),
        .m_aclk(m_aclk),
        .ram_rd_en_i(ram_rd_en_i),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module link_axis_data_fifo_blk_mem_gen_prim_wrapper
   (D,
    E,
    s_aclk,
    ram_rd_en_i,
    m_aclk,
    Q,
    O2,
    DIADI);
  output [18:0]D;
  input [0:0]E;
  input s_aclk;
  input ram_rd_en_i;
  input m_aclk;
  input [9:0]Q;
  input [9:0]O2;
  input [18:0]DIADI;

  wire [18:0]D;
  wire [18:0]DIADI;
  wire [0:0]E;
  wire [9:0]O2;
  wire [9:0]Q;
  wire m_aclk;
  wire \n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_38_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_39_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_45_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_46_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_54_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_62_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ram_rd_en_i;
  wire s_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O2,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(m_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,DIADI[18:15],1'b0,1'b0,1'b0,DIADI[14:10],1'b0,1'b0,1'b0,DIADI[9:5],1'b0,1'b0,1'b0,DIADI[4:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_38_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_39_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,D[18:15],\n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_45_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_46_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,D[14:10],\n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_54_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,D[9:5],\n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_62_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,D[4:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(E),
        .ENBWREN(ram_rd_en_i),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({E,E,E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module link_axis_data_fifo_blk_mem_gen_top
   (D,
    E,
    s_aclk,
    ram_rd_en_i,
    m_aclk,
    Q,
    O2,
    DIADI);
  output [18:0]D;
  input [0:0]E;
  input s_aclk;
  input ram_rd_en_i;
  input m_aclk;
  input [9:0]Q;
  input [9:0]O2;
  input [18:0]DIADI;

  wire [18:0]D;
  wire [18:0]DIADI;
  wire [0:0]E;
  wire [9:0]O2;
  wire [9:0]Q;
  wire m_aclk;
  wire ram_rd_en_i;
  wire s_aclk;

link_axis_data_fifo_blk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .DIADI(DIADI),
        .E(E),
        .O2(O2),
        .Q(Q),
        .m_aclk(m_aclk),
        .ram_rd_en_i(ram_rd_en_i),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module link_axis_data_fifo_blk_mem_gen_v8_2__parameterized0
   (D,
    E,
    s_aclk,
    ram_rd_en_i,
    m_aclk,
    Q,
    O2,
    DIADI);
  output [18:0]D;
  input [0:0]E;
  input s_aclk;
  input ram_rd_en_i;
  input m_aclk;
  input [9:0]Q;
  input [9:0]O2;
  input [18:0]DIADI;

  wire [18:0]D;
  wire [18:0]DIADI;
  wire [0:0]E;
  wire [9:0]O2;
  wire [9:0]Q;
  wire m_aclk;
  wire ram_rd_en_i;
  wire s_aclk;

link_axis_data_fifo_blk_mem_gen_v8_2_synth inst_blk_mem_gen
       (.D(D),
        .DIADI(DIADI),
        .E(E),
        .O2(O2),
        .Q(Q),
        .m_aclk(m_aclk),
        .ram_rd_en_i(ram_rd_en_i),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module link_axis_data_fifo_blk_mem_gen_v8_2_synth
   (D,
    E,
    s_aclk,
    ram_rd_en_i,
    m_aclk,
    Q,
    O2,
    DIADI);
  output [18:0]D;
  input [0:0]E;
  input s_aclk;
  input ram_rd_en_i;
  input m_aclk;
  input [9:0]Q;
  input [9:0]O2;
  input [18:0]DIADI;

  wire [18:0]D;
  wire [18:0]DIADI;
  wire [0:0]E;
  wire [9:0]O2;
  wire [9:0]Q;
  wire m_aclk;
  wire ram_rd_en_i;
  wire s_aclk;

link_axis_data_fifo_blk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.D(D),
        .DIADI(DIADI),
        .E(E),
        .O2(O2),
        .Q(Q),
        .m_aclk(m_aclk),
        .ram_rd_en_i(ram_rd_en_i),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module link_axis_data_fifo_clk_x_pntrs
   (S,
    WR_PNTR_RD,
    O1,
    O2,
    v1_reg,
    v1_reg_0,
    v1_reg_1,
    RD_PNTR_WR,
    v1_reg_2,
    ram_full_i,
    Q,
    I1,
    I2,
    I3,
    comp2,
    p_1_out,
    s_axis_tvalid,
    comp1,
    rst_full_gen_i,
    I4,
    s_aclk,
    I5,
    m_aclk,
    I6);
  output [1:0]S;
  output [8:0]WR_PNTR_RD;
  output [3:0]O1;
  output [3:0]O2;
  output [4:0]v1_reg;
  output [4:0]v1_reg_0;
  output [4:0]v1_reg_1;
  output [9:0]RD_PNTR_WR;
  output [4:0]v1_reg_2;
  output ram_full_i;
  input [9:0]Q;
  input [9:0]I1;
  input [9:0]I2;
  input [9:0]I3;
  input comp2;
  input p_1_out;
  input s_axis_tvalid;
  input comp1;
  input rst_full_gen_i;
  input [9:0]I4;
  input s_aclk;
  input [0:0]I5;
  input m_aclk;
  input [0:0]I6;

  wire [9:0]I1;
  wire [9:0]I2;
  wire [9:0]I3;
  wire [9:0]I4;
  wire [0:0]I5;
  wire [0:0]I6;
  wire [3:0]O1;
  wire [3:0]O2;
  wire [9:0]Q;
  wire [9:0]Q_0;
  wire [9:0]RD_PNTR_WR;
  wire [1:0]S;
  wire [8:0]WR_PNTR_RD;
  wire comp1;
  wire comp2;
  wire m_aclk;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_0_rd_pntr_gc[0]_i_1 ;
  wire \n_0_rd_pntr_gc[1]_i_1 ;
  wire \n_0_rd_pntr_gc[2]_i_1 ;
  wire \n_0_rd_pntr_gc[3]_i_1 ;
  wire \n_0_rd_pntr_gc[4]_i_1 ;
  wire \n_0_rd_pntr_gc[5]_i_1 ;
  wire \n_0_rd_pntr_gc[6]_i_1 ;
  wire \n_0_rd_pntr_gc[7]_i_1 ;
  wire \n_0_rd_pntr_gc[8]_i_1 ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire \n_4_gsync_stage[1].wr_stg_inst ;
  wire \n_4_gsync_stage[2].wr_stg_inst ;
  wire \n_5_gsync_stage[1].wr_stg_inst ;
  wire \n_5_gsync_stage[2].wr_stg_inst ;
  wire \n_6_gsync_stage[1].wr_stg_inst ;
  wire \n_6_gsync_stage[2].wr_stg_inst ;
  wire \n_7_gsync_stage[1].wr_stg_inst ;
  wire \n_7_gsync_stage[2].wr_stg_inst ;
  wire \n_8_gsync_stage[1].wr_stg_inst ;
  wire \n_8_gsync_stage[2].wr_stg_inst ;
  wire \n_9_gsync_stage[1].wr_stg_inst ;
  wire \n_9_gsync_stage[2].wr_stg_inst ;
  wire [9:0]p_0_in;
  wire [8:0]p_0_in8_out;
  wire p_1_out;
  wire [9:9]p_1_out__0;
  wire ram_full_i;
  wire [9:0]rd_pntr_gc;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axis_tvalid;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;
  wire [4:0]v1_reg_2;
  wire [9:0]wr_pntr_gc;

LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .I2(WR_PNTR_RD[1]),
        .I3(Q[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(WR_PNTR_RD[0]),
        .I1(I1[0]),
        .I2(WR_PNTR_RD[1]),
        .I3(I1[1]),
        .O(v1_reg_0[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(RD_PNTR_WR[1]),
        .I1(I2[1]),
        .I2(RD_PNTR_WR[0]),
        .I3(I2[0]),
        .O(v1_reg_1[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(RD_PNTR_WR[1]),
        .I1(I3[1]),
        .I2(RD_PNTR_WR[0]),
        .I3(I3[0]),
        .O(v1_reg_2[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .I2(WR_PNTR_RD[3]),
        .I3(Q[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[2]),
        .I1(I1[2]),
        .I2(WR_PNTR_RD[3]),
        .I3(I1[3]),
        .O(v1_reg_0[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__1 
       (.I0(RD_PNTR_WR[3]),
        .I1(I2[3]),
        .I2(RD_PNTR_WR[2]),
        .I3(I2[2]),
        .O(v1_reg_1[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__2 
       (.I0(RD_PNTR_WR[3]),
        .I1(I3[3]),
        .I2(RD_PNTR_WR[2]),
        .I3(I3[2]),
        .O(v1_reg_2[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .I2(WR_PNTR_RD[5]),
        .I3(Q[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[4]),
        .I1(I1[4]),
        .I2(WR_PNTR_RD[5]),
        .I3(I1[5]),
        .O(v1_reg_0[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__1 
       (.I0(RD_PNTR_WR[5]),
        .I1(I2[5]),
        .I2(RD_PNTR_WR[4]),
        .I3(I2[4]),
        .O(v1_reg_1[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__2 
       (.I0(RD_PNTR_WR[5]),
        .I1(I3[5]),
        .I2(RD_PNTR_WR[4]),
        .I3(I3[4]),
        .O(v1_reg_2[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .I2(WR_PNTR_RD[7]),
        .I3(Q[7]),
        .O(v1_reg[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[6]),
        .I1(I1[6]),
        .I2(WR_PNTR_RD[7]),
        .I3(I1[7]),
        .O(v1_reg_0[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__1 
       (.I0(RD_PNTR_WR[7]),
        .I1(I2[7]),
        .I2(RD_PNTR_WR[6]),
        .I3(I2[6]),
        .O(v1_reg_1[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__2 
       (.I0(RD_PNTR_WR[7]),
        .I1(I3[7]),
        .I2(RD_PNTR_WR[6]),
        .I3(I3[6]),
        .O(v1_reg_2[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .I2(p_1_out__0),
        .I3(Q[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[8]),
        .I1(I1[8]),
        .I2(p_1_out__0),
        .I3(I1[9]),
        .O(v1_reg_0[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1__1 
       (.I0(RD_PNTR_WR[9]),
        .I1(I2[9]),
        .I2(RD_PNTR_WR[8]),
        .I3(I2[8]),
        .O(v1_reg_1[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1__2 
       (.I0(RD_PNTR_WR[9]),
        .I1(I3[9]),
        .I2(RD_PNTR_WR[8]),
        .I3(I3[8]),
        .O(v1_reg_2[4]));
link_axis_data_fifo_synchronizer_ff \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I6(I6),
        .Q(Q_0),
        .m_aclk(m_aclk));
link_axis_data_fifo_synchronizer_ff_3 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I5(I5),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst ,\n_9_gsync_stage[1].wr_stg_inst }),
        .s_aclk(s_aclk));
link_axis_data_fifo_synchronizer_ff_4 \gsync_stage[2].rd_stg_inst 
       (.D(p_0_in),
        .I1(Q_0),
        .I6(I6),
        .m_aclk(m_aclk));
link_axis_data_fifo_synchronizer_ff_5 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst ,\n_8_gsync_stage[2].wr_stg_inst ,\n_9_gsync_stage[2].wr_stg_inst }),
        .I1({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst ,\n_9_gsync_stage[1].wr_stg_inst }),
        .I5(I5),
        .s_aclk(s_aclk));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[10]_i_10 
       (.I0(WR_PNTR_RD[5]),
        .I1(Q[5]),
        .O(O1[1]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[10]_i_11 
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .O(O1[0]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[10]_i_6 
       (.I0(p_1_out__0),
        .I1(Q[9]),
        .O(S[1]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[10]_i_7 
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .O(S[0]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[10]_i_8 
       (.I0(WR_PNTR_RD[7]),
        .I1(Q[7]),
        .O(O1[3]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[10]_i_9 
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .O(O1[2]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[7]_i_4 
       (.I0(WR_PNTR_RD[3]),
        .I1(Q[3]),
        .O(O2[3]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[7]_i_5 
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .O(O2[2]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[7]_i_6 
       (.I0(WR_PNTR_RD[1]),
        .I1(Q[1]),
        .O(O2[1]));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[7]_i_7 
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .O(O2[0]));
LUT5 #(
    .INIT(32'h0000FF20)) 
     ram_full_fb_i_i_1
       (.I0(comp2),
        .I1(p_1_out),
        .I2(s_axis_tvalid),
        .I3(comp1),
        .I4(rst_full_gen_i),
        .O(ram_full_i));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_9_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_8_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_7_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_6_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_5_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_4_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_3_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_2_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_1_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[8]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[9] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[9]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\n_0_rd_pntr_gc[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\n_0_rd_pntr_gc[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\n_0_rd_pntr_gc[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\n_0_rd_pntr_gc[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\n_0_rd_pntr_gc[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\n_0_rd_pntr_gc[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\n_0_rd_pntr_gc[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\n_0_rd_pntr_gc[7]_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\n_0_rd_pntr_gc[8]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[0]_i_1 ),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[1]_i_1 ),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[2]_i_1 ),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[3]_i_1 ),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[4] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[4]_i_1 ),
        .Q(rd_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[5] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[5]_i_1 ),
        .Q(rd_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[6] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[6]_i_1 ),
        .Q(rd_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[7] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[7]_i_1 ),
        .Q(rd_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[8] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[8]_i_1 ),
        .Q(rd_pntr_gc[8]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[9] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(Q[9]),
        .Q(rd_pntr_gc[9]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[0]),
        .Q(WR_PNTR_RD[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[1]),
        .Q(WR_PNTR_RD[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[2]),
        .Q(WR_PNTR_RD[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[3]),
        .Q(WR_PNTR_RD[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[4] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[4]),
        .Q(WR_PNTR_RD[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[5] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[5]),
        .Q(WR_PNTR_RD[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[6] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[6]),
        .Q(WR_PNTR_RD[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[7] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[7]),
        .Q(WR_PNTR_RD[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[8] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[8]),
        .Q(WR_PNTR_RD[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[9] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[9]),
        .Q(p_1_out__0));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I4[0]),
        .I1(I4[1]),
        .O(p_0_in8_out[0]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I4[1]),
        .I1(I4[2]),
        .O(p_0_in8_out[1]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I4[2]),
        .I1(I4[3]),
        .O(p_0_in8_out[2]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[3]_i_1 
       (.I0(I4[3]),
        .I1(I4[4]),
        .O(p_0_in8_out[3]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[4]_i_1 
       (.I0(I4[4]),
        .I1(I4[5]),
        .O(p_0_in8_out[4]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[5]_i_1 
       (.I0(I4[5]),
        .I1(I4[6]),
        .O(p_0_in8_out[5]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[6]_i_1 
       (.I0(I4[6]),
        .I1(I4[7]),
        .O(p_0_in8_out[6]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[7]_i_1 
       (.I0(I4[7]),
        .I1(I4[8]),
        .O(p_0_in8_out[7]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[8]_i_1 
       (.I0(I4[8]),
        .I1(I4[9]),
        .O(p_0_in8_out[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[3]),
        .Q(wr_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[4]),
        .Q(wr_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[5]),
        .Q(wr_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[6]),
        .Q(wr_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[7]),
        .Q(wr_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in8_out[8]),
        .Q(wr_pntr_gc[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[9] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I4[9]),
        .Q(wr_pntr_gc[9]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module link_axis_data_fifo_compare
   (comp1,
    v1_reg);
  output comp1;
  input [4:0]v1_reg;

  wire comp1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [4:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module link_axis_data_fifo_compare_0
   (comp2,
    v1_reg_0);
  output comp2;
  input [4:0]v1_reg_0;

  wire comp2;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [4:0]v1_reg_0;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module link_axis_data_fifo_compare_1
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire comp0;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [4:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module link_axis_data_fifo_compare_2
   (comp1,
    v1_reg_0);
  output comp1;
  input [4:0]v1_reg_0;

  wire comp1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [4:0]v1_reg_0;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module link_axis_data_fifo_fifo_generator_ramfifo
   (Q,
    axis_rd_data_count,
    axis_wr_data_count,
    s_axis_tready,
    m_axis_tvalid,
    s_aclk,
    m_aclk,
    DIADI,
    m_axis_tready,
    s_axis_tvalid,
    s_aresetn);
  output [18:0]Q;
  output [10:0]axis_rd_data_count;
  output [10:0]axis_wr_data_count;
  output s_axis_tready;
  output m_axis_tvalid;
  input s_aclk;
  input m_aclk;
  input [18:0]DIADI;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_aresetn;

  wire [18:0]DIADI;
  wire [18:0]Q;
  wire RD_RST;
  wire WR_RST;
  wire [10:0]axis_rd_data_count;
  wire [10:0]axis_wr_data_count;
  wire [4:0]\gras.rsts/c0/v1_reg ;
  wire [4:0]\gras.rsts/c1/v1_reg ;
  wire [4:0]\gwas.wsts/c1/v1_reg ;
  wire [4:0]\gwas.wsts/c2/v1_reg ;
  wire \gwas.wsts/comp1 ;
  wire \gwas.wsts/comp2 ;
  wire \gwas.wsts/ram_full_i ;
  wire m_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_0_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_11_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_11_gntv_or_sync_fifo.gl0.rd ;
  wire \n_12_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_13_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_14_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_15_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_16_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_17_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_18_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_1_gntv_or_sync_fifo.gcx.clkx ;
  wire [9:0]p_0_out;
  wire [8:0]p_1_out;
  wire p_1_out_0;
  wire [9:0]p_20_out;
  wire p_3_out;
  wire [9:0]p_8_out;
  wire [9:0]p_9_out;
  wire ram_rd_en_i;
  wire [9:0]rd_pntr_plus1;
  wire [1:0]rd_rst_i;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [9:0]wr_pntr_plus2;
  wire [0:0]wr_rst_i;

link_axis_data_fifo_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.I1(rd_pntr_plus1),
        .I2(p_8_out),
        .I3(wr_pntr_plus2),
        .I4(p_9_out),
        .I5(wr_rst_i),
        .I6(rd_rst_i[1]),
        .O1({\n_11_gntv_or_sync_fifo.gcx.clkx ,\n_12_gntv_or_sync_fifo.gcx.clkx ,\n_13_gntv_or_sync_fifo.gcx.clkx ,\n_14_gntv_or_sync_fifo.gcx.clkx }),
        .O2({\n_15_gntv_or_sync_fifo.gcx.clkx ,\n_16_gntv_or_sync_fifo.gcx.clkx ,\n_17_gntv_or_sync_fifo.gcx.clkx ,\n_18_gntv_or_sync_fifo.gcx.clkx }),
        .Q(p_20_out),
        .RD_PNTR_WR(p_0_out),
        .S({\n_0_gntv_or_sync_fifo.gcx.clkx ,\n_1_gntv_or_sync_fifo.gcx.clkx }),
        .WR_PNTR_RD(p_1_out),
        .comp1(\gwas.wsts/comp1 ),
        .comp2(\gwas.wsts/comp2 ),
        .m_aclk(m_aclk),
        .p_1_out(p_1_out_0),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ),
        .v1_reg_1(\gwas.wsts/c1/v1_reg ),
        .v1_reg_2(\gwas.wsts/c2/v1_reg ));
link_axis_data_fifo_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\n_11_gntv_or_sync_fifo.gl0.rd ),
        .I1({\n_15_gntv_or_sync_fifo.gcx.clkx ,\n_16_gntv_or_sync_fifo.gcx.clkx ,\n_17_gntv_or_sync_fifo.gcx.clkx ,\n_18_gntv_or_sync_fifo.gcx.clkx }),
        .I2({\n_11_gntv_or_sync_fifo.gcx.clkx ,\n_12_gntv_or_sync_fifo.gcx.clkx ,\n_13_gntv_or_sync_fifo.gcx.clkx ,\n_14_gntv_or_sync_fifo.gcx.clkx }),
        .O1(rd_pntr_plus1),
        .O2(p_20_out),
        .Q({RD_RST,rd_rst_i[0]}),
        .S({\n_0_gntv_or_sync_fifo.gcx.clkx ,\n_1_gntv_or_sync_fifo.gcx.clkx }),
        .WR_PNTR_RD(p_1_out),
        .axis_rd_data_count(axis_rd_data_count),
        .m_aclk(m_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .ram_rd_en_i(ram_rd_en_i),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ));
link_axis_data_fifo_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(p_3_out),
        .I1(WR_RST),
        .O1(wr_pntr_plus2),
        .O2(p_8_out),
        .Q(p_9_out),
        .RD_PNTR_WR(p_0_out),
        .axis_wr_data_count(axis_wr_data_count),
        .comp1(\gwas.wsts/comp1 ),
        .comp2(\gwas.wsts/comp2 ),
        .p_1_out(p_1_out_0),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\gwas.wsts/c1/v1_reg ),
        .v1_reg_0(\gwas.wsts/c2/v1_reg ));
link_axis_data_fifo_memory \gntv_or_sync_fifo.mem 
       (.DIADI(DIADI),
        .E(p_3_out),
        .I1(\n_11_gntv_or_sync_fifo.gl0.rd ),
        .O1(Q),
        .O2(p_20_out),
        .Q(p_9_out),
        .m_aclk(m_aclk),
        .ram_rd_en_i(ram_rd_en_i),
        .s_aclk(s_aclk));
link_axis_data_fifo_reset_blk_ramfifo rstblk
       (.O1({RD_RST,rd_rst_i}),
        .Q({WR_RST,wr_rst_i}),
        .m_aclk(m_aclk),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module link_axis_data_fifo_fifo_generator_top
   (Q,
    axis_rd_data_count,
    axis_wr_data_count,
    s_axis_tready,
    m_axis_tvalid,
    s_aclk,
    m_aclk,
    DIADI,
    m_axis_tready,
    s_axis_tvalid,
    s_aresetn);
  output [18:0]Q;
  output [10:0]axis_rd_data_count;
  output [10:0]axis_wr_data_count;
  output s_axis_tready;
  output m_axis_tvalid;
  input s_aclk;
  input m_aclk;
  input [18:0]DIADI;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_aresetn;

  wire [18:0]DIADI;
  wire [18:0]Q;
  wire [10:0]axis_rd_data_count;
  wire [10:0]axis_wr_data_count;
  wire m_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;

link_axis_data_fifo_fifo_generator_ramfifo \grf.rf 
       (.DIADI(DIADI),
        .Q(Q),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_aclk(m_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) (* C_DATA_COUNT_WIDTH = "10" *) 
(* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) (* C_DOUT_RST_VAL = "0" *) 
(* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) (* C_FAMILY = "virtex7" *) 
(* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) (* C_HAS_ALMOST_FULL = "0" *) 
(* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) (* C_HAS_INT_CLK = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SRST = "0" *) 
(* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) (* C_HAS_WR_ACK = "0" *) 
(* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) (* C_IMPLEMENTATION_TYPE = "0" *) 
(* C_INIT_WR_PNTR_VAL = "0" *) (* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_PRELOAD_LATENCY = "1" *) 
(* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
(* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
(* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_UNDERFLOW_LOW = "0" *) (* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) 
(* C_USE_EMBEDDED_REG = "0" *) (* C_USE_PIPELINE_REG = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_VALID_LOW = "0" *) 
(* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) (* C_WR_DEPTH = "1024" *) 
(* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) (* C_WR_RESPONSE_LATENCY = "1" *) 
(* C_MSGON_VAL = "0" *) (* C_ENABLE_RST_SYNC = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_SYNCHRONIZER_STAGE = "2" *) (* C_INTERFACE_TYPE = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_MASTER_CE = "0" *) (* C_ADD_NGC_CONSTRAINT = "0" *) (* C_USE_COMMON_OVERFLOW = "0" *) 
(* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) (* C_AXI_ID_WIDTH = "4" *) 
(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_AWUSER = "0" *) 
(* C_HAS_AXI_WUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) (* C_HAS_AXI_ARUSER = "0" *) 
(* C_HAS_AXI_RUSER = "0" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) 
(* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TUSER = "0" *) (* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TLAST = "1" *) 
(* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TKEEP = "1" *) (* C_AXIS_TDATA_WIDTH = "16" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_AXIS_TSTRB_WIDTH = "2" *) (* C_AXIS_TKEEP_WIDTH = "2" *) (* C_WACH_TYPE = "0" *) 
(* C_WDCH_TYPE = "0" *) (* C_WRCH_TYPE = "0" *) (* C_RACH_TYPE = "0" *) 
(* C_RDCH_TYPE = "0" *) (* C_AXIS_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
(* C_IMPLEMENTATION_TYPE_WDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) (* C_APPLICATION_TYPE_WACH = "0" *) 
(* C_APPLICATION_TYPE_WDCH = "0" *) (* C_APPLICATION_TYPE_WRCH = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_ECC_RACH = "0" *) 
(* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
(* C_ERROR_INJECTION_TYPE_RDCH = "0" *) (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_DIN_WIDTH_WACH = "32" *) 
(* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) (* C_DIN_WIDTH_RACH = "32" *) 
(* C_DIN_WIDTH_RDCH = "64" *) (* C_DIN_WIDTH_AXIS = "19" *) (* C_WR_DEPTH_WACH = "16" *) 
(* C_WR_DEPTH_WDCH = "1024" *) (* C_WR_DEPTH_WRCH = "16" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) 
(* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) 
(* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) 
(* C_HAS_DATA_COUNTS_WDCH = "0" *) (* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "1" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_PROG_FLAGS_RACH = "0" *) 
(* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) (* C_PROG_FULL_TYPE_WACH = "0" *) 
(* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) 
(* C_PROG_FULL_TYPE_RDCH = "0" *) (* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
(* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
(* C_PROG_EMPTY_TYPE_RDCH = "0" *) (* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_REG_SLICE_MODE_WACH = "0" *) 
(* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) 
(* C_REG_SLICE_MODE_RDCH = "0" *) (* C_REG_SLICE_MODE_AXIS = "0" *) (* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module link_axis_data_fifo_fifo_generator_v12_0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
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
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tstrb;
  input [1:0]s_axis_tkeep;
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
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire [9:0]axis_prog_empty_thresh;
  wire [9:0]axis_prog_full_thresh;
  wire [10:0]axis_rd_data_count;
  wire [10:0]axis_wr_data_count;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [17:0]din;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [15:0]m_axis_tdata;
  wire [1:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [9:0]prog_empty_thresh;
  wire [9:0]prog_empty_thresh_assert;
  wire [9:0]prog_empty_thresh_negate;
  wire [9:0]prog_full_thresh;
  wire [9:0]prog_full_thresh_assert;
  wire [9:0]prog_full_thresh_negate;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [3:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [15:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const1> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const1> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const1> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
link_axis_data_fifo_fifo_generator_v12_0_synth inst_fifo_gen
       (.DIADI({s_axis_tdata,s_axis_tkeep,s_axis_tlast}),
        .Q({m_axis_tdata,m_axis_tkeep,m_axis_tlast}),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_aclk(m_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module link_axis_data_fifo_fifo_generator_v12_0_synth
   (Q,
    axis_rd_data_count,
    axis_wr_data_count,
    s_axis_tready,
    m_axis_tvalid,
    s_aclk,
    m_aclk,
    DIADI,
    m_axis_tready,
    s_axis_tvalid,
    s_aresetn);
  output [18:0]Q;
  output [10:0]axis_rd_data_count;
  output [10:0]axis_wr_data_count;
  output s_axis_tready;
  output m_axis_tvalid;
  input s_aclk;
  input m_aclk;
  input [18:0]DIADI;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_aresetn;

  wire [18:0]DIADI;
  wire [18:0]Q;
  wire [10:0]axis_rd_data_count;
  wire [10:0]axis_wr_data_count;
  wire m_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;

link_axis_data_fifo_fifo_generator_top \gaxis_fifo.gaxisf.axisf 
       (.DIADI(DIADI),
        .Q(Q),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_aclk(m_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module link_axis_data_fifo_memory
   (O1,
    E,
    s_aclk,
    ram_rd_en_i,
    m_aclk,
    Q,
    O2,
    DIADI,
    I1);
  output [18:0]O1;
  input [0:0]E;
  input s_aclk;
  input ram_rd_en_i;
  input m_aclk;
  input [9:0]Q;
  input [9:0]O2;
  input [18:0]DIADI;
  input [0:0]I1;

  wire [18:0]DIADI;
  wire [0:0]E;
  wire [0:0]I1;
  wire [18:0]O1;
  wire [9:0]O2;
  wire [9:0]Q;
  wire [18:0]doutb;
  wire m_aclk;
  wire ram_rd_en_i;
  wire s_aclk;

link_axis_data_fifo_blk_mem_gen_v8_2__parameterized0 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .DIADI(DIADI),
        .E(E),
        .O2(O2),
        .Q(Q),
        .m_aclk(m_aclk),
        .ram_rd_en_i(ram_rd_en_i),
        .s_aclk(s_aclk));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[0] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[0]),
        .Q(O1[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[10] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[10]),
        .Q(O1[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[11] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[11]),
        .Q(O1[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[12] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[12]),
        .Q(O1[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[13] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[13]),
        .Q(O1[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[14] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[14]),
        .Q(O1[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[15] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[15]),
        .Q(O1[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[16] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[16]),
        .Q(O1[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[17] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[17]),
        .Q(O1[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[18] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[18]),
        .Q(O1[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[1] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[1]),
        .Q(O1[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[2] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[2]),
        .Q(O1[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[3] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[3]),
        .Q(O1[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[4] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[4]),
        .Q(O1[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[5] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[5]),
        .Q(O1[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[6] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[6]),
        .Q(O1[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[7] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[7]),
        .Q(O1[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[8] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[8]),
        .Q(O1[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[9] 
       (.C(m_aclk),
        .CE(I1),
        .D(doutb[9]),
        .Q(O1[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module link_axis_data_fifo_rd_bin_cntr
   (Q,
    O2,
    E,
    m_aclk,
    I1);
  output [9:0]Q;
  output [9:0]O2;
  input [0:0]E;
  input m_aclk;
  input [0:0]I1;

  wire [0:0]E;
  wire [0:0]I1;
  wire [9:0]O2;
  wire [9:0]Q;
  wire m_aclk;
  wire \n_0_gc0.count[9]_i_2 ;
  wire [9:0]plusOp;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gc0.count[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp[5]));
LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[6]_i_1 
       (.I0(\n_0_gc0.count[9]_i_2 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(plusOp[6]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[7]_i_1 
       (.I0(\n_0_gc0.count[9]_i_2 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(plusOp[7]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\n_0_gc0.count[9]_i_2 ),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(plusOp[8]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gc0.count[9]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\n_0_gc0.count[9]_i_2 ),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(plusOp[9]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \gc0.count[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\n_0_gc0.count[9]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[0]),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[5]),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[6]),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[7]),
        .Q(O2[7]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[8] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[8]),
        .Q(O2[8]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[9] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(Q[9]),
        .Q(O2[9]));
FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(m_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(I1),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[3]),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[4]),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[5]),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[6]),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[7]),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[8] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[8]),
        .Q(Q[8]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[9] 
       (.C(m_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "rd_dc_fwft_ext_as" *) 
module link_axis_data_fifo_rd_dc_fwft_ext_as
   (O1,
    axis_rd_data_count,
    D,
    I1,
    Q,
    user_valid,
    m_aclk,
    I2,
    WR_PNTR_RD,
    I3,
    I4,
    S);
  output [2:0]O1;
  output [10:0]axis_rd_data_count;
  input [2:0]D;
  input I1;
  input [0:0]Q;
  input user_valid;
  input m_aclk;
  input [0:0]I2;
  input [8:0]WR_PNTR_RD;
  input [3:0]I3;
  input [3:0]I4;
  input [1:0]S;

  wire [2:0]D;
  wire I1;
  wire [0:0]I2;
  wire [3:0]I3;
  wire [3:0]I4;
  wire [2:0]O1;
  wire [0:0]Q;
  wire [1:0]S;
  wire [8:0]WR_PNTR_RD;
  wire [10:0]axis_rd_data_count;
  wire [9:3]diff_wr_rd;
  wire m_aclk;
  wire \n_0_gvalid_low.rd_dc_i[10]_i_4 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_3 ;
  wire \n_0_gvalid_low.rd_dc_i[9]_i_2 ;
  wire \n_0_gvalid_low.rd_dc_i[9]_i_3 ;
  wire \n_0_gvalid_low.rd_dc_i[9]_i_4 ;
  wire \n_0_gvalid_low.rd_dc_i_reg[10]_i_5 ;
  wire \n_0_gvalid_low.rd_dc_i_reg[7]_i_2 ;
  wire \n_1_gvalid_low.rd_dc_i_reg[10]_i_5 ;
  wire \n_1_gvalid_low.rd_dc_i_reg[7]_i_2 ;
  wire \n_2_gvalid_low.rd_dc_i_reg[10]_i_5 ;
  wire \n_2_gvalid_low.rd_dc_i_reg[7]_i_2 ;
  wire \n_3_gvalid_low.rd_dc_i_reg[10]_i_3 ;
  wire \n_3_gvalid_low.rd_dc_i_reg[10]_i_5 ;
  wire \n_3_gvalid_low.rd_dc_i_reg[7]_i_2 ;
  wire [10:3]p_0_in;
  wire user_valid;
  wire [3:1]\NLW_gvalid_low.rd_dc_i_reg[10]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_gvalid_low.rd_dc_i_reg[10]_i_3_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gvalid_low.rd_dc_i[10]_i_1 
       (.I0(I1),
        .I1(diff_wr_rd[8]),
        .I2(diff_wr_rd[9]),
        .I3(\n_0_gvalid_low.rd_dc_i[10]_i_4 ),
        .I4(diff_wr_rd[6]),
        .I5(diff_wr_rd[7]),
        .O(p_0_in[10]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \gvalid_low.rd_dc_i[10]_i_4 
       (.I0(diff_wr_rd[5]),
        .I1(diff_wr_rd[4]),
        .I2(O1[1]),
        .I3(O1[2]),
        .I4(diff_wr_rd[3]),
        .O(\n_0_gvalid_low.rd_dc_i[10]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h08808080)) 
     \gvalid_low.rd_dc_i[3]_i_1 
       (.I0(Q),
        .I1(user_valid),
        .I2(diff_wr_rd[3]),
        .I3(O1[2]),
        .I4(O1[1]),
        .O(p_0_in[3]));
LUT6 #(
    .INIT(64'h0880808080808080)) 
     \gvalid_low.rd_dc_i[4]_i_1 
       (.I0(Q),
        .I1(user_valid),
        .I2(diff_wr_rd[4]),
        .I3(diff_wr_rd[3]),
        .I4(O1[2]),
        .I5(O1[1]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h2888888888888888)) 
     \gvalid_low.rd_dc_i[5]_i_1 
       (.I0(I1),
        .I1(diff_wr_rd[5]),
        .I2(diff_wr_rd[4]),
        .I3(O1[1]),
        .I4(O1[2]),
        .I5(diff_wr_rd[3]),
        .O(p_0_in[5]));
LUT6 #(
    .INIT(64'h0880808080808080)) 
     \gvalid_low.rd_dc_i[6]_i_1 
       (.I0(Q),
        .I1(user_valid),
        .I2(diff_wr_rd[6]),
        .I3(diff_wr_rd[5]),
        .I4(diff_wr_rd[4]),
        .I5(\n_0_gvalid_low.rd_dc_i[9]_i_3 ),
        .O(p_0_in[6]));
LUT6 #(
    .INIT(64'h2888888888888888)) 
     \gvalid_low.rd_dc_i[7]_i_1 
       (.I0(I1),
        .I1(diff_wr_rd[7]),
        .I2(\n_0_gvalid_low.rd_dc_i[9]_i_4 ),
        .I3(O1[1]),
        .I4(diff_wr_rd[6]),
        .I5(\n_0_gvalid_low.rd_dc_i[7]_i_3 ),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \gvalid_low.rd_dc_i[7]_i_3 
       (.I0(O1[2]),
        .I1(diff_wr_rd[3]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_3 ));
LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
     \gvalid_low.rd_dc_i[8]_i_1 
       (.I0(I1),
        .I1(\n_0_gvalid_low.rd_dc_i[9]_i_3 ),
        .I2(diff_wr_rd[6]),
        .I3(diff_wr_rd[7]),
        .I4(\n_0_gvalid_low.rd_dc_i[9]_i_4 ),
        .I5(diff_wr_rd[8]),
        .O(p_0_in[8]));
LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
     \gvalid_low.rd_dc_i[9]_i_1 
       (.I0(I1),
        .I1(diff_wr_rd[8]),
        .I2(\n_0_gvalid_low.rd_dc_i[9]_i_2 ),
        .I3(\n_0_gvalid_low.rd_dc_i[9]_i_3 ),
        .I4(\n_0_gvalid_low.rd_dc_i[9]_i_4 ),
        .I5(diff_wr_rd[9]),
        .O(p_0_in[9]));
LUT2 #(
    .INIT(4'h8)) 
     \gvalid_low.rd_dc_i[9]_i_2 
       (.I0(diff_wr_rd[6]),
        .I1(diff_wr_rd[7]),
        .O(\n_0_gvalid_low.rd_dc_i[9]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[9]_i_3 
       (.I0(diff_wr_rd[3]),
        .I1(O1[2]),
        .I2(O1[1]),
        .O(\n_0_gvalid_low.rd_dc_i[9]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \gvalid_low.rd_dc_i[9]_i_4 
       (.I0(diff_wr_rd[4]),
        .I1(diff_wr_rd[5]),
        .O(\n_0_gvalid_low.rd_dc_i[9]_i_4 ));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[0]),
        .Q(axis_rd_data_count[0]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[10] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in[10]),
        .Q(axis_rd_data_count[10]));
CARRY4 \gvalid_low.rd_dc_i_reg[10]_i_3 
       (.CI(\n_0_gvalid_low.rd_dc_i_reg[10]_i_5 ),
        .CO({\NLW_gvalid_low.rd_dc_i_reg[10]_i_3_CO_UNCONNECTED [3:1],\n_3_gvalid_low.rd_dc_i_reg[10]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,WR_PNTR_RD[8]}),
        .O({\NLW_gvalid_low.rd_dc_i_reg[10]_i_3_O_UNCONNECTED [3:2],diff_wr_rd[9:8]}),
        .S({1'b0,1'b0,S}));
CARRY4 \gvalid_low.rd_dc_i_reg[10]_i_5 
       (.CI(\n_0_gvalid_low.rd_dc_i_reg[7]_i_2 ),
        .CO({\n_0_gvalid_low.rd_dc_i_reg[10]_i_5 ,\n_1_gvalid_low.rd_dc_i_reg[10]_i_5 ,\n_2_gvalid_low.rd_dc_i_reg[10]_i_5 ,\n_3_gvalid_low.rd_dc_i_reg[10]_i_5 }),
        .CYINIT(1'b0),
        .DI(WR_PNTR_RD[7:4]),
        .O(diff_wr_rd[7:4]),
        .S(I4));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[1]),
        .Q(axis_rd_data_count[1]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[2]),
        .Q(axis_rd_data_count[2]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[3] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in[3]),
        .Q(axis_rd_data_count[3]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[4] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in[4]),
        .Q(axis_rd_data_count[4]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[5] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in[5]),
        .Q(axis_rd_data_count[5]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[6] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in[6]),
        .Q(axis_rd_data_count[6]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[7] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in[7]),
        .Q(axis_rd_data_count[7]));
CARRY4 \gvalid_low.rd_dc_i_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\n_0_gvalid_low.rd_dc_i_reg[7]_i_2 ,\n_1_gvalid_low.rd_dc_i_reg[7]_i_2 ,\n_2_gvalid_low.rd_dc_i_reg[7]_i_2 ,\n_3_gvalid_low.rd_dc_i_reg[7]_i_2 }),
        .CYINIT(1'b1),
        .DI(WR_PNTR_RD[3:0]),
        .O({diff_wr_rd[3],O1}),
        .S(I3));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[8] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in[8]),
        .Q(axis_rd_data_count[8]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[9] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in[9]),
        .Q(axis_rd_data_count[9]));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module link_axis_data_fifo_rd_fwft
   (user_valid,
    ram_rd_en_i,
    O1,
    O2,
    E,
    O3,
    D,
    O4,
    m_axis_tvalid,
    m_aclk,
    Q,
    m_axis_tready,
    p_18_out,
    comp1,
    comp0,
    I1);
  output user_valid;
  output ram_rd_en_i;
  output [0:0]O1;
  output O2;
  output [0:0]E;
  output [0:0]O3;
  output [2:0]D;
  output O4;
  output m_axis_tvalid;
  input m_aclk;
  input [1:0]Q;
  input m_axis_tready;
  input p_18_out;
  input comp1;
  input comp0;
  input [2:0]I1;

  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]I1;
  wire [0:0]O1;
  wire O2;
  wire [0:0]O3;
  wire O4;
  wire [1:0]Q;
  wire comp0;
  wire comp1;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i;
  wire empty_fwft_i0;
  wire m_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [1:0]next_fwft_state;
  wire p_18_out;
  wire ram_rd_en_i;
  wire user_valid;

LUT4 #(
    .INIT(16'h00F7)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(O1),
        .I1(curr_fwft_state),
        .I2(m_axis_tready),
        .I3(p_18_out),
        .O(ram_rd_en_i));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'hC0EC)) 
     empty_fwft_fb_i_1
       (.I0(m_axis_tready),
        .I1(empty_fwft_fb),
        .I2(curr_fwft_state),
        .I3(O1),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_i));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h00BF)) 
     \gc0.count_d1[9]_i_1 
       (.I0(m_axis_tready),
        .I1(curr_fwft_state),
        .I2(O1),
        .I3(p_18_out),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'h4404)) 
     \goreg_bm.dout_i[18]_i_1 
       (.I0(Q[0]),
        .I1(O1),
        .I2(curr_fwft_state),
        .I3(m_axis_tready),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(O1),
        .I1(m_axis_tready),
        .I2(curr_fwft_state),
        .O(next_fwft_state[0]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h3B33)) 
     \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(O1),
        .I1(p_18_out),
        .I2(m_axis_tready),
        .I3(curr_fwft_state),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(O1));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.user_valid_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(user_valid));
LUT3 #(
    .INIT(8'hD0)) 
     \gvalid_low.rd_dc_i[0]_i_1 
       (.I0(O1),
        .I1(I1[0]),
        .I2(user_valid),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \gvalid_low.rd_dc_i[10]_i_2 
       (.I0(user_valid),
        .I1(O1),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \gvalid_low.rd_dc_i[1]_i_1 
       (.I0(O1),
        .I1(user_valid),
        .I2(I1[1]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h0880)) 
     \gvalid_low.rd_dc_i[2]_i_1 
       (.I0(O1),
        .I1(user_valid),
        .I2(I1[2]),
        .I3(I1[1]),
        .O(D[2]));
LUT1 #(
    .INIT(2'h1)) 
     m_axis_tvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axis_tvalid));
LUT6 #(
    .INIT(64'hFFFFFFFF00BF0000)) 
     ram_empty_fb_i_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state),
        .I2(O1),
        .I3(p_18_out),
        .I4(comp1),
        .I5(comp0),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module link_axis_data_fifo_rd_logic
   (O1,
    ram_rd_en_i,
    E,
    m_axis_tvalid,
    O2,
    axis_rd_data_count,
    v1_reg,
    v1_reg_0,
    m_aclk,
    Q,
    m_axis_tready,
    WR_PNTR_RD,
    I1,
    I2,
    S);
  output [9:0]O1;
  output ram_rd_en_i;
  output [0:0]E;
  output m_axis_tvalid;
  output [9:0]O2;
  output [10:0]axis_rd_data_count;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input m_aclk;
  input [1:0]Q;
  input m_axis_tready;
  input [8:0]WR_PNTR_RD;
  input [3:0]I1;
  input [3:0]I2;
  input [1:0]S;

  wire [0:0]E;
  wire [3:0]I1;
  wire [3:0]I2;
  wire [9:0]O1;
  wire [9:0]O2;
  wire [1:0]Q;
  wire [1:0]S;
  wire [8:0]WR_PNTR_RD;
  wire [10:0]axis_rd_data_count;
  wire comp0;
  wire comp1;
  wire [2:1]diff_wr_rd;
  wire m_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_3_gr1.rfwft ;
  wire \n_9_gr1.rfwft ;
  wire [2:0]p_0_in;
  wire p_14_out;
  wire p_18_out;
  wire p_2_out;
  wire [0:0]plusOp__0;
  wire ram_rd_en_i;
  wire user_valid;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

link_axis_data_fifo_rd_dc_fwft_ext_as \gr1.grdc2.rdc 
       (.D(p_0_in),
        .I1(\n_9_gr1.rfwft ),
        .I2(Q[1]),
        .I3(I1),
        .I4(I2),
        .O1({diff_wr_rd,plusOp__0}),
        .Q(p_2_out),
        .S(S),
        .WR_PNTR_RD(WR_PNTR_RD),
        .axis_rd_data_count(axis_rd_data_count),
        .m_aclk(m_aclk),
        .user_valid(user_valid));
link_axis_data_fifo_rd_fwft \gr1.rfwft 
       (.D(p_0_in),
        .E(p_14_out),
        .I1({diff_wr_rd,plusOp__0}),
        .O1(p_2_out),
        .O2(\n_3_gr1.rfwft ),
        .O3(E),
        .O4(\n_9_gr1.rfwft ),
        .Q(Q),
        .comp0(comp0),
        .comp1(comp1),
        .m_aclk(m_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_18_out(p_18_out),
        .ram_rd_en_i(ram_rd_en_i),
        .user_valid(user_valid));
link_axis_data_fifo_rd_status_flags_as \gras.rsts 
       (.I1(\n_3_gr1.rfwft ),
        .Q(Q[1]),
        .comp0(comp0),
        .comp1(comp1),
        .m_aclk(m_aclk),
        .p_18_out(p_18_out),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
link_axis_data_fifo_rd_bin_cntr rpntr
       (.E(p_14_out),
        .I1(Q[1]),
        .O2(O2),
        .Q(O1),
        .m_aclk(m_aclk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module link_axis_data_fifo_rd_status_flags_as
   (comp0,
    comp1,
    p_18_out,
    v1_reg,
    v1_reg_0,
    I1,
    m_aclk,
    Q);
  output comp0;
  output comp1;
  output p_18_out;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input I1;
  input m_aclk;
  input [0:0]Q;

  wire I1;
  wire [0:0]Q;
  wire comp0;
  wire comp1;
  wire m_aclk;
  wire p_18_out;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

link_axis_data_fifo_compare_1 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
link_axis_data_fifo_compare_2 c1
       (.comp1(comp1),
        .v1_reg_0(v1_reg_0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(m_aclk),
        .CE(1'b1),
        .D(I1),
        .PRE(Q),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module link_axis_data_fifo_reset_blk_ramfifo
   (rst_d2,
    rst_full_gen_i,
    Q,
    O1,
    s_aclk,
    m_aclk,
    s_aresetn);
  output rst_d2;
  output rst_full_gen_i;
  output [1:0]Q;
  output [2:0]O1;
  input s_aclk;
  input m_aclk;
  input s_aresetn;

  wire [2:0]O1;
  wire [1:0]Q;
  wire inverted_reset;
  wire m_aclk;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst_d1;
  wire rst_d2;
  wire rst_d3;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_aresetn;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

FDCE #(
    .INIT(1'b0)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(inverted_reset),
        .D(rst_d3),
        .Q(rst_full_gen_i));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(rst_d1));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(inverted_reset),
        .Q(rst_d2));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(inverted_reset),
        .Q(rst_d3));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(m_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(m_aclk),
        .CE(rd_rst_asreg_d1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(O1[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(O1[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(O1[2]));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(s_aresetn),
        .O(inverted_reset));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_aclk),
        .CE(wr_rst_asreg_d1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module link_axis_data_fifo_synchronizer_ff
   (Q,
    I1,
    m_aclk,
    I6);
  output [9:0]Q;
  input [9:0]I1;
  input m_aclk;
  input [0:0]I6;

  wire [9:0]I1;
  wire [0:0]I6;
  wire [9:0]Q;
  wire m_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[8]),
        .Q(Q[8]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module link_axis_data_fifo_synchronizer_ff_3
   (Q,
    I1,
    s_aclk,
    I5);
  output [9:0]Q;
  input [9:0]I1;
  input s_aclk;
  input [0:0]I5;

  wire [9:0]I1;
  wire [0:0]I5;
  wire [9:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[8]),
        .Q(Q[8]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module link_axis_data_fifo_synchronizer_ff_4
   (D,
    I1,
    m_aclk,
    I6);
  output [9:0]D;
  input [9:0]I1;
  input m_aclk;
  input [0:0]I6;

  wire [9:0]D;
  wire [9:0]I1;
  wire [0:0]I6;
  wire m_aclk;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;
  wire \n_0_Q_reg_reg[8] ;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[8]),
        .Q(\n_0_Q_reg_reg[8] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(m_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[9]),
        .Q(D[9]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[0]_i_1 
       (.I0(D[4]),
        .I1(\n_0_Q_reg_reg[3] ),
        .I2(\n_0_Q_reg_reg[2] ),
        .I3(\n_0_Q_reg_reg[1] ),
        .I4(\n_0_Q_reg_reg[0] ),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[3] ),
        .I3(D[4]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(D[4]),
        .I2(\n_0_Q_reg_reg[2] ),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[3]_i_1 
       (.I0(D[4]),
        .I1(\n_0_Q_reg_reg[3] ),
        .O(D[3]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[4]_i_1 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(D[9]),
        .I2(\n_0_Q_reg_reg[7] ),
        .I3(\n_0_Q_reg_reg[8] ),
        .I4(\n_0_Q_reg_reg[6] ),
        .I5(\n_0_Q_reg_reg[4] ),
        .O(D[4]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[5]_i_1 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(\n_0_Q_reg_reg[8] ),
        .I2(\n_0_Q_reg_reg[7] ),
        .I3(D[9]),
        .I4(\n_0_Q_reg_reg[5] ),
        .O(D[5]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[6]_i_1 
       (.I0(D[9]),
        .I1(\n_0_Q_reg_reg[7] ),
        .I2(\n_0_Q_reg_reg[8] ),
        .I3(\n_0_Q_reg_reg[6] ),
        .O(D[6]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[7]_i_1 
       (.I0(\n_0_Q_reg_reg[8] ),
        .I1(\n_0_Q_reg_reg[7] ),
        .I2(D[9]),
        .O(D[7]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[8]_i_1 
       (.I0(\n_0_Q_reg_reg[8] ),
        .I1(D[9]),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module link_axis_data_fifo_synchronizer_ff_5
   (D,
    I1,
    s_aclk,
    I5);
  output [9:0]D;
  input [9:0]I1;
  input s_aclk;
  input [0:0]I5;

  wire [9:0]D;
  wire [9:0]I1;
  wire [0:0]I5;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;
  wire \n_0_Q_reg_reg[8] ;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[8]),
        .Q(\n_0_Q_reg_reg[8] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[9]),
        .Q(D[9]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[0]_i_1 
       (.I0(D[4]),
        .I1(\n_0_Q_reg_reg[3] ),
        .I2(\n_0_Q_reg_reg[2] ),
        .I3(\n_0_Q_reg_reg[1] ),
        .I4(\n_0_Q_reg_reg[0] ),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[3] ),
        .I3(D[4]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(D[4]),
        .I2(\n_0_Q_reg_reg[2] ),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[3]_i_1 
       (.I0(D[4]),
        .I1(\n_0_Q_reg_reg[3] ),
        .O(D[3]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[4]_i_1 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(D[9]),
        .I2(\n_0_Q_reg_reg[7] ),
        .I3(\n_0_Q_reg_reg[8] ),
        .I4(\n_0_Q_reg_reg[6] ),
        .I5(\n_0_Q_reg_reg[4] ),
        .O(D[4]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[5]_i_1 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(\n_0_Q_reg_reg[8] ),
        .I2(\n_0_Q_reg_reg[7] ),
        .I3(D[9]),
        .I4(\n_0_Q_reg_reg[5] ),
        .O(D[5]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[6]_i_1 
       (.I0(D[9]),
        .I1(\n_0_Q_reg_reg[7] ),
        .I2(\n_0_Q_reg_reg[8] ),
        .I3(\n_0_Q_reg_reg[6] ),
        .O(D[6]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[7]_i_1 
       (.I0(\n_0_Q_reg_reg[8] ),
        .I1(\n_0_Q_reg_reg[7] ),
        .I2(D[9]),
        .O(D[7]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[8]_i_1 
       (.I0(\n_0_Q_reg_reg[8] ),
        .I1(D[9]),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module link_axis_data_fifo_wr_bin_cntr
   (I3,
    Q,
    I2,
    S,
    O1,
    O2,
    RD_PNTR_WR,
    E,
    s_aclk,
    I1);
  output [1:0]I3;
  output [9:0]Q;
  output [3:0]I2;
  output [3:0]S;
  output [9:0]O1;
  output [9:0]O2;
  input [9:0]RD_PNTR_WR;
  input [0:0]E;
  input s_aclk;
  input [0:0]I1;

  wire [0:0]E;
  wire [0:0]I1;
  wire [3:0]I2;
  wire [1:0]I3;
  wire [9:0]O1;
  wire [9:0]O2;
  wire [9:0]Q;
  wire [9:0]RD_PNTR_WR;
  wire [3:0]S;
  wire \n_0_gic0.gc0.count[9]_i_2 ;
  wire [9:0]plusOp__1;
  wire s_aclk;

LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_1 
       (.I0(O1[0]),
        .O(plusOp__1[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[1]_i_1 
       (.I0(O1[0]),
        .I1(O1[1]),
        .O(plusOp__1[1]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gic0.gc0.count[2]_i_1 
       (.I0(O1[2]),
        .I1(O1[0]),
        .I2(O1[1]),
        .O(plusOp__1[2]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \gic0.gc0.count[3]_i_1 
       (.I0(O1[3]),
        .I1(O1[1]),
        .I2(O1[0]),
        .I3(O1[2]),
        .O(plusOp__1[3]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gic0.gc0.count[4]_i_1 
       (.I0(O1[2]),
        .I1(O1[0]),
        .I2(O1[1]),
        .I3(O1[3]),
        .I4(O1[4]),
        .O(plusOp__1[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \gic0.gc0.count[5]_i_1 
       (.I0(O1[5]),
        .I1(O1[2]),
        .I2(O1[0]),
        .I3(O1[1]),
        .I4(O1[3]),
        .I5(O1[4]),
        .O(plusOp__1[5]));
LUT3 #(
    .INIT(8'h6A)) 
     \gic0.gc0.count[6]_i_1 
       (.I0(O1[6]),
        .I1(\n_0_gic0.gc0.count[9]_i_2 ),
        .I2(O1[5]),
        .O(plusOp__1[6]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \gic0.gc0.count[7]_i_1 
       (.I0(O1[7]),
        .I1(O1[5]),
        .I2(\n_0_gic0.gc0.count[9]_i_2 ),
        .I3(O1[6]),
        .O(plusOp__1[7]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \gic0.gc0.count[8]_i_1 
       (.I0(O1[8]),
        .I1(O1[6]),
        .I2(\n_0_gic0.gc0.count[9]_i_2 ),
        .I3(O1[5]),
        .I4(O1[7]),
        .O(plusOp__1[8]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \gic0.gc0.count[9]_i_1 
       (.I0(O1[9]),
        .I1(O1[7]),
        .I2(O1[5]),
        .I3(\n_0_gic0.gc0.count[9]_i_2 ),
        .I4(O1[6]),
        .I5(O1[8]),
        .O(plusOp__1[9]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \gic0.gc0.count[9]_i_2 
       (.I0(O1[4]),
        .I1(O1[3]),
        .I2(O1[1]),
        .I3(O1[0]),
        .I4(O1[2]),
        .O(\n_0_gic0.gc0.count[9]_i_2 ));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(O1[0]),
        .PRE(I1),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[5]),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[6]),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[7]),
        .Q(O2[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[8]),
        .Q(O2[8]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O1[9]),
        .Q(O2[9]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[0]),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[3]),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[4]),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[5]),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[6]),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[7]),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[8]),
        .Q(Q[8]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(O2[9]),
        .Q(Q[9]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[0]),
        .Q(O1[0]));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__1[1]),
        .PRE(I1),
        .Q(O1[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[2]),
        .Q(O1[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[3]),
        .Q(O1[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[4]),
        .Q(O1[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[5]),
        .Q(O1[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[6]),
        .Q(O1[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[7]),
        .Q(O1[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[8]),
        .Q(O1[8]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[9] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__1[9]),
        .Q(O1[9]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[0]_i_2 
       (.I0(Q[3]),
        .I1(RD_PNTR_WR[3]),
        .O(S[3]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[0]_i_3 
       (.I0(Q[2]),
        .I1(RD_PNTR_WR[2]),
        .O(S[2]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[0]_i_4 
       (.I0(Q[1]),
        .I1(RD_PNTR_WR[1]),
        .O(S[1]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[0]_i_5 
       (.I0(Q[0]),
        .I1(RD_PNTR_WR[0]),
        .O(S[0]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[10]_i_10 
       (.I0(Q[5]),
        .I1(RD_PNTR_WR[5]),
        .O(I2[1]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[10]_i_11 
       (.I0(Q[4]),
        .I1(RD_PNTR_WR[4]),
        .O(I2[0]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[10]_i_6 
       (.I0(Q[9]),
        .I1(RD_PNTR_WR[9]),
        .O(I3[1]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[10]_i_7 
       (.I0(Q[8]),
        .I1(RD_PNTR_WR[8]),
        .O(I3[0]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[10]_i_8 
       (.I0(Q[7]),
        .I1(RD_PNTR_WR[7]),
        .O(I2[3]));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[10]_i_9 
       (.I0(Q[6]),
        .I1(RD_PNTR_WR[6]),
        .O(I2[2]));
endmodule

(* ORIG_REF_NAME = "wr_dc_fwft_ext_as" *) 
module link_axis_data_fifo_wr_dc_fwft_ext_as
   (axis_wr_data_count,
    s_aclk,
    I1,
    Q,
    S,
    I2,
    I3);
  output [10:0]axis_wr_data_count;
  input s_aclk;
  input [0:0]I1;
  input [8:0]Q;
  input [3:0]S;
  input [3:0]I2;
  input [1:0]I3;

  wire [0:0]I1;
  wire [3:0]I2;
  wire [1:0]I3;
  wire [8:0]Q;
  wire [3:0]S;
  wire [10:0]axis_wr_data_count;
  wire \n_0_wr_data_count_i[10]_i_1 ;
  wire \n_0_wr_data_count_i[10]_i_3 ;
  wire \n_0_wr_data_count_i[10]_i_5 ;
  wire \n_0_wr_data_count_i[1]_i_1 ;
  wire \n_0_wr_data_count_i[2]_i_1 ;
  wire \n_0_wr_data_count_i[3]_i_1 ;
  wire \n_0_wr_data_count_i[4]_i_1 ;
  wire \n_0_wr_data_count_i[5]_i_1 ;
  wire \n_0_wr_data_count_i[6]_i_1 ;
  wire \n_0_wr_data_count_i[7]_i_1 ;
  wire \n_0_wr_data_count_i[8]_i_1 ;
  wire \n_0_wr_data_count_i[8]_i_2 ;
  wire \n_0_wr_data_count_i[9]_i_1 ;
  wire \n_0_wr_data_count_i_reg[0]_i_1 ;
  wire \n_0_wr_data_count_i_reg[10]_i_4 ;
  wire \n_1_wr_data_count_i_reg[0]_i_1 ;
  wire \n_1_wr_data_count_i_reg[10]_i_4 ;
  wire \n_2_wr_data_count_i_reg[0]_i_1 ;
  wire \n_2_wr_data_count_i_reg[10]_i_4 ;
  wire \n_3_wr_data_count_i_reg[0]_i_1 ;
  wire \n_3_wr_data_count_i_reg[10]_i_2 ;
  wire \n_3_wr_data_count_i_reg[10]_i_4 ;
  wire \n_4_wr_data_count_i_reg[0]_i_1 ;
  wire \n_4_wr_data_count_i_reg[10]_i_4 ;
  wire \n_5_wr_data_count_i_reg[0]_i_1 ;
  wire \n_5_wr_data_count_i_reg[10]_i_4 ;
  wire \n_6_wr_data_count_i_reg[0]_i_1 ;
  wire \n_6_wr_data_count_i_reg[10]_i_2 ;
  wire \n_6_wr_data_count_i_reg[10]_i_4 ;
  wire \n_7_wr_data_count_i_reg[0]_i_1 ;
  wire \n_7_wr_data_count_i_reg[10]_i_2 ;
  wire \n_7_wr_data_count_i_reg[10]_i_4 ;
  wire s_aclk;
  wire [3:1]\NLW_wr_data_count_i_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_wr_data_count_i_reg[10]_i_2_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h0000000020000000)) 
     \wr_data_count_i[10]_i_1 
       (.I0(\n_6_wr_data_count_i_reg[10]_i_2 ),
        .I1(\n_0_wr_data_count_i[10]_i_3 ),
        .I2(\n_7_wr_data_count_i_reg[10]_i_2 ),
        .I3(\n_6_wr_data_count_i_reg[10]_i_4 ),
        .I4(\n_5_wr_data_count_i_reg[10]_i_4 ),
        .I5(\n_0_wr_data_count_i[10]_i_5 ),
        .O(\n_0_wr_data_count_i[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     \wr_data_count_i[10]_i_3 
       (.I0(\n_5_wr_data_count_i_reg[0]_i_1 ),
        .I1(\n_6_wr_data_count_i_reg[0]_i_1 ),
        .I2(\n_4_wr_data_count_i_reg[10]_i_4 ),
        .O(\n_0_wr_data_count_i[10]_i_3 ));
LUT2 #(
    .INIT(4'h7)) 
     \wr_data_count_i[10]_i_5 
       (.I0(\n_4_wr_data_count_i_reg[0]_i_1 ),
        .I1(\n_7_wr_data_count_i_reg[10]_i_4 ),
        .O(\n_0_wr_data_count_i[10]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \wr_data_count_i[1]_i_1 
       (.I0(\n_6_wr_data_count_i_reg[0]_i_1 ),
        .O(\n_0_wr_data_count_i[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_data_count_i[2]_i_1 
       (.I0(\n_6_wr_data_count_i_reg[0]_i_1 ),
        .I1(\n_5_wr_data_count_i_reg[0]_i_1 ),
        .O(\n_0_wr_data_count_i[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \wr_data_count_i[3]_i_1 
       (.I0(\n_4_wr_data_count_i_reg[0]_i_1 ),
        .I1(\n_6_wr_data_count_i_reg[0]_i_1 ),
        .I2(\n_5_wr_data_count_i_reg[0]_i_1 ),
        .O(\n_0_wr_data_count_i[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \wr_data_count_i[4]_i_1 
       (.I0(\n_7_wr_data_count_i_reg[10]_i_4 ),
        .I1(\n_5_wr_data_count_i_reg[0]_i_1 ),
        .I2(\n_6_wr_data_count_i_reg[0]_i_1 ),
        .I3(\n_4_wr_data_count_i_reg[0]_i_1 ),
        .O(\n_0_wr_data_count_i[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'h78F0F0F0)) 
     \wr_data_count_i[5]_i_1 
       (.I0(\n_6_wr_data_count_i_reg[0]_i_1 ),
        .I1(\n_5_wr_data_count_i_reg[0]_i_1 ),
        .I2(\n_6_wr_data_count_i_reg[10]_i_4 ),
        .I3(\n_7_wr_data_count_i_reg[10]_i_4 ),
        .I4(\n_4_wr_data_count_i_reg[0]_i_1 ),
        .O(\n_0_wr_data_count_i[5]_i_1 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \wr_data_count_i[6]_i_1 
       (.I0(\n_5_wr_data_count_i_reg[10]_i_4 ),
        .I1(\n_6_wr_data_count_i_reg[0]_i_1 ),
        .I2(\n_5_wr_data_count_i_reg[0]_i_1 ),
        .I3(\n_6_wr_data_count_i_reg[10]_i_4 ),
        .I4(\n_7_wr_data_count_i_reg[10]_i_4 ),
        .I5(\n_4_wr_data_count_i_reg[0]_i_1 ),
        .O(\n_0_wr_data_count_i[6]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
     \wr_data_count_i[7]_i_1 
       (.I0(\n_4_wr_data_count_i_reg[10]_i_4 ),
        .I1(\n_4_wr_data_count_i_reg[0]_i_1 ),
        .I2(\n_7_wr_data_count_i_reg[10]_i_4 ),
        .I3(\n_5_wr_data_count_i_reg[10]_i_4 ),
        .I4(\n_6_wr_data_count_i_reg[10]_i_4 ),
        .I5(\n_0_wr_data_count_i[8]_i_2 ),
        .O(\n_0_wr_data_count_i[7]_i_1 ));
LUT6 #(
    .INIT(64'hAA9AAAAAAAAAAAAA)) 
     \wr_data_count_i[8]_i_1 
       (.I0(\n_7_wr_data_count_i_reg[10]_i_2 ),
        .I1(\n_0_wr_data_count_i[10]_i_5 ),
        .I2(\n_4_wr_data_count_i_reg[10]_i_4 ),
        .I3(\n_0_wr_data_count_i[8]_i_2 ),
        .I4(\n_6_wr_data_count_i_reg[10]_i_4 ),
        .I5(\n_5_wr_data_count_i_reg[10]_i_4 ),
        .O(\n_0_wr_data_count_i[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h7)) 
     \wr_data_count_i[8]_i_2 
       (.I0(\n_6_wr_data_count_i_reg[0]_i_1 ),
        .I1(\n_5_wr_data_count_i_reg[0]_i_1 ),
        .O(\n_0_wr_data_count_i[8]_i_2 ));
LUT6 #(
    .INIT(64'hAAAAAAAA9AAAAAAA)) 
     \wr_data_count_i[9]_i_1 
       (.I0(\n_6_wr_data_count_i_reg[10]_i_2 ),
        .I1(\n_0_wr_data_count_i[10]_i_3 ),
        .I2(\n_7_wr_data_count_i_reg[10]_i_2 ),
        .I3(\n_6_wr_data_count_i_reg[10]_i_4 ),
        .I4(\n_5_wr_data_count_i_reg[10]_i_4 ),
        .I5(\n_0_wr_data_count_i[10]_i_5 ),
        .O(\n_0_wr_data_count_i[9]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_7_wr_data_count_i_reg[0]_i_1 ),
        .Q(axis_wr_data_count[0]));
CARRY4 \wr_data_count_i_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_wr_data_count_i_reg[0]_i_1 ,\n_1_wr_data_count_i_reg[0]_i_1 ,\n_2_wr_data_count_i_reg[0]_i_1 ,\n_3_wr_data_count_i_reg[0]_i_1 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({\n_4_wr_data_count_i_reg[0]_i_1 ,\n_5_wr_data_count_i_reg[0]_i_1 ,\n_6_wr_data_count_i_reg[0]_i_1 ,\n_7_wr_data_count_i_reg[0]_i_1 }),
        .S(S));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[10] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[10]_i_1 ),
        .Q(axis_wr_data_count[10]));
CARRY4 \wr_data_count_i_reg[10]_i_2 
       (.CI(\n_0_wr_data_count_i_reg[10]_i_4 ),
        .CO({\NLW_wr_data_count_i_reg[10]_i_2_CO_UNCONNECTED [3:1],\n_3_wr_data_count_i_reg[10]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_wr_data_count_i_reg[10]_i_2_O_UNCONNECTED [3:2],\n_6_wr_data_count_i_reg[10]_i_2 ,\n_7_wr_data_count_i_reg[10]_i_2 }),
        .S({1'b0,1'b0,I3}));
CARRY4 \wr_data_count_i_reg[10]_i_4 
       (.CI(\n_0_wr_data_count_i_reg[0]_i_1 ),
        .CO({\n_0_wr_data_count_i_reg[10]_i_4 ,\n_1_wr_data_count_i_reg[10]_i_4 ,\n_2_wr_data_count_i_reg[10]_i_4 ,\n_3_wr_data_count_i_reg[10]_i_4 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\n_4_wr_data_count_i_reg[10]_i_4 ,\n_5_wr_data_count_i_reg[10]_i_4 ,\n_6_wr_data_count_i_reg[10]_i_4 ,\n_7_wr_data_count_i_reg[10]_i_4 }),
        .S(I2));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[1]_i_1 ),
        .Q(axis_wr_data_count[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[2]_i_1 ),
        .Q(axis_wr_data_count[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[3]_i_1 ),
        .Q(axis_wr_data_count[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[4]_i_1 ),
        .Q(axis_wr_data_count[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[5]_i_1 ),
        .Q(axis_wr_data_count[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[6]_i_1 ),
        .Q(axis_wr_data_count[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[7]_i_1 ),
        .Q(axis_wr_data_count[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[8]_i_1 ),
        .Q(axis_wr_data_count[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[9] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_wr_data_count_i[9]_i_1 ),
        .Q(axis_wr_data_count[9]));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module link_axis_data_fifo_wr_logic
   (comp1,
    comp2,
    p_1_out,
    Q,
    O1,
    E,
    s_axis_tready,
    O2,
    axis_wr_data_count,
    v1_reg,
    v1_reg_0,
    ram_full_i,
    s_aclk,
    rst_d2,
    RD_PNTR_WR,
    s_axis_tvalid,
    I1);
  output comp1;
  output comp2;
  output p_1_out;
  output [9:0]Q;
  output [9:0]O1;
  output [0:0]E;
  output s_axis_tready;
  output [9:0]O2;
  output [10:0]axis_wr_data_count;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input ram_full_i;
  input s_aclk;
  input rst_d2;
  input [9:0]RD_PNTR_WR;
  input s_axis_tvalid;
  input [0:0]I1;

  wire [0:0]E;
  wire [0:0]I1;
  wire [9:0]O1;
  wire [9:0]O2;
  wire [9:0]Q;
  wire [9:0]RD_PNTR_WR;
  wire [10:0]axis_wr_data_count;
  wire comp1;
  wire comp2;
  wire n_0_wpntr;
  wire n_12_wpntr;
  wire n_13_wpntr;
  wire n_14_wpntr;
  wire n_15_wpntr;
  wire n_16_wpntr;
  wire n_17_wpntr;
  wire n_18_wpntr;
  wire n_19_wpntr;
  wire n_1_wpntr;
  wire p_1_out;
  wire ram_full_i;
  wire rst_d2;
  wire s_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

link_axis_data_fifo_wr_dc_fwft_ext_as \gwas.gwdc1.wdcext 
       (.I1(I1),
        .I2({n_12_wpntr,n_13_wpntr,n_14_wpntr,n_15_wpntr}),
        .I3({n_0_wpntr,n_1_wpntr}),
        .Q(Q[8:0]),
        .S({n_16_wpntr,n_17_wpntr,n_18_wpntr,n_19_wpntr}),
        .axis_wr_data_count(axis_wr_data_count),
        .s_aclk(s_aclk));
link_axis_data_fifo_wr_status_flags_as \gwas.wsts 
       (.E(E),
        .comp1(comp1),
        .comp2(comp2),
        .p_1_out(p_1_out),
        .ram_full_i(ram_full_i),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
link_axis_data_fifo_wr_bin_cntr wpntr
       (.E(E),
        .I1(I1),
        .I2({n_12_wpntr,n_13_wpntr,n_14_wpntr,n_15_wpntr}),
        .I3({n_0_wpntr,n_1_wpntr}),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .S({n_16_wpntr,n_17_wpntr,n_18_wpntr,n_19_wpntr}),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module link_axis_data_fifo_wr_status_flags_as
   (comp1,
    comp2,
    p_1_out,
    E,
    s_axis_tready,
    v1_reg,
    v1_reg_0,
    ram_full_i,
    s_aclk,
    rst_d2,
    s_axis_tvalid);
  output comp1;
  output comp2;
  output p_1_out;
  output [0:0]E;
  output s_axis_tready;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input ram_full_i;
  input s_aclk;
  input rst_d2;
  input s_axis_tvalid;

  wire [0:0]E;
  wire comp1;
  wire comp2;
  wire p_1_out;
  wire ram_full_i;
  wire ram_full_i__0;
  wire rst_d2;
  wire s_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

LUT2 #(
    .INIT(4'h2)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(s_axis_tvalid),
        .I1(p_1_out),
        .O(E));
link_axis_data_fifo_compare c1
       (.comp1(comp1),
        .v1_reg(v1_reg));
link_axis_data_fifo_compare_0 c2
       (.comp2(comp2),
        .v1_reg_0(v1_reg_0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(p_1_out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(ram_full_i__0));
LUT1 #(
    .INIT(2'h1)) 
     s_axis_tready_INST_0
       (.I0(ram_full_i__0),
        .O(s_axis_tready));
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
