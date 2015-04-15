// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Mon Apr 13 14:00:06 2015
// Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/ZhengchengTao/Documents/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_funcsim.v
// Design      : aurora_8b10b_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* core_generation_info = "aurora_8b10b_0,aurora_8b10b_v10_3,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=right,c_gt_clock_1=GTXQ5,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=1,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=2,c_line_rate=62500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=250000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *) 
(* NotValidForBitStream *)
module aurora_8b10b_0
   (s_axi_tx_tdata,
    s_axi_tx_tkeep,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1,
    frame_err,
    hard_err,
    soft_err,
    lane_up,
    channel_up,
    warn_cc,
    do_cc,
    user_clk,
    sync_clk,
    gt_reset,
    reset,
    sys_reset_out,
    power_down,
    loopback,
    tx_lock,
    init_clk_in,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpen_in,
    drpdi_in,
    drprdy_out,
    drpdo_out,
    drpwe_in,
    gt0_qplllock_in,
    gt0_qpllrefclklost_in,
    gt0_qpllreset_out,
    gt_qpllclk_quad6_in,
    gt_qpllrefclk_quad6_in,
    tx_out_clk,
    pll_not_locked);
  input [0:15]s_axi_tx_tdata;
  input [0:1]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:15]m_axi_rx_tdata;
  output [0:1]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1;
  output frame_err;
  output hard_err;
  output soft_err;
  output lane_up;
  output channel_up;
  input warn_cc;
  input do_cc;
  input user_clk;
  input sync_clk;
  input gt_reset;
  input reset;
  output sys_reset_out;
  input power_down;
  input [2:0]loopback;
  output tx_lock;
  input init_clk_in;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input drpen_in;
  input [15:0]drpdi_in;
  output drprdy_out;
  output [15:0]drpdo_out;
  input drpwe_in;
  input gt0_qplllock_in;
  input gt0_qpllrefclklost_in;
  output gt0_qpllreset_out;
  input gt_qpllclk_quad6_in;
  input gt_qpllrefclk_quad6_in;
  output tx_out_clk;
  input pll_not_locked;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6 ;
  wire \aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to ;
  wire \aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d2 ;
  wire \aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d3 ;
  wire \aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d4 ;
  wire \aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d5 ;
  wire \aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d6 ;
  wire \aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d7 ;
  wire channel_up;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d6 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d1_cdc_to ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d2 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d3 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d4 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d5 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d6 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d7 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d6 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d1_cdc_to ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d2 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d3 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d4 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d5 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d6 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d7 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d2 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d3 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d4 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d5 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d6 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d7 ;
  wire do_cc;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire frame_err;
  wire gt_qpllclk_quad6_in;
  wire gt_qpllrefclk_quad6_in;
  wire gt_refclk1;
  wire gt_reset;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d7 ;
  wire hard_err;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d6 ;
  wire \hpcnt_reset_cdc_sync/s_out_d1_cdc_to ;
  wire \hpcnt_reset_cdc_sync/s_out_d2 ;
  wire \hpcnt_reset_cdc_sync/s_out_d3 ;
  wire \hpcnt_reset_cdc_sync/s_out_d4 ;
  wire \hpcnt_reset_cdc_sync/s_out_d5 ;
  wire \hpcnt_reset_cdc_sync/s_out_d6 ;
  wire \hpcnt_reset_cdc_sync/s_out_d7 ;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:15]m_axi_rx_tdata;
  wire [1:1]\^m_axi_rx_tkeep ;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire power_down;
  wire reset;
  wire rx_resetdone_out;
  wire rxn;
  wire rxp;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire soft_err;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;

  assign gt0_qpllreset_out = \<const0> ;
  assign m_axi_rx_tkeep[0] = \<const1> ;
  assign m_axi_rx_tkeep[1] = \^m_axi_rx_tkeep [1];
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
aurora_8b10b_0_aurora_8b10b_0_core inst
       (.O1(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d2 ),
        .O10(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d5 ),
        .O100(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d5 ),
        .O101(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d6 ),
        .O102(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O103(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ),
        .O104(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ),
        .O105(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ),
        .O106(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ),
        .O107(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ),
        .O108(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O109(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d2 ),
        .O11(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d6 ),
        .O110(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d3 ),
        .O111(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d4 ),
        .O112(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d5 ),
        .O113(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d6 ),
        .O114(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O115(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2 ),
        .O116(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3 ),
        .O117(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4 ),
        .O118(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5 ),
        .O119(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6 ),
        .O12(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O120(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O121(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2 ),
        .O122(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3 ),
        .O123(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4 ),
        .O124(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5 ),
        .O125(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6 ),
        .O126(sys_reset_out),
        .O127(channel_up),
        .O13(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d2 ),
        .O14(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d3 ),
        .O15(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d4 ),
        .O16(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d5 ),
        .O17(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d6 ),
        .O18(\hpcnt_reset_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O19(\hpcnt_reset_cdc_sync/s_level_out_bus_d2 ),
        .O2(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d3 ),
        .O20(\hpcnt_reset_cdc_sync/s_level_out_bus_d3 ),
        .O21(\hpcnt_reset_cdc_sync/s_level_out_bus_d4 ),
        .O22(\hpcnt_reset_cdc_sync/s_level_out_bus_d5 ),
        .O23(\hpcnt_reset_cdc_sync/s_level_out_bus_d6 ),
        .O24(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O25(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2 ),
        .O26(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3 ),
        .O27(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4 ),
        .O28(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5 ),
        .O29(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6 ),
        .O3(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d4 ),
        .O30(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O31(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d2 ),
        .O32(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d3 ),
        .O33(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d4 ),
        .O34(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d5 ),
        .O35(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d6 ),
        .O36(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O37(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ),
        .O38(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ),
        .O39(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ),
        .O4(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d5 ),
        .O40(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ),
        .O41(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ),
        .O42(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O43(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ),
        .O44(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ),
        .O45(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ),
        .O46(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ),
        .O47(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ),
        .O48(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O49(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ),
        .O5(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d6 ),
        .O50(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ),
        .O51(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ),
        .O52(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ),
        .O53(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ),
        .O54(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O55(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d2 ),
        .O56(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d3 ),
        .O57(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d4 ),
        .O58(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d5 ),
        .O59(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d6 ),
        .O6(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O60(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O61(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ),
        .O62(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ),
        .O63(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ),
        .O64(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ),
        .O65(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ),
        .O66(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O67(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2 ),
        .O68(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3 ),
        .O69(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4 ),
        .O7(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d2 ),
        .O70(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5 ),
        .O71(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6 ),
        .O72(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O73(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2 ),
        .O74(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3 ),
        .O75(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4 ),
        .O76(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5 ),
        .O77(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6 ),
        .O78(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O79(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ),
        .O8(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d3 ),
        .O80(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ),
        .O81(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ),
        .O82(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ),
        .O83(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ),
        .O84(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O85(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ),
        .O86(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ),
        .O87(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ),
        .O88(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ),
        .O89(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ),
        .O9(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d4 ),
        .O90(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O91(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ),
        .O92(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ),
        .O93(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ),
        .O94(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ),
        .O95(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ),
        .O96(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O97(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d2 ),
        .O98(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d3 ),
        .O99(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d4 ),
        .do_cc(do_cc),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .frame_err(frame_err),
        .gt_qpllclk_quad6_in(gt_qpllclk_quad6_in),
        .gt_qpllrefclk_quad6_in(gt_qpllrefclk_quad6_in),
        .gt_refclk1(gt_refclk1),
        .gt_reset(gt_reset),
        .hard_err(hard_err),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(\^m_axi_rx_tkeep ),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .out(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .power_down(power_down),
        .reset(reset),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .s_out_d1_cdc_to(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_0(\core_reset_logic_i/link_reset_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_105(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_112(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_119(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_126(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_133(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_14(\hpcnt_reset_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_21(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_28(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_35(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_42(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_49(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_56(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_63(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_7(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_70(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_77(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_84(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_91(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_98(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d2(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d2 ),
        .s_out_d2_1(\core_reset_logic_i/link_reset_cdc_sync/s_out_d2 ),
        .s_out_d2_106(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d2 ),
        .s_out_d2_113(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2 ),
        .s_out_d2_120(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d2 ),
        .s_out_d2_127(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_134(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_15(\hpcnt_reset_cdc_sync/s_out_d2 ),
        .s_out_d2_22(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d2 ),
        .s_out_d2_29(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d2 ),
        .s_out_d2_36(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2 ),
        .s_out_d2_43(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d2 ),
        .s_out_d2_50(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2 ),
        .s_out_d2_57(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d2 ),
        .s_out_d2_64(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2 ),
        .s_out_d2_71(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_78(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_8(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d2 ),
        .s_out_d2_85(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2 ),
        .s_out_d2_92(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d2 ),
        .s_out_d2_99(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2 ),
        .s_out_d3(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_100(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3 ),
        .s_out_d3_107(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d3 ),
        .s_out_d3_114(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3 ),
        .s_out_d3_121(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d3 ),
        .s_out_d3_128(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_135(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_16(\hpcnt_reset_cdc_sync/s_out_d3 ),
        .s_out_d3_2(\core_reset_logic_i/link_reset_cdc_sync/s_out_d3 ),
        .s_out_d3_23(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d3 ),
        .s_out_d3_30(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d3 ),
        .s_out_d3_37(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3 ),
        .s_out_d3_44(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d3 ),
        .s_out_d3_51(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3 ),
        .s_out_d3_58(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d3 ),
        .s_out_d3_65(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3 ),
        .s_out_d3_72(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_79(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_86(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3 ),
        .s_out_d3_9(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d3 ),
        .s_out_d3_93(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d3 ),
        .s_out_d4(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_10(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d4 ),
        .s_out_d4_101(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4 ),
        .s_out_d4_108(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d4 ),
        .s_out_d4_115(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4 ),
        .s_out_d4_122(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d4 ),
        .s_out_d4_129(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_136(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_17(\hpcnt_reset_cdc_sync/s_out_d4 ),
        .s_out_d4_24(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d4 ),
        .s_out_d4_3(\core_reset_logic_i/link_reset_cdc_sync/s_out_d4 ),
        .s_out_d4_31(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d4 ),
        .s_out_d4_38(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4 ),
        .s_out_d4_45(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d4 ),
        .s_out_d4_52(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4 ),
        .s_out_d4_59(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d4 ),
        .s_out_d4_66(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4 ),
        .s_out_d4_73(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_80(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_87(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4 ),
        .s_out_d4_94(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d4 ),
        .s_out_d5(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_102(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5 ),
        .s_out_d5_109(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d5 ),
        .s_out_d5_11(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d5 ),
        .s_out_d5_116(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5 ),
        .s_out_d5_123(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d5 ),
        .s_out_d5_130(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_137(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_18(\hpcnt_reset_cdc_sync/s_out_d5 ),
        .s_out_d5_25(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d5 ),
        .s_out_d5_32(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d5 ),
        .s_out_d5_39(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5 ),
        .s_out_d5_4(\core_reset_logic_i/link_reset_cdc_sync/s_out_d5 ),
        .s_out_d5_46(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d5 ),
        .s_out_d5_53(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5 ),
        .s_out_d5_60(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d5 ),
        .s_out_d5_67(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5 ),
        .s_out_d5_74(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_81(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_88(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5 ),
        .s_out_d5_95(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d5 ),
        .s_out_d6(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_103(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6 ),
        .s_out_d6_110(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d6 ),
        .s_out_d6_117(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6 ),
        .s_out_d6_12(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d6 ),
        .s_out_d6_124(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d6 ),
        .s_out_d6_131(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_138(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_19(\hpcnt_reset_cdc_sync/s_out_d6 ),
        .s_out_d6_26(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d6 ),
        .s_out_d6_33(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d6 ),
        .s_out_d6_40(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6 ),
        .s_out_d6_47(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d6 ),
        .s_out_d6_5(\core_reset_logic_i/link_reset_cdc_sync/s_out_d6 ),
        .s_out_d6_54(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6 ),
        .s_out_d6_61(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d6 ),
        .s_out_d6_68(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6 ),
        .s_out_d6_75(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_82(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_89(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6 ),
        .s_out_d6_96(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d6 ),
        .s_out_d7(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_104(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7 ),
        .s_out_d7_111(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d7 ),
        .s_out_d7_118(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7 ),
        .s_out_d7_125(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d7 ),
        .s_out_d7_13(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d7 ),
        .s_out_d7_132(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_139(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_20(\hpcnt_reset_cdc_sync/s_out_d7 ),
        .s_out_d7_27(\aurora_lane_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d7 ),
        .s_out_d7_34(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d7 ),
        .s_out_d7_41(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7 ),
        .s_out_d7_48(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d7 ),
        .s_out_d7_55(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7 ),
        .s_out_d7_6(\core_reset_logic_i/link_reset_cdc_sync/s_out_d7 ),
        .s_out_d7_62(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d7 ),
        .s_out_d7_69(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7 ),
        .s_out_d7_76(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_83(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_90(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7 ),
        .s_out_d7_97(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d7 ),
        .soft_err(soft_err),
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_AURORA_LANE" *) 
module aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE
   (lane_up,
    s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    link_reset_out,
    ena_comma_align_i,
    comma_over_two_cycles_r,
    tx_reset_i,
    TXCHARISK,
    rx_ecp_i,
    bucket_full_r,
    GOT_V,
    HARD_ERR,
    RX_PAD,
    rx_polarity_i,
    O1,
    rx_pe_data_v_i,
    O2,
    O3,
    FRAME_ERR0,
    O4,
    TXDATA,
    O5,
    O6,
    SR,
    user_clk,
    init_clk_in,
    GEN_PAD,
    TX_PE_DATA_V,
    gen_cc_i,
    GEN_ECP,
    GEN_SCP,
    gen_a_i,
    I1,
    I2,
    hard_err_flop_r0,
    D,
    I3,
    START_RX,
    I4,
    storage_v_r,
    I5,
    rx_realign_i,
    I6,
    I7,
    I8,
    Q,
    I9,
    I10,
    I11);
  output lane_up;
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O24;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  output link_reset_out;
  output ena_comma_align_i;
  output comma_over_two_cycles_r;
  output tx_reset_i;
  output [1:0]TXCHARISK;
  output rx_ecp_i;
  output bucket_full_r;
  output GOT_V;
  output HARD_ERR;
  output RX_PAD;
  output rx_polarity_i;
  output O1;
  output rx_pe_data_v_i;
  output O2;
  output O3;
  output FRAME_ERR0;
  output O4;
  output [15:0]TXDATA;
  output [15:0]O5;
  output O6;
  input [0:0]SR;
  input user_clk;
  input init_clk_in;
  input GEN_PAD;
  input TX_PE_DATA_V;
  input gen_cc_i;
  input GEN_ECP;
  input GEN_SCP;
  input gen_a_i;
  input I1;
  input I2;
  input hard_err_flop_r0;
  input [1:0]D;
  input I3;
  input START_RX;
  input I4;
  input storage_v_r;
  input I5;
  input rx_realign_i;
  input [1:0]I6;
  input [1:0]I7;
  input [1:0]I8;
  input [15:0]Q;
  input [7:0]I9;
  input [7:0]I10;
  input [1:0]I11;

  wire [1:0]D;
  wire FRAME_ERR0;
  wire GEN_ECP;
  wire GEN_PAD;
  wire GEN_SCP;
  wire GOT_V;
  wire HARD_ERR;
  wire I1;
  wire [7:0]I10;
  wire [1:0]I11;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire [1:0]I6;
  wire [1:0]I7;
  wire [1:0]I8;
  wire [7:0]I9;
  wire O1;
  wire O2;
  wire [1:0]O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire O3;
  wire O4;
  wire [15:0]O5;
  wire O6;
  wire [15:0]Q;
  wire RX_CC;
  wire RX_NEG;
  wire RX_PAD;
  wire [0:0]SR;
  wire START_RX;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire TX_PE_DATA_V;
  wire ack_r;
  wire bucket_full_r;
  wire comma_over_two_cycles_r;
  wire counter3_r0;
  wire counter4_r0;
  wire ena_comma_align_i;
  wire first_v_received_r;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_k_i;
  wire [0:0]gen_sp_data_i;
  wire [0:0]gen_spa_data_i;
  wire hard_err_flop_r0;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire n_14_sym_dec_i;
  wire n_2_sym_gen_i;
  wire n_7_lane_init_sm_i;
  wire n_9_lane_init_sm_i;
  wire polarity_r;
  wire ready_r;
  wire ready_r0;
  wire rx_ecp_i;
  wire rx_pe_data_v_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire s_out_d1_cdc_to_21;
  wire s_out_d2_22;
  wire s_out_d3_23;
  wire s_out_d4_24;
  wire s_out_d5_25;
  wire s_out_d6_26;
  wire s_out_d7_27;
  wire send_sp_c;
  wire storage_v_r;
  wire tx_reset_i;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_hotplug aurora_8b10b_0_hotplug_i
       (.D(RX_CC),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .SR(SR),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .s_out_d1_cdc_to_21(s_out_d1_cdc_to_21),
        .s_out_d2_22(s_out_d2_22),
        .s_out_d3_23(s_out_d3_23),
        .s_out_d4_24(s_out_d4_24),
        .s_out_d5_25(s_out_d5_25),
        .s_out_d6_26(s_out_d6_26),
        .s_out_d7_27(s_out_d7_27),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT err_detect_i
       (.HARD_ERR(HARD_ERR),
        .I1(SR),
        .I11(I11),
        .O6(O6),
        .SR(n_7_lane_init_sm_i),
        .bucket_full_r(bucket_full_r),
        .hard_err_flop_r0(hard_err_flop_r0),
        .ready_r0(ready_r0),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM lane_init_sm_i
       (.D(D),
        .I1(n_2_sym_gen_i),
        .I2(O1),
        .I3(I3),
        .I4(n_14_sym_dec_i),
        .I5(I5),
        .O1(ena_comma_align_i),
        .O2(tx_reset_i),
        .O3(n_7_lane_init_sm_i),
        .O4(n_9_lane_init_sm_i),
        .O5({gen_sp_data_i,send_sp_c}),
        .RX_NEG(RX_NEG),
        .SR(SR),
        .ack_r(ack_r),
        .comma_over_two_cycles_r(comma_over_two_cycles_r),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .first_v_received_r(first_v_received_r),
        .gen_k_i(gen_k_i),
        .gen_spa_data_i(gen_spa_data_i),
        .lane_up(lane_up),
        .polarity_r(polarity_r),
        .ready_r(ready_r),
        .ready_r0(ready_r0),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_SYM_DEC sym_dec_i
       (.D(RX_CC),
        .FRAME_ERR0(FRAME_ERR0),
        .GOT_V(GOT_V),
        .I1(I1),
        .I10(I10),
        .I2(I2),
        .I3(n_9_lane_init_sm_i),
        .I4(I4),
        .I9(I9),
        .O1(rx_ecp_i),
        .O2(O1),
        .O3(O2),
        .O4(O3),
        .O5(O4),
        .O6(n_14_sym_dec_i),
        .O7(O5),
        .RX_NEG(RX_NEG),
        .RX_PAD(RX_PAD),
        .SR(SR),
        .START_RX(START_RX),
        .ack_r(ack_r),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .first_v_received_r(first_v_received_r),
        .polarity_r(polarity_r),
        .ready_r(ready_r),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .storage_v_r(storage_v_r),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_SYM_GEN sym_gen_i
       (.D({gen_sp_data_i,send_sp_c}),
        .GEN_ECP(GEN_ECP),
        .GEN_PAD(GEN_PAD),
        .GEN_SCP(GEN_SCP),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .O1(n_2_sym_gen_i),
        .Q(Q),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .TX_PE_DATA_V(TX_PE_DATA_V),
        .ack_r(ack_r),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_k_i(gen_k_i),
        .gen_spa_data_i(gen_spa_data_i),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_AXI_TO_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL
   (O1,
    O2,
    user_clk,
    s_axi_tx_tvalid,
    tx_dst_rdy,
    SR,
    I1,
    s_axi_tx_tlast);
  output O1;
  output O2;
  input user_clk;
  input s_axi_tx_tvalid;
  input tx_dst_rdy;
  input [0:0]SR;
  input I1;
  input s_axi_tx_tlast;

  wire I1;
  wire O1;
  wire O2;
  wire [0:0]SR;
  wire new_pkt_r;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tvalid;
  wire tx_dst_rdy;
  wire user_clk;

LUT6 #(
    .INIT(64'h2020202000302020)) 
     new_pkt_r_i_1
       (.I0(O1),
        .I1(SR),
        .I2(I1),
        .I3(s_axi_tx_tlast),
        .I4(s_axi_tx_tvalid),
        .I5(tx_dst_rdy),
        .O(new_pkt_r));
FDRE new_pkt_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(new_pkt_r),
        .Q(O1),
        .R(1'b0));
LUT3 #(
    .INIT(8'hFB)) 
     sof_data_eof_1_r_i_2
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(tx_dst_rdy),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_CHANNEL_ERR_DETECT" *) 
module aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT
   (hard_err,
    reset_channel_i,
    soft_err,
    wait_for_lane_up_r0,
    HARD_ERR,
    user_clk,
    lane_up,
    I2,
    power_down,
    I1);
  output hard_err;
  output reset_channel_i;
  output soft_err;
  output wait_for_lane_up_r0;
  input HARD_ERR;
  input user_clk;
  input lane_up;
  input I2;
  input power_down;
  input [0:0]I1;

  wire HARD_ERR;
  wire [0:0]I1;
  wire I2;
  wire hard_err;
  wire hard_err_r;
  wire lane_up;
  wire lane_up_r;
  wire n_0_RESET_CHANNEL_i_1;
  wire n_0_soft_err_r_reg_srl3;
  wire power_down;
  wire reset_channel_i;
  wire soft_err;
  wire user_clk;
  wire wait_for_lane_up_r0;

FDRE #(
    .INIT(1'b1)) 
     CHANNEL_HARD_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_r),
        .Q(hard_err),
        .R(1'b0));
FDRE #(
    .INIT(1'b1)) 
     CHANNEL_SOFT_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_soft_err_r_reg_srl3),
        .Q(soft_err),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     RESET_CHANNEL_i_1
       (.I0(power_down),
        .I1(lane_up_r),
        .O(n_0_RESET_CHANNEL_i_1));
FDRE #(
    .INIT(1'b1)) 
     RESET_CHANNEL_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_RESET_CHANNEL_i_1),
        .Q(reset_channel_i),
        .R(1'b0));
FDRE hard_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(HARD_ERR),
        .Q(hard_err_r),
        .R(1'b0));
FDRE lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(lane_up),
        .Q(lane_up_r),
        .R(1'b0));
LUT2 #(
    .INIT(4'hE)) 
     ready_r_i_1
       (.I0(reset_channel_i),
        .I1(I1),
        .O(wait_for_lane_up_r0));
(* srl_name = "\inst/global_logic_i/channel_err_detect_i/soft_err_r_reg_srl3 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     soft_err_r_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(I2),
        .Q(n_0_soft_err_r_reg_srl3));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_CHANNEL_INIT_SM" *) 
module aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM
   (SR,
    O1,
    gen_ver_i,
    gtrxreset_i_0,
    START_RX,
    reset_i,
    user_clk,
    wait_for_lane_up_r0,
    GOT_V,
    I1,
    txver_count_r0,
    reset_channel_i);
  output [0:0]SR;
  output O1;
  output gen_ver_i;
  output gtrxreset_i_0;
  output START_RX;
  output reset_i;
  input user_clk;
  input wait_for_lane_up_r0;
  input GOT_V;
  input [0:0]I1;
  input txver_count_r0;
  input reset_channel_i;

  wire GOT_V;
  wire [0:0]I1;
  wire O1;
  wire [0:0]SR;
  wire START_RX;
  wire START_RX0;
  wire all_lanes_v_r;
  wire bad_v_r;
  wire bad_v_r0;
  wire [0:13]free_count_r_reg;
  wire gen_ver_i;
  wire got_first_v_r;
  wire [7:0]gtrxreset_extend_r;
  wire gtrxreset_i_0;
  wire gtrxreset_nxt;
  wire n_0_GTRXRESET_OUT_i_1;
  wire n_0_GTRXRESET_OUT_i_2;
  wire \n_0_free_count_r[13]_i_2 ;
  wire \n_0_free_count_r[13]_i_3 ;
  wire \n_0_free_count_r[13]_i_4 ;
  wire \n_0_free_count_r[13]_i_5 ;
  wire \n_0_free_count_r[1]_i_2 ;
  wire \n_0_free_count_r[1]_i_3 ;
  wire \n_0_free_count_r[5]_i_2 ;
  wire \n_0_free_count_r[5]_i_3 ;
  wire \n_0_free_count_r[5]_i_4 ;
  wire \n_0_free_count_r[5]_i_5 ;
  wire \n_0_free_count_r[9]_i_2 ;
  wire \n_0_free_count_r[9]_i_3 ;
  wire \n_0_free_count_r[9]_i_4 ;
  wire \n_0_free_count_r[9]_i_5 ;
  wire \n_0_free_count_r_reg[13]_i_1 ;
  wire \n_0_free_count_r_reg[5]_i_1 ;
  wire \n_0_free_count_r_reg[9]_i_1 ;
  wire n_0_got_first_v_r_i_1;
  wire \n_0_rxver_count_r_reg[1]_srl2 ;
  wire \n_0_rxver_count_r_reg[1]_srl2_i_1 ;
  wire \n_0_rxver_count_r_reg[2] ;
  wire \n_0_txver_count_r_reg[6]_srl7 ;
  wire \n_0_txver_count_r_reg[7] ;
  wire \n_0_v_count_r_reg[30]_srl31 ;
  wire \n_0_v_count_r_reg[31] ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15 ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15_i_1 ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15_i_2 ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15_i_3 ;
  wire \n_0_verify_watchdog_r_reg[15] ;
  wire \n_1_free_count_r_reg[13]_i_1 ;
  wire \n_1_free_count_r_reg[5]_i_1 ;
  wire \n_1_free_count_r_reg[9]_i_1 ;
  wire \n_2_free_count_r_reg[13]_i_1 ;
  wire \n_2_free_count_r_reg[5]_i_1 ;
  wire \n_2_free_count_r_reg[9]_i_1 ;
  wire \n_3_free_count_r_reg[13]_i_1 ;
  wire \n_3_free_count_r_reg[1]_i_1 ;
  wire \n_3_free_count_r_reg[5]_i_1 ;
  wire \n_3_free_count_r_reg[9]_i_1 ;
  wire \n_4_free_count_r_reg[13]_i_1 ;
  wire \n_4_free_count_r_reg[5]_i_1 ;
  wire \n_4_free_count_r_reg[9]_i_1 ;
  wire \n_5_free_count_r_reg[13]_i_1 ;
  wire \n_5_free_count_r_reg[5]_i_1 ;
  wire \n_5_free_count_r_reg[9]_i_1 ;
  wire \n_6_free_count_r_reg[13]_i_1 ;
  wire \n_6_free_count_r_reg[1]_i_1 ;
  wire \n_6_free_count_r_reg[5]_i_1 ;
  wire \n_6_free_count_r_reg[9]_i_1 ;
  wire \n_7_free_count_r_reg[13]_i_1 ;
  wire \n_7_free_count_r_reg[1]_i_1 ;
  wire \n_7_free_count_r_reg[5]_i_1 ;
  wire \n_7_free_count_r_reg[9]_i_1 ;
  wire next_ready_c;
  wire next_verify_c;
  wire [31:31]p_2_out;
  wire p_3_in;
  wire ready_r;
  wire ready_r2;
  wire reset_channel_i;
  wire reset_i;
  wire reset_lanes_c;
  wire txver_count_r0;
  wire user_clk;
  wire wait_for_lane_up_r;
  wire wait_for_lane_up_r0;
  wire [3:1]\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED ;
  wire \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED ;

FDRE CHANNEL_UP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r2),
        .Q(O1),
        .R(1'b0));
LUT3 #(
    .INIT(8'hFE)) 
     GTRXRESET_OUT_i_1
       (.I0(gtrxreset_extend_r[2]),
        .I1(n_0_GTRXRESET_OUT_i_2),
        .I2(gtrxreset_extend_r[3]),
        .O(n_0_GTRXRESET_OUT_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     GTRXRESET_OUT_i_2
       (.I0(gtrxreset_extend_r[1]),
        .I1(gtrxreset_extend_r[0]),
        .I2(gtrxreset_extend_r[6]),
        .I3(gtrxreset_extend_r[7]),
        .I4(gtrxreset_extend_r[5]),
        .I5(gtrxreset_extend_r[4]),
        .O(n_0_GTRXRESET_OUT_i_2));
FDRE #(
    .INIT(1'b0)) 
     GTRXRESET_OUT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_GTRXRESET_OUT_i_1),
        .Q(gtrxreset_i_0),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     START_RX_i_1
       (.I0(wait_for_lane_up_r),
        .O(START_RX0));
FDRE START_RX_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(START_RX0),
        .Q(START_RX),
        .R(I1));
FDRE all_lanes_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GOT_V),
        .Q(all_lanes_v_r),
        .R(1'b0));
LUT3 #(
    .INIT(8'h28)) 
     bad_v_r_i_1
       (.I0(got_first_v_r),
        .I1(\n_0_v_count_r_reg[31] ),
        .I2(all_lanes_v_r),
        .O(bad_v_r0));
FDRE bad_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(bad_v_r0),
        .Q(bad_v_r),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[13]_i_2 
       (.I0(free_count_r_reg[10]),
        .O(\n_0_free_count_r[13]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[13]_i_3 
       (.I0(free_count_r_reg[11]),
        .O(\n_0_free_count_r[13]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[13]_i_4 
       (.I0(free_count_r_reg[12]),
        .O(\n_0_free_count_r[13]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[13]_i_5 
       (.I0(free_count_r_reg[13]),
        .O(\n_0_free_count_r[13]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[1]_i_2 
       (.I0(free_count_r_reg[0]),
        .O(\n_0_free_count_r[1]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[1]_i_3 
       (.I0(free_count_r_reg[1]),
        .O(\n_0_free_count_r[1]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[5]_i_2 
       (.I0(free_count_r_reg[2]),
        .O(\n_0_free_count_r[5]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[5]_i_3 
       (.I0(free_count_r_reg[3]),
        .O(\n_0_free_count_r[5]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[5]_i_4 
       (.I0(free_count_r_reg[4]),
        .O(\n_0_free_count_r[5]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[5]_i_5 
       (.I0(free_count_r_reg[5]),
        .O(\n_0_free_count_r[5]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[9]_i_2 
       (.I0(free_count_r_reg[6]),
        .O(\n_0_free_count_r[9]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[9]_i_3 
       (.I0(free_count_r_reg[7]),
        .O(\n_0_free_count_r[9]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[9]_i_4 
       (.I0(free_count_r_reg[8]),
        .O(\n_0_free_count_r[9]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[9]_i_5 
       (.I0(free_count_r_reg[9]),
        .O(\n_0_free_count_r[9]_i_5 ));
FDSE \free_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_6_free_count_r_reg[1]_i_1 ),
        .Q(free_count_r_reg[0]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_4_free_count_r_reg[13]_i_1 ),
        .Q(free_count_r_reg[10]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_5_free_count_r_reg[13]_i_1 ),
        .Q(free_count_r_reg[11]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_6_free_count_r_reg[13]_i_1 ),
        .Q(free_count_r_reg[12]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_7_free_count_r_reg[13]_i_1 ),
        .Q(free_count_r_reg[13]),
        .S(wait_for_lane_up_r0));
CARRY4 \free_count_r_reg[13]_i_1 
       (.CI(1'b0),
        .CO({\n_0_free_count_r_reg[13]_i_1 ,\n_1_free_count_r_reg[13]_i_1 ,\n_2_free_count_r_reg[13]_i_1 ,\n_3_free_count_r_reg[13]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_free_count_r_reg[13]_i_1 ,\n_5_free_count_r_reg[13]_i_1 ,\n_6_free_count_r_reg[13]_i_1 ,\n_7_free_count_r_reg[13]_i_1 }),
        .S({\n_0_free_count_r[13]_i_2 ,\n_0_free_count_r[13]_i_3 ,\n_0_free_count_r[13]_i_4 ,\n_0_free_count_r[13]_i_5 }));
FDSE \free_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_7_free_count_r_reg[1]_i_1 ),
        .Q(free_count_r_reg[1]),
        .S(wait_for_lane_up_r0));
CARRY4 \free_count_r_reg[1]_i_1 
       (.CI(\n_0_free_count_r_reg[5]_i_1 ),
        .CO({\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED [3:1],\n_3_free_count_r_reg[1]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED [3:2],\n_6_free_count_r_reg[1]_i_1 ,\n_7_free_count_r_reg[1]_i_1 }),
        .S({1'b0,1'b0,\n_0_free_count_r[1]_i_2 ,\n_0_free_count_r[1]_i_3 }));
FDSE \free_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_4_free_count_r_reg[5]_i_1 ),
        .Q(free_count_r_reg[2]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_5_free_count_r_reg[5]_i_1 ),
        .Q(free_count_r_reg[3]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_6_free_count_r_reg[5]_i_1 ),
        .Q(free_count_r_reg[4]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_7_free_count_r_reg[5]_i_1 ),
        .Q(free_count_r_reg[5]),
        .S(wait_for_lane_up_r0));
CARRY4 \free_count_r_reg[5]_i_1 
       (.CI(\n_0_free_count_r_reg[9]_i_1 ),
        .CO({\n_0_free_count_r_reg[5]_i_1 ,\n_1_free_count_r_reg[5]_i_1 ,\n_2_free_count_r_reg[5]_i_1 ,\n_3_free_count_r_reg[5]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_free_count_r_reg[5]_i_1 ,\n_5_free_count_r_reg[5]_i_1 ,\n_6_free_count_r_reg[5]_i_1 ,\n_7_free_count_r_reg[5]_i_1 }),
        .S({\n_0_free_count_r[5]_i_2 ,\n_0_free_count_r[5]_i_3 ,\n_0_free_count_r[5]_i_4 ,\n_0_free_count_r[5]_i_5 }));
FDSE \free_count_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_4_free_count_r_reg[9]_i_1 ),
        .Q(free_count_r_reg[6]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_5_free_count_r_reg[9]_i_1 ),
        .Q(free_count_r_reg[7]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_6_free_count_r_reg[9]_i_1 ),
        .Q(free_count_r_reg[8]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_7_free_count_r_reg[9]_i_1 ),
        .Q(free_count_r_reg[9]),
        .S(wait_for_lane_up_r0));
CARRY4 \free_count_r_reg[9]_i_1 
       (.CI(\n_0_free_count_r_reg[13]_i_1 ),
        .CO({\n_0_free_count_r_reg[9]_i_1 ,\n_1_free_count_r_reg[9]_i_1 ,\n_2_free_count_r_reg[9]_i_1 ,\n_3_free_count_r_reg[9]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_free_count_r_reg[9]_i_1 ,\n_5_free_count_r_reg[9]_i_1 ,\n_6_free_count_r_reg[9]_i_1 ,\n_7_free_count_r_reg[9]_i_1 }),
        .S({\n_0_free_count_r[9]_i_2 ,\n_0_free_count_r[9]_i_3 ,\n_0_free_count_r[9]_i_4 ,\n_0_free_count_r[9]_i_5 }));
LUT1 #(
    .INIT(2'h1)) 
     gen_cc_flop_0_i_i_1
       (.I0(O1),
        .O(reset_i));
LUT3 #(
    .INIT(8'hA8)) 
     got_first_v_r_i_1
       (.I0(gen_ver_i),
        .I1(got_first_v_r),
        .I2(all_lanes_v_r),
        .O(n_0_got_first_v_r_i_1));
FDRE got_first_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_got_first_v_r_i_1),
        .Q(got_first_v_r),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b1)) 
     gtreset_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(gtrxreset_nxt),
        .R(1'b0));
LUT4 #(
    .INIT(16'h8A88)) 
     gtreset_flop_0_i_i_1
       (.I0(gen_ver_i),
        .I1(\n_0_verify_watchdog_r_reg[15] ),
        .I2(\n_0_rxver_count_r_reg[2] ),
        .I3(bad_v_r),
        .O(p_3_in));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[1]),
        .Q(gtrxreset_extend_r[0]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[2]),
        .Q(gtrxreset_extend_r[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[3]),
        .Q(gtrxreset_extend_r[2]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[4]),
        .Q(gtrxreset_extend_r[3]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[5]),
        .Q(gtrxreset_extend_r[4]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[6]),
        .Q(gtrxreset_extend_r[5]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[7]),
        .Q(gtrxreset_extend_r[6]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_nxt),
        .Q(gtrxreset_extend_r[7]),
        .R(I1));
FDRE ready_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(ready_r2),
        .R(1'b0));
LUT4 #(
    .INIT(16'hEAAA)) 
     ready_r_i_2
       (.I0(ready_r),
        .I1(\n_0_rxver_count_r_reg[2] ),
        .I2(\n_0_txver_count_r_reg[7] ),
        .I3(gen_ver_i),
        .O(next_ready_c));
FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(wait_for_lane_up_r0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b1)) 
     reset_lanes_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_lanes_c),
        .Q(SR),
        .R(1'b0));
LUT4 #(
    .INIT(16'hFFAE)) 
     reset_lanes_flop_i_i_1
       (.I0(p_3_in),
        .I1(reset_channel_i),
        .I2(wait_for_lane_up_r),
        .I3(I1),
        .O(reset_lanes_c));
(* srl_bus_name = "\inst/global_logic_i/channel_init_sm_i/rxver_count_r_reg " *) 
   (* srl_name = "\inst/global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 " *) 
   SRL16E \rxver_count_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\n_0_rxver_count_r_reg[1]_srl2_i_1 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_rxver_count_r_reg[1]_srl2 ));
LUT3 #(
    .INIT(8'h8F)) 
     \rxver_count_r_reg[1]_srl2_i_1 
       (.I0(\n_0_v_count_r_reg[31] ),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .O(\n_0_rxver_count_r_reg[1]_srl2_i_1 ));
FDRE \rxver_count_r_reg[2] 
       (.C(user_clk),
        .CE(\n_0_rxver_count_r_reg[1]_srl2_i_1 ),
        .D(\n_0_rxver_count_r_reg[1]_srl2 ),
        .Q(\n_0_rxver_count_r_reg[2] ),
        .R(1'b0));
(* srl_bus_name = "\inst/global_logic_i/channel_init_sm_i/txver_count_r_reg " *) 
   (* srl_name = "\inst/global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 " *) 
   SRL16E \txver_count_r_reg[6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(txver_count_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_txver_count_r_reg[6]_srl7 ));
FDRE \txver_count_r_reg[7] 
       (.C(user_clk),
        .CE(txver_count_r0),
        .D(\n_0_txver_count_r_reg[6]_srl7 ),
        .Q(\n_0_txver_count_r_reg[7] ),
        .R(1'b0));
(* srl_bus_name = "\inst/global_logic_i/channel_init_sm_i/v_count_r_reg " *) 
   (* srl_name = "\inst/global_logic_i/channel_init_sm_i/v_count_r_reg[30]_srl31 " *) 
   SRLC32E \v_count_r_reg[30]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_2_out),
        .Q(\n_0_v_count_r_reg[30]_srl31 ),
        .Q31(\NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED ));
LUT4 #(
    .INIT(16'h8F88)) 
     \v_count_r_reg[30]_srl31_i_1 
       (.I0(\n_0_v_count_r_reg[31] ),
        .I1(gen_ver_i),
        .I2(got_first_v_r),
        .I3(all_lanes_v_r),
        .O(p_2_out));
FDRE \v_count_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_v_count_r_reg[30]_srl31 ),
        .Q(\n_0_v_count_r_reg[31] ),
        .R(1'b0));
LUT4 #(
    .INIT(16'hAEEE)) 
     verify_r_i_1
       (.I0(wait_for_lane_up_r),
        .I1(gen_ver_i),
        .I2(\n_0_rxver_count_r_reg[2] ),
        .I3(\n_0_txver_count_r_reg[7] ),
        .O(next_verify_c));
FDRE verify_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(wait_for_lane_up_r0));
(* srl_bus_name = "\inst/global_logic_i/channel_init_sm_i/verify_watchdog_r_reg " *) 
   (* srl_name = "\inst/global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 " *) 
   SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_verify_watchdog_r_reg[14]_srl15 ));
LUT5 #(
    .INIT(32'h0008FFFF)) 
     \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(\n_0_verify_watchdog_r_reg[14]_srl15_i_2 ),
        .I1(\n_0_verify_watchdog_r_reg[14]_srl15_i_3 ),
        .I2(free_count_r_reg[12]),
        .I3(free_count_r_reg[8]),
        .I4(gen_ver_i),
        .O(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \verify_watchdog_r_reg[14]_srl15_i_2 
       (.I0(free_count_r_reg[10]),
        .I1(free_count_r_reg[11]),
        .I2(free_count_r_reg[9]),
        .I3(free_count_r_reg[6]),
        .I4(free_count_r_reg[4]),
        .I5(free_count_r_reg[2]),
        .O(\n_0_verify_watchdog_r_reg[14]_srl15_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \verify_watchdog_r_reg[14]_srl15_i_3 
       (.I0(free_count_r_reg[1]),
        .I1(free_count_r_reg[5]),
        .I2(free_count_r_reg[7]),
        .I3(free_count_r_reg[13]),
        .I4(free_count_r_reg[3]),
        .I5(free_count_r_reg[0]),
        .O(\n_0_verify_watchdog_r_reg[14]_srl15_i_3 ));
FDRE \verify_watchdog_r_reg[15] 
       (.C(user_clk),
        .CE(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ),
        .D(\n_0_verify_watchdog_r_reg[14]_srl15 ),
        .Q(\n_0_verify_watchdog_r_reg[15] ),
        .R(1'b0));
FDRE wait_for_lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wait_for_lane_up_r0),
        .Q(wait_for_lane_up_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_ERR_DETECT" *) 
module aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT
   (bucket_full_r,
    HARD_ERR,
    ready_r0,
    O6,
    SR,
    user_clk,
    hard_err_flop_r0,
    I1,
    I11);
  output bucket_full_r;
  output HARD_ERR;
  output ready_r0;
  output O6;
  input [0:0]SR;
  input user_clk;
  input hard_err_flop_r0;
  input [0:0]I1;
  input [1:0]I11;

  wire HARD_ERR;
  wire [0:0]I1;
  wire [1:0]I11;
  wire O6;
  wire [0:0]SR;
  wire bucket_full_r;
  wire hard_err_flop_r0;
  wire hard_err_reset_i;
  wire n_0_bucket_full_r_i_1;
  wire \n_0_count_r[0]_i_1 ;
  wire \n_0_count_r[1]_i_1 ;
  wire \n_0_good_count_r[0]_i_1 ;
  wire \n_0_good_count_r[1]_i_1 ;
  wire [5:0]p_0_in;
  wire ready_r0;
  wire user_clk;

FDRE HARD_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_reset_i),
        .Q(HARD_ERR),
        .R(SR));
LUT2 #(
    .INIT(4'hE)) 
     align_r_i_1
       (.I0(hard_err_reset_i),
        .I1(I1),
        .O(ready_r0));
LUT6 #(
    .INIT(64'hAAAA888808880000)) 
     bucket_full_r_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .I5(p_0_in[5]),
        .O(n_0_bucket_full_r_i_1));
FDRE bucket_full_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_bucket_full_r_i_1),
        .Q(bucket_full_r),
        .R(SR));
LUT6 #(
    .INIT(64'hFFFFFAFFF2FAA0A0)) 
     \count_r[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(p_0_in[1]),
        .O(\n_0_count_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hFEFCC0CFC5CFFCF0)) 
     \count_r[1]_i_1 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(p_0_in[4]),
        .I5(p_0_in[0]),
        .O(\n_0_count_r[1]_i_1 ));
FDRE \count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_count_r[0]_i_1 ),
        .Q(p_0_in[1]),
        .R(SR));
FDRE \count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_count_r[1]_i_1 ),
        .Q(p_0_in[0]),
        .R(SR));
LUT3 #(
    .INIT(8'h01)) 
     \good_count_r[0]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[5]),
        .O(\n_0_good_count_r[0]_i_1 ));
LUT3 #(
    .INIT(8'h54)) 
     \good_count_r[1]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[2]),
        .O(\n_0_good_count_r[1]_i_1 ));
FDRE \good_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_good_count_r[0]_i_1 ),
        .Q(p_0_in[3]),
        .R(SR));
FDRE \good_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_good_count_r[1]_i_1 ),
        .Q(p_0_in[2]),
        .R(SR));
FDRE hard_err_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_flop_r0),
        .Q(hard_err_reset_i),
        .R(SR));
FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[1]),
        .Q(p_0_in[5]),
        .R(SR));
FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[0]),
        .Q(p_0_in[4]),
        .R(SR));
LUT2 #(
    .INIT(4'hE)) 
     soft_err_r_reg_srl3_i_1
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .O(O6));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_GLOBAL_LOGIC" *) 
module aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC
   (SR,
    I6,
    gen_a_i,
    I8,
    I7,
    O1,
    gtrxreset_i_0,
    hard_err,
    START_RX,
    soft_err,
    reset_i,
    user_clk,
    I1,
    GOT_V,
    HARD_ERR,
    lane_up,
    I2,
    power_down);
  output [0:0]SR;
  output [1:0]I6;
  output gen_a_i;
  output [1:0]I8;
  output [1:0]I7;
  output O1;
  output gtrxreset_i_0;
  output hard_err;
  output START_RX;
  output soft_err;
  output reset_i;
  input user_clk;
  input [0:0]I1;
  input GOT_V;
  input HARD_ERR;
  input lane_up;
  input I2;
  input power_down;

  wire GOT_V;
  wire HARD_ERR;
  wire [0:0]I1;
  wire I2;
  wire [1:0]I6;
  wire [1:0]I7;
  wire [1:0]I8;
  wire O1;
  wire [0:0]SR;
  wire START_RX;
  wire gen_a_i;
  wire gen_ver_i;
  wire gtrxreset_i_0;
  wire hard_err;
  wire lane_up;
  wire power_down;
  wire reset_channel_i;
  wire reset_i;
  wire soft_err;
  wire txver_count_r0;
  wire user_clk;
  wire wait_for_lane_up_r0;

aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT channel_err_detect_i
       (.HARD_ERR(HARD_ERR),
        .I1(I1),
        .I2(I2),
        .hard_err(hard_err),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_channel_i(reset_channel_i),
        .soft_err(soft_err),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM channel_init_sm_i
       (.GOT_V(GOT_V),
        .I1(I1),
        .O1(O1),
        .SR(SR),
        .START_RX(START_RX),
        .gen_ver_i(gen_ver_i),
        .gtrxreset_i_0(gtrxreset_i_0),
        .reset_channel_i(reset_channel_i),
        .reset_i(reset_i),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.I1(I1),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .gen_a_i(gen_a_i),
        .gen_ver_i(gen_ver_i),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_GT_WRAPPER" *) 
module aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER
   (s_out_d1_cdc_to_28,
    s_out_d2_29,
    s_out_d3_30,
    s_out_d4_31,
    s_out_d5_32,
    s_out_d6_33,
    s_out_d7_34,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O1,
    s_out_d1_cdc_to_42,
    s_out_d2_43,
    s_out_d3_44,
    s_out_d4_45,
    s_out_d5_46,
    s_out_d6_47,
    s_out_d7_48,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    s_out_d1_cdc_to_49,
    s_out_d2_50,
    s_out_d3_51,
    s_out_d4_52,
    s_out_d5_53,
    s_out_d6_54,
    s_out_d7_55,
    O48,
    O49,
    O50,
    O51,
    O52,
    O53,
    s_out_d1_cdc_to_56,
    s_out_d2_57,
    s_out_d3_58,
    s_out_d4_59,
    s_out_d5_60,
    s_out_d6_61,
    s_out_d7_62,
    O54,
    O55,
    O56,
    O57,
    O58,
    O59,
    s_out_d1_cdc_to_63,
    s_out_d2_64,
    s_out_d3_65,
    s_out_d4_66,
    s_out_d5_67,
    s_out_d6_68,
    s_out_d7_69,
    O60,
    O61,
    O62,
    O63,
    O64,
    O65,
    O2,
    s_out_d1_cdc_to_70,
    s_out_d2_71,
    s_out_d3_72,
    s_out_d4_73,
    s_out_d5_74,
    s_out_d6_75,
    s_out_d7_76,
    O66,
    O67,
    O68,
    O69,
    O70,
    O71,
    s_out_d1_cdc_to_77,
    s_out_d2_78,
    s_out_d3_79,
    s_out_d4_80,
    s_out_d5_81,
    s_out_d6_82,
    s_out_d7_83,
    O72,
    O73,
    O74,
    O75,
    O76,
    O77,
    s_out_d1_cdc_to_84,
    s_out_d2_85,
    s_out_d3_86,
    s_out_d4_87,
    s_out_d5_88,
    s_out_d6_89,
    s_out_d7_90,
    O78,
    O79,
    O80,
    O81,
    O82,
    O83,
    s_out_d1_cdc_to_91,
    s_out_d2_92,
    s_out_d3_93,
    s_out_d4_94,
    s_out_d5_95,
    s_out_d6_96,
    s_out_d7_97,
    O84,
    O85,
    O86,
    O87,
    O88,
    O89,
    s_out_d1_cdc_to_98,
    s_out_d2_99,
    s_out_d3_100,
    s_out_d4_101,
    s_out_d5_102,
    s_out_d6_103,
    s_out_d7_104,
    O90,
    O91,
    O92,
    O93,
    O94,
    O95,
    s_out_d1_cdc_to_105,
    s_out_d2_106,
    s_out_d3_107,
    s_out_d4_108,
    s_out_d5_109,
    s_out_d6_110,
    s_out_d7_111,
    O96,
    O97,
    O98,
    O99,
    O100,
    O101,
    s_out_d1_cdc_to_112,
    s_out_d2_113,
    s_out_d3_114,
    s_out_d4_115,
    s_out_d5_116,
    s_out_d6_117,
    s_out_d7_118,
    O102,
    O103,
    O104,
    O105,
    O106,
    O107,
    s_out_d1_cdc_to_119,
    s_out_d2_120,
    s_out_d3_121,
    s_out_d4_122,
    s_out_d5_123,
    s_out_d6_124,
    s_out_d7_125,
    O108,
    O109,
    O110,
    O111,
    O112,
    O113,
    s_out_d1_cdc_to_126,
    s_out_d2_127,
    s_out_d3_128,
    s_out_d4_129,
    s_out_d5_130,
    s_out_d6_131,
    s_out_d7_132,
    O114,
    O115,
    O116,
    O117,
    O118,
    O119,
    s_out_d1_cdc_to_133,
    s_out_d2_134,
    s_out_d3_135,
    s_out_d4_136,
    s_out_d5_137,
    s_out_d6_138,
    s_out_d7_139,
    O120,
    O121,
    O122,
    O123,
    O124,
    O125,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    tx_out_clk,
    drpdo_out,
    D,
    rx_resetdone_out,
    O3,
    O4,
    O5,
    O6,
    I11,
    O7,
    hard_err_flop_r0,
    I9,
    I10,
    gtrxreset_i_0,
    init_clk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    rxn,
    rxp,
    gt_qpllclk_quad6_in,
    gt_qpllrefclk_quad6_in,
    ena_comma_align_i,
    rx_polarity_i,
    sync_clk,
    user_clk,
    power_down,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    link_reset_comb_r,
    gt_reset,
    I1,
    tx_reset_i,
    comma_over_two_cycles_r,
    bucket_full_r);
  output s_out_d1_cdc_to_28;
  output s_out_d2_29;
  output s_out_d3_30;
  output s_out_d4_31;
  output s_out_d5_32;
  output s_out_d6_33;
  output s_out_d7_34;
  output [1:0]O30;
  output [1:0]O31;
  output [1:0]O32;
  output [1:0]O33;
  output [1:0]O34;
  output [1:0]O35;
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O36;
  output [1:0]O37;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output O1;
  output s_out_d1_cdc_to_42;
  output s_out_d2_43;
  output s_out_d3_44;
  output s_out_d4_45;
  output s_out_d5_46;
  output s_out_d6_47;
  output s_out_d7_48;
  output [1:0]O42;
  output [1:0]O43;
  output [1:0]O44;
  output [1:0]O45;
  output [1:0]O46;
  output [1:0]O47;
  output s_out_d1_cdc_to_49;
  output s_out_d2_50;
  output s_out_d3_51;
  output s_out_d4_52;
  output s_out_d5_53;
  output s_out_d6_54;
  output s_out_d7_55;
  output [1:0]O48;
  output [1:0]O49;
  output [1:0]O50;
  output [1:0]O51;
  output [1:0]O52;
  output [1:0]O53;
  output s_out_d1_cdc_to_56;
  output s_out_d2_57;
  output s_out_d3_58;
  output s_out_d4_59;
  output s_out_d5_60;
  output s_out_d6_61;
  output s_out_d7_62;
  output [1:0]O54;
  output [1:0]O55;
  output [1:0]O56;
  output [1:0]O57;
  output [1:0]O58;
  output [1:0]O59;
  output s_out_d1_cdc_to_63;
  output s_out_d2_64;
  output s_out_d3_65;
  output s_out_d4_66;
  output s_out_d5_67;
  output s_out_d6_68;
  output s_out_d7_69;
  output [1:0]O60;
  output [1:0]O61;
  output [1:0]O62;
  output [1:0]O63;
  output [1:0]O64;
  output [1:0]O65;
  output O2;
  output s_out_d1_cdc_to_70;
  output s_out_d2_71;
  output s_out_d3_72;
  output s_out_d4_73;
  output s_out_d5_74;
  output s_out_d6_75;
  output s_out_d7_76;
  output [1:0]O66;
  output [1:0]O67;
  output [1:0]O68;
  output [1:0]O69;
  output [1:0]O70;
  output [1:0]O71;
  output s_out_d1_cdc_to_77;
  output s_out_d2_78;
  output s_out_d3_79;
  output s_out_d4_80;
  output s_out_d5_81;
  output s_out_d6_82;
  output s_out_d7_83;
  output [1:0]O72;
  output [1:0]O73;
  output [1:0]O74;
  output [1:0]O75;
  output [1:0]O76;
  output [1:0]O77;
  output s_out_d1_cdc_to_84;
  output s_out_d2_85;
  output s_out_d3_86;
  output s_out_d4_87;
  output s_out_d5_88;
  output s_out_d6_89;
  output s_out_d7_90;
  output [1:0]O78;
  output [1:0]O79;
  output [1:0]O80;
  output [1:0]O81;
  output [1:0]O82;
  output [1:0]O83;
  output s_out_d1_cdc_to_91;
  output s_out_d2_92;
  output s_out_d3_93;
  output s_out_d4_94;
  output s_out_d5_95;
  output s_out_d6_96;
  output s_out_d7_97;
  output [1:0]O84;
  output [1:0]O85;
  output [1:0]O86;
  output [1:0]O87;
  output [1:0]O88;
  output [1:0]O89;
  output s_out_d1_cdc_to_98;
  output s_out_d2_99;
  output s_out_d3_100;
  output s_out_d4_101;
  output s_out_d5_102;
  output s_out_d6_103;
  output s_out_d7_104;
  output [1:0]O90;
  output [1:0]O91;
  output [1:0]O92;
  output [1:0]O93;
  output [1:0]O94;
  output [1:0]O95;
  output s_out_d1_cdc_to_105;
  output s_out_d2_106;
  output s_out_d3_107;
  output s_out_d4_108;
  output s_out_d5_109;
  output s_out_d6_110;
  output s_out_d7_111;
  output [1:0]O96;
  output [1:0]O97;
  output [1:0]O98;
  output [1:0]O99;
  output [1:0]O100;
  output [1:0]O101;
  output s_out_d1_cdc_to_112;
  output s_out_d2_113;
  output s_out_d3_114;
  output s_out_d4_115;
  output s_out_d5_116;
  output s_out_d6_117;
  output s_out_d7_118;
  output [1:0]O102;
  output [1:0]O103;
  output [1:0]O104;
  output [1:0]O105;
  output [1:0]O106;
  output [1:0]O107;
  output s_out_d1_cdc_to_119;
  output s_out_d2_120;
  output s_out_d3_121;
  output s_out_d4_122;
  output s_out_d5_123;
  output s_out_d6_124;
  output s_out_d7_125;
  output [1:0]O108;
  output [1:0]O109;
  output [1:0]O110;
  output [1:0]O111;
  output [1:0]O112;
  output [1:0]O113;
  output s_out_d1_cdc_to_126;
  output s_out_d2_127;
  output s_out_d3_128;
  output s_out_d4_129;
  output s_out_d5_130;
  output s_out_d6_131;
  output s_out_d7_132;
  output [1:0]O114;
  output [1:0]O115;
  output [1:0]O116;
  output [1:0]O117;
  output [1:0]O118;
  output [1:0]O119;
  output s_out_d1_cdc_to_133;
  output s_out_d2_134;
  output s_out_d3_135;
  output s_out_d4_136;
  output s_out_d5_137;
  output s_out_d6_138;
  output s_out_d7_139;
  output [1:0]O120;
  output [1:0]O121;
  output [1:0]O122;
  output [1:0]O123;
  output [1:0]O124;
  output [1:0]O125;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output [1:0]D;
  output rx_resetdone_out;
  output O3;
  output O4;
  output O5;
  output O6;
  output [1:0]I11;
  output O7;
  output hard_err_flop_r0;
  output [7:0]I9;
  output [7:0]I10;
  input gtrxreset_i_0;
  input init_clk_in;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input rxn;
  input rxp;
  input gt_qpllclk_quad6_in;
  input gt_qpllrefclk_quad6_in;
  input ena_comma_align_i;
  input rx_polarity_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [15:0]TXDATA;
  input [1:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input link_reset_comb_r;
  input gt_reset;
  input I1;
  input tx_reset_i;
  input comma_over_two_cycles_r;
  input bucket_full_r;

  wire [1:0]D;
  wire I1;
  wire [7:0]I10;
  wire [1:0]I11;
  wire [7:0]I9;
  wire O1;
  wire [1:0]O100;
  wire [1:0]O101;
  wire [1:0]O102;
  wire [1:0]O103;
  wire [1:0]O104;
  wire [1:0]O105;
  wire [1:0]O106;
  wire [1:0]O107;
  wire [1:0]O108;
  wire [1:0]O109;
  wire [1:0]O110;
  wire [1:0]O111;
  wire [1:0]O112;
  wire [1:0]O113;
  wire [1:0]O114;
  wire [1:0]O115;
  wire [1:0]O116;
  wire [1:0]O117;
  wire [1:0]O118;
  wire [1:0]O119;
  wire [1:0]O120;
  wire [1:0]O121;
  wire [1:0]O122;
  wire [1:0]O123;
  wire [1:0]O124;
  wire [1:0]O125;
  wire O2;
  wire O3;
  wire [1:0]O30;
  wire [1:0]O31;
  wire [1:0]O32;
  wire [1:0]O33;
  wire [1:0]O34;
  wire [1:0]O35;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [1:0]O38;
  wire [1:0]O39;
  wire O4;
  wire [1:0]O40;
  wire [1:0]O41;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire [1:0]O48;
  wire [1:0]O49;
  wire O5;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire O6;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire O7;
  wire [1:0]O70;
  wire [1:0]O71;
  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire [1:0]O78;
  wire [1:0]O79;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire [1:0]O90;
  wire [1:0]O91;
  wire [1:0]O92;
  wire [1:0]O93;
  wire [1:0]O94;
  wire [1:0]O95;
  wire [1:0]O96;
  wire [1:0]O97;
  wire [1:0]O98;
  wire [1:0]O99;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire bucket_full_r;
  wire comma_over_two_cycles_r;
  wire cpll_reset_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire \gt0_aurora_8b10b_0_i/ack_flag ;
  wire gt_qpllclk_quad6_in;
  wire gt_qpllrefclk_quad6_in;
  wire gt_refclk1;
  wire gt_reset;
  wire gt_rx_reset_i;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire gtrxreset_i_0;
  wire gtrxreset_pulse;
  wire gtrxreset_r2;
  wire gtrxreset_r3;
  wire hard_err_flop_r0;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire link_reset_r2;
  wire [2:0]loopback;
  wire n_0_gt0_rxresetdone_r3_reg_srl3;
  wire n_0_gt0_txresetdone_r3_reg_srl3;
  wire n_0_gtrxreset_cdc_sync;
  wire n_0_gtrxreset_pulse_i_1;
  wire \n_0_rx_cdrlock_counter[12]_i_3 ;
  wire \n_0_rx_cdrlock_counter[12]_i_4 ;
  wire \n_0_rx_cdrlock_counter[12]_i_5 ;
  wire \n_0_rx_cdrlock_counter[12]_i_6 ;
  wire \n_0_rx_cdrlock_counter[16]_i_3 ;
  wire \n_0_rx_cdrlock_counter[16]_i_4 ;
  wire \n_0_rx_cdrlock_counter[16]_i_5 ;
  wire \n_0_rx_cdrlock_counter[16]_i_6 ;
  wire \n_0_rx_cdrlock_counter[20]_i_3 ;
  wire \n_0_rx_cdrlock_counter[20]_i_4 ;
  wire \n_0_rx_cdrlock_counter[20]_i_5 ;
  wire \n_0_rx_cdrlock_counter[20]_i_6 ;
  wire \n_0_rx_cdrlock_counter[24]_i_3 ;
  wire \n_0_rx_cdrlock_counter[24]_i_4 ;
  wire \n_0_rx_cdrlock_counter[24]_i_5 ;
  wire \n_0_rx_cdrlock_counter[24]_i_6 ;
  wire \n_0_rx_cdrlock_counter[28]_i_3 ;
  wire \n_0_rx_cdrlock_counter[28]_i_4 ;
  wire \n_0_rx_cdrlock_counter[28]_i_5 ;
  wire \n_0_rx_cdrlock_counter[28]_i_6 ;
  wire \n_0_rx_cdrlock_counter[31]_i_10 ;
  wire \n_0_rx_cdrlock_counter[31]_i_11 ;
  wire \n_0_rx_cdrlock_counter[31]_i_2 ;
  wire \n_0_rx_cdrlock_counter[31]_i_4 ;
  wire \n_0_rx_cdrlock_counter[31]_i_5 ;
  wire \n_0_rx_cdrlock_counter[31]_i_6 ;
  wire \n_0_rx_cdrlock_counter[31]_i_7 ;
  wire \n_0_rx_cdrlock_counter[31]_i_8 ;
  wire \n_0_rx_cdrlock_counter[31]_i_9 ;
  wire \n_0_rx_cdrlock_counter[4]_i_3 ;
  wire \n_0_rx_cdrlock_counter[4]_i_4 ;
  wire \n_0_rx_cdrlock_counter[4]_i_5 ;
  wire \n_0_rx_cdrlock_counter[4]_i_6 ;
  wire \n_0_rx_cdrlock_counter[8]_i_3 ;
  wire \n_0_rx_cdrlock_counter[8]_i_4 ;
  wire \n_0_rx_cdrlock_counter[8]_i_5 ;
  wire \n_0_rx_cdrlock_counter[8]_i_6 ;
  wire \n_0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_0_rx_cdrlocked_i_1;
  wire n_0_rx_cdrlocked_reg;
  wire n_0_rxfsm_soft_reset_r_i_1;
  wire n_137_gt_txresetfsm_i;
  wire \n_1_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_2_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_3_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_5_aurora_8b10b_0_multi_gt_i;
  wire \n_5_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_5_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_6_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_7_aurora_8b10b_0_multi_gt_i;
  wire \n_7_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_7_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[8]_i_2 ;
  wire power_down;
  wire [31:0]rx_cdrlock_counter;
  wire [31:0]rx_cdrlock_counter_0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_resetdone_out;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_rxresetdone_r2;
  wire rxfsm_soft_reset_r;
  wire rxn;
  wire rxp;
  wire s_out_d1_cdc_to_105;
  wire s_out_d1_cdc_to_112;
  wire s_out_d1_cdc_to_119;
  wire s_out_d1_cdc_to_126;
  wire s_out_d1_cdc_to_133;
  wire s_out_d1_cdc_to_28;
  wire s_out_d1_cdc_to_35;
  wire s_out_d1_cdc_to_42;
  wire s_out_d1_cdc_to_49;
  wire s_out_d1_cdc_to_56;
  wire s_out_d1_cdc_to_63;
  wire s_out_d1_cdc_to_70;
  wire s_out_d1_cdc_to_77;
  wire s_out_d1_cdc_to_84;
  wire s_out_d1_cdc_to_91;
  wire s_out_d1_cdc_to_98;
  wire s_out_d2_106;
  wire s_out_d2_113;
  wire s_out_d2_120;
  wire s_out_d2_127;
  wire s_out_d2_134;
  wire s_out_d2_29;
  wire s_out_d2_36;
  wire s_out_d2_43;
  wire s_out_d2_50;
  wire s_out_d2_57;
  wire s_out_d2_64;
  wire s_out_d2_71;
  wire s_out_d2_78;
  wire s_out_d2_85;
  wire s_out_d2_92;
  wire s_out_d2_99;
  wire s_out_d3_100;
  wire s_out_d3_107;
  wire s_out_d3_114;
  wire s_out_d3_121;
  wire s_out_d3_128;
  wire s_out_d3_135;
  wire s_out_d3_30;
  wire s_out_d3_37;
  wire s_out_d3_44;
  wire s_out_d3_51;
  wire s_out_d3_58;
  wire s_out_d3_65;
  wire s_out_d3_72;
  wire s_out_d3_79;
  wire s_out_d3_86;
  wire s_out_d3_93;
  wire s_out_d4_101;
  wire s_out_d4_108;
  wire s_out_d4_115;
  wire s_out_d4_122;
  wire s_out_d4_129;
  wire s_out_d4_136;
  wire s_out_d4_31;
  wire s_out_d4_38;
  wire s_out_d4_45;
  wire s_out_d4_52;
  wire s_out_d4_59;
  wire s_out_d4_66;
  wire s_out_d4_73;
  wire s_out_d4_80;
  wire s_out_d4_87;
  wire s_out_d4_94;
  wire s_out_d5_102;
  wire s_out_d5_109;
  wire s_out_d5_116;
  wire s_out_d5_123;
  wire s_out_d5_130;
  wire s_out_d5_137;
  wire s_out_d5_32;
  wire s_out_d5_39;
  wire s_out_d5_46;
  wire s_out_d5_53;
  wire s_out_d5_60;
  wire s_out_d5_67;
  wire s_out_d5_74;
  wire s_out_d5_81;
  wire s_out_d5_88;
  wire s_out_d5_95;
  wire s_out_d6_103;
  wire s_out_d6_110;
  wire s_out_d6_117;
  wire s_out_d6_124;
  wire s_out_d6_131;
  wire s_out_d6_138;
  wire s_out_d6_33;
  wire s_out_d6_40;
  wire s_out_d6_47;
  wire s_out_d6_54;
  wire s_out_d6_61;
  wire s_out_d6_68;
  wire s_out_d6_75;
  wire s_out_d6_82;
  wire s_out_d6_89;
  wire s_out_d6_96;
  wire s_out_d7_104;
  wire s_out_d7_111;
  wire s_out_d7_118;
  wire s_out_d7_125;
  wire s_out_d7_132;
  wire s_out_d7_139;
  wire s_out_d7_34;
  wire s_out_d7_41;
  wire s_out_d7_48;
  wire s_out_d7_55;
  wire s_out_d7_62;
  wire s_out_d7_69;
  wire s_out_d7_76;
  wire s_out_d7_83;
  wire s_out_d7_90;
  wire s_out_d7_97;
  wire sync_clk;
  wire tx_out_clk;
  wire tx_reset_i;
  wire txfsm_txresetdone_r;
  wire txn;
  wire txp;
  wire user_clk;
  wire [3:2]\NLW_rx_cdrlock_counter_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_rx_cdrlock_counter_reg[31]_i_3_O_UNCONNECTED ;

aurora_8b10b_0_aurora_8b10b_0_multi_gt aurora_8b10b_0_multi_gt_i
       (.D(D),
        .I1(n_137_gt_txresetfsm_i),
        .I10(I10),
        .I11(I11),
        .I2(I1),
        .I9(I9),
        .O1(n_5_aurora_8b10b_0_multi_gt_i),
        .O2(O2),
        .O3(n_7_aurora_8b10b_0_multi_gt_i),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .SR(gt_rx_reset_i),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .ack_flag(\gt0_aurora_8b10b_0_i/ack_flag ),
        .bucket_full_r(bucket_full_r),
        .comma_over_two_cycles_r(comma_over_two_cycles_r),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_qpllclk_quad6_in(gt_qpllclk_quad6_in),
        .gt_qpllrefclk_quad6_in(gt_qpllrefclk_quad6_in),
        .gt_refclk1(gt_refclk1),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_flop_r0(hard_err_flop_r0),
        .init_clk_in(init_clk_in),
        .loopback(loopback),
        .power_down(power_down),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxn(rxn),
        .rxp(rxp),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
(* srl_name = "\inst/gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 " *) 
   SRL16E gt0_rxresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(n_5_aurora_8b10b_0_multi_gt_i),
        .Q(n_0_gt0_rxresetdone_r3_reg_srl3));
(* srl_name = "\inst/gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
   SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(n_7_aurora_8b10b_0_multi_gt_i),
        .Q(n_0_gt0_txresetdone_r3_reg_srl3));
FDRE gt_rx_reset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_i),
        .Q(gt_rx_reset_i),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     gt_rxresetdone_r_i_1
       (.I0(rx_resetdone_out),
        .O(O3));
aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm gt_rxresetfsm_i
       (.AR(rxfsm_soft_reset_r),
        .I1(n_0_rx_cdrlocked_reg),
        .O100(O100),
        .O101(O101),
        .O102(O102),
        .O103(O103),
        .O104(O104),
        .O105(O105),
        .O106(O106),
        .O107(O107),
        .O108(O108),
        .O109(O109),
        .O110(O110),
        .O111(O111),
        .O112(O112),
        .O113(O113),
        .O114(O114),
        .O115(O115),
        .O116(O116),
        .O117(O117),
        .O118(O118),
        .O119(O119),
        .O120(O120),
        .O121(O121),
        .O122(O122),
        .O123(O123),
        .O124(O124),
        .O125(O125),
        .O2(O2),
        .O78(O78),
        .O79(O79),
        .O80(O80),
        .O81(O81),
        .O82(O82),
        .O83(O83),
        .O84(O84),
        .O85(O85),
        .O86(O86),
        .O87(O87),
        .O88(O88),
        .O89(O89),
        .O90(O90),
        .O91(O91),
        .O92(O92),
        .O93(O93),
        .O94(O94),
        .O95(O95),
        .O96(O96),
        .O97(O97),
        .O98(O98),
        .O99(O99),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .s_out_d1_cdc_to_105(s_out_d1_cdc_to_105),
        .s_out_d1_cdc_to_112(s_out_d1_cdc_to_112),
        .s_out_d1_cdc_to_119(s_out_d1_cdc_to_119),
        .s_out_d1_cdc_to_126(s_out_d1_cdc_to_126),
        .s_out_d1_cdc_to_133(s_out_d1_cdc_to_133),
        .s_out_d1_cdc_to_84(s_out_d1_cdc_to_84),
        .s_out_d1_cdc_to_91(s_out_d1_cdc_to_91),
        .s_out_d1_cdc_to_98(s_out_d1_cdc_to_98),
        .s_out_d2_106(s_out_d2_106),
        .s_out_d2_113(s_out_d2_113),
        .s_out_d2_120(s_out_d2_120),
        .s_out_d2_127(s_out_d2_127),
        .s_out_d2_134(s_out_d2_134),
        .s_out_d2_85(s_out_d2_85),
        .s_out_d2_92(s_out_d2_92),
        .s_out_d2_99(s_out_d2_99),
        .s_out_d3_100(s_out_d3_100),
        .s_out_d3_107(s_out_d3_107),
        .s_out_d3_114(s_out_d3_114),
        .s_out_d3_121(s_out_d3_121),
        .s_out_d3_128(s_out_d3_128),
        .s_out_d3_135(s_out_d3_135),
        .s_out_d3_86(s_out_d3_86),
        .s_out_d3_93(s_out_d3_93),
        .s_out_d4_101(s_out_d4_101),
        .s_out_d4_108(s_out_d4_108),
        .s_out_d4_115(s_out_d4_115),
        .s_out_d4_122(s_out_d4_122),
        .s_out_d4_129(s_out_d4_129),
        .s_out_d4_136(s_out_d4_136),
        .s_out_d4_87(s_out_d4_87),
        .s_out_d4_94(s_out_d4_94),
        .s_out_d5_102(s_out_d5_102),
        .s_out_d5_109(s_out_d5_109),
        .s_out_d5_116(s_out_d5_116),
        .s_out_d5_123(s_out_d5_123),
        .s_out_d5_130(s_out_d5_130),
        .s_out_d5_137(s_out_d5_137),
        .s_out_d5_88(s_out_d5_88),
        .s_out_d5_95(s_out_d5_95),
        .s_out_d6_103(s_out_d6_103),
        .s_out_d6_110(s_out_d6_110),
        .s_out_d6_117(s_out_d6_117),
        .s_out_d6_124(s_out_d6_124),
        .s_out_d6_131(s_out_d6_131),
        .s_out_d6_138(s_out_d6_138),
        .s_out_d6_89(s_out_d6_89),
        .s_out_d6_96(s_out_d6_96),
        .s_out_d7_104(s_out_d7_104),
        .s_out_d7_111(s_out_d7_111),
        .s_out_d7_118(s_out_d7_118),
        .s_out_d7_125(s_out_d7_125),
        .s_out_d7_132(s_out_d7_132),
        .s_out_d7_139(s_out_d7_139),
        .s_out_d7_90(s_out_d7_90),
        .s_out_d7_97(s_out_d7_97),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm gt_txresetfsm_i
       (.O1(O1),
        .O2(O2),
        .O3(n_137_gt_txresetfsm_i),
        .O36(O36),
        .O37(O37),
        .O38(O38),
        .O39(O39),
        .O40(O40),
        .O41(O41),
        .O42(O42),
        .O43(O43),
        .O44(O44),
        .O45(O45),
        .O46(O46),
        .O47(O47),
        .O48(O48),
        .O49(O49),
        .O50(O50),
        .O51(O51),
        .O52(O52),
        .O53(O53),
        .O54(O54),
        .O55(O55),
        .O56(O56),
        .O57(O57),
        .O58(O58),
        .O59(O59),
        .O60(O60),
        .O61(O61),
        .O62(O62),
        .O63(O63),
        .O64(O64),
        .O65(O65),
        .O66(O66),
        .O67(O67),
        .O68(O68),
        .O69(O69),
        .O70(O70),
        .O71(O71),
        .O72(O72),
        .O73(O73),
        .O74(O74),
        .O75(O75),
        .O76(O76),
        .O77(O77),
        .ack_flag(\gt0_aurora_8b10b_0_i/ack_flag ),
        .cpll_reset_i(cpll_reset_i),
        .gt_reset(gt_reset),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_35(s_out_d1_cdc_to_35),
        .s_out_d1_cdc_to_42(s_out_d1_cdc_to_42),
        .s_out_d1_cdc_to_49(s_out_d1_cdc_to_49),
        .s_out_d1_cdc_to_56(s_out_d1_cdc_to_56),
        .s_out_d1_cdc_to_63(s_out_d1_cdc_to_63),
        .s_out_d1_cdc_to_70(s_out_d1_cdc_to_70),
        .s_out_d1_cdc_to_77(s_out_d1_cdc_to_77),
        .s_out_d2_36(s_out_d2_36),
        .s_out_d2_43(s_out_d2_43),
        .s_out_d2_50(s_out_d2_50),
        .s_out_d2_57(s_out_d2_57),
        .s_out_d2_64(s_out_d2_64),
        .s_out_d2_71(s_out_d2_71),
        .s_out_d2_78(s_out_d2_78),
        .s_out_d3_37(s_out_d3_37),
        .s_out_d3_44(s_out_d3_44),
        .s_out_d3_51(s_out_d3_51),
        .s_out_d3_58(s_out_d3_58),
        .s_out_d3_65(s_out_d3_65),
        .s_out_d3_72(s_out_d3_72),
        .s_out_d3_79(s_out_d3_79),
        .s_out_d4_38(s_out_d4_38),
        .s_out_d4_45(s_out_d4_45),
        .s_out_d4_52(s_out_d4_52),
        .s_out_d4_59(s_out_d4_59),
        .s_out_d4_66(s_out_d4_66),
        .s_out_d4_73(s_out_d4_73),
        .s_out_d4_80(s_out_d4_80),
        .s_out_d5_39(s_out_d5_39),
        .s_out_d5_46(s_out_d5_46),
        .s_out_d5_53(s_out_d5_53),
        .s_out_d5_60(s_out_d5_60),
        .s_out_d5_67(s_out_d5_67),
        .s_out_d5_74(s_out_d5_74),
        .s_out_d5_81(s_out_d5_81),
        .s_out_d6_40(s_out_d6_40),
        .s_out_d6_47(s_out_d6_47),
        .s_out_d6_54(s_out_d6_54),
        .s_out_d6_61(s_out_d6_61),
        .s_out_d6_68(s_out_d6_68),
        .s_out_d6_75(s_out_d6_75),
        .s_out_d6_82(s_out_d6_82),
        .s_out_d7_41(s_out_d7_41),
        .s_out_d7_48(s_out_d7_48),
        .s_out_d7_55(s_out_d7_55),
        .s_out_d7_62(s_out_d7_62),
        .s_out_d7_69(s_out_d7_69),
        .s_out_d7_76(s_out_d7_76),
        .s_out_d7_83(s_out_d7_83),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0 gtrxreset_cdc_sync
       (.O1(n_0_gtrxreset_cdc_sync),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .gtrxreset_i_0(gtrxreset_i_0),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_28(s_out_d1_cdc_to_28),
        .s_out_d2_29(s_out_d2_29),
        .s_out_d3_30(s_out_d3_30),
        .s_out_d4_31(s_out_d4_31),
        .s_out_d5_32(s_out_d5_32),
        .s_out_d6_33(s_out_d6_33),
        .s_out_d7_34(s_out_d7_34));
LUT2 #(
    .INIT(4'h2)) 
     gtrxreset_pulse_i_1
       (.I0(gtrxreset_r2),
        .I1(gtrxreset_r3),
        .O(n_0_gtrxreset_pulse_i_1));
FDRE gtrxreset_pulse_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_gtrxreset_pulse_i_1),
        .Q(gtrxreset_pulse),
        .R(1'b0));
FDRE gtrxreset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_gtrxreset_cdc_sync),
        .Q(gtrxreset_r2),
        .R(1'b0));
FDRE gtrxreset_r3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r2),
        .Q(gtrxreset_r3),
        .R(1'b0));
FDRE link_reset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_comb_r),
        .Q(link_reset_r2),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[0]_i_1 
       (.I0(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .O(rx_cdrlock_counter_0[0]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[10]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[12]_i_2 ),
        .O(rx_cdrlock_counter_0[10]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[11]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[12]_i_2 ),
        .O(rx_cdrlock_counter_0[11]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[12]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[12]_i_2 ),
        .O(rx_cdrlock_counter_0[12]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[12]_i_3 
       (.I0(rx_cdrlock_counter[12]),
        .O(\n_0_rx_cdrlock_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[12]_i_4 
       (.I0(rx_cdrlock_counter[11]),
        .O(\n_0_rx_cdrlock_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[12]_i_5 
       (.I0(rx_cdrlock_counter[10]),
        .O(\n_0_rx_cdrlock_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[12]_i_6 
       (.I0(rx_cdrlock_counter[9]),
        .O(\n_0_rx_cdrlock_counter[12]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[13]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[16]_i_2 ),
        .O(rx_cdrlock_counter_0[13]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[14]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[16]_i_2 ),
        .O(rx_cdrlock_counter_0[14]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[15]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[16]_i_2 ),
        .O(rx_cdrlock_counter_0[15]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[16]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[16]_i_2 ),
        .O(rx_cdrlock_counter_0[16]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[16]_i_3 
       (.I0(rx_cdrlock_counter[16]),
        .O(\n_0_rx_cdrlock_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[16]_i_4 
       (.I0(rx_cdrlock_counter[15]),
        .O(\n_0_rx_cdrlock_counter[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[16]_i_5 
       (.I0(rx_cdrlock_counter[14]),
        .O(\n_0_rx_cdrlock_counter[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[16]_i_6 
       (.I0(rx_cdrlock_counter[13]),
        .O(\n_0_rx_cdrlock_counter[16]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[17]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[20]_i_2 ),
        .O(rx_cdrlock_counter_0[17]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[18]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[20]_i_2 ),
        .O(rx_cdrlock_counter_0[18]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[19]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[20]_i_2 ),
        .O(rx_cdrlock_counter_0[19]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[1]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[4]_i_2 ),
        .O(rx_cdrlock_counter_0[1]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[20]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[20]_i_2 ),
        .O(rx_cdrlock_counter_0[20]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[20]_i_3 
       (.I0(rx_cdrlock_counter[20]),
        .O(\n_0_rx_cdrlock_counter[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[20]_i_4 
       (.I0(rx_cdrlock_counter[19]),
        .O(\n_0_rx_cdrlock_counter[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[20]_i_5 
       (.I0(rx_cdrlock_counter[18]),
        .O(\n_0_rx_cdrlock_counter[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[20]_i_6 
       (.I0(rx_cdrlock_counter[17]),
        .O(\n_0_rx_cdrlock_counter[20]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[21]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[24]_i_2 ),
        .O(rx_cdrlock_counter_0[21]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[22]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[24]_i_2 ),
        .O(rx_cdrlock_counter_0[22]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[23]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[24]_i_2 ),
        .O(rx_cdrlock_counter_0[23]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[24]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[24]_i_2 ),
        .O(rx_cdrlock_counter_0[24]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[24]_i_3 
       (.I0(rx_cdrlock_counter[24]),
        .O(\n_0_rx_cdrlock_counter[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[24]_i_4 
       (.I0(rx_cdrlock_counter[23]),
        .O(\n_0_rx_cdrlock_counter[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[24]_i_5 
       (.I0(rx_cdrlock_counter[22]),
        .O(\n_0_rx_cdrlock_counter[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[24]_i_6 
       (.I0(rx_cdrlock_counter[21]),
        .O(\n_0_rx_cdrlock_counter[24]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[25]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[28]_i_2 ),
        .O(rx_cdrlock_counter_0[25]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[26]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[28]_i_2 ),
        .O(rx_cdrlock_counter_0[26]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[27]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[28]_i_2 ),
        .O(rx_cdrlock_counter_0[27]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[28]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[28]_i_2 ),
        .O(rx_cdrlock_counter_0[28]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[28]_i_3 
       (.I0(rx_cdrlock_counter[28]),
        .O(\n_0_rx_cdrlock_counter[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[28]_i_4 
       (.I0(rx_cdrlock_counter[27]),
        .O(\n_0_rx_cdrlock_counter[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[28]_i_5 
       (.I0(rx_cdrlock_counter[26]),
        .O(\n_0_rx_cdrlock_counter[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[28]_i_6 
       (.I0(rx_cdrlock_counter[25]),
        .O(\n_0_rx_cdrlock_counter[28]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[29]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[31]_i_3 ),
        .O(rx_cdrlock_counter_0[29]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[2]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[4]_i_2 ),
        .O(rx_cdrlock_counter_0[2]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[30]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[31]_i_3 ),
        .O(rx_cdrlock_counter_0[30]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[31]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[31]_i_3 ),
        .O(rx_cdrlock_counter_0[31]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[31]_i_10 
       (.I0(rx_cdrlock_counter[30]),
        .O(\n_0_rx_cdrlock_counter[31]_i_10 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[31]_i_11 
       (.I0(rx_cdrlock_counter[29]),
        .O(\n_0_rx_cdrlock_counter[31]_i_11 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rx_cdrlock_counter[31]_i_2 
       (.I0(\n_0_rx_cdrlock_counter[31]_i_4 ),
        .I1(\n_0_rx_cdrlock_counter[31]_i_5 ),
        .I2(\n_0_rx_cdrlock_counter[31]_i_6 ),
        .I3(rx_cdrlock_counter[29]),
        .I4(\n_0_rx_cdrlock_counter[31]_i_7 ),
        .I5(\n_0_rx_cdrlock_counter[31]_i_8 ),
        .O(\n_0_rx_cdrlock_counter[31]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rx_cdrlock_counter[31]_i_4 
       (.I0(rx_cdrlock_counter[31]),
        .I1(rx_cdrlock_counter[30]),
        .I2(rx_cdrlock_counter[27]),
        .I3(rx_cdrlock_counter[28]),
        .I4(rx_cdrlock_counter[25]),
        .I5(rx_cdrlock_counter[26]),
        .O(\n_0_rx_cdrlock_counter[31]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
     \rx_cdrlock_counter[31]_i_5 
       (.I0(rx_cdrlock_counter[8]),
        .I1(rx_cdrlock_counter[7]),
        .I2(rx_cdrlock_counter[4]),
        .I3(rx_cdrlock_counter[3]),
        .I4(rx_cdrlock_counter[1]),
        .I5(rx_cdrlock_counter[2]),
        .O(\n_0_rx_cdrlock_counter[31]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
     \rx_cdrlock_counter[31]_i_6 
       (.I0(rx_cdrlock_counter[9]),
        .I1(rx_cdrlock_counter[10]),
        .I2(rx_cdrlock_counter[5]),
        .I3(rx_cdrlock_counter[6]),
        .I4(rx_cdrlock_counter[11]),
        .I5(rx_cdrlock_counter[12]),
        .O(\n_0_rx_cdrlock_counter[31]_i_6 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rx_cdrlock_counter[31]_i_7 
       (.I0(rx_cdrlock_counter[20]),
        .I1(rx_cdrlock_counter[19]),
        .I2(rx_cdrlock_counter[15]),
        .I3(rx_cdrlock_counter[16]),
        .I4(rx_cdrlock_counter[13]),
        .I5(rx_cdrlock_counter[14]),
        .O(\n_0_rx_cdrlock_counter[31]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rx_cdrlock_counter[31]_i_8 
       (.I0(rx_cdrlock_counter[22]),
        .I1(rx_cdrlock_counter[21]),
        .I2(rx_cdrlock_counter[17]),
        .I3(rx_cdrlock_counter[18]),
        .I4(rx_cdrlock_counter[23]),
        .I5(rx_cdrlock_counter[24]),
        .O(\n_0_rx_cdrlock_counter[31]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[31]_i_9 
       (.I0(rx_cdrlock_counter[31]),
        .O(\n_0_rx_cdrlock_counter[31]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[3]_i_1 
       (.I0(\n_5_rx_cdrlock_counter_reg[4]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[3]));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[4]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[4]_i_2 ),
        .O(rx_cdrlock_counter_0[4]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_3 
       (.I0(rx_cdrlock_counter[4]),
        .O(\n_0_rx_cdrlock_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_4 
       (.I0(rx_cdrlock_counter[3]),
        .O(\n_0_rx_cdrlock_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_5 
       (.I0(rx_cdrlock_counter[2]),
        .O(\n_0_rx_cdrlock_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_6 
       (.I0(rx_cdrlock_counter[1]),
        .O(\n_0_rx_cdrlock_counter[4]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[5]_i_1 
       (.I0(\n_7_rx_cdrlock_counter_reg[8]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[5]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[6]_i_1 
       (.I0(\n_6_rx_cdrlock_counter_reg[8]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[6]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[7]_i_1 
       (.I0(\n_5_rx_cdrlock_counter_reg[8]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[7]));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[8]_i_1 
       (.I0(\n_4_rx_cdrlock_counter_reg[8]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[8]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_3 
       (.I0(rx_cdrlock_counter[8]),
        .O(\n_0_rx_cdrlock_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_4 
       (.I0(rx_cdrlock_counter[7]),
        .O(\n_0_rx_cdrlock_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_5 
       (.I0(rx_cdrlock_counter[6]),
        .O(\n_0_rx_cdrlock_counter[8]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_6 
       (.I0(rx_cdrlock_counter[5]),
        .O(\n_0_rx_cdrlock_counter[8]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[9]_i_1 
       (.I0(\n_7_rx_cdrlock_counter_reg[12]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[9]));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[0]),
        .Q(rx_cdrlock_counter[0]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[10]),
        .Q(rx_cdrlock_counter[10]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[11]),
        .Q(rx_cdrlock_counter[11]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[12]),
        .Q(rx_cdrlock_counter[12]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[8]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[12]_i_2 ,\n_1_rx_cdrlock_counter_reg[12]_i_2 ,\n_2_rx_cdrlock_counter_reg[12]_i_2 ,\n_3_rx_cdrlock_counter_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[12]_i_2 ,\n_5_rx_cdrlock_counter_reg[12]_i_2 ,\n_6_rx_cdrlock_counter_reg[12]_i_2 ,\n_7_rx_cdrlock_counter_reg[12]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[12]_i_3 ,\n_0_rx_cdrlock_counter[12]_i_4 ,\n_0_rx_cdrlock_counter[12]_i_5 ,\n_0_rx_cdrlock_counter[12]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[13]),
        .Q(rx_cdrlock_counter[13]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[14]),
        .Q(rx_cdrlock_counter[14]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[15]),
        .Q(rx_cdrlock_counter[15]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[16]),
        .Q(rx_cdrlock_counter[16]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[12]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[16]_i_2 ,\n_1_rx_cdrlock_counter_reg[16]_i_2 ,\n_2_rx_cdrlock_counter_reg[16]_i_2 ,\n_3_rx_cdrlock_counter_reg[16]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[16]_i_2 ,\n_5_rx_cdrlock_counter_reg[16]_i_2 ,\n_6_rx_cdrlock_counter_reg[16]_i_2 ,\n_7_rx_cdrlock_counter_reg[16]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[16]_i_3 ,\n_0_rx_cdrlock_counter[16]_i_4 ,\n_0_rx_cdrlock_counter[16]_i_5 ,\n_0_rx_cdrlock_counter[16]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[17]),
        .Q(rx_cdrlock_counter[17]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[18]),
        .Q(rx_cdrlock_counter[18]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[19]),
        .Q(rx_cdrlock_counter[19]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[1]),
        .Q(rx_cdrlock_counter[1]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[20]),
        .Q(rx_cdrlock_counter[20]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[16]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[20]_i_2 ,\n_1_rx_cdrlock_counter_reg[20]_i_2 ,\n_2_rx_cdrlock_counter_reg[20]_i_2 ,\n_3_rx_cdrlock_counter_reg[20]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[20]_i_2 ,\n_5_rx_cdrlock_counter_reg[20]_i_2 ,\n_6_rx_cdrlock_counter_reg[20]_i_2 ,\n_7_rx_cdrlock_counter_reg[20]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[20]_i_3 ,\n_0_rx_cdrlock_counter[20]_i_4 ,\n_0_rx_cdrlock_counter[20]_i_5 ,\n_0_rx_cdrlock_counter[20]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[21]),
        .Q(rx_cdrlock_counter[21]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[22] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[22]),
        .Q(rx_cdrlock_counter[22]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[23] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[23]),
        .Q(rx_cdrlock_counter[23]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[24] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[24]),
        .Q(rx_cdrlock_counter[24]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[20]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[24]_i_2 ,\n_1_rx_cdrlock_counter_reg[24]_i_2 ,\n_2_rx_cdrlock_counter_reg[24]_i_2 ,\n_3_rx_cdrlock_counter_reg[24]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[24]_i_2 ,\n_5_rx_cdrlock_counter_reg[24]_i_2 ,\n_6_rx_cdrlock_counter_reg[24]_i_2 ,\n_7_rx_cdrlock_counter_reg[24]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[24]_i_3 ,\n_0_rx_cdrlock_counter[24]_i_4 ,\n_0_rx_cdrlock_counter[24]_i_5 ,\n_0_rx_cdrlock_counter[24]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[25] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[25]),
        .Q(rx_cdrlock_counter[25]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[26] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[26]),
        .Q(rx_cdrlock_counter[26]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[27] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[27]),
        .Q(rx_cdrlock_counter[27]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[28] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[28]),
        .Q(rx_cdrlock_counter[28]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[24]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[28]_i_2 ,\n_1_rx_cdrlock_counter_reg[28]_i_2 ,\n_2_rx_cdrlock_counter_reg[28]_i_2 ,\n_3_rx_cdrlock_counter_reg[28]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[28]_i_2 ,\n_5_rx_cdrlock_counter_reg[28]_i_2 ,\n_6_rx_cdrlock_counter_reg[28]_i_2 ,\n_7_rx_cdrlock_counter_reg[28]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[28]_i_3 ,\n_0_rx_cdrlock_counter[28]_i_4 ,\n_0_rx_cdrlock_counter[28]_i_5 ,\n_0_rx_cdrlock_counter[28]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[29] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[29]),
        .Q(rx_cdrlock_counter[29]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[2]),
        .Q(rx_cdrlock_counter[2]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[30] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[30]),
        .Q(rx_cdrlock_counter[30]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[31] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[31]),
        .Q(rx_cdrlock_counter[31]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[31]_i_3 
       (.CI(\n_0_rx_cdrlock_counter_reg[28]_i_2 ),
        .CO({\NLW_rx_cdrlock_counter_reg[31]_i_3_CO_UNCONNECTED [3:2],\n_2_rx_cdrlock_counter_reg[31]_i_3 ,\n_3_rx_cdrlock_counter_reg[31]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rx_cdrlock_counter_reg[31]_i_3_O_UNCONNECTED [3],\n_5_rx_cdrlock_counter_reg[31]_i_3 ,\n_6_rx_cdrlock_counter_reg[31]_i_3 ,\n_7_rx_cdrlock_counter_reg[31]_i_3 }),
        .S({1'b0,\n_0_rx_cdrlock_counter[31]_i_9 ,\n_0_rx_cdrlock_counter[31]_i_10 ,\n_0_rx_cdrlock_counter[31]_i_11 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[3]),
        .Q(rx_cdrlock_counter[3]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[4]),
        .Q(rx_cdrlock_counter[4]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\n_0_rx_cdrlock_counter_reg[4]_i_2 ,\n_1_rx_cdrlock_counter_reg[4]_i_2 ,\n_2_rx_cdrlock_counter_reg[4]_i_2 ,\n_3_rx_cdrlock_counter_reg[4]_i_2 }),
        .CYINIT(rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[4]_i_2 ,\n_5_rx_cdrlock_counter_reg[4]_i_2 ,\n_6_rx_cdrlock_counter_reg[4]_i_2 ,\n_7_rx_cdrlock_counter_reg[4]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[4]_i_3 ,\n_0_rx_cdrlock_counter[4]_i_4 ,\n_0_rx_cdrlock_counter[4]_i_5 ,\n_0_rx_cdrlock_counter[4]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[5]),
        .Q(rx_cdrlock_counter[5]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[6]),
        .Q(rx_cdrlock_counter[6]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[7]),
        .Q(rx_cdrlock_counter[7]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[8]),
        .Q(rx_cdrlock_counter[8]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[4]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[8]_i_2 ,\n_1_rx_cdrlock_counter_reg[8]_i_2 ,\n_2_rx_cdrlock_counter_reg[8]_i_2 ,\n_3_rx_cdrlock_counter_reg[8]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[8]_i_2 ,\n_5_rx_cdrlock_counter_reg[8]_i_2 ,\n_6_rx_cdrlock_counter_reg[8]_i_2 ,\n_7_rx_cdrlock_counter_reg[8]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[8]_i_3 ,\n_0_rx_cdrlock_counter[8]_i_4 ,\n_0_rx_cdrlock_counter[8]_i_5 ,\n_0_rx_cdrlock_counter[8]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[9]),
        .Q(rx_cdrlock_counter[9]),
        .R(gt_rx_reset_i));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     rx_cdrlocked_i_1
       (.I0(n_0_rx_cdrlocked_reg),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(n_0_rx_cdrlocked_i_1));
FDRE rx_cdrlocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_rx_cdrlocked_i_1),
        .Q(n_0_rx_cdrlocked_reg),
        .R(gt_rx_reset_i));
FDRE rxfsm_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(rxfsm_rxresetdone_r2),
        .R(1'b0));
FDRE rxfsm_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r2),
        .Q(rx_resetdone_out),
        .R(1'b0));
FDRE rxfsm_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_gt0_rxresetdone_r3_reg_srl3),
        .Q(rxfsm_rxresetdone_r),
        .R(1'b0));
LUT3 #(
    .INIT(8'hFE)) 
     rxfsm_soft_reset_r_i_1
       (.I0(gt_reset),
        .I1(gtrxreset_pulse),
        .I2(link_reset_r2),
        .O(n_0_rxfsm_soft_reset_r_i_1));
FDRE rxfsm_soft_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_rxfsm_soft_reset_r_i_1),
        .Q(rxfsm_soft_reset_r),
        .R(1'b0));
FDRE txfsm_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_gt0_txresetdone_r3_reg_srl3),
        .Q(txfsm_txresetdone_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_IDLE_AND_VER_GEN" *) 
module aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN
   (I6,
    gen_a_i,
    I8,
    I7,
    txver_count_r0,
    I1,
    user_clk,
    gen_ver_i);
  output [1:0]I6;
  output gen_a_i;
  output [1:0]I8;
  output [1:0]I7;
  output txver_count_r0;
  input [0:0]I1;
  input user_clk;
  input gen_ver_i;

  wire D0;
  wire D00_out;
  wire [0:0]I1;
  wire [1:0]I6;
  wire [1:0]I7;
  wire [1:0]I8;
  wire did_ver_i;
  wire gen_a_flop_c;
  wire gen_a_i;
  wire [1:1]gen_r_r;
  wire gen_ver_i;
  wire gen_ver_word_1_r;
  wire insert_ver_c;
  wire lfsr_last_flop_r;
  wire [3:3]lfsr_shift_register_r;
  wire lfsr_taps_r;
  wire \n_0_downcounter_r[0]_i_1 ;
  wire \n_0_downcounter_r[1]_i_1 ;
  wire \n_0_downcounter_r[2]_i_1 ;
  wire \n_0_downcounter_r[3]_i_1 ;
  wire \n_0_downcounter_r_reg[0] ;
  wire \n_0_downcounter_r_reg[1] ;
  wire \n_0_downcounter_r_reg[2] ;
  wire \n_0_downcounter_r_reg[3] ;
  wire n_0_gen_v_flop_1_i_i_1;
  wire \n_0_lfsr_shift_register_r_reg[2]_srl3 ;
  wire n_0_lfsr_taps_i_i_1;
  wire n_0_ver_counter_0_i;
  wire prev_cycle_gen_ver_r;
  wire recycle_gen_ver_c;
  wire txver_count_r0;
  wire user_clk;

LUT5 #(
    .INIT(32'h55540001)) 
     \downcounter_r[0]_i_1 
       (.I0(I1),
        .I1(\n_0_downcounter_r_reg[1] ),
        .I2(\n_0_downcounter_r_reg[3] ),
        .I3(\n_0_downcounter_r_reg[2] ),
        .I4(\n_0_downcounter_r_reg[0] ),
        .O(\n_0_downcounter_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT6 #(
    .INIT(64'h5401540154015400)) 
     \downcounter_r[1]_i_1 
       (.I0(I1),
        .I1(\n_0_downcounter_r_reg[2] ),
        .I2(\n_0_downcounter_r_reg[3] ),
        .I3(\n_0_downcounter_r_reg[1] ),
        .I4(\n_0_downcounter_r_reg[0] ),
        .I5(lfsr_taps_r),
        .O(\n_0_downcounter_r[1]_i_1 ));
LUT6 #(
    .INIT(64'h00000000FF0000FE)) 
     \downcounter_r[2]_i_1 
       (.I0(\n_0_downcounter_r_reg[0] ),
        .I1(\n_0_downcounter_r_reg[1] ),
        .I2(lfsr_shift_register_r),
        .I3(\n_0_downcounter_r_reg[2] ),
        .I4(\n_0_downcounter_r_reg[3] ),
        .I5(I1),
        .O(\n_0_downcounter_r[2]_i_1 ));
LUT6 #(
    .INIT(64'h000000000000FFFE)) 
     \downcounter_r[3]_i_1 
       (.I0(\n_0_downcounter_r_reg[0] ),
        .I1(\n_0_downcounter_r_reg[2] ),
        .I2(\n_0_downcounter_r_reg[1] ),
        .I3(lfsr_last_flop_r),
        .I4(\n_0_downcounter_r_reg[3] ),
        .I5(I1),
        .O(\n_0_downcounter_r[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \downcounter_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_downcounter_r[0]_i_1 ),
        .Q(\n_0_downcounter_r_reg[0] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \downcounter_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_downcounter_r[1]_i_1 ),
        .Q(\n_0_downcounter_r_reg[1] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \downcounter_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_downcounter_r[2]_i_1 ),
        .Q(\n_0_downcounter_r_reg[2] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b1)) 
     \downcounter_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_downcounter_r[3]_i_1 ),
        .Q(\n_0_downcounter_r_reg[3] ),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_a_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_flop_c),
        .Q(gen_a_i),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     gen_a_flop_0_i_i_1
       (.I0(gen_ver_word_1_r),
        .I1(\n_0_downcounter_r_reg[1] ),
        .I2(\n_0_downcounter_r_reg[3] ),
        .I3(\n_0_downcounter_r_reg[2] ),
        .I4(\n_0_downcounter_r_reg[0] ),
        .O(gen_a_flop_c));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0),
        .Q(I8[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
     gen_k_flop_0_i_i_1
       (.I0(gen_ver_word_1_r),
        .I1(lfsr_taps_r),
        .I2(\n_0_downcounter_r_reg[0] ),
        .I3(\n_0_downcounter_r_reg[2] ),
        .I4(\n_0_downcounter_r_reg[3] ),
        .I5(\n_0_downcounter_r_reg[1] ),
        .O(D0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(lfsr_shift_register_r),
        .Q(I8[0]),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D00_out),
        .Q(I7[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT6 #(
    .INIT(64'h0000000055555554)) 
     gen_r_flop_0_i_i_1
       (.I0(lfsr_taps_r),
        .I1(\n_0_downcounter_r_reg[0] ),
        .I2(\n_0_downcounter_r_reg[2] ),
        .I3(\n_0_downcounter_r_reg[3] ),
        .I4(\n_0_downcounter_r_reg[1] ),
        .I5(gen_ver_word_1_r),
        .O(D00_out));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_r_r),
        .Q(I7[0]),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     gen_r_flop_1_i_i_1
       (.I0(lfsr_shift_register_r),
        .O(gen_r_r));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_v_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(I6[1]),
        .R(1'b0));
LUT2 #(
    .INIT(4'h8)) 
     gen_v_flop_0_i_i_1
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(recycle_gen_ver_c));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_v_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_gen_v_flop_1_i_i_1),
        .Q(I6[0]),
        .R(1'b0));
LUT3 #(
    .INIT(8'hA8)) 
     gen_v_flop_1_i_i_1
       (.I0(gen_ver_i),
        .I1(gen_ver_word_1_r),
        .I2(did_ver_i),
        .O(n_0_gen_v_flop_1_i_i_1));
FDRE gen_ver_word_2_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ver_word_1_r),
        .Q(did_ver_i),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     lfsr_last_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(lfsr_shift_register_r),
        .Q(lfsr_last_flop_r),
        .R(I1));
(* srl_bus_name = "\inst/global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg " *) 
   (* srl_name = "\inst/global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg[2]_srl3 " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     \lfsr_shift_register_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(lfsr_taps_r),
        .Q(\n_0_lfsr_shift_register_r_reg[2]_srl3 ));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_shift_register_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_lfsr_shift_register_r_reg[2]_srl3 ),
        .Q(lfsr_shift_register_r),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     lfsr_taps_i
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_lfsr_taps_i_i_1),
        .Q(lfsr_taps_r),
        .R(I1));
LUT2 #(
    .INIT(4'h9)) 
     lfsr_taps_i_i_1
       (.I0(lfsr_last_flop_r),
        .I1(lfsr_shift_register_r),
        .O(n_0_lfsr_taps_i_i_1));
FDRE prev_cycle_gen_ver_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \txver_count_r_reg[6]_srl7_i_1 
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(txver_count_r0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* srl_name = "\inst/global_logic_i/idle_and_ver_gen_i/ver_counter_0_i " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     ver_counter_0_i
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(insert_ver_c),
        .Q(n_0_ver_counter_0_i));
LUT3 #(
    .INIT(8'h8A)) 
     ver_counter_0_i_i_1
       (.I0(gen_ver_i),
        .I1(did_ver_i),
        .I2(prev_cycle_gen_ver_r),
        .O(insert_ver_c));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* srl_name = "\inst/global_logic_i/idle_and_ver_gen_i/ver_counter_1_i " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     ver_counter_1_i
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(n_0_ver_counter_0_i),
        .Q(gen_ver_word_1_r));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LANE_INIT_SM" *) 
module aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM
   (lane_up,
    ready_r,
    O1,
    ack_r,
    polarity_r,
    comma_over_two_cycles_r,
    O2,
    O3,
    rx_polarity_i,
    O4,
    O5,
    gen_spa_data_i,
    gen_k_i,
    SR,
    user_clk,
    ready_r0,
    counter4_r0,
    counter3_r0,
    I1,
    D,
    I3,
    first_v_received_r,
    I2,
    RX_NEG,
    I5,
    rx_realign_i,
    I4);
  output lane_up;
  output ready_r;
  output O1;
  output ack_r;
  output polarity_r;
  output comma_over_two_cycles_r;
  output O2;
  output [0:0]O3;
  output rx_polarity_i;
  output O4;
  output [1:0]O5;
  output [0:0]gen_spa_data_i;
  output gen_k_i;
  input [0:0]SR;
  input user_clk;
  input ready_r0;
  input counter4_r0;
  input counter3_r0;
  input I1;
  input [1:0]D;
  input I3;
  input first_v_received_r;
  input I2;
  input RX_NEG;
  input I5;
  input rx_realign_i;
  input I4;

  wire [1:0]D;
  wire ENABLE_ERR_DETECT0;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire O4;
  wire [1:0]O5;
  wire [1:0]RX_CHAR_IS_COMMA_R;
  wire RX_NEG;
  wire [0:0]SR;
  wire ack_r;
  wire begin_r;
  wire comma_over_two_cycles_r;
  wire comma_over_two_cycles_r0;
  wire count_128d_done_r;
  wire count_32d_done_r;
  wire count_8d_done_r;
  wire counter1_r0;
  wire counter3_r0;
  wire counter4_r0;
  wire counter5_r0;
  wire do_watchdog_count_r;
  wire do_watchdog_count_r0;
  wire first_v_received_r;
  wire gen_k_i;
  wire [0:0]gen_spa_data_i;
  wire inc_count_c;
  wire inc_count_c1;
  wire lane_up;
  wire n_0_begin_r_i_2;
  wire \n_0_counter1_r[0]_i_4 ;
  wire \n_0_counter1_r[2]_i_1 ;
  wire \n_0_counter1_r_reg[1] ;
  wire \n_0_counter1_r_reg[3] ;
  wire \n_0_counter1_r_reg[5] ;
  wire \n_0_counter1_r_reg[6] ;
  wire \n_0_counter1_r_reg[7] ;
  wire \n_0_counter2_r_reg[14]_srl14 ;
  wire \n_0_counter2_r_reg[15] ;
  wire \n_0_counter3_r_reg[2]_srl3 ;
  wire \n_0_counter3_r_reg[3] ;
  wire \n_0_counter4_r_reg[14]_srl15 ;
  wire \n_0_counter4_r_reg[15] ;
  wire \n_0_counter5_r_reg[14]_srl15 ;
  wire \n_0_counter5_r_reg[15] ;
  wire n_0_rx_polarity_r_i_1;
  wire next_ack_c;
  wire next_ack_c16_in;
  wire next_align_c;
  wire next_begin_c;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_realign_c;
  wire next_rst_c;
  wire odd_word_r;
  wire [7:0]p_0_in__3;
  wire polarity_r;
  wire prev_char_was_comma_r;
  wire prev_count_128d_done_r;
  wire ready_r;
  wire ready_r0;
  wire realign_r;
  wire reset_count_r;
  wire reset_count_r0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire user_clk;

LUT2 #(
    .INIT(4'h1)) 
     ENABLE_ERR_DETECT_inv_i_1
       (.I0(ack_r),
        .I1(ready_r),
        .O(ENABLE_ERR_DETECT0));
FDRE #(
    .INIT(1'b1)) 
     ENABLE_ERR_DETECT_reg_inv
       (.C(user_clk),
        .CE(1'b1),
        .D(ENABLE_ERR_DETECT0),
        .Q(O3),
        .R(1'b0));
FDRE \RX_CHAR_IS_COMMA_R_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(RX_CHAR_IS_COMMA_R[0]),
        .R(1'b0));
FDRE \RX_CHAR_IS_COMMA_R_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(RX_CHAR_IS_COMMA_R[1]),
        .R(1'b0));
LUT6 #(
    .INIT(64'h044404440444FFFF)) 
     ack_r_i_1
       (.I0(\n_0_counter5_r_reg[15] ),
        .I1(ack_r),
        .I2(\n_0_counter3_r_reg[3] ),
        .I3(\n_0_counter2_r_reg[15] ),
        .I4(I4),
        .I5(odd_word_r),
        .O(next_ack_c));
FDRE ack_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ack_c),
        .Q(ack_r),
        .R(ready_r0));
LUT4 #(
    .INIT(16'hF444)) 
     align_r_i_2
       (.I0(count_128d_done_r),
        .I1(O1),
        .I2(O2),
        .I3(count_8d_done_r),
        .O(next_align_c));
FDRE align_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_align_c),
        .Q(O1),
        .R(ready_r0));
LUT5 #(
    .INIT(32'hFFFFF888)) 
     begin_r_i_1
       (.I0(ack_r),
        .I1(\n_0_counter5_r_reg[15] ),
        .I2(realign_r),
        .I3(rx_realign_i),
        .I4(n_0_begin_r_i_2),
        .O(next_begin_c));
LUT4 #(
    .INIT(16'hF888)) 
     begin_r_i_2
       (.I0(RX_NEG),
        .I1(polarity_r),
        .I2(\n_0_counter4_r_reg[15] ),
        .I3(ready_r),
        .O(n_0_begin_r_i_2));
FDSE begin_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(ready_r0));
LUT4 #(
    .INIT(16'h57FD)) 
     comma_over_two_cycles_r_i_1
       (.I0(O1),
        .I1(RX_CHAR_IS_COMMA_R[1]),
        .I2(RX_CHAR_IS_COMMA_R[0]),
        .I3(prev_char_was_comma_r),
        .O(comma_over_two_cycles_r0));
FDRE comma_over_two_cycles_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(comma_over_two_cycles_r0),
        .Q(comma_over_two_cycles_r),
        .R(1'b0));
LUT2 #(
    .INIT(4'hE)) 
     \counter1_r[0]_i_1 
       (.I0(ready_r),
        .I1(reset_count_r),
        .O(counter1_r0));
LUT3 #(
    .INIT(8'hFD)) 
     \counter1_r[0]_i_2 
       (.I0(O1),
        .I1(RX_CHAR_IS_COMMA_R[0]),
        .I2(RX_CHAR_IS_COMMA_R[1]),
        .O(inc_count_c));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \counter1_r[0]_i_3 
       (.I0(count_128d_done_r),
        .I1(count_32d_done_r),
        .I2(count_8d_done_r),
        .I3(\n_0_counter1_r[0]_i_4 ),
        .I4(\n_0_counter1_r_reg[3] ),
        .I5(\n_0_counter1_r_reg[1] ),
        .O(p_0_in__3[7]));
LUT3 #(
    .INIT(8'h80)) 
     \counter1_r[0]_i_4 
       (.I0(\n_0_counter1_r_reg[5] ),
        .I1(\n_0_counter1_r_reg[6] ),
        .I2(\n_0_counter1_r_reg[7] ),
        .O(\n_0_counter1_r[0]_i_4 ));
LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \counter1_r[1]_i_1 
       (.I0(\n_0_counter1_r_reg[1] ),
        .I1(\n_0_counter1_r_reg[3] ),
        .I2(\n_0_counter1_r[0]_i_4 ),
        .I3(count_8d_done_r),
        .I4(count_32d_done_r),
        .O(p_0_in__3[6]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \counter1_r[2]_i_1 
       (.I0(count_32d_done_r),
        .I1(count_8d_done_r),
        .I2(\n_0_counter1_r_reg[7] ),
        .I3(\n_0_counter1_r_reg[6] ),
        .I4(\n_0_counter1_r_reg[5] ),
        .I5(\n_0_counter1_r_reg[3] ),
        .O(\n_0_counter1_r[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \counter1_r[3]_i_1 
       (.I0(\n_0_counter1_r_reg[3] ),
        .I1(\n_0_counter1_r_reg[5] ),
        .I2(\n_0_counter1_r_reg[6] ),
        .I3(\n_0_counter1_r_reg[7] ),
        .I4(count_8d_done_r),
        .O(p_0_in__3[4]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \counter1_r[4]_i_1 
       (.I0(count_8d_done_r),
        .I1(\n_0_counter1_r_reg[7] ),
        .I2(\n_0_counter1_r_reg[6] ),
        .I3(\n_0_counter1_r_reg[5] ),
        .O(p_0_in__3[3]));
LUT3 #(
    .INIT(8'h78)) 
     \counter1_r[5]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .I1(\n_0_counter1_r_reg[6] ),
        .I2(\n_0_counter1_r_reg[5] ),
        .O(p_0_in__3[2]));
LUT2 #(
    .INIT(4'h6)) 
     \counter1_r[6]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .I1(\n_0_counter1_r_reg[6] ),
        .O(p_0_in__3[1]));
LUT1 #(
    .INIT(2'h1)) 
     \counter1_r[7]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .O(p_0_in__3[0]));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[0] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in__3[7]),
        .Q(count_128d_done_r),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in__3[6]),
        .Q(\n_0_counter1_r_reg[1] ),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(\n_0_counter1_r[2]_i_1 ),
        .Q(count_32d_done_r),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in__3[4]),
        .Q(\n_0_counter1_r_reg[3] ),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[4] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in__3[3]),
        .Q(count_8d_done_r),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[5] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in__3[2]),
        .Q(\n_0_counter1_r_reg[5] ),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[6] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in__3[1]),
        .Q(\n_0_counter1_r_reg[6] ),
        .R(counter1_r0));
FDSE #(
    .INIT(1'b1)) 
     \counter1_r_reg[7] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in__3[0]),
        .Q(\n_0_counter1_r_reg[7] ),
        .S(counter1_r0));
(* srl_bus_name = "\inst/aurora_lane_0_i/lane_init_sm_i/counter2_r_reg " *) 
   (* srl_name = "\inst/aurora_lane_0_i/lane_init_sm_i/counter2_r_reg[14]_srl14 " *) 
   SRL16E \counter2_r_reg[14]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(I1),
        .Q(\n_0_counter2_r_reg[14]_srl14 ));
FDRE \counter2_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_counter2_r_reg[14]_srl14 ),
        .Q(\n_0_counter2_r_reg[15] ),
        .R(1'b0));
(* srl_bus_name = "\inst/aurora_lane_0_i/lane_init_sm_i/counter3_r_reg " *) 
   (* srl_name = "\inst/aurora_lane_0_i/lane_init_sm_i/counter3_r_reg[2]_srl3 " *) 
   SRL16E \counter3_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(counter3_r0),
        .CLK(user_clk),
        .D(ack_r),
        .Q(\n_0_counter3_r_reg[2]_srl3 ));
FDRE \counter3_r_reg[3] 
       (.C(user_clk),
        .CE(counter3_r0),
        .D(\n_0_counter3_r_reg[2]_srl3 ),
        .Q(\n_0_counter3_r_reg[3] ),
        .R(1'b0));
(* srl_bus_name = "\inst/aurora_lane_0_i/lane_init_sm_i/counter4_r_reg " *) 
   (* srl_name = "\inst/aurora_lane_0_i/lane_init_sm_i/counter4_r_reg[14]_srl15 " *) 
   SRL16E \counter4_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter4_r0),
        .CLK(user_clk),
        .D(ready_r),
        .Q(\n_0_counter4_r_reg[14]_srl15 ));
FDRE \counter4_r_reg[15] 
       (.C(user_clk),
        .CE(counter4_r0),
        .D(\n_0_counter4_r_reg[14]_srl15 ),
        .Q(\n_0_counter4_r_reg[15] ),
        .R(1'b0));
(* srl_bus_name = "\inst/aurora_lane_0_i/lane_init_sm_i/counter5_r_reg " *) 
   (* srl_name = "\inst/aurora_lane_0_i/lane_init_sm_i/counter5_r_reg[14]_srl15 " *) 
   SRL16E \counter5_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter5_r0),
        .CLK(user_clk),
        .D(ack_r),
        .Q(\n_0_counter5_r_reg[14]_srl15 ));
LUT2 #(
    .INIT(4'hB)) 
     \counter5_r_reg[14]_srl15_i_1 
       (.I0(do_watchdog_count_r),
        .I1(ack_r),
        .O(counter5_r0));
FDRE \counter5_r_reg[15] 
       (.C(user_clk),
        .CE(counter5_r0),
        .D(\n_0_counter5_r_reg[14]_srl15 ),
        .Q(\n_0_counter5_r_reg[15] ),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     do_watchdog_count_r_i_1
       (.I0(count_128d_done_r),
        .I1(prev_count_128d_done_r),
        .O(do_watchdog_count_r0));
FDRE do_watchdog_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_watchdog_count_r0),
        .Q(do_watchdog_count_r),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h8A)) 
     gen_k_fsm_r_i_1
       (.I0(odd_word_r),
        .I1(ack_r),
        .I2(ready_r),
        .O(gen_k_i));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \gen_sp_data_r[0]_i_1 
       (.I0(ack_r),
        .I1(ready_r),
        .I2(odd_word_r),
        .O(O5[1]));
LUT2 #(
    .INIT(4'h1)) 
     \gen_sp_data_r[1]_i_1 
       (.I0(ready_r),
        .I1(ack_r),
        .O(O5[0]));
LUT2 #(
    .INIT(4'h2)) 
     \gen_spa_data_r[0]_i_1 
       (.I0(ack_r),
        .I1(odd_word_r),
        .O(gen_spa_data_i));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     lane_up_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(lane_up),
        .R(SR));
LUT6 #(
    .INIT(64'hFFFFBBBF00008880)) 
     left_aligned_r_i_1
       (.I0(D[0]),
        .I1(I3),
        .I2(ready_r),
        .I3(O1),
        .I4(first_v_received_r),
        .I5(I2),
        .O(O4));
LUT1 #(
    .INIT(2'h1)) 
     odd_word_r_i_1
       (.I0(odd_word_r),
        .O(next_ack_c16_in));
FDRE #(
    .INIT(1'b1)) 
     odd_word_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ack_c16_in),
        .Q(odd_word_r),
        .R(1'b0));
LUT6 #(
    .INIT(64'h40FF404040404040)) 
     polarity_r_i_1
       (.I0(RX_NEG),
        .I1(polarity_r),
        .I2(odd_word_r),
        .I3(rx_realign_i),
        .I4(realign_r),
        .I5(count_32d_done_r),
        .O(next_polarity_c));
FDRE polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(ready_r0));
LUT2 #(
    .INIT(4'hE)) 
     prev_char_was_comma_r_i_1
       (.I0(RX_CHAR_IS_COMMA_R[0]),
        .I1(RX_CHAR_IS_COMMA_R[1]),
        .O(inc_count_c1));
FDRE prev_char_was_comma_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(inc_count_c1),
        .Q(prev_char_was_comma_r),
        .R(1'b0));
FDRE prev_count_128d_done_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_128d_done_r),
        .Q(prev_count_128d_done_r),
        .R(1'b0));
LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
     ready_r_i_1__0
       (.I0(\n_0_counter5_r_reg[15] ),
        .I1(ack_r),
        .I2(\n_0_counter3_r_reg[3] ),
        .I3(\n_0_counter2_r_reg[15] ),
        .I4(\n_0_counter4_r_reg[15] ),
        .I5(ready_r),
        .O(next_ready_c));
FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(ready_r0));
LUT5 #(
    .INIT(32'hFF040404)) 
     realign_r_i_1
       (.I0(rx_realign_i),
        .I1(realign_r),
        .I2(count_32d_done_r),
        .I3(count_128d_done_r),
        .I4(O1),
        .O(next_realign_c));
FDRE realign_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_realign_c),
        .Q(realign_r),
        .R(ready_r0));
LUT5 #(
    .INIT(32'hFFFF04F5)) 
     reset_count_r_i_1
       (.I0(I5),
        .I1(count_8d_done_r),
        .I2(begin_r),
        .I3(O2),
        .I4(SR),
        .O(reset_count_r0));
FDRE reset_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(1'b0));
LUT3 #(
    .INIT(8'hF2)) 
     rst_r_i_1
       (.I0(O2),
        .I1(count_8d_done_r),
        .I2(begin_r),
        .O(next_rst_c));
FDRE rst_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_rst_c),
        .Q(O2),
        .R(ready_r0));
LUT3 #(
    .INIT(8'h78)) 
     rx_polarity_r_i_1
       (.I0(RX_NEG),
        .I1(polarity_r),
        .I2(rx_polarity_i),
        .O(n_0_rx_polarity_r_i_1));
FDRE #(
    .INIT(1'b0)) 
     rx_polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_rx_polarity_r_i_1),
        .Q(rx_polarity_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RESET_LOGIC" *) 
module aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC
   (s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O1,
    O2,
    O3,
    O4,
    O5,
    link_reset_comb_r,
    s_out_d1_cdc_to_0,
    s_out_d2_1,
    s_out_d3_2,
    s_out_d4_3,
    s_out_d5_4,
    s_out_d6_5,
    s_out_d7_6,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    s_out_d1_cdc_to_7,
    s_out_d2_8,
    s_out_d3_9,
    s_out_d4_10,
    s_out_d5_11,
    s_out_d6_12,
    s_out_d7_13,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    SR,
    I1,
    user_clk,
    I2,
    I3,
    init_clk_in,
    link_reset_out,
    reset);
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output link_reset_comb_r;
  output s_out_d1_cdc_to_0;
  output s_out_d2_1;
  output s_out_d3_2;
  output s_out_d4_3;
  output s_out_d5_4;
  output s_out_d6_5;
  output s_out_d7_6;
  output [1:0]O6;
  output [1:0]O7;
  output [1:0]O8;
  output [1:0]O9;
  output [1:0]O10;
  output [1:0]O11;
  output s_out_d1_cdc_to_7;
  output s_out_d2_8;
  output s_out_d3_9;
  output s_out_d4_10;
  output s_out_d5_11;
  output s_out_d6_12;
  output s_out_d7_13;
  output [1:0]O12;
  output [1:0]O13;
  output [1:0]O14;
  output [1:0]O15;
  output [1:0]O16;
  output [1:0]O17;
  output [0:0]SR;
  input I1;
  input user_clk;
  input I2;
  input I3;
  input init_clk_in;
  input link_reset_out;
  input reset;

  wire I1;
  wire I2;
  wire I3;
  wire [1:0]O1;
  wire [1:0]O10;
  wire [1:0]O11;
  wire [1:0]O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire [1:0]O15;
  wire [1:0]O16;
  wire [1:0]O17;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [1:0]O9;
  wire [0:0]SR;
  wire gt_rxresetdone_r;
  wire gt_rxresetdone_r2;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r;
  wire gt_txresetdone_r2;
  wire gt_txresetdone_r3;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire link_reset_out;
  wire n_19_link_reset_cdc_sync;
  wire n_19_tx_resetdone_cdc_sync;
  wire [1:0]out;
  wire reset;
  wire s_out_d1_cdc_to;
  wire s_out_d1_cdc_to_0;
  wire s_out_d1_cdc_to_7;
  wire s_out_d2;
  wire s_out_d2_1;
  wire s_out_d2_8;
  wire s_out_d3;
  wire s_out_d3_2;
  wire s_out_d3_9;
  wire s_out_d4;
  wire s_out_d4_10;
  wire s_out_d4_3;
  wire s_out_d5;
  wire s_out_d5_11;
  wire s_out_d5_4;
  wire s_out_d6;
  wire s_out_d6_12;
  wire s_out_d6_5;
  wire s_out_d7;
  wire s_out_d7_13;
  wire s_out_d7_6;
  wire tx_lock_comb_r;
  wire tx_lock_sync;
  wire user_clk;

FDRE SYSTEM_RESET_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_19_link_reset_cdc_sync),
        .Q(SR),
        .R(1'b0));
FDCE gt_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(gt_rxresetdone_r),
        .Q(gt_rxresetdone_r2));
FDRE gt_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_rxresetdone_r2),
        .Q(gt_rxresetdone_r3),
        .R(1'b0));
FDCE gt_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(1'b1),
        .Q(gt_rxresetdone_r));
FDCE gt_txresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(n_19_tx_resetdone_cdc_sync),
        .D(gt_txresetdone_r),
        .Q(gt_txresetdone_r2));
FDRE gt_txresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_txresetdone_r2),
        .Q(gt_txresetdone_r3),
        .R(1'b0));
FDCE gt_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(n_19_tx_resetdone_cdc_sync),
        .D(1'b1),
        .Q(gt_txresetdone_r));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_16 link_reset_cdc_sync
       (.O1(n_19_link_reset_cdc_sync),
        .O10(O10),
        .O11(O11),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .gt_rxresetdone_r3(gt_rxresetdone_r3),
        .gt_txresetdone_r3(gt_txresetdone_r3),
        .link_reset_comb_r(link_reset_comb_r),
        .reset(reset),
        .s_out_d1_cdc_to_0(s_out_d1_cdc_to_0),
        .s_out_d2_1(s_out_d2_1),
        .s_out_d3_2(s_out_d3_2),
        .s_out_d4_3(s_out_d4_3),
        .s_out_d5_4(s_out_d5_4),
        .s_out_d6_5(s_out_d6_5),
        .s_out_d7_6(s_out_d7_6),
        .tx_lock_sync(tx_lock_sync),
        .user_clk(user_clk));
FDRE link_reset_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_out),
        .Q(link_reset_comb_r),
        .R(1'b0));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_17 tx_lock_cdc_sync
       (.O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .s_out_d1_cdc_to_7(s_out_d1_cdc_to_7),
        .s_out_d2_8(s_out_d2_8),
        .s_out_d3_9(s_out_d3_9),
        .s_out_d4_10(s_out_d4_10),
        .s_out_d5_11(s_out_d5_11),
        .s_out_d6_12(s_out_d6_12),
        .s_out_d7_13(s_out_d7_13),
        .tx_lock_comb_r(tx_lock_comb_r),
        .tx_lock_sync(tx_lock_sync),
        .user_clk(user_clk));
FDRE tx_lock_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(I3),
        .Q(tx_lock_comb_r),
        .R(1'b0));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_18 tx_resetdone_cdc_sync
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(n_19_tx_resetdone_cdc_sync),
        .out(out),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d2(s_out_d2),
        .s_out_d3(s_out_d3),
        .s_out_d4(s_out_d4),
        .s_out_d5(s_out_d5),
        .s_out_d6(s_out_d6),
        .s_out_d7(s_out_d7),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RX_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_RX_LL
   (frame_err,
    m_axi_rx_tvalid,
    O1,
    m_axi_rx_tdata,
    storage_v_r,
    m_axi_rx_tkeep,
    m_axi_rx_tlast,
    I1,
    user_clk,
    RX_PAD,
    FRAME_ERR0,
    I2,
    I3,
    rx_pe_data_v_i,
    D,
    rx_ecp_i,
    START_RX);
  output frame_err;
  output m_axi_rx_tvalid;
  output O1;
  output [0:15]m_axi_rx_tdata;
  output storage_v_r;
  output [0:0]m_axi_rx_tkeep;
  output m_axi_rx_tlast;
  input I1;
  input user_clk;
  input RX_PAD;
  input FRAME_ERR0;
  input I2;
  input I3;
  input rx_pe_data_v_i;
  input [15:0]D;
  input rx_ecp_i;
  input START_RX;

  wire [15:0]D;
  wire FRAME_ERR0;
  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire RX_PAD;
  wire START_RX;
  wire frame_err;
  wire [0:15]m_axi_rx_tdata;
  wire [0:0]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire rx_ecp_i;
  wire rx_pe_data_v_i;
  wire storage_v_r;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
       (.D(D),
        .FRAME_ERR0(FRAME_ERR0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .O1(O1),
        .RX_PAD(RX_PAD),
        .START_RX(START_RX),
        .frame_err(frame_err),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .rx_ecp_i(rx_ecp_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .storage_v_r(storage_v_r),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RX_LL_PDU_DATAPATH" *) 
module aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH
   (frame_err,
    m_axi_rx_tvalid,
    O1,
    m_axi_rx_tdata,
    storage_v_r,
    m_axi_rx_tkeep,
    m_axi_rx_tlast,
    I1,
    user_clk,
    RX_PAD,
    FRAME_ERR0,
    I2,
    I3,
    rx_pe_data_v_i,
    D,
    rx_ecp_i,
    START_RX);
  output frame_err;
  output m_axi_rx_tvalid;
  output O1;
  output [0:15]m_axi_rx_tdata;
  output storage_v_r;
  output [0:0]m_axi_rx_tkeep;
  output m_axi_rx_tlast;
  input I1;
  input user_clk;
  input RX_PAD;
  input FRAME_ERR0;
  input I2;
  input I3;
  input rx_pe_data_v_i;
  input [15:0]D;
  input rx_ecp_i;
  input START_RX;

  wire [15:0]D;
  wire FRAME_ERR0;
  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire RX_PAD;
  wire START_RX;
  wire frame_err;
  wire [0:15]m_axi_rx_tdata;
  wire [0:0]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire \n_0_RX_REM[0]_i_1 ;
  wire \n_0_storage_r_reg[0] ;
  wire \n_0_storage_r_reg[10] ;
  wire \n_0_storage_r_reg[11] ;
  wire \n_0_storage_r_reg[12] ;
  wire \n_0_storage_r_reg[13] ;
  wire \n_0_storage_r_reg[14] ;
  wire \n_0_storage_r_reg[15] ;
  wire \n_0_storage_r_reg[1] ;
  wire \n_0_storage_r_reg[2] ;
  wire \n_0_storage_r_reg[3] ;
  wire \n_0_storage_r_reg[4] ;
  wire \n_0_storage_r_reg[5] ;
  wire \n_0_storage_r_reg[6] ;
  wire \n_0_storage_r_reg[7] ;
  wire \n_0_storage_r_reg[8] ;
  wire \n_0_storage_r_reg[9] ;
  wire n_0_storage_v_r_i_1;
  wire pad_in_storage_r;
  wire rx_ecp_i;
  wire rx_eof;
  wire rx_pe_data_v_i;
  wire rx_rem_int;
  wire storage_ce_c;
  wire storage_v_r;
  wire user_clk;

FDRE FRAME_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR0),
        .Q(frame_err),
        .R(1'b0));
FDRE \RX_D_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[0] ),
        .Q(m_axi_rx_tdata[0]),
        .R(1'b0));
FDRE \RX_D_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[10] ),
        .Q(m_axi_rx_tdata[10]),
        .R(1'b0));
FDRE \RX_D_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[11] ),
        .Q(m_axi_rx_tdata[11]),
        .R(1'b0));
FDRE \RX_D_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[12] ),
        .Q(m_axi_rx_tdata[12]),
        .R(1'b0));
FDRE \RX_D_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[13] ),
        .Q(m_axi_rx_tdata[13]),
        .R(1'b0));
FDRE \RX_D_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[14] ),
        .Q(m_axi_rx_tdata[14]),
        .R(1'b0));
FDRE \RX_D_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[15] ),
        .Q(m_axi_rx_tdata[15]),
        .R(1'b0));
FDRE \RX_D_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[1] ),
        .Q(m_axi_rx_tdata[1]),
        .R(1'b0));
FDRE \RX_D_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[2] ),
        .Q(m_axi_rx_tdata[2]),
        .R(1'b0));
FDRE \RX_D_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[3] ),
        .Q(m_axi_rx_tdata[3]),
        .R(1'b0));
FDRE \RX_D_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[4] ),
        .Q(m_axi_rx_tdata[4]),
        .R(1'b0));
FDRE \RX_D_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[5] ),
        .Q(m_axi_rx_tdata[5]),
        .R(1'b0));
FDRE \RX_D_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[6] ),
        .Q(m_axi_rx_tdata[6]),
        .R(1'b0));
FDRE \RX_D_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[7] ),
        .Q(m_axi_rx_tdata[7]),
        .R(1'b0));
FDRE \RX_D_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[8] ),
        .Q(m_axi_rx_tdata[8]),
        .R(1'b0));
FDRE \RX_D_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_storage_r_reg[9] ),
        .Q(m_axi_rx_tdata[9]),
        .R(1'b0));
FDRE RX_EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(I1),
        .Q(rx_eof),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \RX_REM[0]_i_1 
       (.I0(pad_in_storage_r),
        .O(\n_0_RX_REM[0]_i_1 ));
FDRE \RX_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_RX_REM[0]_i_1 ),
        .Q(rx_rem_int),
        .R(1'b0));
FDRE #(
    .INIT(1'b1)) 
     RX_SRC_RDY_N_reg_inv
       (.C(user_clk),
        .CE(1'b1),
        .D(I2),
        .Q(m_axi_rx_tvalid),
        .R(1'b0));
FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(I3),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \m_axi_rx_tkeep[1]_INST_0 
       (.I0(rx_eof),
        .I1(rx_rem_int),
        .O(m_axi_rx_tkeep));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT1 #(
    .INIT(2'h1)) 
     m_axi_rx_tlast_INST_0
       (.I0(rx_eof),
        .O(m_axi_rx_tlast));
FDRE pad_in_storage_r_reg
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(RX_PAD),
        .Q(pad_in_storage_r),
        .R(1'b0));
LUT2 #(
    .INIT(4'h8)) 
     \storage_r[0]_i_1__0 
       (.I0(O1),
        .I1(rx_pe_data_v_i),
        .O(storage_ce_c));
FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[15]),
        .Q(\n_0_storage_r_reg[0] ),
        .R(1'b0));
FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[5]),
        .Q(\n_0_storage_r_reg[10] ),
        .R(1'b0));
FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[4]),
        .Q(\n_0_storage_r_reg[11] ),
        .R(1'b0));
FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[3]),
        .Q(\n_0_storage_r_reg[12] ),
        .R(1'b0));
FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[2]),
        .Q(\n_0_storage_r_reg[13] ),
        .R(1'b0));
FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[1]),
        .Q(\n_0_storage_r_reg[14] ),
        .R(1'b0));
FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[0]),
        .Q(\n_0_storage_r_reg[15] ),
        .R(1'b0));
FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[14]),
        .Q(\n_0_storage_r_reg[1] ),
        .R(1'b0));
FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[13]),
        .Q(\n_0_storage_r_reg[2] ),
        .R(1'b0));
FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[12]),
        .Q(\n_0_storage_r_reg[3] ),
        .R(1'b0));
FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[11]),
        .Q(\n_0_storage_r_reg[4] ),
        .R(1'b0));
FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[10]),
        .Q(\n_0_storage_r_reg[5] ),
        .R(1'b0));
FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[9]),
        .Q(\n_0_storage_r_reg[6] ),
        .R(1'b0));
FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[8]),
        .Q(\n_0_storage_r_reg[7] ),
        .R(1'b0));
FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[7]),
        .Q(\n_0_storage_r_reg[8] ),
        .R(1'b0));
FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(storage_ce_c),
        .D(D[6]),
        .Q(\n_0_storage_r_reg[9] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'h88F80000)) 
     storage_v_r_i_1
       (.I0(O1),
        .I1(rx_pe_data_v_i),
        .I2(storage_v_r),
        .I3(rx_ecp_i),
        .I4(START_RX),
        .O(n_0_storage_v_r_i_1));
FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_storage_v_r_i_1),
        .Q(storage_v_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_SYM_DEC" *) 
module aurora_8b10b_0_aurora_8b10b_0_SYM_DEC
   (RX_NEG,
    O1,
    D,
    GOT_V,
    RX_PAD,
    O2,
    first_v_received_r,
    rx_pe_data_v_i,
    O3,
    O4,
    FRAME_ERR0,
    O5,
    counter3_r0,
    counter4_r0,
    O6,
    O7,
    user_clk,
    I1,
    I2,
    SR,
    I3,
    START_RX,
    I4,
    storage_v_r,
    ack_r,
    ready_r,
    polarity_r,
    I9,
    I10);
  output RX_NEG;
  output O1;
  output [0:0]D;
  output GOT_V;
  output RX_PAD;
  output O2;
  output first_v_received_r;
  output rx_pe_data_v_i;
  output O3;
  output O4;
  output FRAME_ERR0;
  output O5;
  output counter3_r0;
  output counter4_r0;
  output O6;
  output [15:0]O7;
  input user_clk;
  input I1;
  input I2;
  input [0:0]SR;
  input I3;
  input START_RX;
  input I4;
  input storage_v_r;
  input ack_r;
  input ready_r;
  input polarity_r;
  input [7:0]I9;
  input [7:0]I10;

  wire [0:0]D;
  wire FRAME_ERR0;
  wire GOT_V;
  wire I1;
  wire [7:0]I10;
  wire I2;
  wire I3;
  wire I4;
  wire [7:0]I9;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire [15:0]O7;
  wire RX_CC0;
  wire RX_NEG;
  wire RX_NEG0;
  wire RX_PAD;
  wire RX_PAD0;
  wire RX_SPA0;
  wire [0:0]SR;
  wire START_RX;
  wire ack_r;
  wire counter3_r0;
  wire counter4_r0;
  wire first_v_received_r;
  wire got_v_c;
  wire n_0_RX_ECP_i_1;
  wire n_0_RX_PE_DATA_V_i_1;
  wire n_0_RX_SCP_i_1;
  wire n_0_first_v_received_r_i_1;
  wire \n_0_rx_cc_r[3]_i_1 ;
  wire \n_0_rx_ecp_d_r[1]_i_1 ;
  wire \n_0_rx_ecp_d_r[2]_i_1 ;
  wire \n_0_rx_ecp_d_r[3]_i_1 ;
  wire \n_0_rx_pad_d_r[1]_i_1 ;
  wire \n_0_rx_pe_control_r_reg[1] ;
  wire \n_0_rx_scp_d_r[0]_i_1 ;
  wire \n_0_rx_scp_d_r[3]_i_1 ;
  wire \n_0_rx_spa_neg_d_r[1]_i_1 ;
  wire \n_0_rx_v_d_r[1]_i_1 ;
  wire \n_0_rx_v_d_r[3]_i_1 ;
  wire \n_0_word_aligned_data_r_reg[0] ;
  wire \n_0_word_aligned_data_r_reg[10] ;
  wire \n_0_word_aligned_data_r_reg[11] ;
  wire \n_0_word_aligned_data_r_reg[12] ;
  wire \n_0_word_aligned_data_r_reg[13] ;
  wire \n_0_word_aligned_data_r_reg[14] ;
  wire \n_0_word_aligned_data_r_reg[15] ;
  wire \n_0_word_aligned_data_r_reg[1] ;
  wire \n_0_word_aligned_data_r_reg[2] ;
  wire \n_0_word_aligned_data_r_reg[3] ;
  wire \n_0_word_aligned_data_r_reg[4] ;
  wire \n_0_word_aligned_data_r_reg[5] ;
  wire \n_0_word_aligned_data_r_reg[6] ;
  wire \n_0_word_aligned_data_r_reg[7] ;
  wire \n_0_word_aligned_data_r_reg[8] ;
  wire \n_0_word_aligned_data_r_reg[9] ;
  wire p_0_in5_in;
  wire p_2_in;
  wire [3:2]p_5_out;
  wire polarity_r;
  wire prev_beat_sp_d_r0;
  wire prev_beat_sp_d_r05_out;
  wire prev_beat_sp_d_r08_out;
  wire prev_beat_sp_d_r1;
  wire prev_beat_sp_d_r16_in;
  wire prev_beat_sp_r;
  wire prev_beat_sp_r0;
  wire prev_beat_spa_d_r0;
  wire prev_beat_spa_r;
  wire prev_beat_spa_r0;
  wire [0:0]prev_beat_v_d_r;
  wire prev_beat_v_d_r0;
  wire prev_beat_v_r;
  wire prev_beat_v_r0;
  wire ready_r;
  wire [1:3]rx_cc_r;
  wire rx_cc_r0;
  wire [0:3]rx_ecp_d_r;
  wire rx_ecp_d_r0;
  wire [0:1]rx_pad_d_r;
  wire rx_pad_d_r0;
  wire [0:15]rx_pe_data_r;
  wire rx_pe_data_v_i;
  wire [0:3]rx_scp_d_r;
  wire rx_scp_d_r0;
  wire rx_scp_i;
  wire rx_sp_c;
  wire [0:3]rx_sp_d_r;
  wire rx_sp_i;
  wire [0:1]rx_sp_neg_d_r;
  wire [0:2]rx_spa_d_r;
  wire rx_spa_d_r0;
  wire rx_spa_i;
  wire [0:1]rx_spa_neg_d_r;
  wire rx_spa_neg_d_r0;
  wire [0:3]rx_v_d_r;
  wire rx_v_d_r0;
  wire storage_v_r;
  wire user_clk;
  wire [0:1]word_aligned_control_bits_r;

(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'hBAF0)) 
     FRAME_ERR_i_1
       (.I0(rx_scp_i),
        .I1(storage_v_r),
        .I2(O1),
        .I3(I4),
        .O(FRAME_ERR0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     GOT_V_i_1
       (.I0(rx_v_d_r[0]),
        .I1(rx_v_d_r[1]),
        .I2(p_0_in5_in),
        .I3(prev_beat_v_r),
        .I4(rx_v_d_r[2]),
        .I5(rx_v_d_r[3]),
        .O(got_v_c));
FDRE GOT_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_c),
        .Q(GOT_V),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_CC_i_1
       (.I0(rx_cc_r[1]),
        .I1(rx_cc_r[3]),
        .I2(p_2_in),
        .I3(\n_0_rx_pe_control_r_reg[1] ),
        .I4(rx_ecp_d_r[0]),
        .I5(rx_ecp_d_r[2]),
        .O(RX_CC0));
FDRE RX_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_CC0),
        .Q(D),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_ECP_i_1
       (.I0(rx_ecp_d_r[0]),
        .I1(p_2_in),
        .I2(\n_0_rx_pe_control_r_reg[1] ),
        .I3(rx_ecp_d_r[1]),
        .I4(rx_ecp_d_r[3]),
        .I5(rx_ecp_d_r[2]),
        .O(n_0_RX_ECP_i_1));
FDRE RX_ECP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_RX_ECP_i_1),
        .Q(O1),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     RX_EOF_N_i_1
       (.I0(O1),
        .O(O5));
LUT5 #(
    .INIT(32'h55404040)) 
     RX_NEG_i_1
       (.I0(\n_0_rx_pe_control_r_reg[1] ),
        .I1(rx_spa_neg_d_r[1]),
        .I2(rx_spa_neg_d_r[0]),
        .I3(rx_sp_neg_d_r[1]),
        .I4(rx_sp_neg_d_r[0]),
        .O(RX_NEG0));
FDRE RX_NEG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_NEG0),
        .Q(RX_NEG),
        .R(1'b0));
LUT4 #(
    .INIT(16'h0080)) 
     RX_PAD_i_1
       (.I0(rx_pad_d_r[0]),
        .I1(rx_pad_d_r[1]),
        .I2(\n_0_rx_pe_control_r_reg[1] ),
        .I3(p_2_in),
        .O(RX_PAD0));
FDRE RX_PAD_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_PAD0),
        .Q(RX_PAD),
        .R(1'b0));
LUT3 #(
    .INIT(8'h01)) 
     RX_PE_DATA_V_i_1
       (.I0(got_v_c),
        .I1(rx_sp_c),
        .I2(p_2_in),
        .O(n_0_RX_PE_DATA_V_i_1));
FDRE RX_PE_DATA_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_RX_PE_DATA_V_i_1),
        .Q(rx_pe_data_v_i),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[0]),
        .Q(O7[15]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[10]),
        .Q(O7[5]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[11]),
        .Q(O7[4]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[12]),
        .Q(O7[3]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[13]),
        .Q(O7[2]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[14]),
        .Q(O7[1]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[15]),
        .Q(O7[0]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[1]),
        .Q(O7[14]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[2]),
        .Q(O7[13]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[3]),
        .Q(O7[12]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[4]),
        .Q(O7[11]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[5]),
        .Q(O7[10]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[6]),
        .Q(O7[9]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[7]),
        .Q(O7[8]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[8]),
        .Q(O7[7]),
        .R(1'b0));
FDRE \RX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pe_data_r[9]),
        .Q(O7[6]),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_SCP_i_1
       (.I0(rx_scp_d_r[0]),
        .I1(p_2_in),
        .I2(\n_0_rx_pe_control_r_reg[1] ),
        .I3(rx_scp_d_r[1]),
        .I4(rx_scp_d_r[3]),
        .I5(rx_ecp_d_r[2]),
        .O(n_0_RX_SCP_i_1));
FDRE RX_SCP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_RX_SCP_i_1),
        .Q(rx_scp_i),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_SPA_i_1
       (.I0(rx_spa_d_r[0]),
        .I1(rx_scp_d_r[1]),
        .I2(p_0_in5_in),
        .I3(prev_beat_spa_r),
        .I4(rx_spa_d_r[2]),
        .I5(rx_pad_d_r[1]),
        .O(RX_SPA0));
FDRE RX_SPA_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SPA0),
        .Q(rx_spa_i),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_SP_i_1
       (.I0(rx_sp_d_r[0]),
        .I1(rx_sp_d_r[1]),
        .I2(p_0_in5_in),
        .I3(prev_beat_sp_r),
        .I4(rx_sp_d_r[2]),
        .I5(rx_sp_d_r[3]),
        .O(rx_sp_c));
LUT2 #(
    .INIT(4'h1)) 
     RX_SP_i_2
       (.I0(\n_0_rx_pe_control_r_reg[1] ),
        .I1(p_2_in),
        .O(p_0_in5_in));
FDRE RX_SP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_c),
        .Q(rx_sp_i),
        .R(1'b0));
LUT5 #(
    .INIT(32'hF8000000)) 
     RX_SRC_RDY_N_inv_i_1
       (.I0(rx_pe_data_v_i),
        .I1(I4),
        .I2(O1),
        .I3(storage_v_r),
        .I4(START_RX),
        .O(O4));
LUT2 #(
    .INIT(4'hB)) 
     ack_r_i_2
       (.I0(RX_NEG),
        .I1(polarity_r),
        .O(O6));
LUT2 #(
    .INIT(4'hB)) 
     \counter3_r_reg[2]_srl3_i_1 
       (.I0(rx_spa_i),
        .I1(ack_r),
        .O(counter3_r0));
LUT2 #(
    .INIT(4'hB)) 
     \counter4_r_reg[14]_srl15_i_1 
       (.I0(rx_sp_i),
        .I1(ready_r),
        .O(counter4_r0));
LUT2 #(
    .INIT(4'hE)) 
     first_v_received_r_i_1
       (.I0(got_v_c),
        .I1(first_v_received_r),
        .O(n_0_first_v_received_r_i_1));
FDRE #(
    .INIT(1'b0)) 
     first_v_received_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_first_v_received_r_i_1),
        .Q(first_v_received_r),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h8C88)) 
     in_frame_r_i_1__0
       (.I0(rx_scp_i),
        .I1(START_RX),
        .I2(O1),
        .I3(I4),
        .O(O3));
FDRE left_aligned_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(I3),
        .Q(O2),
        .R(SR));
LUT6 #(
    .INIT(64'h0800000000000000)) 
     prev_beat_sp_r_i_1
       (.I0(rx_scp_d_r[1]),
        .I1(rx_sp_d_r[3]),
        .I2(\n_0_rx_pe_control_r_reg[1] ),
        .I3(p_2_in),
        .I4(prev_beat_v_d_r),
        .I5(rx_sp_d_r[2]),
        .O(prev_beat_sp_r0));
FDRE prev_beat_sp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_sp_r0),
        .Q(prev_beat_sp_r),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0800000000000000)) 
     prev_beat_spa_r_i_1
       (.I0(rx_scp_d_r[1]),
        .I1(rx_pad_d_r[1]),
        .I2(\n_0_rx_pe_control_r_reg[1] ),
        .I3(p_2_in),
        .I4(prev_beat_v_d_r),
        .I5(rx_spa_d_r[2]),
        .O(prev_beat_spa_r0));
FDRE prev_beat_spa_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_spa_r0),
        .Q(prev_beat_spa_r),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \prev_beat_v_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[1] ),
        .I1(\n_0_word_aligned_data_r_reg[0] ),
        .I2(\n_0_word_aligned_data_r_reg[2] ),
        .I3(\n_0_word_aligned_data_r_reg[3] ),
        .O(prev_beat_sp_d_r0));
FDRE \prev_beat_v_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_sp_d_r0),
        .Q(prev_beat_v_d_r),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0800000000000000)) 
     prev_beat_v_r_i_1
       (.I0(rx_scp_d_r[1]),
        .I1(rx_v_d_r[3]),
        .I2(\n_0_rx_pe_control_r_reg[1] ),
        .I3(p_2_in),
        .I4(prev_beat_v_d_r),
        .I5(rx_v_d_r[2]),
        .O(prev_beat_v_r0));
FDRE prev_beat_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_v_r0),
        .Q(prev_beat_v_r),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[1]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[4] ),
        .I1(\n_0_word_aligned_data_r_reg[5] ),
        .I2(\n_0_word_aligned_data_r_reg[6] ),
        .I3(\n_0_word_aligned_data_r_reg[7] ),
        .O(rx_cc_r0));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[3]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[12] ),
        .I1(\n_0_word_aligned_data_r_reg[13] ),
        .I2(\n_0_word_aligned_data_r_reg[14] ),
        .I3(\n_0_word_aligned_data_r_reg[15] ),
        .O(\n_0_rx_cc_r[3]_i_1 ));
FDRE \rx_cc_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_r0),
        .Q(rx_cc_r[1]),
        .R(1'b0));
FDRE \rx_cc_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_cc_r[3]_i_1 ),
        .Q(rx_cc_r[3]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \rx_ecp_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[2] ),
        .I1(\n_0_word_aligned_data_r_reg[3] ),
        .I2(\n_0_word_aligned_data_r_reg[1] ),
        .I3(\n_0_word_aligned_data_r_reg[0] ),
        .O(rx_ecp_d_r0));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[1]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[6] ),
        .I1(\n_0_word_aligned_data_r_reg[5] ),
        .I2(\n_0_word_aligned_data_r_reg[4] ),
        .I3(\n_0_word_aligned_data_r_reg[7] ),
        .O(\n_0_rx_ecp_d_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \rx_ecp_d_r[2]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[10] ),
        .I1(\n_0_word_aligned_data_r_reg[11] ),
        .I2(\n_0_word_aligned_data_r_reg[9] ),
        .I3(\n_0_word_aligned_data_r_reg[8] ),
        .O(\n_0_rx_ecp_d_r[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[3]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[15] ),
        .I1(\n_0_word_aligned_data_r_reg[13] ),
        .I2(\n_0_word_aligned_data_r_reg[12] ),
        .I3(\n_0_word_aligned_data_r_reg[14] ),
        .O(\n_0_rx_ecp_d_r[3]_i_1 ));
FDRE \rx_ecp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_ecp_d_r0),
        .Q(rx_ecp_d_r[0]),
        .R(1'b0));
FDRE \rx_ecp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_ecp_d_r[1]_i_1 ),
        .Q(rx_ecp_d_r[1]),
        .R(1'b0));
FDRE \rx_ecp_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_ecp_d_r[2]_i_1 ),
        .Q(rx_ecp_d_r[2]),
        .R(1'b0));
FDRE \rx_ecp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_ecp_d_r[3]_i_1 ),
        .Q(rx_ecp_d_r[3]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_pad_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[9] ),
        .I1(\n_0_word_aligned_data_r_reg[10] ),
        .I2(\n_0_word_aligned_data_r_reg[8] ),
        .I3(\n_0_word_aligned_data_r_reg[11] ),
        .O(rx_pad_d_r0));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_pad_d_r[1]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[14] ),
        .I1(\n_0_word_aligned_data_r_reg[15] ),
        .I2(\n_0_word_aligned_data_r_reg[13] ),
        .I3(\n_0_word_aligned_data_r_reg[12] ),
        .O(\n_0_rx_pad_d_r[1]_i_1 ));
FDRE \rx_pad_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pad_d_r0),
        .Q(rx_pad_d_r[0]),
        .R(1'b0));
FDRE \rx_pad_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_pad_d_r[1]_i_1 ),
        .Q(rx_pad_d_r[1]),
        .R(1'b0));
FDRE \rx_pe_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[0]),
        .Q(p_2_in),
        .R(1'b0));
FDRE \rx_pe_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[1]),
        .Q(\n_0_rx_pe_control_r_reg[1] ),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[0] ),
        .Q(rx_pe_data_r[0]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[10] ),
        .Q(rx_pe_data_r[10]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[11] ),
        .Q(rx_pe_data_r[11]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[12] ),
        .Q(rx_pe_data_r[12]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[13] ),
        .Q(rx_pe_data_r[13]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[14] ),
        .Q(rx_pe_data_r[14]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[15] ),
        .Q(rx_pe_data_r[15]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[1] ),
        .Q(rx_pe_data_r[1]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[2] ),
        .Q(rx_pe_data_r[2]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[3] ),
        .Q(rx_pe_data_r[3]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[4] ),
        .Q(rx_pe_data_r[4]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[5] ),
        .Q(rx_pe_data_r[5]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[6] ),
        .Q(rx_pe_data_r[6]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[7] ),
        .Q(rx_pe_data_r[7]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[8] ),
        .Q(rx_pe_data_r[8]),
        .R(1'b0));
FDRE \rx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r_reg[9] ),
        .Q(rx_pe_data_r[9]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_scp_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[0] ),
        .I1(\n_0_word_aligned_data_r_reg[2] ),
        .I2(\n_0_word_aligned_data_r_reg[1] ),
        .I3(\n_0_word_aligned_data_r_reg[3] ),
        .O(\n_0_rx_scp_d_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_scp_d_r[1]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[6] ),
        .I1(\n_0_word_aligned_data_r_reg[7] ),
        .I2(\n_0_word_aligned_data_r_reg[5] ),
        .I3(\n_0_word_aligned_data_r_reg[4] ),
        .O(rx_scp_d_r0));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_scp_d_r[3]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[13] ),
        .I1(\n_0_word_aligned_data_r_reg[12] ),
        .I2(\n_0_word_aligned_data_r_reg[14] ),
        .I3(\n_0_word_aligned_data_r_reg[15] ),
        .O(\n_0_rx_scp_d_r[3]_i_1 ));
FDRE \rx_scp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_scp_d_r[0]_i_1 ),
        .Q(rx_scp_d_r[0]),
        .R(1'b0));
FDRE \rx_scp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_scp_d_r0),
        .Q(rx_scp_d_r[1]),
        .R(1'b0));
FDRE \rx_scp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_scp_d_r[3]_i_1 ),
        .Q(rx_scp_d_r[3]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h2004)) 
     \rx_sp_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[2] ),
        .I1(\n_0_word_aligned_data_r_reg[1] ),
        .I2(\n_0_word_aligned_data_r_reg[3] ),
        .I3(\n_0_word_aligned_data_r_reg[0] ),
        .O(p_5_out[3]));
LUT4 #(
    .INIT(16'h0420)) 
     \rx_sp_d_r[1]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[4] ),
        .I1(\n_0_word_aligned_data_r_reg[5] ),
        .I2(\n_0_word_aligned_data_r_reg[6] ),
        .I3(\n_0_word_aligned_data_r_reg[7] ),
        .O(p_5_out[2]));
LUT4 #(
    .INIT(16'h2004)) 
     \rx_sp_d_r[2]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[10] ),
        .I1(\n_0_word_aligned_data_r_reg[9] ),
        .I2(\n_0_word_aligned_data_r_reg[11] ),
        .I3(\n_0_word_aligned_data_r_reg[8] ),
        .O(prev_beat_sp_d_r08_out));
LUT4 #(
    .INIT(16'h1008)) 
     \rx_sp_d_r[3]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[12] ),
        .I1(\n_0_word_aligned_data_r_reg[14] ),
        .I2(\n_0_word_aligned_data_r_reg[13] ),
        .I3(\n_0_word_aligned_data_r_reg[15] ),
        .O(prev_beat_sp_d_r05_out));
FDRE \rx_sp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_5_out[3]),
        .Q(rx_sp_d_r[0]),
        .R(1'b0));
FDRE \rx_sp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_5_out[2]),
        .Q(rx_sp_d_r[1]),
        .R(1'b0));
FDRE \rx_sp_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_sp_d_r08_out),
        .Q(rx_sp_d_r[2]),
        .R(1'b0));
FDRE \rx_sp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_sp_d_r05_out),
        .Q(rx_sp_d_r[3]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_sp_neg_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[9] ),
        .I1(\n_0_word_aligned_data_r_reg[8] ),
        .I2(\n_0_word_aligned_data_r_reg[10] ),
        .I3(\n_0_word_aligned_data_r_reg[11] ),
        .O(prev_beat_sp_d_r16_in));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_sp_neg_d_r[1]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[12] ),
        .I1(\n_0_word_aligned_data_r_reg[14] ),
        .I2(\n_0_word_aligned_data_r_reg[13] ),
        .I3(\n_0_word_aligned_data_r_reg[15] ),
        .O(prev_beat_sp_d_r1));
FDRE \rx_sp_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_sp_d_r16_in),
        .Q(rx_sp_neg_d_r[0]),
        .R(1'b0));
FDRE \rx_sp_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_sp_d_r1),
        .Q(rx_sp_neg_d_r[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_spa_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[1] ),
        .I1(\n_0_word_aligned_data_r_reg[0] ),
        .I2(\n_0_word_aligned_data_r_reg[2] ),
        .I3(\n_0_word_aligned_data_r_reg[3] ),
        .O(rx_spa_d_r0));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_spa_d_r[2]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[9] ),
        .I1(\n_0_word_aligned_data_r_reg[8] ),
        .I2(\n_0_word_aligned_data_r_reg[10] ),
        .I3(\n_0_word_aligned_data_r_reg[11] ),
        .O(prev_beat_spa_d_r0));
FDRE \rx_spa_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_d_r0),
        .Q(rx_spa_d_r[0]),
        .R(1'b0));
FDRE \rx_spa_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_spa_d_r0),
        .Q(rx_spa_d_r[2]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_spa_neg_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[10] ),
        .I1(\n_0_word_aligned_data_r_reg[9] ),
        .I2(\n_0_word_aligned_data_r_reg[8] ),
        .I3(\n_0_word_aligned_data_r_reg[11] ),
        .O(rx_spa_neg_d_r0));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_spa_neg_d_r[1]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[13] ),
        .I1(\n_0_word_aligned_data_r_reg[12] ),
        .I2(\n_0_word_aligned_data_r_reg[14] ),
        .I3(\n_0_word_aligned_data_r_reg[15] ),
        .O(\n_0_rx_spa_neg_d_r[1]_i_1 ));
FDRE \rx_spa_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_neg_d_r0),
        .Q(rx_spa_neg_d_r[0]),
        .R(1'b0));
FDRE \rx_spa_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_neg_d_r[1]_i_1 ),
        .Q(rx_spa_neg_d_r[1]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[0]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[3] ),
        .I1(\n_0_word_aligned_data_r_reg[1] ),
        .I2(\n_0_word_aligned_data_r_reg[0] ),
        .I3(\n_0_word_aligned_data_r_reg[2] ),
        .O(rx_v_d_r0));
LUT4 #(
    .INIT(16'h0010)) 
     \rx_v_d_r[1]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[5] ),
        .I1(\n_0_word_aligned_data_r_reg[6] ),
        .I2(\n_0_word_aligned_data_r_reg[4] ),
        .I3(\n_0_word_aligned_data_r_reg[7] ),
        .O(\n_0_rx_v_d_r[1]_i_1 ));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[2]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[11] ),
        .I1(\n_0_word_aligned_data_r_reg[9] ),
        .I2(\n_0_word_aligned_data_r_reg[8] ),
        .I3(\n_0_word_aligned_data_r_reg[10] ),
        .O(prev_beat_v_d_r0));
LUT4 #(
    .INIT(16'h0010)) 
     \rx_v_d_r[3]_i_1 
       (.I0(\n_0_word_aligned_data_r_reg[13] ),
        .I1(\n_0_word_aligned_data_r_reg[14] ),
        .I2(\n_0_word_aligned_data_r_reg[12] ),
        .I3(\n_0_word_aligned_data_r_reg[15] ),
        .O(\n_0_rx_v_d_r[3]_i_1 ));
FDRE \rx_v_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_v_d_r0),
        .Q(rx_v_d_r[0]),
        .R(1'b0));
FDRE \rx_v_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_v_d_r[1]_i_1 ),
        .Q(rx_v_d_r[1]),
        .R(1'b0));
FDRE \rx_v_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_beat_v_d_r0),
        .Q(rx_v_d_r[2]),
        .R(1'b0));
FDRE \rx_v_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_v_d_r[3]_i_1 ),
        .Q(rx_v_d_r[3]),
        .R(1'b0));
FDRE \word_aligned_control_bits_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I2),
        .Q(word_aligned_control_bits_r[0]),
        .R(1'b0));
FDRE \word_aligned_control_bits_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I1),
        .Q(word_aligned_control_bits_r[1]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[7]),
        .Q(\n_0_word_aligned_data_r_reg[0] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[5]),
        .Q(\n_0_word_aligned_data_r_reg[10] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[4]),
        .Q(\n_0_word_aligned_data_r_reg[11] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[3]),
        .Q(\n_0_word_aligned_data_r_reg[12] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[2]),
        .Q(\n_0_word_aligned_data_r_reg[13] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[1]),
        .Q(\n_0_word_aligned_data_r_reg[14] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[0]),
        .Q(\n_0_word_aligned_data_r_reg[15] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[6]),
        .Q(\n_0_word_aligned_data_r_reg[1] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[5]),
        .Q(\n_0_word_aligned_data_r_reg[2] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[4]),
        .Q(\n_0_word_aligned_data_r_reg[3] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[3]),
        .Q(\n_0_word_aligned_data_r_reg[4] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[2]),
        .Q(\n_0_word_aligned_data_r_reg[5] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[1]),
        .Q(\n_0_word_aligned_data_r_reg[6] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[0]),
        .Q(\n_0_word_aligned_data_r_reg[7] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[7]),
        .Q(\n_0_word_aligned_data_r_reg[8] ),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[6]),
        .Q(\n_0_word_aligned_data_r_reg[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_SYM_GEN" *) 
module aurora_8b10b_0_aurora_8b10b_0_SYM_GEN
   (TXCHARISK,
    O1,
    TXDATA,
    GEN_PAD,
    user_clk,
    gen_spa_data_i,
    TX_PE_DATA_V,
    gen_k_i,
    gen_cc_i,
    GEN_ECP,
    GEN_SCP,
    gen_a_i,
    ack_r,
    D,
    I6,
    I7,
    I8,
    Q);
  output [1:0]TXCHARISK;
  output O1;
  output [15:0]TXDATA;
  input GEN_PAD;
  input user_clk;
  input [0:0]gen_spa_data_i;
  input TX_PE_DATA_V;
  input gen_k_i;
  input gen_cc_i;
  input GEN_ECP;
  input GEN_SCP;
  input gen_a_i;
  input ack_r;
  input [1:0]D;
  input [1:0]I6;
  input [1:0]I7;
  input [1:0]I8;
  input [15:0]Q;

  wire [1:0]D;
  wire GEN_ECP;
  wire GEN_PAD;
  wire GEN_SCP;
  wire [1:0]I6;
  wire [1:0]I7;
  wire [1:0]I8;
  wire O1;
  wire [15:0]Q;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire TX_PE_DATA_V;
  wire ack_r;
  wire gen_a_i;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire gen_ecp_r;
  wire gen_k_fsm_r;
  wire gen_k_i;
  wire gen_pad_r;
  wire gen_scp_r;
  wire [0:0]gen_spa_data_i;
  wire \n_0_TX_CHAR_IS_K[0]_i_1 ;
  wire \n_0_TX_CHAR_IS_K[1]_i_1 ;
  wire \n_0_TX_DATA[0]_i_1 ;
  wire \n_0_TX_DATA[10]_i_1 ;
  wire \n_0_TX_DATA[10]_i_2 ;
  wire \n_0_TX_DATA[11]_i_1 ;
  wire \n_0_TX_DATA[12]_i_1 ;
  wire \n_0_TX_DATA[12]_i_2 ;
  wire \n_0_TX_DATA[13]_i_1 ;
  wire \n_0_TX_DATA[13]_i_2 ;
  wire \n_0_TX_DATA[13]_i_3 ;
  wire \n_0_TX_DATA[13]_i_4 ;
  wire \n_0_TX_DATA[14]_i_1 ;
  wire \n_0_TX_DATA[14]_i_2 ;
  wire \n_0_TX_DATA[14]_i_3 ;
  wire \n_0_TX_DATA[15]_i_1 ;
  wire \n_0_TX_DATA[15]_i_2 ;
  wire \n_0_TX_DATA[15]_i_3 ;
  wire \n_0_TX_DATA[15]_i_4 ;
  wire \n_0_TX_DATA[15]_i_5 ;
  wire \n_0_TX_DATA[15]_i_6 ;
  wire \n_0_TX_DATA[1]_i_1 ;
  wire \n_0_TX_DATA[2]_i_1 ;
  wire \n_0_TX_DATA[2]_i_2 ;
  wire \n_0_TX_DATA[3]_i_1 ;
  wire \n_0_TX_DATA[4]_i_1 ;
  wire \n_0_TX_DATA[4]_i_2 ;
  wire \n_0_TX_DATA[5]_i_1 ;
  wire \n_0_TX_DATA[5]_i_2 ;
  wire \n_0_TX_DATA[6]_i_1 ;
  wire \n_0_TX_DATA[6]_i_2 ;
  wire \n_0_TX_DATA[6]_i_3 ;
  wire \n_0_TX_DATA[7]_i_1 ;
  wire \n_0_TX_DATA[7]_i_2 ;
  wire \n_0_TX_DATA[7]_i_3 ;
  wire \n_0_TX_DATA[7]_i_4 ;
  wire \n_0_TX_DATA[8]_i_1 ;
  wire \n_0_TX_DATA[9]_i_1 ;
  wire \n_0_TX_DATA[9]_i_2 ;
  wire \n_0_gen_k_r_reg[1] ;
  wire \n_0_gen_r_r_reg[1] ;
  wire \n_0_gen_sp_data_r_reg[1] ;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in6_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire [0:15]tx_pe_data_r;
  wire tx_pe_data_v_r;
  wire user_clk;

LUT5 #(
    .INIT(32'h00000023)) 
     \TX_CHAR_IS_K[0]_i_1 
       (.I0(gen_pad_r),
        .I1(\n_0_gen_sp_data_r_reg[1] ),
        .I2(tx_pe_data_v_r),
        .I3(O1),
        .I4(p_3_in),
        .O(\n_0_TX_CHAR_IS_K[0]_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \TX_CHAR_IS_K[1]_i_1 
       (.I0(p_0_in1_in),
        .I1(tx_pe_data_v_r),
        .I2(p_1_in),
        .I3(p_2_in),
        .O(\n_0_TX_CHAR_IS_K[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_TX_CHAR_IS_K[0]_i_1 ),
        .Q(TXCHARISK[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_TX_CHAR_IS_K[1]_i_1 ),
        .Q(TXCHARISK[0]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAAAAAAAEFEAEAE)) 
     \TX_DATA[0]_i_1 
       (.I0(gen_scp_r),
        .I1(gen_cc_r),
        .I2(tx_pe_data_v_r),
        .I3(gen_pad_r),
        .I4(tx_pe_data_r[15]),
        .I5(gen_ecp_r),
        .O(\n_0_TX_DATA[0]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8B88)) 
     \TX_DATA[10]_i_1 
       (.I0(tx_pe_data_r[5]),
        .I1(tx_pe_data_v_r),
        .I2(p_0_in1_in),
        .I3(p_1_in),
        .I4(\n_0_TX_DATA[10]_i_2 ),
        .I5(\n_0_TX_DATA[15]_i_3 ),
        .O(\n_0_TX_DATA[10]_i_1 ));
LUT6 #(
    .INIT(64'h0101010101010100)) 
     \TX_DATA[10]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in1_in),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in),
        .I4(gen_a_r),
        .I5(p_0_in6_in),
        .O(\n_0_TX_DATA[10]_i_2 ));
LUT6 #(
    .INIT(64'hEEFFEEFEEEFFEEFF)) 
     \TX_DATA[11]_i_1 
       (.I0(gen_ecp_r),
        .I1(gen_scp_r),
        .I2(tx_pe_data_r[4]),
        .I3(gen_cc_r),
        .I4(gen_k_fsm_r),
        .I5(tx_pe_data_v_r),
        .O(\n_0_TX_DATA[11]_i_1 ));
LUT5 #(
    .INIT(32'hEAFFEAEA)) 
     \TX_DATA[12]_i_1 
       (.I0(\n_0_TX_DATA[15]_i_3 ),
        .I1(tx_pe_data_r[3]),
        .I2(tx_pe_data_v_r),
        .I3(\n_0_TX_DATA[15]_i_4 ),
        .I4(\n_0_TX_DATA[12]_i_2 ),
        .O(\n_0_TX_DATA[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \TX_DATA[12]_i_2 
       (.I0(p_0_in6_in),
        .I1(gen_a_r),
        .I2(p_0_in),
        .O(\n_0_TX_DATA[12]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFAAAAFEFFAAAA)) 
     \TX_DATA[13]_i_1 
       (.I0(\n_0_TX_DATA[13]_i_2 ),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(p_0_in),
        .I4(\n_0_TX_DATA[13]_i_3 ),
        .I5(\n_0_TX_DATA[13]_i_4 ),
        .O(\n_0_TX_DATA[13]_i_1 ));
LUT6 #(
    .INIT(64'h00FF00FE00FE00FE)) 
     \TX_DATA[13]_i_2 
       (.I0(gen_cc_r),
        .I1(gen_k_fsm_r),
        .I2(gen_ecp_r),
        .I3(gen_scp_r),
        .I4(tx_pe_data_r[2]),
        .I5(tx_pe_data_v_r),
        .O(\n_0_TX_DATA[13]_i_2 ));
LUT3 #(
    .INIT(8'h01)) 
     \TX_DATA[13]_i_3 
       (.I0(tx_pe_data_v_r),
        .I1(p_0_in1_in),
        .I2(gen_scp_r),
        .O(\n_0_TX_DATA[13]_i_3 ));
LUT2 #(
    .INIT(4'hE)) 
     \TX_DATA[13]_i_4 
       (.I0(gen_a_r),
        .I1(p_0_in6_in),
        .O(\n_0_TX_DATA[13]_i_4 ));
LUT6 #(
    .INIT(64'hAAFBAAFAAAABAAAA)) 
     \TX_DATA[14]_i_1 
       (.I0(\n_0_TX_DATA[14]_i_2 ),
        .I1(p_1_in),
        .I2(tx_pe_data_v_r),
        .I3(gen_k_fsm_r),
        .I4(\n_0_TX_DATA[14]_i_3 ),
        .I5(tx_pe_data_r[1]),
        .O(\n_0_TX_DATA[14]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABAA)) 
     \TX_DATA[14]_i_2 
       (.I0(gen_cc_r),
        .I1(gen_k_fsm_r),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in1_in),
        .I4(gen_scp_r),
        .I5(gen_ecp_r),
        .O(\n_0_TX_DATA[14]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'hFFF1)) 
     \TX_DATA[14]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in6_in),
        .I2(p_2_in),
        .I3(gen_a_r),
        .O(\n_0_TX_DATA[14]_i_3 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \TX_DATA[15]_i_1 
       (.I0(\n_0_TX_DATA[15]_i_3 ),
        .I1(\n_0_TX_DATA[15]_i_4 ),
        .I2(p_0_in),
        .I3(gen_a_r),
        .I4(p_0_in6_in),
        .O(\n_0_TX_DATA[15]_i_1 ));
LUT5 #(
    .INIT(32'hEFEEEEEE)) 
     \TX_DATA[15]_i_2 
       (.I0(\n_0_TX_DATA[15]_i_5 ),
        .I1(\n_0_TX_DATA[15]_i_6 ),
        .I2(gen_scp_r),
        .I3(tx_pe_data_v_r),
        .I4(tx_pe_data_r[0]),
        .O(\n_0_TX_DATA[15]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \TX_DATA[15]_i_3 
       (.I0(gen_cc_r),
        .I1(gen_k_fsm_r),
        .I2(gen_scp_r),
        .I3(gen_ecp_r),
        .O(\n_0_TX_DATA[15]_i_3 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \TX_DATA[15]_i_4 
       (.I0(p_2_in),
        .I1(p_1_in),
        .I2(tx_pe_data_v_r),
        .I3(p_0_in1_in),
        .O(\n_0_TX_DATA[15]_i_4 ));
LUT4 #(
    .INIT(16'h00FE)) 
     \TX_DATA[15]_i_5 
       (.I0(gen_ecp_r),
        .I1(gen_k_fsm_r),
        .I2(gen_cc_r),
        .I3(gen_scp_r),
        .O(\n_0_TX_DATA[15]_i_5 ));
LUT6 #(
    .INIT(64'h4040404044444044)) 
     \TX_DATA[15]_i_6 
       (.I0(p_1_in),
        .I1(\n_0_TX_DATA[13]_i_3 ),
        .I2(p_2_in),
        .I3(p_0_in),
        .I4(p_0_in6_in),
        .I5(gen_a_r),
        .O(\n_0_TX_DATA[15]_i_6 ));
LUT6 #(
    .INIT(64'hFFFF2F2FFFFF2F20)) 
     \TX_DATA[1]_i_1 
       (.I0(tx_pe_data_r[14]),
        .I1(gen_pad_r),
        .I2(tx_pe_data_v_r),
        .I3(gen_cc_r),
        .I4(\n_0_TX_DATA[9]_i_2 ),
        .I5(\n_0_gen_sp_data_r_reg[1] ),
        .O(\n_0_TX_DATA[1]_i_1 ));
LUT5 #(
    .INIT(32'hAFAEAEAE)) 
     \TX_DATA[2]_i_1 
       (.I0(\n_0_TX_DATA[2]_i_2 ),
        .I1(gen_ecp_r),
        .I2(gen_scp_r),
        .I3(gen_pad_r),
        .I4(tx_pe_data_v_r),
        .O(\n_0_TX_DATA[2]_i_1 ));
LUT6 #(
    .INIT(64'h00000000CCAACCFA)) 
     \TX_DATA[2]_i_2 
       (.I0(gen_cc_r),
        .I1(tx_pe_data_r[13]),
        .I2(\n_0_TX_DATA[6]_i_3 ),
        .I3(tx_pe_data_v_r),
        .I4(\n_0_gen_sp_data_r_reg[1] ),
        .I5(gen_scp_r),
        .O(\n_0_TX_DATA[2]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFCFFF5FFF5)) 
     \TX_DATA[3]_i_1 
       (.I0(gen_cc_r),
        .I1(tx_pe_data_r[12]),
        .I2(gen_ecp_r),
        .I3(gen_scp_r),
        .I4(gen_pad_r),
        .I5(tx_pe_data_v_r),
        .O(\n_0_TX_DATA[3]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFF2FF22FF22)) 
     \TX_DATA[4]_i_1 
       (.I0(\n_0_TX_DATA[4]_i_2 ),
        .I1(\n_0_TX_DATA[7]_i_3 ),
        .I2(tx_pe_data_r[11]),
        .I3(\n_0_TX_DATA[6]_i_2 ),
        .I4(gen_pad_r),
        .I5(tx_pe_data_v_r),
        .O(\n_0_TX_DATA[4]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \TX_DATA[4]_i_2 
       (.I0(\n_0_gen_k_r_reg[1] ),
        .I1(\n_0_gen_r_r_reg[1] ),
        .O(\n_0_TX_DATA[4]_i_2 ));
LUT6 #(
    .INIT(64'hEEEEEEEEEEEEFFEF)) 
     \TX_DATA[5]_i_1 
       (.I0(\n_0_TX_DATA[5]_i_2 ),
        .I1(\n_0_TX_DATA[6]_i_2 ),
        .I2(\n_0_gen_r_r_reg[1] ),
        .I3(\n_0_gen_k_r_reg[1] ),
        .I4(tx_pe_data_v_r),
        .I5(\n_0_gen_sp_data_r_reg[1] ),
        .O(\n_0_TX_DATA[5]_i_1 ));
LUT6 #(
    .INIT(64'h220F220F220F2200)) 
     \TX_DATA[5]_i_2 
       (.I0(tx_pe_data_r[10]),
        .I1(gen_pad_r),
        .I2(\n_0_gen_sp_data_r_reg[1] ),
        .I3(tx_pe_data_v_r),
        .I4(O1),
        .I5(p_3_in),
        .O(\n_0_TX_DATA[5]_i_2 ));
LUT6 #(
    .INIT(64'hCFCCEEEECFCCFFFF)) 
     \TX_DATA[6]_i_1 
       (.I0(\n_0_gen_sp_data_r_reg[1] ),
        .I1(\n_0_TX_DATA[6]_i_2 ),
        .I2(gen_pad_r),
        .I3(tx_pe_data_r[9]),
        .I4(tx_pe_data_v_r),
        .I5(\n_0_TX_DATA[6]_i_3 ),
        .O(\n_0_TX_DATA[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'hFFF4)) 
     \TX_DATA[6]_i_2 
       (.I0(tx_pe_data_v_r),
        .I1(gen_cc_r),
        .I2(gen_scp_r),
        .I3(gen_ecp_r),
        .O(\n_0_TX_DATA[6]_i_2 ));
LUT4 #(
    .INIT(16'hAAFE)) 
     \TX_DATA[6]_i_3 
       (.I0(O1),
        .I1(\n_0_gen_k_r_reg[1] ),
        .I2(\n_0_gen_r_r_reg[1] ),
        .I3(p_3_in),
        .O(\n_0_TX_DATA[6]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \TX_DATA[7]_i_1 
       (.I0(\n_0_TX_DATA[7]_i_3 ),
        .I1(\n_0_gen_k_r_reg[1] ),
        .I2(\n_0_gen_r_r_reg[1] ),
        .I3(gen_ecp_r),
        .I4(gen_scp_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[7]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFAFEFEFFFA)) 
     \TX_DATA[7]_i_2 
       (.I0(\n_0_TX_DATA[7]_i_4 ),
        .I1(tx_pe_data_r[8]),
        .I2(\n_0_TX_DATA[9]_i_2 ),
        .I3(gen_cc_r),
        .I4(tx_pe_data_v_r),
        .I5(gen_pad_r),
        .O(\n_0_TX_DATA[7]_i_2 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \TX_DATA[7]_i_3 
       (.I0(p_3_in),
        .I1(O1),
        .I2(tx_pe_data_v_r),
        .I3(\n_0_gen_sp_data_r_reg[1] ),
        .O(\n_0_TX_DATA[7]_i_3 ));
LUT6 #(
    .INIT(64'h0101010001010101)) 
     \TX_DATA[7]_i_4 
       (.I0(O1),
        .I1(\n_0_gen_sp_data_r_reg[1] ),
        .I2(tx_pe_data_v_r),
        .I3(p_3_in),
        .I4(\n_0_gen_k_r_reg[1] ),
        .I5(\n_0_gen_r_r_reg[1] ),
        .O(\n_0_TX_DATA[7]_i_4 ));
LUT6 #(
    .INIT(64'h00000000EFEEEEEE)) 
     \TX_DATA[8]_i_1 
       (.I0(gen_ecp_r),
        .I1(gen_cc_r),
        .I2(gen_k_fsm_r),
        .I3(tx_pe_data_v_r),
        .I4(tx_pe_data_r[7]),
        .I5(gen_scp_r),
        .O(\n_0_TX_DATA[8]_i_1 ));
LUT6 #(
    .INIT(64'h3333333300002230)) 
     \TX_DATA[9]_i_1 
       (.I0(tx_pe_data_r[6]),
        .I1(\n_0_TX_DATA[9]_i_2 ),
        .I2(p_0_in1_in),
        .I3(tx_pe_data_v_r),
        .I4(gen_k_fsm_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[9]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \TX_DATA[9]_i_2 
       (.I0(gen_ecp_r),
        .I1(gen_scp_r),
        .O(\n_0_TX_DATA[9]_i_2 ));
FDRE \TX_DATA_reg[0] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[0]_i_1 ),
        .Q(TXDATA[8]),
        .R(1'b0));
FDRE \TX_DATA_reg[10] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[10]_i_1 ),
        .Q(TXDATA[2]),
        .R(1'b0));
FDRE \TX_DATA_reg[11] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[11]_i_1 ),
        .Q(TXDATA[3]),
        .R(1'b0));
FDRE \TX_DATA_reg[12] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[12]_i_1 ),
        .Q(TXDATA[4]),
        .R(1'b0));
FDRE \TX_DATA_reg[13] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[13]_i_1 ),
        .Q(TXDATA[5]),
        .R(1'b0));
FDRE \TX_DATA_reg[14] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[14]_i_1 ),
        .Q(TXDATA[6]),
        .R(1'b0));
FDRE \TX_DATA_reg[15] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[15]_i_2 ),
        .Q(TXDATA[7]),
        .R(1'b0));
FDRE \TX_DATA_reg[1] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[1]_i_1 ),
        .Q(TXDATA[9]),
        .R(1'b0));
FDRE \TX_DATA_reg[2] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[2]_i_1 ),
        .Q(TXDATA[10]),
        .R(1'b0));
FDRE \TX_DATA_reg[3] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[3]_i_1 ),
        .Q(TXDATA[11]),
        .R(1'b0));
FDRE \TX_DATA_reg[4] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[4]_i_1 ),
        .Q(TXDATA[12]),
        .R(1'b0));
FDRE \TX_DATA_reg[5] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[5]_i_1 ),
        .Q(TXDATA[13]),
        .R(1'b0));
FDRE \TX_DATA_reg[6] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[6]_i_1 ),
        .Q(TXDATA[14]),
        .R(1'b0));
FDRE \TX_DATA_reg[7] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[7]_i_2 ),
        .Q(TXDATA[15]),
        .R(1'b0));
FDRE \TX_DATA_reg[8] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[8]_i_1 ),
        .Q(TXDATA[0]),
        .R(1'b0));
FDRE \TX_DATA_reg[9] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[9]_i_1 ),
        .Q(TXDATA[1]),
        .R(1'b0));
FDRE gen_a_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_i),
        .Q(gen_a_r),
        .R(1'b0));
FDRE gen_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(1'b0));
FDRE gen_ecp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP),
        .Q(gen_ecp_r),
        .R(1'b0));
FDRE gen_k_fsm_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_i),
        .Q(gen_k_fsm_r),
        .R(1'b0));
FDRE \gen_k_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I8[1]),
        .Q(p_0_in6_in),
        .R(1'b0));
FDRE \gen_k_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I8[0]),
        .Q(\n_0_gen_k_r_reg[1] ),
        .R(1'b0));
FDRE gen_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_PAD),
        .Q(gen_pad_r),
        .R(1'b0));
FDRE \gen_r_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I7[1]),
        .Q(p_0_in),
        .R(1'b0));
FDRE \gen_r_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I7[0]),
        .Q(\n_0_gen_r_r_reg[1] ),
        .R(1'b0));
FDRE gen_scp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SCP),
        .Q(gen_scp_r),
        .R(1'b0));
FDRE \gen_sp_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_0_in1_in),
        .R(1'b0));
FDRE \gen_sp_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\n_0_gen_sp_data_r_reg[1] ),
        .R(1'b0));
FDRE \gen_spa_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_spa_data_i),
        .Q(p_1_in),
        .R(1'b0));
FDRE \gen_spa_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(ack_r),
        .Q(O1),
        .R(1'b0));
FDRE \gen_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I6[1]),
        .Q(p_2_in),
        .R(1'b0));
FDRE \gen_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I6[0]),
        .Q(p_3_in),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(tx_pe_data_r[0]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(tx_pe_data_r[10]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(tx_pe_data_r[11]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(tx_pe_data_r[12]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(tx_pe_data_r[13]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(tx_pe_data_r[14]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(tx_pe_data_r[15]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(tx_pe_data_r[1]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(tx_pe_data_r[2]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(tx_pe_data_r[3]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(tx_pe_data_r[4]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(tx_pe_data_r[5]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(tx_pe_data_r[6]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(tx_pe_data_r[7]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(tx_pe_data_r[8]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(tx_pe_data_r[9]),
        .R(1'b0));
FDRE tx_pe_data_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_PE_DATA_V),
        .Q(tx_pe_data_v_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL
   (gen_cc_i,
    GEN_PAD,
    TX_PE_DATA_V,
    GEN_ECP,
    GEN_SCP,
    tx_dst_rdy,
    s_axi_tx_tready,
    Q,
    reset_i,
    user_clk,
    do_cc,
    O127,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    I1,
    s_axi_tx_tkeep,
    I2,
    s_axi_tx_tdata);
  output gen_cc_i;
  output GEN_PAD;
  output TX_PE_DATA_V;
  output GEN_ECP;
  output GEN_SCP;
  output tx_dst_rdy;
  output s_axi_tx_tready;
  output [15:0]Q;
  input reset_i;
  input user_clk;
  input do_cc;
  input O127;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input I1;
  input [0:1]s_axi_tx_tkeep;
  input I2;
  input [0:15]s_axi_tx_tdata;

  wire GEN_ECP;
  wire GEN_PAD;
  wire GEN_SCP;
  wire I1;
  wire I2;
  wire O127;
  wire [15:0]Q;
  wire TX_PE_DATA_V;
  wire do_cc;
  wire do_cc_r;
  wire gen_cc_i;
  wire n_2_tx_ll_datapath_i;
  wire n_6_tx_ll_control_i;
  wire pdu_ok_c;
  wire reset_i;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire storage_pad_r0;
  wire tx_dst_rdy;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL tx_ll_control_i
       (.E(pdu_ok_c),
        .GEN_ECP(GEN_ECP),
        .GEN_SCP(GEN_SCP),
        .I1(I1),
        .I2(n_2_tx_ll_datapath_i),
        .I3(I2),
        .O1(tx_dst_rdy),
        .O127(O127),
        .O2(n_6_tx_ll_control_i),
        .do_cc(do_cc),
        .do_cc_r(do_cc_r),
        .gen_cc_i(gen_cc_i),
        .reset_i(reset_i),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .storage_pad_r0(storage_pad_r0),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH tx_ll_datapath_i
       (.E(pdu_ok_c),
        .GEN_PAD(GEN_PAD),
        .I1(n_6_tx_ll_control_i),
        .I2(I1),
        .O1(n_2_tx_ll_datapath_i),
        .Q(Q),
        .TX_PE_DATA_V(TX_PE_DATA_V),
        .do_cc_r(do_cc_r),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .storage_pad_r0(storage_pad_r0),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL
   (gen_cc_i,
    do_cc_r,
    GEN_ECP,
    GEN_SCP,
    O1,
    E,
    O2,
    s_axi_tx_tready,
    storage_pad_r0,
    reset_i,
    user_clk,
    do_cc,
    O127,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    I1,
    I2,
    s_axi_tx_tkeep,
    I3);
  output gen_cc_i;
  output do_cc_r;
  output GEN_ECP;
  output GEN_SCP;
  output O1;
  output [0:0]E;
  output O2;
  output s_axi_tx_tready;
  output storage_pad_r0;
  input reset_i;
  input user_clk;
  input do_cc;
  input O127;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input I1;
  input I2;
  input [0:1]s_axi_tx_tkeep;
  input I3;

  wire [0:0]E;
  wire GEN_ECP;
  wire GEN_ECP0;
  wire GEN_SCP;
  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire O127;
  wire O2;
  wire data_eof_1_r;
  wire data_eof_2_r;
  wire data_eof_3_r;
  wire data_r;
  wire do_cc;
  wire do_cc_r;
  wire gen_cc_i;
  wire idle_r;
  wire n_0_GEN_SCP_i_1;
  wire n_0_TX_DST_RDY_N_i_2;
  wire n_0_TX_DST_RDY_N_i_3;
  wire n_0_storage_pad_r_i_2;
  wire next_data_c;
  wire next_data_eof_1_c;
  wire next_idle_c;
  wire next_sof_c;
  wire next_sof_data_eof_1_c;
  wire reset_i;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire sof_data_eof_1_r;
  wire sof_data_eof_2_r;
  wire sof_data_eof_3_r;
  wire sof_r;
  wire storage_pad_r0;
  wire tx_dst_rdy_n_c;
  wire user_clk;

LUT3 #(
    .INIT(8'h0E)) 
     GEN_ECP_i_1
       (.I0(sof_data_eof_3_r),
        .I1(data_eof_3_r),
        .I2(do_cc_r),
        .O(GEN_ECP0));
FDRE GEN_ECP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP0),
        .Q(GEN_ECP),
        .R(reset_i));
LUT3 #(
    .INIT(8'h54)) 
     GEN_SCP_i_1
       (.I0(do_cc_r),
        .I1(sof_data_eof_1_r),
        .I2(sof_r),
        .O(n_0_GEN_SCP_i_1));
FDRE GEN_SCP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_GEN_SCP_i_1),
        .Q(GEN_SCP),
        .R(reset_i));
LUT6 #(
    .INIT(64'hFFFFFFFF0000FEAA)) 
     TX_DST_RDY_N_i_1
       (.I0(next_sof_data_eof_1_c),
        .I1(data_r),
        .I2(sof_r),
        .I3(n_0_TX_DST_RDY_N_i_2),
        .I4(do_cc_r),
        .I5(n_0_TX_DST_RDY_N_i_3),
        .O(tx_dst_rdy_n_c));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'h08)) 
     TX_DST_RDY_N_i_2
       (.I0(s_axi_tx_tlast),
        .I1(s_axi_tx_tvalid),
        .I2(O1),
        .O(n_0_TX_DST_RDY_N_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
     TX_DST_RDY_N_i_3
       (.I0(data_eof_1_r),
        .I1(sof_data_eof_1_r),
        .I2(do_cc),
        .I3(data_eof_2_r),
        .I4(sof_data_eof_2_r),
        .I5(do_cc_r),
        .O(n_0_TX_DST_RDY_N_i_3));
FDSE TX_DST_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_dst_rdy_n_c),
        .Q(O1),
        .S(reset_i));
LUT5 #(
    .INIT(32'h40404000)) 
     data_eof_1_r_i_1
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(s_axi_tx_tlast),
        .I3(sof_r),
        .I4(data_r),
        .O(next_data_eof_1_c));
FDRE data_eof_1_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_data_eof_1_c),
        .Q(data_eof_1_r),
        .R(reset_i));
FDRE data_eof_2_r_reg
       (.C(user_clk),
        .CE(E),
        .D(data_eof_1_r),
        .Q(data_eof_2_r),
        .R(reset_i));
FDRE data_eof_3_r_reg
       (.C(user_clk),
        .CE(E),
        .D(data_eof_2_r),
        .Q(data_eof_3_r),
        .R(reset_i));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT5 #(
    .INIT(32'hBFBFBF00)) 
     data_r_i_1
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(s_axi_tx_tlast),
        .I3(sof_r),
        .I4(data_r),
        .O(next_data_c));
FDRE data_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_data_c),
        .Q(data_r),
        .R(reset_i));
FDRE do_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc),
        .Q(do_cc_r),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_cc_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc_r),
        .Q(gen_cc_i),
        .R(reset_i));
LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFB00)) 
     idle_r_i_1
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(I1),
        .I3(data_eof_3_r),
        .I4(sof_data_eof_3_r),
        .I5(idle_r),
        .O(next_idle_c));
FDSE idle_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_idle_c),
        .Q(idle_r),
        .S(reset_i));
LUT6 #(
    .INIT(64'hA2AAA2AA00000200)) 
     in_frame_r_i_1
       (.I0(O127),
        .I1(s_axi_tx_tlast),
        .I2(O1),
        .I3(s_axi_tx_tvalid),
        .I4(I1),
        .I5(I2),
        .O(O2));
LUT1 #(
    .INIT(2'h1)) 
     s_axi_tx_tready_INST_0
       (.I0(O1),
        .O(s_axi_tx_tready));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT5 #(
    .INIT(32'h0000AAA8)) 
     sof_data_eof_1_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(idle_r),
        .I2(sof_data_eof_3_r),
        .I3(data_eof_3_r),
        .I4(I3),
        .O(next_sof_data_eof_1_c));
FDRE sof_data_eof_1_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_sof_data_eof_1_c),
        .Q(sof_data_eof_1_r),
        .R(reset_i));
FDRE sof_data_eof_2_r_reg
       (.C(user_clk),
        .CE(E),
        .D(sof_data_eof_1_r),
        .Q(sof_data_eof_2_r),
        .R(reset_i));
FDRE sof_data_eof_3_r_reg
       (.C(user_clk),
        .CE(E),
        .D(sof_data_eof_2_r),
        .Q(sof_data_eof_3_r),
        .R(reset_i));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT5 #(
    .INIT(32'h00005554)) 
     sof_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(idle_r),
        .I2(sof_data_eof_3_r),
        .I3(data_eof_3_r),
        .I4(I3),
        .O(next_sof_c));
FDRE sof_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_sof_c),
        .Q(sof_r),
        .R(reset_i));
LUT6 #(
    .INIT(64'h0000000045000000)) 
     storage_pad_r_i_1
       (.I0(n_0_storage_pad_r_i_2),
        .I1(I2),
        .I2(I1),
        .I3(s_axi_tx_tlast),
        .I4(s_axi_tx_tkeep[0]),
        .I5(s_axi_tx_tkeep[1]),
        .O(storage_pad_r0));
LUT2 #(
    .INIT(4'hB)) 
     storage_pad_r_i_2
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .O(n_0_storage_pad_r_i_2));
LUT1 #(
    .INIT(2'h1)) 
     \storage_r[0]_i_1 
       (.I0(do_cc_r),
        .O(E));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL_DATAPATH" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH
   (GEN_PAD,
    TX_PE_DATA_V,
    O1,
    Q,
    user_clk,
    E,
    storage_pad_r0,
    I1,
    do_cc_r,
    I2,
    tx_dst_rdy,
    s_axi_tx_tvalid,
    s_axi_tx_tdata);
  output GEN_PAD;
  output TX_PE_DATA_V;
  output O1;
  output [15:0]Q;
  input user_clk;
  input [0:0]E;
  input storage_pad_r0;
  input I1;
  input do_cc_r;
  input I2;
  input tx_dst_rdy;
  input s_axi_tx_tvalid;
  input [0:15]s_axi_tx_tdata;

  wire [0:0]E;
  wire GEN_PAD;
  wire GEN_PAD0;
  wire I1;
  wire I2;
  wire O1;
  wire [15:0]Q;
  wire TX_PE_DATA_V;
  wire TX_PE_DATA_V0;
  wire do_cc_r;
  wire gen_pad_r;
  wire in_frame_c;
  wire \n_0_tx_pe_data_r_reg[0] ;
  wire \n_0_tx_pe_data_r_reg[10] ;
  wire \n_0_tx_pe_data_r_reg[11] ;
  wire \n_0_tx_pe_data_r_reg[12] ;
  wire \n_0_tx_pe_data_r_reg[13] ;
  wire \n_0_tx_pe_data_r_reg[14] ;
  wire \n_0_tx_pe_data_r_reg[15] ;
  wire \n_0_tx_pe_data_r_reg[1] ;
  wire \n_0_tx_pe_data_r_reg[2] ;
  wire \n_0_tx_pe_data_r_reg[3] ;
  wire \n_0_tx_pe_data_r_reg[4] ;
  wire \n_0_tx_pe_data_r_reg[5] ;
  wire \n_0_tx_pe_data_r_reg[6] ;
  wire \n_0_tx_pe_data_r_reg[7] ;
  wire \n_0_tx_pe_data_r_reg[8] ;
  wire \n_0_tx_pe_data_r_reg[9] ;
  wire [0:15]s_axi_tx_tdata;
  wire s_axi_tx_tvalid;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire [0:15]storage_r;
  wire storage_v_r;
  wire tx_dst_rdy;
  wire tx_pe_data_v_r;
  wire user_clk;

LUT2 #(
    .INIT(4'h2)) 
     GEN_PAD_i_1
       (.I0(gen_pad_r),
        .I1(do_cc_r),
        .O(GEN_PAD0));
FDRE GEN_PAD_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_PAD0),
        .Q(GEN_PAD),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     TX_PE_DATA_V_i_1
       (.I0(tx_pe_data_v_r),
        .I1(do_cc_r),
        .O(TX_PE_DATA_V0));
FDRE TX_PE_DATA_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_PE_DATA_V0),
        .Q(TX_PE_DATA_V),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[0] ),
        .Q(Q[15]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[10] ),
        .Q(Q[5]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[11] ),
        .Q(Q[4]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[12] ),
        .Q(Q[3]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[13] ),
        .Q(Q[2]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[14] ),
        .Q(Q[1]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[15] ),
        .Q(Q[0]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[1] ),
        .Q(Q[14]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[2] ),
        .Q(Q[13]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[3] ),
        .Q(Q[12]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[4] ),
        .Q(Q[11]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[5] ),
        .Q(Q[10]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[6] ),
        .Q(Q[9]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[7] ),
        .Q(Q[8]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[8] ),
        .Q(Q[7]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[9] ),
        .Q(Q[6]),
        .R(1'b0));
FDRE gen_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r),
        .Q(gen_pad_r),
        .R(1'b0));
FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(I1),
        .Q(O1),
        .R(1'b0));
FDRE storage_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(1'b0));
FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[0]),
        .Q(storage_r[0]),
        .R(1'b0));
FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[10]),
        .Q(storage_r[10]),
        .R(1'b0));
FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[11]),
        .Q(storage_r[11]),
        .R(1'b0));
FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[12]),
        .Q(storage_r[12]),
        .R(1'b0));
FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[13]),
        .Q(storage_r[13]),
        .R(1'b0));
FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[14]),
        .Q(storage_r[14]),
        .R(1'b0));
FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[15]),
        .Q(storage_r[15]),
        .R(1'b0));
FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[1]),
        .Q(storage_r[1]),
        .R(1'b0));
FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[2]),
        .Q(storage_r[2]),
        .R(1'b0));
FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[3]),
        .Q(storage_r[3]),
        .R(1'b0));
FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[4]),
        .Q(storage_r[4]),
        .R(1'b0));
FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[5]),
        .Q(storage_r[5]),
        .R(1'b0));
FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[6]),
        .Q(storage_r[6]),
        .R(1'b0));
FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[7]),
        .Q(storage_r[7]),
        .R(1'b0));
FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[8]),
        .Q(storage_r[8]),
        .R(1'b0));
FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[9]),
        .Q(storage_r[9]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h0D00)) 
     storage_v_r_i_1
       (.I0(I2),
        .I1(O1),
        .I2(tx_dst_rdy),
        .I3(s_axi_tx_tvalid),
        .O(in_frame_c));
FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(in_frame_c),
        .Q(storage_v_r),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[0]),
        .Q(\n_0_tx_pe_data_r_reg[0] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[10]),
        .Q(\n_0_tx_pe_data_r_reg[10] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[11]),
        .Q(\n_0_tx_pe_data_r_reg[11] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[12]),
        .Q(\n_0_tx_pe_data_r_reg[12] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[13]),
        .Q(\n_0_tx_pe_data_r_reg[13] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[14]),
        .Q(\n_0_tx_pe_data_r_reg[14] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[15]),
        .Q(\n_0_tx_pe_data_r_reg[15] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[1]),
        .Q(\n_0_tx_pe_data_r_reg[1] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[2]),
        .Q(\n_0_tx_pe_data_r_reg[2] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[3]),
        .Q(\n_0_tx_pe_data_r_reg[3] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[4]),
        .Q(\n_0_tx_pe_data_r_reg[4] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[5]),
        .Q(\n_0_tx_pe_data_r_reg[5] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[6]),
        .Q(\n_0_tx_pe_data_r_reg[6] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[7]),
        .Q(\n_0_tx_pe_data_r_reg[7] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[8]),
        .Q(\n_0_tx_pe_data_r_reg[8] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[9]),
        .Q(\n_0_tx_pe_data_r_reg[9] ),
        .R(1'b0));
FDRE tx_pe_data_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r),
        .Q(tx_pe_data_v_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync
   (s_out_d1_cdc_to_14,
    s_out_d2_15,
    s_out_d3_16,
    s_out_d4_17,
    s_out_d5_18,
    s_out_d6_19,
    s_out_d7_20,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    reset,
    init_clk_in);
  output s_out_d1_cdc_to_14;
  output s_out_d2_15;
  output s_out_d3_16;
  output s_out_d4_17;
  output s_out_d5_18;
  output s_out_d6_19;
  output s_out_d7_20;
  output [1:0]O18;
  output [1:0]O19;
  output [1:0]O20;
  output [1:0]O21;
  output [1:0]O22;
  output [1:0]O23;
  input reset;
  input init_clk_in;

  wire [1:0]O18;
  wire [1:0]O19;
  wire [1:0]O20;
  wire [1:0]O21;
  wire [1:0]O22;
  wire [1:0]O23;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_14;
  wire s_out_d2_15;
  wire s_out_d3_16;
  wire s_out_d4_17;
  wire s_out_d5_18;
  wire s_out_d6_19;
  wire s_out_d7_20;

  assign p_level_in_int = reset;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_14));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_15));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O19[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O20[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O20[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O21[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O21[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O22[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O22[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O23[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O23[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_16));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_17));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_18));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_19));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_20));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O18[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O18[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O19[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0
   (O1,
    s_out_d1_cdc_to_28,
    s_out_d2_29,
    s_out_d3_30,
    s_out_d4_31,
    s_out_d5_32,
    s_out_d6_33,
    s_out_d7_34,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    gtrxreset_i_0,
    init_clk_in);
  output O1;
  output s_out_d1_cdc_to_28;
  output s_out_d2_29;
  output s_out_d3_30;
  output s_out_d4_31;
  output s_out_d5_32;
  output s_out_d6_33;
  output s_out_d7_34;
  output [1:0]O30;
  output [1:0]O31;
  output [1:0]O32;
  output [1:0]O33;
  output [1:0]O34;
  output [1:0]O35;
  input gtrxreset_i_0;
  input init_clk_in;

  wire [1:0]O30;
  wire [1:0]O31;
  wire [1:0]O32;
  wire [1:0]O33;
  wire [1:0]O34;
  wire [1:0]O35;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_28;
  wire s_out_d2_29;
  wire s_out_d3_30;
  wire s_out_d4_31;
  wire s_out_d5_32;
  wire s_out_d6_33;
  wire s_out_d7_34;

  assign O1 = s_level_out_d4;
  assign p_level_in_int = gtrxreset_i_0;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_28));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_29));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O31[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O32[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O32[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O33[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O33[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O34[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O34[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O35[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O35[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_30));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_31));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_32));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_33));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_34));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O30[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O30[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O31[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1
   (txresetdone_s3,
    s_out_d1_cdc_to_56,
    s_out_d2_57,
    s_out_d3_58,
    s_out_d4_59,
    s_out_d5_60,
    s_out_d6_61,
    s_out_d7_62,
    O54,
    O55,
    O56,
    O57,
    O58,
    O59,
    O1,
    txfsm_txresetdone_r,
    init_clk_in,
    reset_time_out,
    I1,
    out,
    I2,
    cplllock_sync);
  output txresetdone_s3;
  output s_out_d1_cdc_to_56;
  output s_out_d2_57;
  output s_out_d3_58;
  output s_out_d4_59;
  output s_out_d5_60;
  output s_out_d6_61;
  output s_out_d7_62;
  output [1:0]O54;
  output [1:0]O55;
  output [1:0]O56;
  output [1:0]O57;
  output [1:0]O58;
  output [1:0]O59;
  output O1;
  input txfsm_txresetdone_r;
  input init_clk_in;
  input reset_time_out;
  input I1;
  input [0:0]out;
  input I2;
  input cplllock_sync;

  wire I1;
  wire I2;
  wire O1;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire cplllock_sync;
  wire init_clk_in;
  wire [0:0]out;
  wire p_level_in_int;
  wire reset_time_out;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_56;
  wire s_out_d2_57;
  wire s_out_d3_58;
  wire s_out_d4_59;
  wire s_out_d5_60;
  wire s_out_d6_61;
  wire s_out_d7_62;

  assign p_level_in_int = txfsm_txresetdone_r;
  assign txresetdone_s3 = s_level_out_d4;
LUT6 #(
    .INIT(64'hBAFFBAFFBAFFBA00)) 
     \FSM_sequential_tx_state[3]_i_8 
       (.I0(s_level_out_d4),
        .I1(reset_time_out),
        .I2(I1),
        .I3(out),
        .I4(I2),
        .I5(cplllock_sync),
        .O(O1));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_56));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_57));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O55[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O56[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O56[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O57[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O57[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O58[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O58[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O59[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O59[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_58));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_59));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_60));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_61));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_62));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O54[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O54[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O55[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_10
   (data_valid_sync,
    s_out_d1_cdc_to_119,
    s_out_d2_120,
    s_out_d3_121,
    s_out_d4_122,
    s_out_d5_123,
    s_out_d6_124,
    s_out_d7_125,
    O108,
    O109,
    O110,
    O111,
    O112,
    O113,
    O1,
    O2,
    D,
    O3,
    gt_rxuserrdy_i,
    init_clk_in,
    out,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    time_out_wait_bypass_s3,
    rx_state16_out,
    I8);
  output data_valid_sync;
  output s_out_d1_cdc_to_119;
  output s_out_d2_120;
  output s_out_d3_121;
  output s_out_d4_122;
  output s_out_d5_123;
  output s_out_d6_124;
  output s_out_d7_125;
  output [1:0]O108;
  output [1:0]O109;
  output [1:0]O110;
  output [1:0]O111;
  output [1:0]O112;
  output [1:0]O113;
  output O1;
  output O2;
  output [2:0]D;
  output O3;
  input gt_rxuserrdy_i;
  input init_clk_in;
  input [3:0]out;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input time_out_wait_bypass_s3;
  input rx_state16_out;
  input I8;

  wire [2:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire O1;
  wire [1:0]O108;
  wire [1:0]O109;
  wire [1:0]O110;
  wire [1:0]O111;
  wire [1:0]O112;
  wire [1:0]O113;
  wire O2;
  wire O3;
  wire init_clk_in;
  wire \n_0_FSM_sequential_rx_state[0]_i_3 ;
  wire \n_0_FSM_sequential_rx_state[1]_i_2 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_6 ;
  wire n_0_reset_time_out_i_2__0;
  wire n_0_rx_fsm_reset_done_int_i_3;
  wire n_0_rx_fsm_reset_done_int_i_4;
  wire [3:0]out;
  wire p_level_in_int;
  wire rx_fsm_reset_done_int;
  wire rx_state16_out;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_119;
  wire s_out_d2_120;
  wire s_out_d3_121;
  wire s_out_d4_122;
  wire s_out_d5_123;
  wire s_out_d6_124;
  wire s_out_d7_125;
  wire time_out_wait_bypass_s3;

  assign data_valid_sync = s_level_out_d3;
  assign p_level_in_int = gt_rxuserrdy_i;
LUT6 #(
    .INIT(64'h000000000010FFFF)) 
     \FSM_sequential_rx_state[0]_i_3 
       (.I0(out[1]),
        .I1(s_level_out_d3),
        .I2(I6),
        .I3(I3),
        .I4(out[0]),
        .I5(out[2]),
        .O(\n_0_FSM_sequential_rx_state[0]_i_3 ));
LUT6 #(
    .INIT(64'h888833338BBB0000)) 
     \FSM_sequential_rx_state[1]_i_1 
       (.I0(\n_0_FSM_sequential_rx_state[1]_i_2 ),
        .I1(out[3]),
        .I2(rx_state16_out),
        .I3(out[2]),
        .I4(out[0]),
        .I5(out[1]),
        .O(D[1]));
LUT5 #(
    .INIT(32'h11111011)) 
     \FSM_sequential_rx_state[1]_i_2 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(s_level_out_d3),
        .I3(I6),
        .I4(I3),
        .O(\n_0_FSM_sequential_rx_state[1]_i_2 ));
LUT6 #(
    .INIT(64'h00000000000FFF4F)) 
     \FSM_sequential_rx_state[3]_i_4 
       (.I0(I3),
        .I1(I6),
        .I2(out[0]),
        .I3(s_level_out_d3),
        .I4(out[1]),
        .I5(out[2]),
        .O(O3));
LUT5 #(
    .INIT(32'h8888B8BB)) 
     \FSM_sequential_rx_state[3]_i_6 
       (.I0(\n_0_FSM_sequential_rx_state[1]_i_2 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(time_out_wait_bypass_s3),
        .I4(out[2]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_6 ));
MUXF7 \FSM_sequential_rx_state_reg[0]_i_1 
       (.I0(I5),
        .I1(\n_0_FSM_sequential_rx_state[0]_i_3 ),
        .O(D[0]),
        .S(out[3]));
MUXF7 \FSM_sequential_rx_state_reg[3]_i_2 
       (.I0(I7),
        .I1(\n_0_FSM_sequential_rx_state[3]_i_6 ),
        .O(D[2]),
        .S(out[3]));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_119));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_120));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O109[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O110[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O110[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O111[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O111[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O112[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O112[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O113[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O113[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_121));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_122));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_123));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_124));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_125));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O108[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O108[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O109[1]));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     reset_time_out_i_1__0
       (.I0(n_0_reset_time_out_i_2__0),
        .I1(out[3]),
        .I2(I1),
        .I3(I2),
        .I4(I3),
        .O(O1));
LUT4 #(
    .INIT(16'h001D)) 
     reset_time_out_i_2__0
       (.I0(out[0]),
        .I1(s_level_out_d3),
        .I2(out[1]),
        .I3(out[2]),
        .O(n_0_reset_time_out_i_2__0));
LUT6 #(
    .INIT(64'hABFBFFFFA8080000)) 
     rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(n_0_rx_fsm_reset_done_int_i_3),
        .I2(out[0]),
        .I3(n_0_rx_fsm_reset_done_int_i_4),
        .I4(out[3]),
        .I5(I4),
        .O(O2));
LUT5 #(
    .INIT(32'h00001000)) 
     rx_fsm_reset_done_int_i_2
       (.I0(out[0]),
        .I1(out[2]),
        .I2(s_level_out_d3),
        .I3(I8),
        .I4(I3),
        .O(rx_fsm_reset_done_int));
LUT5 #(
    .INIT(32'h000020AA)) 
     rx_fsm_reset_done_int_i_3
       (.I0(out[1]),
        .I1(I3),
        .I2(I8),
        .I3(s_level_out_d3),
        .I4(out[2]),
        .O(n_0_rx_fsm_reset_done_int_i_3));
LUT5 #(
    .INIT(32'h00004544)) 
     rx_fsm_reset_done_int_i_4
       (.I0(out[1]),
        .I1(s_level_out_d3),
        .I2(I3),
        .I3(I6),
        .I4(out[2]),
        .O(n_0_rx_fsm_reset_done_int_i_4));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11
   (s_out_d1_cdc_to_112,
    s_out_d2_113,
    s_out_d3_114,
    s_out_d4_115,
    s_out_d5_116,
    s_out_d6_117,
    s_out_d7_118,
    O102,
    O103,
    O104,
    O105,
    O106,
    O107,
    O1,
    SR,
    init_clk_in,
    mmcm_lock_reclocked,
    Q,
    I1);
  output s_out_d1_cdc_to_112;
  output s_out_d2_113;
  output s_out_d3_114;
  output s_out_d4_115;
  output s_out_d5_116;
  output s_out_d6_117;
  output s_out_d7_118;
  output [1:0]O102;
  output [1:0]O103;
  output [1:0]O104;
  output [1:0]O105;
  output [1:0]O106;
  output [1:0]O107;
  output O1;
  output [0:0]SR;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input I1;

  wire I1;
  wire O1;
  wire [1:0]O102;
  wire [1:0]O103;
  wire [1:0]O104;
  wire [1:0]O105;
  wire [1:0]O106;
  wire [1:0]O107;
  wire [1:0]Q;
  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_112;
  wire s_out_d2_113;
  wire s_out_d3_114;
  wire s_out_d4_115;
  wire s_out_d5_116;
  wire s_out_d6_117;
  wire s_out_d7_118;

LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_112));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O103[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O103[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O104[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O104[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O105[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O105[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O106[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O106[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O107[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O107[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_113));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_114));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_115));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_116));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_117));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_118));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O102[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O102[0]));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1__0 
       (.I0(s_level_out_d3),
        .O(SR));
LUT5 #(
    .INIT(32'hEAAA0000)) 
     mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(I1),
        .I3(Q[0]),
        .I4(s_level_out_d3),
        .O(O1));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12
   (s_out_d1_cdc_to_133,
    s_out_d2_134,
    s_out_d3_135,
    s_out_d4_136,
    s_out_d5_137,
    s_out_d6_138,
    s_out_d7_139,
    O120,
    O121,
    O122,
    O123,
    O124,
    O125,
    init_clk_in);
  output s_out_d1_cdc_to_133;
  output s_out_d2_134;
  output s_out_d3_135;
  output s_out_d4_136;
  output s_out_d5_137;
  output s_out_d6_138;
  output s_out_d7_139;
  output [1:0]O120;
  output [1:0]O121;
  output [1:0]O122;
  output [1:0]O123;
  output [1:0]O124;
  output [1:0]O125;
  input init_clk_in;

  wire [1:0]O120;
  wire [1:0]O121;
  wire [1:0]O122;
  wire [1:0]O123;
  wire [1:0]O124;
  wire [1:0]O125;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_133;
  wire s_out_d2_134;
  wire s_out_d3_135;
  wire s_out_d4_136;
  wire s_out_d5_137;
  wire s_out_d6_138;
  wire s_out_d7_139;

LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_133));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O121[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O121[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O122[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O122[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O123[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O123[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O124[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O124[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O125[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O125[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_134));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_135));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_136));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_137));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_138));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_139));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O120[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O120[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13
   (O1,
    s_out_d1_cdc_to_84,
    s_out_d2_85,
    s_out_d3_86,
    s_out_d4_87,
    s_out_d5_88,
    s_out_d6_89,
    s_out_d7_90,
    O78,
    O79,
    O80,
    O81,
    O82,
    O83,
    O2,
    I1,
    user_clk);
  output O1;
  output s_out_d1_cdc_to_84;
  output s_out_d2_85;
  output s_out_d3_86;
  output s_out_d4_87;
  output s_out_d5_88;
  output s_out_d6_89;
  output s_out_d7_90;
  output [1:0]O78;
  output [1:0]O79;
  output [1:0]O80;
  output [1:0]O81;
  output [1:0]O82;
  output [1:0]O83;
  output O2;
  input I1;
  input user_clk;

  wire O2;
  wire [1:0]O78;
  wire [1:0]O79;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_84;
  wire s_out_d2_85;
  wire s_out_d3_86;
  wire s_out_d4_87;
  wire s_out_d5_88;
  wire s_out_d6_89;
  wire s_out_d7_90;
  wire user_clk;

  assign O1 = s_level_out_d4;
  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_84));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_85));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O79[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O80[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O80[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O81[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O81[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O82[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O82[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O83[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O83[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_86));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_87));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_88));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_89));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_90));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O78[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O78[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O79[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1__0 
       (.I0(s_level_out_d4),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_14
   (s_out_d1_cdc_to_91,
    s_out_d2_92,
    s_out_d3_93,
    s_out_d4_94,
    s_out_d5_95,
    s_out_d6_96,
    s_out_d7_97,
    O84,
    O85,
    O86,
    O87,
    O88,
    O89,
    O1,
    O2,
    I1,
    user_clk,
    I2,
    wait_bypass_count_reg,
    I3,
    I4,
    I5);
  output s_out_d1_cdc_to_91;
  output s_out_d2_92;
  output s_out_d3_93;
  output s_out_d4_94;
  output s_out_d5_95;
  output s_out_d6_96;
  output s_out_d7_97;
  output [1:0]O84;
  output [1:0]O85;
  output [1:0]O86;
  output [1:0]O87;
  output [1:0]O88;
  output [1:0]O89;
  output O1;
  output O2;
  input I1;
  input user_clk;
  input I2;
  input [0:0]wait_bypass_count_reg;
  input I3;
  input I4;
  input I5;

  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire O2;
  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_91;
  wire s_out_d2_92;
  wire s_out_d3_93;
  wire s_out_d4_94;
  wire s_out_d5_95;
  wire s_out_d6_96;
  wire s_out_d7_97;
  wire user_clk;
  wire [0:0]wait_bypass_count_reg;

  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_91));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_92));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O85[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O86[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O86[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O87[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O87[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O88[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O88[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O89[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O89[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_93));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_94));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_95));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_96));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_97));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O84[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O84[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O85[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFF00FF0400000000)) 
     time_out_wait_bypass_i_1__0
       (.I0(I2),
        .I1(wait_bypass_count_reg),
        .I2(I3),
        .I3(I4),
        .I4(s_level_out_d4),
        .I5(I5),
        .O(O1));
LUT4 #(
    .INIT(16'h00FB)) 
     \wait_bypass_count[0]_i_2__0 
       (.I0(I2),
        .I1(wait_bypass_count_reg),
        .I2(I3),
        .I3(s_level_out_d4),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_15
   (time_out_wait_bypass_s3,
    s_out_d1_cdc_to_98,
    s_out_d2_99,
    s_out_d3_100,
    s_out_d4_101,
    s_out_d5_102,
    s_out_d6_103,
    s_out_d7_104,
    O90,
    O91,
    O92,
    O93,
    O94,
    O95,
    I1,
    init_clk_in);
  output time_out_wait_bypass_s3;
  output s_out_d1_cdc_to_98;
  output s_out_d2_99;
  output s_out_d3_100;
  output s_out_d4_101;
  output s_out_d5_102;
  output s_out_d6_103;
  output s_out_d7_104;
  output [1:0]O90;
  output [1:0]O91;
  output [1:0]O92;
  output [1:0]O93;
  output [1:0]O94;
  output [1:0]O95;
  input I1;
  input init_clk_in;

  wire [1:0]O90;
  wire [1:0]O91;
  wire [1:0]O92;
  wire [1:0]O93;
  wire [1:0]O94;
  wire [1:0]O95;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_98;
  wire s_out_d2_99;
  wire s_out_d3_100;
  wire s_out_d4_101;
  wire s_out_d5_102;
  wire s_out_d6_103;
  wire s_out_d7_104;

  assign p_level_in_int = I1;
  assign time_out_wait_bypass_s3 = s_level_out_d4;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_98));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_99));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O91[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O92[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O92[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O93[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O93[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O94[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O94[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O95[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O95[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_100));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_101));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_102));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_103));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_104));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O90[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O90[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O91[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_16
   (s_out_d1_cdc_to_0,
    s_out_d2_1,
    s_out_d3_2,
    s_out_d4_3,
    s_out_d5_4,
    s_out_d6_5,
    s_out_d7_6,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O1,
    link_reset_comb_r,
    user_clk,
    reset,
    tx_lock_sync,
    gt_rxresetdone_r3,
    gt_txresetdone_r3);
  output s_out_d1_cdc_to_0;
  output s_out_d2_1;
  output s_out_d3_2;
  output s_out_d4_3;
  output s_out_d5_4;
  output s_out_d6_5;
  output s_out_d7_6;
  output [1:0]O6;
  output [1:0]O7;
  output [1:0]O8;
  output [1:0]O9;
  output [1:0]O10;
  output [1:0]O11;
  output O1;
  input link_reset_comb_r;
  input user_clk;
  input reset;
  input tx_lock_sync;
  input gt_rxresetdone_r3;
  input gt_txresetdone_r3;

  wire O1;
  wire [1:0]O10;
  wire [1:0]O11;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [1:0]O9;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r3;
  wire p_level_in_int;
  wire reset;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_0;
  wire s_out_d2_1;
  wire s_out_d3_2;
  wire s_out_d4_3;
  wire s_out_d5_4;
  wire s_out_d6_5;
  wire s_out_d7_6;
  wire tx_lock_sync;
  wire user_clk;

  assign p_level_in_int = link_reset_comb_r;
LUT5 #(
    .INIT(32'hEFFFFFFF)) 
     SYSTEM_RESET_i_1
       (.I0(reset),
        .I1(s_level_out_d3),
        .I2(tx_lock_sync),
        .I3(gt_rxresetdone_r3),
        .I4(gt_txresetdone_r3),
        .O(O1));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_0));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_1));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O7[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O8[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O8[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O9[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O9[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O10[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O10[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O11[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O11[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_2));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_3));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_4));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_5));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_6));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O6[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O6[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O7[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_17
   (tx_lock_sync,
    s_out_d1_cdc_to_7,
    s_out_d2_8,
    s_out_d3_9,
    s_out_d4_10,
    s_out_d5_11,
    s_out_d6_12,
    s_out_d7_13,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    tx_lock_comb_r,
    user_clk);
  output tx_lock_sync;
  output s_out_d1_cdc_to_7;
  output s_out_d2_8;
  output s_out_d3_9;
  output s_out_d4_10;
  output s_out_d5_11;
  output s_out_d6_12;
  output s_out_d7_13;
  output [1:0]O12;
  output [1:0]O13;
  output [1:0]O14;
  output [1:0]O15;
  output [1:0]O16;
  output [1:0]O17;
  input tx_lock_comb_r;
  input user_clk;

  wire [1:0]O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire [1:0]O15;
  wire [1:0]O16;
  wire [1:0]O17;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_7;
  wire s_out_d2_8;
  wire s_out_d3_9;
  wire s_out_d4_10;
  wire s_out_d5_11;
  wire s_out_d6_12;
  wire s_out_d7_13;
  wire user_clk;

  assign p_level_in_int = tx_lock_comb_r;
  assign tx_lock_sync = s_level_out_d3;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_7));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_8));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O13[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O14[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O14[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O15[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O15[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O16[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O16[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O17[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O17[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_9));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_10));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_11));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_12));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_13));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O12[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O12[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O13[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_18
   (s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    I1,
    user_clk);
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output O6;
  input I1;
  input user_clk;

  wire [1:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire O6;
  wire [1:0]out;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to;
  wire s_out_d2;
  wire s_out_d3;
  wire s_out_d4;
  wire s_out_d5;
  wire s_out_d6;
  wire s_out_d7;
  wire user_clk;

  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h1)) 
     gt_txresetdone_r_i_1
       (.I0(s_level_out_d3),
        .O(O6));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O1[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O2[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O2[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O3[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O3[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O4[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O4[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O5[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O5[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(out[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(out[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O1[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_19
   (cc_sync,
    s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    rx_cc_extend_r2,
    init_clk_in);
  output cc_sync;
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O24;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  input rx_cc_extend_r2;
  input init_clk_in;

  wire [1:0]O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_21;
  wire s_out_d2_22;
  wire s_out_d3_23;
  wire s_out_d4_24;
  wire s_out_d5_25;
  wire s_out_d6_26;
  wire s_out_d7_27;

  assign cc_sync = s_level_out_d3;
  assign p_level_in_int = rx_cc_extend_r2;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_21));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_22));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O25[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O26[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O26[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O27[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O27[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O28[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O28[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O29[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O29[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_23));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_24));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_25));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_26));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_27));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O24[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O24[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O25[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_2
   (cplllock_sync,
    s_out_d1_cdc_to_70,
    s_out_d2_71,
    s_out_d3_72,
    s_out_d4_73,
    s_out_d5_74,
    s_out_d6_75,
    s_out_d7_76,
    O66,
    O67,
    O68,
    O69,
    O70,
    O71,
    O1,
    E,
    O2,
    init_clk_in,
    out,
    reset_time_out,
    mmcm_lock_reclocked,
    txresetdone_s3,
    wait_time_done,
    I1,
    I2,
    I3,
    I4,
    I5);
  output cplllock_sync;
  output s_out_d1_cdc_to_70;
  output s_out_d2_71;
  output s_out_d3_72;
  output s_out_d4_73;
  output s_out_d5_74;
  output s_out_d6_75;
  output s_out_d7_76;
  output [1:0]O66;
  output [1:0]O67;
  output [1:0]O68;
  output [1:0]O69;
  output [1:0]O70;
  output [1:0]O71;
  output O1;
  output [0:0]E;
  input O2;
  input init_clk_in;
  input [3:0]out;
  input reset_time_out;
  input mmcm_lock_reclocked;
  input txresetdone_s3;
  input wait_time_done;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire [1:0]O70;
  wire [1:0]O71;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_tx_state[3]_i_7 ;
  wire \n_0_FSM_sequential_tx_state_reg[3]_i_3 ;
  wire n_0_reset_time_out_i_3;
  wire [3:0]out;
  wire p_level_in_int;
  wire reset_time_out;
  wire reset_time_out_0;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_70;
  wire s_out_d2_71;
  wire s_out_d3_72;
  wire s_out_d4_73;
  wire s_out_d5_74;
  wire s_out_d6_75;
  wire s_out_d7_76;
  wire txresetdone_s3;
  wire wait_time_done;

  assign cplllock_sync = s_level_out_d3;
  assign p_level_in_int = O2;
LUT6 #(
    .INIT(64'h00AA00AA0FCF0FC0)) 
     \FSM_sequential_tx_state[3]_i_1 
       (.I0(\n_0_FSM_sequential_tx_state_reg[3]_i_3 ),
        .I1(wait_time_done),
        .I2(I1),
        .I3(out[3]),
        .I4(I2),
        .I5(out[0]),
        .O(E));
LUT6 #(
    .INIT(64'hBA00BA00BAFFBA00)) 
     \FSM_sequential_tx_state[3]_i_7 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out),
        .I2(I4),
        .I3(out[2]),
        .I4(I5),
        .I5(s_level_out_d3),
        .O(\n_0_FSM_sequential_tx_state[3]_i_7 ));
MUXF7 \FSM_sequential_tx_state_reg[3]_i_3 
       (.I0(\n_0_FSM_sequential_tx_state[3]_i_7 ),
        .I1(I3),
        .O(\n_0_FSM_sequential_tx_state_reg[3]_i_3 ),
        .S(out[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_70));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_71));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O67[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O68[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O68[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O69[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O69[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O70[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O70[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O71[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O71[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_72));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_73));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_74));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_75));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_76));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O66[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O66[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O67[1]));
LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
     reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(reset_time_out),
        .O(O1));
LUT6 #(
    .INIT(64'h4C554C555F554F55)) 
     reset_time_out_i_2
       (.I0(out[3]),
        .I1(n_0_reset_time_out_i_3),
        .I2(out[2]),
        .I3(out[0]),
        .I4(mmcm_lock_reclocked),
        .I5(out[1]),
        .O(reset_time_out_0));
LUT5 #(
    .INIT(32'hF4040404)) 
     reset_time_out_i_3
       (.I0(out[3]),
        .I1(s_level_out_d3),
        .I2(out[2]),
        .I3(out[1]),
        .I4(txresetdone_s3),
        .O(n_0_reset_time_out_i_3));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_3
   (s_out_d1_cdc_to_63,
    s_out_d2_64,
    s_out_d3_65,
    s_out_d4_66,
    s_out_d5_67,
    s_out_d6_68,
    s_out_d7_69,
    O60,
    O61,
    O62,
    O63,
    O64,
    O65,
    O1,
    SR,
    init_clk_in,
    mmcm_lock_reclocked,
    Q,
    I1);
  output s_out_d1_cdc_to_63;
  output s_out_d2_64;
  output s_out_d3_65;
  output s_out_d4_66;
  output s_out_d5_67;
  output s_out_d6_68;
  output s_out_d7_69;
  output [1:0]O60;
  output [1:0]O61;
  output [1:0]O62;
  output [1:0]O63;
  output [1:0]O64;
  output [1:0]O65;
  output O1;
  output [0:0]SR;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input I1;

  wire I1;
  wire O1;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [1:0]Q;
  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_63;
  wire s_out_d2_64;
  wire s_out_d3_65;
  wire s_out_d4_66;
  wire s_out_d5_67;
  wire s_out_d6_68;
  wire s_out_d7_69;

LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_63));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O61[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O61[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O62[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O62[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O63[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O63[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O64[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O64[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O65[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O65[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_64));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_65));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_66));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_67));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_68));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_69));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O60[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O60[0]));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1 
       (.I0(s_level_out_d3),
        .O(SR));
LUT5 #(
    .INIT(32'hEAAA0000)) 
     mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(I1),
        .I3(Q[0]),
        .I4(s_level_out_d3),
        .O(O1));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4
   (s_out_d1_cdc_to_77,
    s_out_d2_78,
    s_out_d3_79,
    s_out_d4_80,
    s_out_d5_81,
    s_out_d6_82,
    s_out_d7_83,
    O72,
    O73,
    O74,
    O75,
    O76,
    O77,
    init_clk_in);
  output s_out_d1_cdc_to_77;
  output s_out_d2_78;
  output s_out_d3_79;
  output s_out_d4_80;
  output s_out_d5_81;
  output s_out_d6_82;
  output s_out_d7_83;
  output [1:0]O72;
  output [1:0]O73;
  output [1:0]O74;
  output [1:0]O75;
  output [1:0]O76;
  output [1:0]O77;
  input init_clk_in;

  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_77;
  wire s_out_d2_78;
  wire s_out_d3_79;
  wire s_out_d4_80;
  wire s_out_d5_81;
  wire s_out_d6_82;
  wire s_out_d7_83;

LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_77));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O73[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O73[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O74[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O74[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O75[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O75[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O76[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O76[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O77[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O77[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_78));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_79));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_80));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_81));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_82));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_83));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O72[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O72[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5
   (O1,
    s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O2,
    I1,
    user_clk);
  output O1;
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O36;
  output [1:0]O37;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output O2;
  input I1;
  input user_clk;

  wire O2;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [1:0]O38;
  wire [1:0]O39;
  wire [1:0]O40;
  wire [1:0]O41;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_35;
  wire s_out_d2_36;
  wire s_out_d3_37;
  wire s_out_d4_38;
  wire s_out_d5_39;
  wire s_out_d6_40;
  wire s_out_d7_41;
  wire user_clk;

  assign O1 = s_level_out_d4;
  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_35));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_36));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O37[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O38[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O38[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O39[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O39[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O40[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O40[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O41[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O41[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_37));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_38));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_39));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_40));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_41));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O36[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O36[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O37[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1 
       (.I0(s_level_out_d4),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6
   (s_out_d1_cdc_to_49,
    s_out_d2_50,
    s_out_d3_51,
    s_out_d4_52,
    s_out_d5_53,
    s_out_d6_54,
    s_out_d7_55,
    O48,
    O49,
    O50,
    O51,
    O52,
    O53,
    D,
    I1,
    init_clk_in,
    I2,
    out);
  output s_out_d1_cdc_to_49;
  output s_out_d2_50;
  output s_out_d3_51;
  output s_out_d4_52;
  output s_out_d5_53;
  output s_out_d6_54;
  output s_out_d7_55;
  output [1:0]O48;
  output [1:0]O49;
  output [1:0]O50;
  output [1:0]O51;
  output [1:0]O52;
  output [1:0]O53;
  output [0:0]D;
  input I1;
  input init_clk_in;
  input I2;
  input [2:0]out;

  wire [0:0]D;
  wire I2;
  wire [1:0]O48;
  wire [1:0]O49;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire init_clk_in;
  wire [2:0]out;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_49;
  wire s_out_d2_50;
  wire s_out_d3_51;
  wire s_out_d4_52;
  wire s_out_d5_53;
  wire s_out_d6_54;
  wire s_out_d7_55;

  assign p_level_in_int = I1;
LUT5 #(
    .INIT(32'h00073000)) 
     \FSM_sequential_tx_state[3]_i_2 
       (.I0(s_level_out_d4),
        .I1(I2),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .O(D));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_49));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_50));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O49[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O50[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O50[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O51[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O51[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O52[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O52[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O53[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O53[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_51));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_52));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_53));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_54));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_55));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O48[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O48[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O49[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_7
   (s_out_d1_cdc_to_42,
    s_out_d2_43,
    s_out_d3_44,
    s_out_d4_45,
    s_out_d5_46,
    s_out_d6_47,
    s_out_d7_48,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    O2,
    O3,
    O1,
    user_clk,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    wait_bypass_count_reg);
  output s_out_d1_cdc_to_42;
  output s_out_d2_43;
  output s_out_d3_44;
  output s_out_d4_45;
  output s_out_d5_46;
  output s_out_d6_47;
  output s_out_d7_48;
  output [1:0]O42;
  output [1:0]O43;
  output [1:0]O44;
  output [1:0]O45;
  output [1:0]O46;
  output [1:0]O47;
  output O2;
  output O3;
  input O1;
  input user_clk;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input [3:0]wait_bypass_count_reg;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire O2;
  wire O3;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire n_0_time_out_wait_bypass_i_2;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_42;
  wire s_out_d2_43;
  wire s_out_d3_44;
  wire s_out_d4_45;
  wire s_out_d5_46;
  wire s_out_d6_47;
  wire s_out_d7_48;
  wire user_clk;
  wire [3:0]wait_bypass_count_reg;

  assign p_level_in_int = O1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_42));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_43));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O43[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O44[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O44[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O45[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O45[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O46[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O46[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O47[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O47[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_44));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_45));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_46));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_47));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_48));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O42[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O42[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O43[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAAAAAE00000000)) 
     time_out_wait_bypass_i_1
       (.I0(I1),
        .I1(I2),
        .I2(I3),
        .I3(I4),
        .I4(n_0_time_out_wait_bypass_i_2),
        .I5(I5),
        .O(O2));
LUT5 #(
    .INIT(32'hFEFFFFFF)) 
     time_out_wait_bypass_i_2
       (.I0(s_level_out_d4),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[2]),
        .I3(wait_bypass_count_reg[0]),
        .I4(wait_bypass_count_reg[1]),
        .O(n_0_time_out_wait_bypass_i_2));
LUT5 #(
    .INIT(32'h0000FFFD)) 
     \wait_bypass_count[0]_i_2 
       (.I0(I2),
        .I1(I3),
        .I2(I4),
        .I3(I6),
        .I4(s_level_out_d4),
        .O(O3));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_8
   (s_out_d1_cdc_to_105,
    s_out_d2_106,
    s_out_d3_107,
    s_out_d4_108,
    s_out_d5_109,
    s_out_d6_110,
    s_out_d7_111,
    O96,
    O97,
    O98,
    O99,
    O100,
    O101,
    E,
    O1,
    rxfsm_rxresetdone_r,
    init_clk_in,
    out,
    I1,
    I2,
    I3,
    I4,
    cplllock_sync,
    mmcm_lock_reclocked,
    I5,
    time_tlock_max,
    I6,
    data_valid_sync);
  output s_out_d1_cdc_to_105;
  output s_out_d2_106;
  output s_out_d3_107;
  output s_out_d4_108;
  output s_out_d5_109;
  output s_out_d6_110;
  output s_out_d7_111;
  output [1:0]O96;
  output [1:0]O97;
  output [1:0]O98;
  output [1:0]O99;
  output [1:0]O100;
  output [1:0]O101;
  output [0:0]E;
  output O1;
  input rxfsm_rxresetdone_r;
  input init_clk_in;
  input [3:0]out;
  input I1;
  input I2;
  input I3;
  input I4;
  input cplllock_sync;
  input mmcm_lock_reclocked;
  input I5;
  input time_tlock_max;
  input I6;
  input data_valid_sync;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire O1;
  wire [1:0]O100;
  wire [1:0]O101;
  wire [1:0]O96;
  wire [1:0]O97;
  wire [1:0]O98;
  wire [1:0]O99;
  wire cplllock_sync;
  wire data_valid_sync;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_rx_state[3]_i_10 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_3 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_7 ;
  wire n_0_reset_time_out_i_5;
  wire n_0_reset_time_out_i_6;
  wire [3:0]out;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_105;
  wire s_out_d2_106;
  wire s_out_d3_107;
  wire s_out_d4_108;
  wire s_out_d5_109;
  wire s_out_d6_110;
  wire s_out_d7_111;
  wire time_tlock_max;

  assign p_level_in_int = rxfsm_rxresetdone_r;
LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
     \FSM_sequential_rx_state[3]_i_10 
       (.I0(s_level_out_d4),
        .I1(I4),
        .I2(out[1]),
        .I3(mmcm_lock_reclocked),
        .I4(I5),
        .I5(time_tlock_max),
        .O(\n_0_FSM_sequential_rx_state[3]_i_10 ));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \FSM_sequential_rx_state[3]_i_3 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_7 ),
        .I1(out[0]),
        .I2(I2),
        .I3(out[2]),
        .I4(I3),
        .O(\n_0_FSM_sequential_rx_state[3]_i_3 ));
LUT5 #(
    .INIT(32'hBBB8BBBB)) 
     \FSM_sequential_rx_state[3]_i_7 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_10 ),
        .I1(out[2]),
        .I2(I4),
        .I3(cplllock_sync),
        .I4(out[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_7 ));
MUXF7 \FSM_sequential_rx_state_reg[3]_i_1 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_3 ),
        .I1(I1),
        .O(E),
        .S(out[3]));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_105));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_106));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O97[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O98[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O98[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O99[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O99[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O100[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O100[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O101[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O101[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_107));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_108));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_109));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_110));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_111));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O96[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O96[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O97[1]));
LUT6 #(
    .INIT(64'hAFCFA0CFAFCFAFCF)) 
     reset_time_out_i_5
       (.I0(s_level_out_d4),
        .I1(I6),
        .I2(out[2]),
        .I3(out[1]),
        .I4(cplllock_sync),
        .I5(data_valid_sync),
        .O(n_0_reset_time_out_i_5));
LUT5 #(
    .INIT(32'hAFA0CFCF)) 
     reset_time_out_i_6
       (.I0(s_level_out_d4),
        .I1(mmcm_lock_reclocked),
        .I2(out[2]),
        .I3(cplllock_sync),
        .I4(out[1]),
        .O(n_0_reset_time_out_i_6));
MUXF7 reset_time_out_reg_i_3
       (.I0(n_0_reset_time_out_i_5),
        .I1(n_0_reset_time_out_i_6),
        .O(O1),
        .S(out[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_9
   (cplllock_sync,
    s_out_d1_cdc_to_126,
    s_out_d2_127,
    s_out_d3_128,
    s_out_d4_129,
    s_out_d5_130,
    s_out_d6_131,
    s_out_d7_132,
    O114,
    O115,
    O116,
    O117,
    O118,
    O119,
    O1,
    O2,
    init_clk_in,
    out,
    recclk_mon_count_reset);
  output cplllock_sync;
  output s_out_d1_cdc_to_126;
  output s_out_d2_127;
  output s_out_d3_128;
  output s_out_d4_129;
  output s_out_d5_130;
  output s_out_d6_131;
  output s_out_d7_132;
  output [1:0]O114;
  output [1:0]O115;
  output [1:0]O116;
  output [1:0]O117;
  output [1:0]O118;
  output [1:0]O119;
  output O1;
  input O2;
  input init_clk_in;
  input [3:0]out;
  input recclk_mon_count_reset;

  wire O1;
  wire [1:0]O114;
  wire [1:0]O115;
  wire [1:0]O116;
  wire [1:0]O117;
  wire [1:0]O118;
  wire [1:0]O119;
  wire init_clk_in;
  wire [3:0]out;
  wire p_level_in_int;
  wire recclk_mon_count_reset;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_126;
  wire s_out_d2_127;
  wire s_out_d3_128;
  wire s_out_d4_129;
  wire s_out_d5_130;
  wire s_out_d6_131;
  wire s_out_d7_132;

  assign cplllock_sync = s_level_out_d3;
  assign p_level_in_int = O2;
LUT6 #(
    .INIT(64'hFFFFFF7F00000022)) 
     adapt_count_reset_i_1
       (.I0(out[0]),
        .I1(out[1]),
        .I2(s_level_out_d3),
        .I3(out[2]),
        .I4(out[3]),
        .I5(recclk_mon_count_reset),
        .O(O1));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_126));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_127));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O115[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O116[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O116[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O117[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O117[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O118[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O118[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O119[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O119[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_128));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_129));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_130));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_131));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_132));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O114[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O114[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O115[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_core" *) 
module aurora_8b10b_0_aurora_8b10b_0_core
   (tx_resetdone_out,
    s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O1,
    O2,
    O3,
    O4,
    O5,
    s_out_d1_cdc_to_0,
    s_out_d2_1,
    s_out_d3_2,
    s_out_d4_3,
    s_out_d5_4,
    s_out_d6_5,
    s_out_d7_6,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    s_out_d1_cdc_to_7,
    s_out_d2_8,
    s_out_d3_9,
    s_out_d4_10,
    s_out_d5_11,
    s_out_d6_12,
    s_out_d7_13,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    s_out_d1_cdc_to_14,
    s_out_d2_15,
    s_out_d3_16,
    s_out_d4_17,
    s_out_d5_18,
    s_out_d6_19,
    s_out_d7_20,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    lane_up,
    s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    s_out_d1_cdc_to_28,
    s_out_d2_29,
    s_out_d3_30,
    s_out_d4_31,
    s_out_d5_32,
    s_out_d6_33,
    s_out_d7_34,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    s_out_d1_cdc_to_42,
    s_out_d2_43,
    s_out_d3_44,
    s_out_d4_45,
    s_out_d5_46,
    s_out_d6_47,
    s_out_d7_48,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    s_out_d1_cdc_to_49,
    s_out_d2_50,
    s_out_d3_51,
    s_out_d4_52,
    s_out_d5_53,
    s_out_d6_54,
    s_out_d7_55,
    O48,
    O49,
    O50,
    O51,
    O52,
    O53,
    s_out_d1_cdc_to_56,
    s_out_d2_57,
    s_out_d3_58,
    s_out_d4_59,
    s_out_d5_60,
    s_out_d6_61,
    s_out_d7_62,
    O54,
    O55,
    O56,
    O57,
    O58,
    O59,
    s_out_d1_cdc_to_63,
    s_out_d2_64,
    s_out_d3_65,
    s_out_d4_66,
    s_out_d5_67,
    s_out_d6_68,
    s_out_d7_69,
    O60,
    O61,
    O62,
    O63,
    O64,
    O65,
    tx_lock,
    s_out_d1_cdc_to_70,
    s_out_d2_71,
    s_out_d3_72,
    s_out_d4_73,
    s_out_d5_74,
    s_out_d6_75,
    s_out_d7_76,
    O66,
    O67,
    O68,
    O69,
    O70,
    O71,
    s_out_d1_cdc_to_77,
    s_out_d2_78,
    s_out_d3_79,
    s_out_d4_80,
    s_out_d5_81,
    s_out_d6_82,
    s_out_d7_83,
    O72,
    O73,
    O74,
    O75,
    O76,
    O77,
    s_out_d1_cdc_to_84,
    s_out_d2_85,
    s_out_d3_86,
    s_out_d4_87,
    s_out_d5_88,
    s_out_d6_89,
    s_out_d7_90,
    O78,
    O79,
    O80,
    O81,
    O82,
    O83,
    s_out_d1_cdc_to_91,
    s_out_d2_92,
    s_out_d3_93,
    s_out_d4_94,
    s_out_d5_95,
    s_out_d6_96,
    s_out_d7_97,
    O84,
    O85,
    O86,
    O87,
    O88,
    O89,
    s_out_d1_cdc_to_98,
    s_out_d2_99,
    s_out_d3_100,
    s_out_d4_101,
    s_out_d5_102,
    s_out_d6_103,
    s_out_d7_104,
    O90,
    O91,
    O92,
    O93,
    O94,
    O95,
    s_out_d1_cdc_to_105,
    s_out_d2_106,
    s_out_d3_107,
    s_out_d4_108,
    s_out_d5_109,
    s_out_d6_110,
    s_out_d7_111,
    O96,
    O97,
    O98,
    O99,
    O100,
    O101,
    s_out_d1_cdc_to_112,
    s_out_d2_113,
    s_out_d3_114,
    s_out_d4_115,
    s_out_d5_116,
    s_out_d6_117,
    s_out_d7_118,
    O102,
    O103,
    O104,
    O105,
    O106,
    O107,
    s_out_d1_cdc_to_119,
    s_out_d2_120,
    s_out_d3_121,
    s_out_d4_122,
    s_out_d5_123,
    s_out_d6_124,
    s_out_d7_125,
    O108,
    O109,
    O110,
    O111,
    O112,
    O113,
    s_out_d1_cdc_to_126,
    s_out_d2_127,
    s_out_d3_128,
    s_out_d4_129,
    s_out_d5_130,
    s_out_d6_131,
    s_out_d7_132,
    O114,
    O115,
    O116,
    O117,
    O118,
    O119,
    s_out_d1_cdc_to_133,
    s_out_d2_134,
    s_out_d3_135,
    s_out_d4_136,
    s_out_d5_137,
    s_out_d6_138,
    s_out_d7_139,
    O120,
    O121,
    O122,
    O123,
    O124,
    O125,
    drprdy_out,
    txn,
    txp,
    tx_out_clk,
    drpdo_out,
    O126,
    rx_resetdone_out,
    link_reset_out,
    O127,
    hard_err,
    frame_err,
    m_axi_rx_tvalid,
    soft_err,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tlast,
    s_axi_tx_tready,
    reset,
    user_clk,
    init_clk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    rxn,
    rxp,
    gt_qpllclk_quad6_in,
    gt_qpllrefclk_quad6_in,
    sync_clk,
    power_down,
    drpdi_in,
    loopback,
    drpaddr_in,
    do_cc,
    gt_reset,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    s_axi_tx_tdata,
    s_axi_tx_tkeep);
  output tx_resetdone_out;
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output s_out_d1_cdc_to_0;
  output s_out_d2_1;
  output s_out_d3_2;
  output s_out_d4_3;
  output s_out_d5_4;
  output s_out_d6_5;
  output s_out_d7_6;
  output [1:0]O6;
  output [1:0]O7;
  output [1:0]O8;
  output [1:0]O9;
  output [1:0]O10;
  output [1:0]O11;
  output s_out_d1_cdc_to_7;
  output s_out_d2_8;
  output s_out_d3_9;
  output s_out_d4_10;
  output s_out_d5_11;
  output s_out_d6_12;
  output s_out_d7_13;
  output [1:0]O12;
  output [1:0]O13;
  output [1:0]O14;
  output [1:0]O15;
  output [1:0]O16;
  output [1:0]O17;
  output s_out_d1_cdc_to_14;
  output s_out_d2_15;
  output s_out_d3_16;
  output s_out_d4_17;
  output s_out_d5_18;
  output s_out_d6_19;
  output s_out_d7_20;
  output [1:0]O18;
  output [1:0]O19;
  output [1:0]O20;
  output [1:0]O21;
  output [1:0]O22;
  output [1:0]O23;
  output lane_up;
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O24;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  output s_out_d1_cdc_to_28;
  output s_out_d2_29;
  output s_out_d3_30;
  output s_out_d4_31;
  output s_out_d5_32;
  output s_out_d6_33;
  output s_out_d7_34;
  output [1:0]O30;
  output [1:0]O31;
  output [1:0]O32;
  output [1:0]O33;
  output [1:0]O34;
  output [1:0]O35;
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O36;
  output [1:0]O37;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output s_out_d1_cdc_to_42;
  output s_out_d2_43;
  output s_out_d3_44;
  output s_out_d4_45;
  output s_out_d5_46;
  output s_out_d6_47;
  output s_out_d7_48;
  output [1:0]O42;
  output [1:0]O43;
  output [1:0]O44;
  output [1:0]O45;
  output [1:0]O46;
  output [1:0]O47;
  output s_out_d1_cdc_to_49;
  output s_out_d2_50;
  output s_out_d3_51;
  output s_out_d4_52;
  output s_out_d5_53;
  output s_out_d6_54;
  output s_out_d7_55;
  output [1:0]O48;
  output [1:0]O49;
  output [1:0]O50;
  output [1:0]O51;
  output [1:0]O52;
  output [1:0]O53;
  output s_out_d1_cdc_to_56;
  output s_out_d2_57;
  output s_out_d3_58;
  output s_out_d4_59;
  output s_out_d5_60;
  output s_out_d6_61;
  output s_out_d7_62;
  output [1:0]O54;
  output [1:0]O55;
  output [1:0]O56;
  output [1:0]O57;
  output [1:0]O58;
  output [1:0]O59;
  output s_out_d1_cdc_to_63;
  output s_out_d2_64;
  output s_out_d3_65;
  output s_out_d4_66;
  output s_out_d5_67;
  output s_out_d6_68;
  output s_out_d7_69;
  output [1:0]O60;
  output [1:0]O61;
  output [1:0]O62;
  output [1:0]O63;
  output [1:0]O64;
  output [1:0]O65;
  output tx_lock;
  output s_out_d1_cdc_to_70;
  output s_out_d2_71;
  output s_out_d3_72;
  output s_out_d4_73;
  output s_out_d5_74;
  output s_out_d6_75;
  output s_out_d7_76;
  output [1:0]O66;
  output [1:0]O67;
  output [1:0]O68;
  output [1:0]O69;
  output [1:0]O70;
  output [1:0]O71;
  output s_out_d1_cdc_to_77;
  output s_out_d2_78;
  output s_out_d3_79;
  output s_out_d4_80;
  output s_out_d5_81;
  output s_out_d6_82;
  output s_out_d7_83;
  output [1:0]O72;
  output [1:0]O73;
  output [1:0]O74;
  output [1:0]O75;
  output [1:0]O76;
  output [1:0]O77;
  output s_out_d1_cdc_to_84;
  output s_out_d2_85;
  output s_out_d3_86;
  output s_out_d4_87;
  output s_out_d5_88;
  output s_out_d6_89;
  output s_out_d7_90;
  output [1:0]O78;
  output [1:0]O79;
  output [1:0]O80;
  output [1:0]O81;
  output [1:0]O82;
  output [1:0]O83;
  output s_out_d1_cdc_to_91;
  output s_out_d2_92;
  output s_out_d3_93;
  output s_out_d4_94;
  output s_out_d5_95;
  output s_out_d6_96;
  output s_out_d7_97;
  output [1:0]O84;
  output [1:0]O85;
  output [1:0]O86;
  output [1:0]O87;
  output [1:0]O88;
  output [1:0]O89;
  output s_out_d1_cdc_to_98;
  output s_out_d2_99;
  output s_out_d3_100;
  output s_out_d4_101;
  output s_out_d5_102;
  output s_out_d6_103;
  output s_out_d7_104;
  output [1:0]O90;
  output [1:0]O91;
  output [1:0]O92;
  output [1:0]O93;
  output [1:0]O94;
  output [1:0]O95;
  output s_out_d1_cdc_to_105;
  output s_out_d2_106;
  output s_out_d3_107;
  output s_out_d4_108;
  output s_out_d5_109;
  output s_out_d6_110;
  output s_out_d7_111;
  output [1:0]O96;
  output [1:0]O97;
  output [1:0]O98;
  output [1:0]O99;
  output [1:0]O100;
  output [1:0]O101;
  output s_out_d1_cdc_to_112;
  output s_out_d2_113;
  output s_out_d3_114;
  output s_out_d4_115;
  output s_out_d5_116;
  output s_out_d6_117;
  output s_out_d7_118;
  output [1:0]O102;
  output [1:0]O103;
  output [1:0]O104;
  output [1:0]O105;
  output [1:0]O106;
  output [1:0]O107;
  output s_out_d1_cdc_to_119;
  output s_out_d2_120;
  output s_out_d3_121;
  output s_out_d4_122;
  output s_out_d5_123;
  output s_out_d6_124;
  output s_out_d7_125;
  output [1:0]O108;
  output [1:0]O109;
  output [1:0]O110;
  output [1:0]O111;
  output [1:0]O112;
  output [1:0]O113;
  output s_out_d1_cdc_to_126;
  output s_out_d2_127;
  output s_out_d3_128;
  output s_out_d4_129;
  output s_out_d5_130;
  output s_out_d6_131;
  output s_out_d7_132;
  output [1:0]O114;
  output [1:0]O115;
  output [1:0]O116;
  output [1:0]O117;
  output [1:0]O118;
  output [1:0]O119;
  output s_out_d1_cdc_to_133;
  output s_out_d2_134;
  output s_out_d3_135;
  output s_out_d4_136;
  output s_out_d5_137;
  output s_out_d6_138;
  output s_out_d7_139;
  output [1:0]O120;
  output [1:0]O121;
  output [1:0]O122;
  output [1:0]O123;
  output [1:0]O124;
  output [1:0]O125;
  output drprdy_out;
  output txn;
  output txp;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output O126;
  output rx_resetdone_out;
  output link_reset_out;
  output O127;
  output hard_err;
  output frame_err;
  output m_axi_rx_tvalid;
  output soft_err;
  output [0:15]m_axi_rx_tdata;
  output [0:0]m_axi_rx_tkeep;
  output m_axi_rx_tlast;
  output s_axi_tx_tready;
  input reset;
  input user_clk;
  input init_clk_in;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input rxn;
  input rxp;
  input gt_qpllclk_quad6_in;
  input gt_qpllrefclk_quad6_in;
  input sync_clk;
  input power_down;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [8:0]drpaddr_in;
  input do_cc;
  input gt_reset;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input [0:15]s_axi_tx_tdata;
  input [0:1]s_axi_tx_tkeep;

  wire GEN_ECP;
  wire GEN_PAD;
  wire GEN_SCP;
  wire GOT_V;
  wire HARD_ERR;
  wire [1:0]O1;
  wire [1:0]O10;
  wire [1:0]O100;
  wire [1:0]O101;
  wire [1:0]O102;
  wire [1:0]O103;
  wire [1:0]O104;
  wire [1:0]O105;
  wire [1:0]O106;
  wire [1:0]O107;
  wire [1:0]O108;
  wire [1:0]O109;
  wire [1:0]O11;
  wire [1:0]O110;
  wire [1:0]O111;
  wire [1:0]O112;
  wire [1:0]O113;
  wire [1:0]O114;
  wire [1:0]O115;
  wire [1:0]O116;
  wire [1:0]O117;
  wire [1:0]O118;
  wire [1:0]O119;
  wire [1:0]O12;
  wire [1:0]O120;
  wire [1:0]O121;
  wire [1:0]O122;
  wire [1:0]O123;
  wire [1:0]O124;
  wire [1:0]O125;
  wire O126;
  wire O127;
  wire [1:0]O13;
  wire [1:0]O14;
  wire [1:0]O15;
  wire [1:0]O16;
  wire [1:0]O17;
  wire [1:0]O18;
  wire [1:0]O19;
  wire [1:0]O2;
  wire [1:0]O20;
  wire [1:0]O21;
  wire [1:0]O22;
  wire [1:0]O23;
  wire [1:0]O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire [1:0]O3;
  wire [1:0]O30;
  wire [1:0]O31;
  wire [1:0]O32;
  wire [1:0]O33;
  wire [1:0]O34;
  wire [1:0]O35;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [1:0]O38;
  wire [1:0]O39;
  wire [1:0]O4;
  wire [1:0]O40;
  wire [1:0]O41;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire [1:0]O48;
  wire [1:0]O49;
  wire [1:0]O5;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire [1:0]O6;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire [1:0]O7;
  wire [1:0]O70;
  wire [1:0]O71;
  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire [1:0]O78;
  wire [1:0]O79;
  wire [1:0]O8;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire [1:0]O9;
  wire [1:0]O90;
  wire [1:0]O91;
  wire [1:0]O92;
  wire [1:0]O93;
  wire [1:0]O94;
  wire [1:0]O95;
  wire [1:0]O96;
  wire [1:0]O97;
  wire [1:0]O98;
  wire [1:0]O99;
  wire RX_PAD;
  wire [0:15]RX_PE_DATA;
  wire START_RX;
  wire [0:15]TX_PE_DATA;
  wire TX_PE_DATA_V;
  wire do_cc;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire \err_detect_i/bucket_full_r ;
  wire \err_detect_i/hard_err_flop_r0 ;
  wire [1:0]\err_detect_i/p_2_out ;
  wire frame_err;
  wire gen_a_i;
  wire gen_cc_i;
  wire [0:1]gen_k_i;
  wire [0:1]gen_r_i;
  wire [0:1]gen_v_i;
  wire gt_qpllclk_quad6_in;
  wire gt_qpllrefclk_quad6_in;
  wire gt_refclk1;
  wire gt_reset;
  wire gtrxreset_i_0;
  wire hard_err;
  wire init_clk_in;
  wire \lane_init_sm_i/comma_over_two_cycles_r ;
  wire lane_up;
  wire link_reset_comb_r;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:15]m_axi_rx_tdata;
  wire [0:0]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire n_0_axi_to_ll_pdu_i;
  wire n_1_axi_to_ll_pdu_i;
  wire n_2_rx_ll_i;
  wire n_32_aurora_lane_0_i;
  wire n_330_gt_wrapper_i;
  wire n_331_gt_wrapper_i;
  wire n_332_gt_wrapper_i;
  wire n_333_gt_wrapper_i;
  wire n_336_gt_wrapper_i;
  wire n_338_gt_wrapper_i;
  wire n_339_gt_wrapper_i;
  wire n_340_gt_wrapper_i;
  wire n_341_gt_wrapper_i;
  wire n_342_gt_wrapper_i;
  wire n_343_gt_wrapper_i;
  wire n_344_gt_wrapper_i;
  wire n_345_gt_wrapper_i;
  wire n_346_gt_wrapper_i;
  wire n_347_gt_wrapper_i;
  wire n_348_gt_wrapper_i;
  wire n_349_gt_wrapper_i;
  wire n_34_aurora_lane_0_i;
  wire n_350_gt_wrapper_i;
  wire n_351_gt_wrapper_i;
  wire n_352_gt_wrapper_i;
  wire n_353_gt_wrapper_i;
  wire n_35_aurora_lane_0_i;
  wire n_37_aurora_lane_0_i;
  wire n_70_aurora_lane_0_i;
  wire [1:0]out;
  wire power_down;
  wire reset;
  wire reset_lanes_i;
  wire [1:0]rx_char_is_comma_i;
  wire rx_ecp_i;
  wire \rx_ll_pdu_datapath_i/FRAME_ERR0 ;
  wire \rx_ll_pdu_datapath_i/storage_v_r ;
  wire rx_pe_data_v_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_resetdone_out;
  wire rxn;
  wire rxp;
  wire [0:15]s_axi_tx_tdata;
  wire [0:1]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire s_out_d1_cdc_to;
  wire s_out_d1_cdc_to_0;
  wire s_out_d1_cdc_to_105;
  wire s_out_d1_cdc_to_112;
  wire s_out_d1_cdc_to_119;
  wire s_out_d1_cdc_to_126;
  wire s_out_d1_cdc_to_133;
  wire s_out_d1_cdc_to_14;
  wire s_out_d1_cdc_to_21;
  wire s_out_d1_cdc_to_28;
  wire s_out_d1_cdc_to_35;
  wire s_out_d1_cdc_to_42;
  wire s_out_d1_cdc_to_49;
  wire s_out_d1_cdc_to_56;
  wire s_out_d1_cdc_to_63;
  wire s_out_d1_cdc_to_7;
  wire s_out_d1_cdc_to_70;
  wire s_out_d1_cdc_to_77;
  wire s_out_d1_cdc_to_84;
  wire s_out_d1_cdc_to_91;
  wire s_out_d1_cdc_to_98;
  wire s_out_d2;
  wire s_out_d2_1;
  wire s_out_d2_106;
  wire s_out_d2_113;
  wire s_out_d2_120;
  wire s_out_d2_127;
  wire s_out_d2_134;
  wire s_out_d2_15;
  wire s_out_d2_22;
  wire s_out_d2_29;
  wire s_out_d2_36;
  wire s_out_d2_43;
  wire s_out_d2_50;
  wire s_out_d2_57;
  wire s_out_d2_64;
  wire s_out_d2_71;
  wire s_out_d2_78;
  wire s_out_d2_8;
  wire s_out_d2_85;
  wire s_out_d2_92;
  wire s_out_d2_99;
  wire s_out_d3;
  wire s_out_d3_100;
  wire s_out_d3_107;
  wire s_out_d3_114;
  wire s_out_d3_121;
  wire s_out_d3_128;
  wire s_out_d3_135;
  wire s_out_d3_16;
  wire s_out_d3_2;
  wire s_out_d3_23;
  wire s_out_d3_30;
  wire s_out_d3_37;
  wire s_out_d3_44;
  wire s_out_d3_51;
  wire s_out_d3_58;
  wire s_out_d3_65;
  wire s_out_d3_72;
  wire s_out_d3_79;
  wire s_out_d3_86;
  wire s_out_d3_9;
  wire s_out_d3_93;
  wire s_out_d4;
  wire s_out_d4_10;
  wire s_out_d4_101;
  wire s_out_d4_108;
  wire s_out_d4_115;
  wire s_out_d4_122;
  wire s_out_d4_129;
  wire s_out_d4_136;
  wire s_out_d4_17;
  wire s_out_d4_24;
  wire s_out_d4_3;
  wire s_out_d4_31;
  wire s_out_d4_38;
  wire s_out_d4_45;
  wire s_out_d4_52;
  wire s_out_d4_59;
  wire s_out_d4_66;
  wire s_out_d4_73;
  wire s_out_d4_80;
  wire s_out_d4_87;
  wire s_out_d4_94;
  wire s_out_d5;
  wire s_out_d5_102;
  wire s_out_d5_109;
  wire s_out_d5_11;
  wire s_out_d5_116;
  wire s_out_d5_123;
  wire s_out_d5_130;
  wire s_out_d5_137;
  wire s_out_d5_18;
  wire s_out_d5_25;
  wire s_out_d5_32;
  wire s_out_d5_39;
  wire s_out_d5_4;
  wire s_out_d5_46;
  wire s_out_d5_53;
  wire s_out_d5_60;
  wire s_out_d5_67;
  wire s_out_d5_74;
  wire s_out_d5_81;
  wire s_out_d5_88;
  wire s_out_d5_95;
  wire s_out_d6;
  wire s_out_d6_103;
  wire s_out_d6_110;
  wire s_out_d6_117;
  wire s_out_d6_12;
  wire s_out_d6_124;
  wire s_out_d6_131;
  wire s_out_d6_138;
  wire s_out_d6_19;
  wire s_out_d6_26;
  wire s_out_d6_33;
  wire s_out_d6_40;
  wire s_out_d6_47;
  wire s_out_d6_5;
  wire s_out_d6_54;
  wire s_out_d6_61;
  wire s_out_d6_68;
  wire s_out_d6_75;
  wire s_out_d6_82;
  wire s_out_d6_89;
  wire s_out_d6_96;
  wire s_out_d7;
  wire s_out_d7_104;
  wire s_out_d7_111;
  wire s_out_d7_118;
  wire s_out_d7_125;
  wire s_out_d7_13;
  wire s_out_d7_132;
  wire s_out_d7_139;
  wire s_out_d7_20;
  wire s_out_d7_27;
  wire s_out_d7_34;
  wire s_out_d7_41;
  wire s_out_d7_48;
  wire s_out_d7_55;
  wire s_out_d7_6;
  wire s_out_d7_62;
  wire s_out_d7_69;
  wire s_out_d7_76;
  wire s_out_d7_83;
  wire s_out_d7_90;
  wire s_out_d7_97;
  wire soft_err;
  wire sync_clk;
  wire [1:0]tx_char_is_k_i;
  wire [15:0]tx_data_i;
  wire tx_dst_rdy;
  wire \tx_ll_control_i/reset_i ;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_reset_i;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE aurora_lane_0_i
       (.D(rx_char_is_comma_i),
        .FRAME_ERR0(\rx_ll_pdu_datapath_i/FRAME_ERR0 ),
        .GEN_ECP(GEN_ECP),
        .GEN_PAD(GEN_PAD),
        .GEN_SCP(GEN_SCP),
        .GOT_V(GOT_V),
        .HARD_ERR(HARD_ERR),
        .I1(n_331_gt_wrapper_i),
        .I10({n_346_gt_wrapper_i,n_347_gt_wrapper_i,n_348_gt_wrapper_i,n_349_gt_wrapper_i,n_350_gt_wrapper_i,n_351_gt_wrapper_i,n_352_gt_wrapper_i,n_353_gt_wrapper_i}),
        .I11(\err_detect_i/p_2_out ),
        .I2(n_332_gt_wrapper_i),
        .I3(n_336_gt_wrapper_i),
        .I4(n_2_rx_ll_i),
        .I5(n_333_gt_wrapper_i),
        .I6({gen_v_i[0],gen_v_i[1]}),
        .I7({gen_r_i[0],gen_r_i[1]}),
        .I8({gen_k_i[0],gen_k_i[1]}),
        .I9({n_338_gt_wrapper_i,n_339_gt_wrapper_i,n_340_gt_wrapper_i,n_341_gt_wrapper_i,n_342_gt_wrapper_i,n_343_gt_wrapper_i,n_344_gt_wrapper_i,n_345_gt_wrapper_i}),
        .O1(n_32_aurora_lane_0_i),
        .O2(n_34_aurora_lane_0_i),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(n_35_aurora_lane_0_i),
        .O4(n_37_aurora_lane_0_i),
        .O5({RX_PE_DATA[0],RX_PE_DATA[1],RX_PE_DATA[2],RX_PE_DATA[3],RX_PE_DATA[4],RX_PE_DATA[5],RX_PE_DATA[6],RX_PE_DATA[7],RX_PE_DATA[8],RX_PE_DATA[9],RX_PE_DATA[10],RX_PE_DATA[11],RX_PE_DATA[12],RX_PE_DATA[13],RX_PE_DATA[14],RX_PE_DATA[15]}),
        .O6(n_70_aurora_lane_0_i),
        .Q({TX_PE_DATA[0],TX_PE_DATA[1],TX_PE_DATA[2],TX_PE_DATA[3],TX_PE_DATA[4],TX_PE_DATA[5],TX_PE_DATA[6],TX_PE_DATA[7],TX_PE_DATA[8],TX_PE_DATA[9],TX_PE_DATA[10],TX_PE_DATA[11],TX_PE_DATA[12],TX_PE_DATA[13],TX_PE_DATA[14],TX_PE_DATA[15]}),
        .RX_PAD(RX_PAD),
        .SR(reset_lanes_i),
        .START_RX(START_RX),
        .TXCHARISK(tx_char_is_k_i),
        .TXDATA(tx_data_i),
        .TX_PE_DATA_V(TX_PE_DATA_V),
        .bucket_full_r(\err_detect_i/bucket_full_r ),
        .comma_over_two_cycles_r(\lane_init_sm_i/comma_over_two_cycles_r ),
        .ena_comma_align_i(ena_comma_align_i),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .hard_err_flop_r0(\err_detect_i/hard_err_flop_r0 ),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .rx_ecp_i(rx_ecp_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .s_out_d1_cdc_to_21(s_out_d1_cdc_to_21),
        .s_out_d2_22(s_out_d2_22),
        .s_out_d3_23(s_out_d3_23),
        .s_out_d4_24(s_out_d4_24),
        .s_out_d5_25(s_out_d5_25),
        .s_out_d6_26(s_out_d6_26),
        .s_out_d7_27(s_out_d7_27),
        .storage_v_r(\rx_ll_pdu_datapath_i/storage_v_r ),
        .tx_reset_i(tx_reset_i),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL axi_to_ll_pdu_i
       (.I1(O127),
        .O1(n_0_axi_to_ll_pdu_i),
        .O2(n_1_axi_to_ll_pdu_i),
        .SR(O126),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC core_reset_logic_i
       (.I1(tx_resetdone_out),
        .I2(n_330_gt_wrapper_i),
        .I3(tx_lock),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .SR(O126),
        .init_clk_in(init_clk_in),
        .link_reset_comb_r(link_reset_comb_r),
        .link_reset_out(link_reset_out),
        .out(out),
        .reset(reset),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d1_cdc_to_0(s_out_d1_cdc_to_0),
        .s_out_d1_cdc_to_7(s_out_d1_cdc_to_7),
        .s_out_d2(s_out_d2),
        .s_out_d2_1(s_out_d2_1),
        .s_out_d2_8(s_out_d2_8),
        .s_out_d3(s_out_d3),
        .s_out_d3_2(s_out_d3_2),
        .s_out_d3_9(s_out_d3_9),
        .s_out_d4(s_out_d4),
        .s_out_d4_10(s_out_d4_10),
        .s_out_d4_3(s_out_d4_3),
        .s_out_d5(s_out_d5),
        .s_out_d5_11(s_out_d5_11),
        .s_out_d5_4(s_out_d5_4),
        .s_out_d6(s_out_d6),
        .s_out_d6_12(s_out_d6_12),
        .s_out_d6_5(s_out_d6_5),
        .s_out_d7(s_out_d7),
        .s_out_d7_13(s_out_d7_13),
        .s_out_d7_6(s_out_d7_6),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC global_logic_i
       (.GOT_V(GOT_V),
        .HARD_ERR(HARD_ERR),
        .I1(O126),
        .I2(n_70_aurora_lane_0_i),
        .I6({gen_v_i[0],gen_v_i[1]}),
        .I7({gen_r_i[0],gen_r_i[1]}),
        .I8({gen_k_i[0],gen_k_i[1]}),
        .O1(O127),
        .SR(reset_lanes_i),
        .START_RX(START_RX),
        .gen_a_i(gen_a_i),
        .gtrxreset_i_0(gtrxreset_i_0),
        .hard_err(hard_err),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_i(\tx_ll_control_i/reset_i ),
        .soft_err(soft_err),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER gt_wrapper_i
       (.D(rx_char_is_comma_i),
        .I1(n_32_aurora_lane_0_i),
        .I10({n_346_gt_wrapper_i,n_347_gt_wrapper_i,n_348_gt_wrapper_i,n_349_gt_wrapper_i,n_350_gt_wrapper_i,n_351_gt_wrapper_i,n_352_gt_wrapper_i,n_353_gt_wrapper_i}),
        .I11(\err_detect_i/p_2_out ),
        .I9({n_338_gt_wrapper_i,n_339_gt_wrapper_i,n_340_gt_wrapper_i,n_341_gt_wrapper_i,n_342_gt_wrapper_i,n_343_gt_wrapper_i,n_344_gt_wrapper_i,n_345_gt_wrapper_i}),
        .O1(tx_resetdone_out),
        .O100(O100),
        .O101(O101),
        .O102(O102),
        .O103(O103),
        .O104(O104),
        .O105(O105),
        .O106(O106),
        .O107(O107),
        .O108(O108),
        .O109(O109),
        .O110(O110),
        .O111(O111),
        .O112(O112),
        .O113(O113),
        .O114(O114),
        .O115(O115),
        .O116(O116),
        .O117(O117),
        .O118(O118),
        .O119(O119),
        .O120(O120),
        .O121(O121),
        .O122(O122),
        .O123(O123),
        .O124(O124),
        .O125(O125),
        .O2(tx_lock),
        .O3(n_330_gt_wrapper_i),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O37(O37),
        .O38(O38),
        .O39(O39),
        .O4(n_331_gt_wrapper_i),
        .O40(O40),
        .O41(O41),
        .O42(O42),
        .O43(O43),
        .O44(O44),
        .O45(O45),
        .O46(O46),
        .O47(O47),
        .O48(O48),
        .O49(O49),
        .O5(n_332_gt_wrapper_i),
        .O50(O50),
        .O51(O51),
        .O52(O52),
        .O53(O53),
        .O54(O54),
        .O55(O55),
        .O56(O56),
        .O57(O57),
        .O58(O58),
        .O59(O59),
        .O6(n_333_gt_wrapper_i),
        .O60(O60),
        .O61(O61),
        .O62(O62),
        .O63(O63),
        .O64(O64),
        .O65(O65),
        .O66(O66),
        .O67(O67),
        .O68(O68),
        .O69(O69),
        .O7(n_336_gt_wrapper_i),
        .O70(O70),
        .O71(O71),
        .O72(O72),
        .O73(O73),
        .O74(O74),
        .O75(O75),
        .O76(O76),
        .O77(O77),
        .O78(O78),
        .O79(O79),
        .O80(O80),
        .O81(O81),
        .O82(O82),
        .O83(O83),
        .O84(O84),
        .O85(O85),
        .O86(O86),
        .O87(O87),
        .O88(O88),
        .O89(O89),
        .O90(O90),
        .O91(O91),
        .O92(O92),
        .O93(O93),
        .O94(O94),
        .O95(O95),
        .O96(O96),
        .O97(O97),
        .O98(O98),
        .O99(O99),
        .TXCHARISK(tx_char_is_k_i),
        .TXDATA(tx_data_i),
        .bucket_full_r(\err_detect_i/bucket_full_r ),
        .comma_over_two_cycles_r(\lane_init_sm_i/comma_over_two_cycles_r ),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_qpllclk_quad6_in(gt_qpllclk_quad6_in),
        .gt_qpllrefclk_quad6_in(gt_qpllrefclk_quad6_in),
        .gt_refclk1(gt_refclk1),
        .gt_reset(gt_reset),
        .gtrxreset_i_0(gtrxreset_i_0),
        .hard_err_flop_r0(\err_detect_i/hard_err_flop_r0 ),
        .init_clk_in(init_clk_in),
        .link_reset_comb_r(link_reset_comb_r),
        .loopback(loopback),
        .power_down(power_down),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .s_out_d1_cdc_to_105(s_out_d1_cdc_to_105),
        .s_out_d1_cdc_to_112(s_out_d1_cdc_to_112),
        .s_out_d1_cdc_to_119(s_out_d1_cdc_to_119),
        .s_out_d1_cdc_to_126(s_out_d1_cdc_to_126),
        .s_out_d1_cdc_to_133(s_out_d1_cdc_to_133),
        .s_out_d1_cdc_to_28(s_out_d1_cdc_to_28),
        .s_out_d1_cdc_to_35(s_out_d1_cdc_to_35),
        .s_out_d1_cdc_to_42(s_out_d1_cdc_to_42),
        .s_out_d1_cdc_to_49(s_out_d1_cdc_to_49),
        .s_out_d1_cdc_to_56(s_out_d1_cdc_to_56),
        .s_out_d1_cdc_to_63(s_out_d1_cdc_to_63),
        .s_out_d1_cdc_to_70(s_out_d1_cdc_to_70),
        .s_out_d1_cdc_to_77(s_out_d1_cdc_to_77),
        .s_out_d1_cdc_to_84(s_out_d1_cdc_to_84),
        .s_out_d1_cdc_to_91(s_out_d1_cdc_to_91),
        .s_out_d1_cdc_to_98(s_out_d1_cdc_to_98),
        .s_out_d2_106(s_out_d2_106),
        .s_out_d2_113(s_out_d2_113),
        .s_out_d2_120(s_out_d2_120),
        .s_out_d2_127(s_out_d2_127),
        .s_out_d2_134(s_out_d2_134),
        .s_out_d2_29(s_out_d2_29),
        .s_out_d2_36(s_out_d2_36),
        .s_out_d2_43(s_out_d2_43),
        .s_out_d2_50(s_out_d2_50),
        .s_out_d2_57(s_out_d2_57),
        .s_out_d2_64(s_out_d2_64),
        .s_out_d2_71(s_out_d2_71),
        .s_out_d2_78(s_out_d2_78),
        .s_out_d2_85(s_out_d2_85),
        .s_out_d2_92(s_out_d2_92),
        .s_out_d2_99(s_out_d2_99),
        .s_out_d3_100(s_out_d3_100),
        .s_out_d3_107(s_out_d3_107),
        .s_out_d3_114(s_out_d3_114),
        .s_out_d3_121(s_out_d3_121),
        .s_out_d3_128(s_out_d3_128),
        .s_out_d3_135(s_out_d3_135),
        .s_out_d3_30(s_out_d3_30),
        .s_out_d3_37(s_out_d3_37),
        .s_out_d3_44(s_out_d3_44),
        .s_out_d3_51(s_out_d3_51),
        .s_out_d3_58(s_out_d3_58),
        .s_out_d3_65(s_out_d3_65),
        .s_out_d3_72(s_out_d3_72),
        .s_out_d3_79(s_out_d3_79),
        .s_out_d3_86(s_out_d3_86),
        .s_out_d3_93(s_out_d3_93),
        .s_out_d4_101(s_out_d4_101),
        .s_out_d4_108(s_out_d4_108),
        .s_out_d4_115(s_out_d4_115),
        .s_out_d4_122(s_out_d4_122),
        .s_out_d4_129(s_out_d4_129),
        .s_out_d4_136(s_out_d4_136),
        .s_out_d4_31(s_out_d4_31),
        .s_out_d4_38(s_out_d4_38),
        .s_out_d4_45(s_out_d4_45),
        .s_out_d4_52(s_out_d4_52),
        .s_out_d4_59(s_out_d4_59),
        .s_out_d4_66(s_out_d4_66),
        .s_out_d4_73(s_out_d4_73),
        .s_out_d4_80(s_out_d4_80),
        .s_out_d4_87(s_out_d4_87),
        .s_out_d4_94(s_out_d4_94),
        .s_out_d5_102(s_out_d5_102),
        .s_out_d5_109(s_out_d5_109),
        .s_out_d5_116(s_out_d5_116),
        .s_out_d5_123(s_out_d5_123),
        .s_out_d5_130(s_out_d5_130),
        .s_out_d5_137(s_out_d5_137),
        .s_out_d5_32(s_out_d5_32),
        .s_out_d5_39(s_out_d5_39),
        .s_out_d5_46(s_out_d5_46),
        .s_out_d5_53(s_out_d5_53),
        .s_out_d5_60(s_out_d5_60),
        .s_out_d5_67(s_out_d5_67),
        .s_out_d5_74(s_out_d5_74),
        .s_out_d5_81(s_out_d5_81),
        .s_out_d5_88(s_out_d5_88),
        .s_out_d5_95(s_out_d5_95),
        .s_out_d6_103(s_out_d6_103),
        .s_out_d6_110(s_out_d6_110),
        .s_out_d6_117(s_out_d6_117),
        .s_out_d6_124(s_out_d6_124),
        .s_out_d6_131(s_out_d6_131),
        .s_out_d6_138(s_out_d6_138),
        .s_out_d6_33(s_out_d6_33),
        .s_out_d6_40(s_out_d6_40),
        .s_out_d6_47(s_out_d6_47),
        .s_out_d6_54(s_out_d6_54),
        .s_out_d6_61(s_out_d6_61),
        .s_out_d6_68(s_out_d6_68),
        .s_out_d6_75(s_out_d6_75),
        .s_out_d6_82(s_out_d6_82),
        .s_out_d6_89(s_out_d6_89),
        .s_out_d6_96(s_out_d6_96),
        .s_out_d7_104(s_out_d7_104),
        .s_out_d7_111(s_out_d7_111),
        .s_out_d7_118(s_out_d7_118),
        .s_out_d7_125(s_out_d7_125),
        .s_out_d7_132(s_out_d7_132),
        .s_out_d7_139(s_out_d7_139),
        .s_out_d7_34(s_out_d7_34),
        .s_out_d7_41(s_out_d7_41),
        .s_out_d7_48(s_out_d7_48),
        .s_out_d7_55(s_out_d7_55),
        .s_out_d7_62(s_out_d7_62),
        .s_out_d7_69(s_out_d7_69),
        .s_out_d7_76(s_out_d7_76),
        .s_out_d7_83(s_out_d7_83),
        .s_out_d7_90(s_out_d7_90),
        .s_out_d7_97(s_out_d7_97),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync hpcnt_reset_cdc_sync
       (.O18(O18),
        .O19(O19),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .init_clk_in(init_clk_in),
        .reset(reset),
        .s_out_d1_cdc_to_14(s_out_d1_cdc_to_14),
        .s_out_d2_15(s_out_d2_15),
        .s_out_d3_16(s_out_d3_16),
        .s_out_d4_17(s_out_d4_17),
        .s_out_d5_18(s_out_d5_18),
        .s_out_d6_19(s_out_d6_19),
        .s_out_d7_20(s_out_d7_20));
aurora_8b10b_0_aurora_8b10b_0_RX_LL rx_ll_i
       (.D({RX_PE_DATA[0],RX_PE_DATA[1],RX_PE_DATA[2],RX_PE_DATA[3],RX_PE_DATA[4],RX_PE_DATA[5],RX_PE_DATA[6],RX_PE_DATA[7],RX_PE_DATA[8],RX_PE_DATA[9],RX_PE_DATA[10],RX_PE_DATA[11],RX_PE_DATA[12],RX_PE_DATA[13],RX_PE_DATA[14],RX_PE_DATA[15]}),
        .FRAME_ERR0(\rx_ll_pdu_datapath_i/FRAME_ERR0 ),
        .I1(n_37_aurora_lane_0_i),
        .I2(n_35_aurora_lane_0_i),
        .I3(n_34_aurora_lane_0_i),
        .O1(n_2_rx_ll_i),
        .RX_PAD(RX_PAD),
        .START_RX(START_RX),
        .frame_err(frame_err),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .rx_ecp_i(rx_ecp_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .storage_v_r(\rx_ll_pdu_datapath_i/storage_v_r ),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_TX_LL tx_ll_i
       (.GEN_ECP(GEN_ECP),
        .GEN_PAD(GEN_PAD),
        .GEN_SCP(GEN_SCP),
        .I1(n_0_axi_to_ll_pdu_i),
        .I2(n_1_axi_to_ll_pdu_i),
        .O127(O127),
        .Q({TX_PE_DATA[0],TX_PE_DATA[1],TX_PE_DATA[2],TX_PE_DATA[3],TX_PE_DATA[4],TX_PE_DATA[5],TX_PE_DATA[6],TX_PE_DATA[7],TX_PE_DATA[8],TX_PE_DATA[9],TX_PE_DATA[10],TX_PE_DATA[11],TX_PE_DATA[12],TX_PE_DATA[13],TX_PE_DATA[14],TX_PE_DATA[15]}),
        .TX_PE_DATA_V(TX_PE_DATA_V),
        .do_cc(do_cc),
        .gen_cc_i(gen_cc_i),
        .reset_i(\tx_ll_control_i/reset_i ),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_gt" *) 
module aurora_8b10b_0_aurora_8b10b_0_gt
   (O2,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    O1,
    tx_out_clk,
    O3,
    drpdo_out,
    D,
    ack_flag,
    O4,
    O5,
    O6,
    I11,
    O7,
    hard_err_flop_r0,
    I9,
    I10,
    init_clk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    SR,
    gt_tx_reset_i,
    rxn,
    rxp,
    gt_qpllclk_quad6_in,
    gt_qpllrefclk_quad6_in,
    gt_rxdfelfhold_i,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    I1,
    cpll_reset_i,
    I2,
    tx_reset_i,
    comma_over_two_cycles_r,
    bucket_full_r);
  output O2;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output O1;
  output tx_out_clk;
  output O3;
  output [15:0]drpdo_out;
  output [1:0]D;
  output ack_flag;
  output O4;
  output O5;
  output O6;
  output [1:0]I11;
  output O7;
  output hard_err_flop_r0;
  output [7:0]I9;
  output [7:0]I10;
  input init_clk_in;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input [0:0]SR;
  input gt_tx_reset_i;
  input rxn;
  input rxp;
  input gt_qpllclk_quad6_in;
  input gt_qpllrefclk_quad6_in;
  input gt_rxdfelfhold_i;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [15:0]TXDATA;
  input [1:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input I1;
  input cpll_reset_i;
  input I2;
  input tx_reset_i;
  input comma_over_two_cycles_r;
  input bucket_full_r;

  wire [1:0]D;
  wire I1;
  wire [7:0]I10;
  wire [1:0]I11;
  wire I2;
  wire [7:0]I9;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire [0:0]SR;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire ack_flag;
  wire ack_sync1;
  wire ack_sync2;
  wire ack_sync3;
  wire ack_sync4;
  wire ack_sync5;
  wire ack_sync6;
  wire bucket_full_r;
  wire comma_over_two_cycles_r;
  wire cpll_pd_i;
  wire cpll_reset_i;
  wire cpll_reset_i_0;
  wire cpllreset_ovrd_i;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync6;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire flag;
  wire flag2;
  wire gt0_pllrefclklost_i;
  wire gt_qpllclk_quad6_in;
  wire gt_qpllrefclk_quad6_in;
  wire gt_refclk1;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire hard_err_flop_r0;
  wire init_clk_in;
  wire [2:0]loopback;
  wire n_0_ack_flag_i_1;
  wire \n_0_cpllpd_wait_reg[94]_srl31 ;
  wire \n_0_cpllreset_wait_reg[126]_srl31 ;
  wire n_0_flag_i_1;
  wire n_0_gtxe2_i;
  wire n_11_gtxe2_i;
  wire n_16_gtxe2_i;
  wire n_170_gtxe2_i;
  wire n_171_gtxe2_i;
  wire n_172_gtxe2_i;
  wire n_173_gtxe2_i;
  wire n_174_gtxe2_i;
  wire n_175_gtxe2_i;
  wire n_176_gtxe2_i;
  wire n_177_gtxe2_i;
  wire n_178_gtxe2_i;
  wire n_179_gtxe2_i;
  wire n_180_gtxe2_i;
  wire n_181_gtxe2_i;
  wire n_182_gtxe2_i;
  wire n_183_gtxe2_i;
  wire n_184_gtxe2_i;
  wire \n_1_cpllpd_wait_reg[31]_srl32 ;
  wire \n_1_cpllpd_wait_reg[63]_srl32 ;
  wire \n_1_cpllreset_wait_reg[31]_srl32 ;
  wire \n_1_cpllreset_wait_reg[63]_srl32 ;
  wire \n_1_cpllreset_wait_reg[95]_srl32 ;
  wire n_23_gtxe2_i;
  wire n_27_gtxe2_i;
  wire n_38_gtxe2_i;
  wire n_39_gtxe2_i;
  wire n_4_gtxe2_i;
  wire n_78_gtxe2_i;
  wire n_79_gtxe2_i;
  wire n_81_gtxe2_i;
  wire n_83_gtxe2_i;
  wire n_84_gtxe2_i;
  wire n_9_gtxe2_i;
  wire power_down;
  wire rx_buf_err_i;
  wire [1:0]rx_char_is_k_i;
  wire [15:0]rx_data_i;
  wire [1:0]rx_disp_err_i;
  wire [1:0]rx_not_in_table_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire sync_clk;
  wire tx_buf_err_i;
  wire tx_out_clk;
  wire tx_reset_i;
  wire txn;
  wire txp;
  wire user_clk;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [63:16]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

LUT4 #(
    .INIT(16'hFF90)) 
     ack_flag_i_1
       (.I0(ack_sync5),
        .I1(ack_sync6),
        .I2(ack_flag),
        .I3(flag2),
        .O(n_0_ack_flag_i_1));
FDRE #(
    .INIT(1'b0)) 
     ack_flag_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_ack_flag_i_1),
        .Q(ack_flag),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg1
       (.C(init_clk_in),
        .CE(1'b1),
        .D(data_sync6),
        .Q(ack_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg2
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync1),
        .Q(ack_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg3
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync2),
        .Q(ack_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg4
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync3),
        .Q(ack_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg5
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync4),
        .Q(ack_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg6
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync5),
        .Q(ack_sync6),
        .R(1'b0));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[31]_srl32 " *) 
   SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
     \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllpd_wait_reg[31]_srl32 ));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[63]_srl32 " *) 
   SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
     \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllpd_wait_reg[31]_srl32 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllpd_wait_reg[63]_srl32 ));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[94]_srl31 " *) 
   SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
     \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllpd_wait_reg[63]_srl32 ),
        .Q(\n_0_cpllpd_wait_reg[94]_srl31 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b1)) 
     \cpllpd_wait_reg[95] 
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(\n_0_cpllpd_wait_reg[94]_srl31 ),
        .Q(cpll_pd_i),
        .R(1'b0));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[126]_srl31 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllreset_wait_reg[95]_srl32 ),
        .Q(\n_0_cpllreset_wait_reg[126]_srl31 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \cpllreset_wait_reg[127] 
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(\n_0_cpllreset_wait_reg[126]_srl31 ),
        .Q(cpllreset_ovrd_i),
        .R(1'b0));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[31]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h000000FF)) 
     \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[31]_srl32 ));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[63]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllreset_wait_reg[31]_srl32 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[63]_srl32 ));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[95]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllreset_wait_reg[63]_srl32 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[95]_srl32 ));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(flag),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_sync6),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     flag2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(I1),
        .Q(flag2),
        .R(1'b0));
LUT3 #(
    .INIT(8'hB4)) 
     flag_i_1
       (.I0(ack_flag),
        .I1(cpll_reset_i),
        .I2(flag),
        .O(n_0_flag_i_1));
FDRE #(
    .INIT(1'b0)) 
     flag_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_flag_i_1),
        .Q(flag),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(7),
    .CHAN_BOND_SEQ_1_1(10'b0101111100),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b0001),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b0000),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(17),
    .CLK_COR_MIN_LAT(12),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0111110111),
    .CLK_COR_SEQ_1_2(10'b0111110111),
    .CLK_COR_SEQ_1_3(10'b0100000000),
    .CLK_COR_SEQ_1_4(10'b0100000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0100000000),
    .CLK_COR_SEQ_2_3(10'b0100000000),
    .CLK_COR_SEQ_2_4(10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(2),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(5),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(2),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF20400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(10),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(0),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(10),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(0),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
     gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(n_0_gtxe2_i),
        .CPLLLOCK(O2),
        .CPLLLOCKDETCLK(init_clk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(cpll_pd_i),
        .CPLLREFCLKLOST(gt0_pllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(cpll_reset_i_0),
        .DMONITOROUT({n_177_gtxe2_i,n_178_gtxe2_i,n_179_gtxe2_i,n_180_gtxe2_i,n_181_gtxe2_i,n_182_gtxe2_i,n_183_gtxe2_i,n_184_gtxe2_i}),
        .DRPADDR(drpaddr_in),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_in),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_in),
        .DRPRDY(drprdy_out),
        .DRPWE(drpwe_in),
        .EYESCANDATAERROR(n_4_gtxe2_i),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gt_refclk1),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(SR),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt_tx_reset_i),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK(loopback),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt_qpllclk_quad6_in),
        .QPLLREFCLK(gt_qpllrefclk_quad6_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({rx_buf_err_i,n_83_gtxe2_i,n_84_gtxe2_i}),
        .RXBYTEISALIGNED(n_9_gtxe2_i),
        .RXBYTEREALIGN(rx_realign_i),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(n_11_gtxe2_i),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:2],D}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:2],rx_char_is_k_i}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT({n_78_gtxe2_i,n_79_gtxe2_i}),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(n_16_gtxe2_i),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:16],rx_data_i}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(gt_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(gt_rxdfelfhold_i),
        .RXDFELFOVRDEN(1'b1),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:2],rx_disp_err_i}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(ena_comma_align_i),
        .RXMONITOROUT({n_170_gtxe2_i,n_171_gtxe2_i,n_172_gtxe2_i,n_173_gtxe2_i,n_174_gtxe2_i,n_175_gtxe2_i,n_176_gtxe2_i}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:2],rx_not_in_table_i}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(n_23_gtxe2_i),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(ena_comma_align_i),
        .RXPCSRESET(1'b0),
        .RXPD({power_down,power_down}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(rx_polarity_i),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(n_27_gtxe2_i),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(O1),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt_rxuserrdy_i),
        .RXUSRCLK(sync_clk),
        .RXUSRCLK2(user_clk),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({tx_buf_err_i,n_81_gtxe2_i}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,TXCHARISK}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,TXDATA}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(power_down),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(tx_out_clk),
        .TXOUTCLKFABRIC(n_38_gtxe2_i),
        .TXOUTCLKPCS(n_39_gtxe2_i),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({power_down,power_down}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(O3),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt_txuserrdy_i),
        .TXUSRCLK(sync_clk),
        .TXUSRCLK2(user_clk));
LUT3 #(
    .INIT(8'hBE)) 
     gtxe2_i_i_1
       (.I0(cpllreset_ovrd_i),
        .I1(data_sync6),
        .I2(data_sync5),
        .O(cpll_reset_i_0));
LUT4 #(
    .INIT(16'hFFFE)) 
     hard_err_flop_r_i_1
       (.I0(tx_buf_err_i),
        .I1(rx_realign_i),
        .I2(bucket_full_r),
        .I3(rx_buf_err_i),
        .O(hard_err_flop_r0));
LUT4 #(
    .INIT(16'h1008)) 
     left_aligned_r_i_2
       (.I0(D[0]),
        .I1(rx_char_is_k_i[0]),
        .I2(D[1]),
        .I3(rx_char_is_k_i[1]),
        .O(O7));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     reset_count_r_i_2
       (.I0(rx_disp_err_i[1]),
        .I1(rx_not_in_table_i[1]),
        .I2(tx_reset_i),
        .I3(comma_over_two_cycles_r),
        .I4(rx_disp_err_i[0]),
        .I5(rx_not_in_table_i[0]),
        .O(O6));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[0]_i_1 
       (.I0(rx_disp_err_i[0]),
        .I1(rx_not_in_table_i[0]),
        .O(I11[1]));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[1]_i_1 
       (.I0(rx_disp_err_i[1]),
        .I1(rx_not_in_table_i[1]),
        .O(I11[0]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_control_bits_r[0]_i_1 
       (.I0(rx_char_is_k_i[0]),
        .I1(I2),
        .I2(rx_char_is_k_i[1]),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_control_bits_r[1]_i_1 
       (.I0(rx_char_is_k_i[1]),
        .I1(I2),
        .I2(rx_char_is_k_i[0]),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[0]_i_1 
       (.I0(rx_data_i[7]),
        .I1(I2),
        .I2(rx_data_i[15]),
        .O(I10[7]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[10]_i_1 
       (.I0(rx_data_i[13]),
        .I1(I2),
        .I2(rx_data_i[5]),
        .O(I9[5]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[11]_i_1 
       (.I0(rx_data_i[12]),
        .I1(I2),
        .I2(rx_data_i[4]),
        .O(I9[4]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[12]_i_1 
       (.I0(rx_data_i[11]),
        .I1(I2),
        .I2(rx_data_i[3]),
        .O(I9[3]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[13]_i_1 
       (.I0(rx_data_i[10]),
        .I1(I2),
        .I2(rx_data_i[2]),
        .O(I9[2]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[14]_i_1 
       (.I0(rx_data_i[9]),
        .I1(I2),
        .I2(rx_data_i[1]),
        .O(I9[1]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[15]_i_1 
       (.I0(rx_data_i[8]),
        .I1(I2),
        .I2(rx_data_i[0]),
        .O(I9[0]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[1]_i_1 
       (.I0(rx_data_i[6]),
        .I1(I2),
        .I2(rx_data_i[14]),
        .O(I10[6]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[2]_i_1 
       (.I0(rx_data_i[5]),
        .I1(I2),
        .I2(rx_data_i[13]),
        .O(I10[5]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[3]_i_1 
       (.I0(rx_data_i[4]),
        .I1(I2),
        .I2(rx_data_i[12]),
        .O(I10[4]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[4]_i_1 
       (.I0(rx_data_i[3]),
        .I1(I2),
        .I2(rx_data_i[11]),
        .O(I10[3]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[5]_i_1 
       (.I0(rx_data_i[2]),
        .I1(I2),
        .I2(rx_data_i[10]),
        .O(I10[2]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[6]_i_1 
       (.I0(rx_data_i[1]),
        .I1(I2),
        .I2(rx_data_i[9]),
        .O(I10[1]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[7]_i_1 
       (.I0(rx_data_i[0]),
        .I1(I2),
        .I2(rx_data_i[8]),
        .O(I10[0]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[8]_i_1 
       (.I0(rx_data_i[15]),
        .I1(I2),
        .I2(rx_data_i[7]),
        .O(I9[7]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \word_aligned_data_r[9]_i_1 
       (.I0(rx_data_i[14]),
        .I1(I2),
        .I2(rx_data_i[6]),
        .O(I9[6]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_hotplug" *) 
module aurora_8b10b_0_aurora_8b10b_0_hotplug
   (s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    link_reset_out,
    init_clk_in,
    user_clk,
    SR,
    D);
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O24;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  output link_reset_out;
  input init_clk_in;
  input user_clk;
  input [0:0]SR;
  input [0:0]D;

  wire [0:0]D;
  wire [1:0]O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire [0:0]SR;
  wire cc_sync;
  wire [25:0]count_for_reset_r_reg;
  wire init_clk_in;
  wire link_reset_0;
  wire link_reset_out;
  wire \n_0_count_for_reset_r[0]_i_2 ;
  wire \n_0_count_for_reset_r[0]_i_3 ;
  wire \n_0_count_for_reset_r[0]_i_4 ;
  wire \n_0_count_for_reset_r[0]_i_5 ;
  wire \n_0_count_for_reset_r[12]_i_2 ;
  wire \n_0_count_for_reset_r[12]_i_3 ;
  wire \n_0_count_for_reset_r[12]_i_4 ;
  wire \n_0_count_for_reset_r[12]_i_5 ;
  wire \n_0_count_for_reset_r[16]_i_2 ;
  wire \n_0_count_for_reset_r[16]_i_3 ;
  wire \n_0_count_for_reset_r[16]_i_4 ;
  wire \n_0_count_for_reset_r[16]_i_5 ;
  wire \n_0_count_for_reset_r[20]_i_2 ;
  wire \n_0_count_for_reset_r[20]_i_3 ;
  wire \n_0_count_for_reset_r[20]_i_4 ;
  wire \n_0_count_for_reset_r[20]_i_5 ;
  wire \n_0_count_for_reset_r[24]_i_2 ;
  wire \n_0_count_for_reset_r[24]_i_3 ;
  wire \n_0_count_for_reset_r[4]_i_2 ;
  wire \n_0_count_for_reset_r[4]_i_3 ;
  wire \n_0_count_for_reset_r[4]_i_4 ;
  wire \n_0_count_for_reset_r[4]_i_5 ;
  wire \n_0_count_for_reset_r[8]_i_2 ;
  wire \n_0_count_for_reset_r[8]_i_3 ;
  wire \n_0_count_for_reset_r[8]_i_4 ;
  wire \n_0_count_for_reset_r[8]_i_5 ;
  wire \n_0_count_for_reset_r_reg[0]_i_1 ;
  wire \n_0_count_for_reset_r_reg[12]_i_1 ;
  wire \n_0_count_for_reset_r_reg[16]_i_1 ;
  wire \n_0_count_for_reset_r_reg[20]_i_1 ;
  wire \n_0_count_for_reset_r_reg[4]_i_1 ;
  wire \n_0_count_for_reset_r_reg[8]_i_1 ;
  wire n_0_link_reset_0_i_1;
  wire n_0_link_reset_0_i_2;
  wire n_0_link_reset_0_i_3;
  wire n_0_link_reset_0_i_4;
  wire n_0_link_reset_0_i_5;
  wire n_0_rx_cc_extend_r2_i_1;
  wire n_0_rx_cc_extend_r2_i_2;
  wire \n_1_count_for_reset_r_reg[0]_i_1 ;
  wire \n_1_count_for_reset_r_reg[12]_i_1 ;
  wire \n_1_count_for_reset_r_reg[16]_i_1 ;
  wire \n_1_count_for_reset_r_reg[20]_i_1 ;
  wire \n_1_count_for_reset_r_reg[4]_i_1 ;
  wire \n_1_count_for_reset_r_reg[8]_i_1 ;
  wire \n_2_count_for_reset_r_reg[0]_i_1 ;
  wire \n_2_count_for_reset_r_reg[12]_i_1 ;
  wire \n_2_count_for_reset_r_reg[16]_i_1 ;
  wire \n_2_count_for_reset_r_reg[20]_i_1 ;
  wire \n_2_count_for_reset_r_reg[4]_i_1 ;
  wire \n_2_count_for_reset_r_reg[8]_i_1 ;
  wire \n_3_count_for_reset_r_reg[0]_i_1 ;
  wire \n_3_count_for_reset_r_reg[12]_i_1 ;
  wire \n_3_count_for_reset_r_reg[16]_i_1 ;
  wire \n_3_count_for_reset_r_reg[20]_i_1 ;
  wire \n_3_count_for_reset_r_reg[24]_i_1 ;
  wire \n_3_count_for_reset_r_reg[4]_i_1 ;
  wire \n_3_count_for_reset_r_reg[8]_i_1 ;
  wire \n_4_count_for_reset_r_reg[0]_i_1 ;
  wire \n_4_count_for_reset_r_reg[12]_i_1 ;
  wire \n_4_count_for_reset_r_reg[16]_i_1 ;
  wire \n_4_count_for_reset_r_reg[20]_i_1 ;
  wire \n_4_count_for_reset_r_reg[4]_i_1 ;
  wire \n_4_count_for_reset_r_reg[8]_i_1 ;
  wire \n_5_count_for_reset_r_reg[0]_i_1 ;
  wire \n_5_count_for_reset_r_reg[12]_i_1 ;
  wire \n_5_count_for_reset_r_reg[16]_i_1 ;
  wire \n_5_count_for_reset_r_reg[20]_i_1 ;
  wire \n_5_count_for_reset_r_reg[4]_i_1 ;
  wire \n_5_count_for_reset_r_reg[8]_i_1 ;
  wire \n_6_count_for_reset_r_reg[0]_i_1 ;
  wire \n_6_count_for_reset_r_reg[12]_i_1 ;
  wire \n_6_count_for_reset_r_reg[16]_i_1 ;
  wire \n_6_count_for_reset_r_reg[20]_i_1 ;
  wire \n_6_count_for_reset_r_reg[24]_i_1 ;
  wire \n_6_count_for_reset_r_reg[4]_i_1 ;
  wire \n_6_count_for_reset_r_reg[8]_i_1 ;
  wire \n_7_count_for_reset_r_reg[0]_i_1 ;
  wire \n_7_count_for_reset_r_reg[12]_i_1 ;
  wire \n_7_count_for_reset_r_reg[16]_i_1 ;
  wire \n_7_count_for_reset_r_reg[20]_i_1 ;
  wire \n_7_count_for_reset_r_reg[24]_i_1 ;
  wire \n_7_count_for_reset_r_reg[4]_i_1 ;
  wire \n_7_count_for_reset_r_reg[8]_i_1 ;
  wire [7:0]rx_cc_extend_r;
  wire rx_cc_extend_r2;
  wire s_out_d1_cdc_to_21;
  wire s_out_d2_22;
  wire s_out_d3_23;
  wire s_out_d4_24;
  wire s_out_d5_25;
  wire s_out_d6_26;
  wire s_out_d7_27;
  wire user_clk;
  wire [3:1]\NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED ;

LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[0]_i_2 
       (.I0(count_for_reset_r_reg[3]),
        .O(\n_0_count_for_reset_r[0]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[0]_i_3 
       (.I0(count_for_reset_r_reg[2]),
        .O(\n_0_count_for_reset_r[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[0]_i_4 
       (.I0(count_for_reset_r_reg[1]),
        .O(\n_0_count_for_reset_r[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \count_for_reset_r[0]_i_5 
       (.I0(count_for_reset_r_reg[0]),
        .O(\n_0_count_for_reset_r[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[12]_i_2 
       (.I0(count_for_reset_r_reg[15]),
        .O(\n_0_count_for_reset_r[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[12]_i_3 
       (.I0(count_for_reset_r_reg[14]),
        .O(\n_0_count_for_reset_r[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[12]_i_4 
       (.I0(count_for_reset_r_reg[13]),
        .O(\n_0_count_for_reset_r[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[12]_i_5 
       (.I0(count_for_reset_r_reg[12]),
        .O(\n_0_count_for_reset_r[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[16]_i_2 
       (.I0(count_for_reset_r_reg[19]),
        .O(\n_0_count_for_reset_r[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[16]_i_3 
       (.I0(count_for_reset_r_reg[18]),
        .O(\n_0_count_for_reset_r[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[16]_i_4 
       (.I0(count_for_reset_r_reg[17]),
        .O(\n_0_count_for_reset_r[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[16]_i_5 
       (.I0(count_for_reset_r_reg[16]),
        .O(\n_0_count_for_reset_r[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[20]_i_2 
       (.I0(count_for_reset_r_reg[23]),
        .O(\n_0_count_for_reset_r[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[20]_i_3 
       (.I0(count_for_reset_r_reg[22]),
        .O(\n_0_count_for_reset_r[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[20]_i_4 
       (.I0(count_for_reset_r_reg[21]),
        .O(\n_0_count_for_reset_r[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[20]_i_5 
       (.I0(count_for_reset_r_reg[20]),
        .O(\n_0_count_for_reset_r[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[24]_i_2 
       (.I0(count_for_reset_r_reg[25]),
        .O(\n_0_count_for_reset_r[24]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[24]_i_3 
       (.I0(count_for_reset_r_reg[24]),
        .O(\n_0_count_for_reset_r[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[4]_i_2 
       (.I0(count_for_reset_r_reg[7]),
        .O(\n_0_count_for_reset_r[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[4]_i_3 
       (.I0(count_for_reset_r_reg[6]),
        .O(\n_0_count_for_reset_r[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[4]_i_4 
       (.I0(count_for_reset_r_reg[5]),
        .O(\n_0_count_for_reset_r[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[4]_i_5 
       (.I0(count_for_reset_r_reg[4]),
        .O(\n_0_count_for_reset_r[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[8]_i_2 
       (.I0(count_for_reset_r_reg[11]),
        .O(\n_0_count_for_reset_r[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[8]_i_3 
       (.I0(count_for_reset_r_reg[10]),
        .O(\n_0_count_for_reset_r[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[8]_i_4 
       (.I0(count_for_reset_r_reg[9]),
        .O(\n_0_count_for_reset_r[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[8]_i_5 
       (.I0(count_for_reset_r_reg[8]),
        .O(\n_0_count_for_reset_r[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[0]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_count_for_reset_r_reg[0]_i_1 ,\n_1_count_for_reset_r_reg[0]_i_1 ,\n_2_count_for_reset_r_reg[0]_i_1 ,\n_3_count_for_reset_r_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_count_for_reset_r_reg[0]_i_1 ,\n_5_count_for_reset_r_reg[0]_i_1 ,\n_6_count_for_reset_r_reg[0]_i_1 ,\n_7_count_for_reset_r_reg[0]_i_1 }),
        .S({\n_0_count_for_reset_r[0]_i_2 ,\n_0_count_for_reset_r[0]_i_3 ,\n_0_count_for_reset_r[0]_i_4 ,\n_0_count_for_reset_r[0]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[10]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[11]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[12]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[12]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[8]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[12]_i_1 ,\n_1_count_for_reset_r_reg[12]_i_1 ,\n_2_count_for_reset_r_reg[12]_i_1 ,\n_3_count_for_reset_r_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[12]_i_1 ,\n_5_count_for_reset_r_reg[12]_i_1 ,\n_6_count_for_reset_r_reg[12]_i_1 ,\n_7_count_for_reset_r_reg[12]_i_1 }),
        .S({\n_0_count_for_reset_r[12]_i_2 ,\n_0_count_for_reset_r[12]_i_3 ,\n_0_count_for_reset_r[12]_i_4 ,\n_0_count_for_reset_r[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[13]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[14]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[15]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[16]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[16]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[12]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[16]_i_1 ,\n_1_count_for_reset_r_reg[16]_i_1 ,\n_2_count_for_reset_r_reg[16]_i_1 ,\n_3_count_for_reset_r_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[16]_i_1 ,\n_5_count_for_reset_r_reg[16]_i_1 ,\n_6_count_for_reset_r_reg[16]_i_1 ,\n_7_count_for_reset_r_reg[16]_i_1 }),
        .S({\n_0_count_for_reset_r[16]_i_2 ,\n_0_count_for_reset_r[16]_i_3 ,\n_0_count_for_reset_r[16]_i_4 ,\n_0_count_for_reset_r[16]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[17]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[18]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[19]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[1]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[20]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[20]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[16]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[20]_i_1 ,\n_1_count_for_reset_r_reg[20]_i_1 ,\n_2_count_for_reset_r_reg[20]_i_1 ,\n_3_count_for_reset_r_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[20]_i_1 ,\n_5_count_for_reset_r_reg[20]_i_1 ,\n_6_count_for_reset_r_reg[20]_i_1 ,\n_7_count_for_reset_r_reg[20]_i_1 }),
        .S({\n_0_count_for_reset_r[20]_i_2 ,\n_0_count_for_reset_r[20]_i_3 ,\n_0_count_for_reset_r[20]_i_4 ,\n_0_count_for_reset_r[20]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[21]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[22] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[22]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[23] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[23]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[24] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[24]_i_1 ),
        .Q(count_for_reset_r_reg[24]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[24]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[20]_i_1 ),
        .CO({\NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED [3:1],\n_3_count_for_reset_r_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED [3:2],\n_6_count_for_reset_r_reg[24]_i_1 ,\n_7_count_for_reset_r_reg[24]_i_1 }),
        .S({1'b0,1'b0,\n_0_count_for_reset_r[24]_i_2 ,\n_0_count_for_reset_r[24]_i_3 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[25] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[24]_i_1 ),
        .Q(count_for_reset_r_reg[25]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[2]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[3]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[4]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[4]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[0]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[4]_i_1 ,\n_1_count_for_reset_r_reg[4]_i_1 ,\n_2_count_for_reset_r_reg[4]_i_1 ,\n_3_count_for_reset_r_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[4]_i_1 ,\n_5_count_for_reset_r_reg[4]_i_1 ,\n_6_count_for_reset_r_reg[4]_i_1 ,\n_7_count_for_reset_r_reg[4]_i_1 }),
        .S({\n_0_count_for_reset_r[4]_i_2 ,\n_0_count_for_reset_r[4]_i_3 ,\n_0_count_for_reset_r[4]_i_4 ,\n_0_count_for_reset_r[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[5]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[6]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[7]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[8]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[8]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[4]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[8]_i_1 ,\n_1_count_for_reset_r_reg[8]_i_1 ,\n_2_count_for_reset_r_reg[8]_i_1 ,\n_3_count_for_reset_r_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[8]_i_1 ,\n_5_count_for_reset_r_reg[8]_i_1 ,\n_6_count_for_reset_r_reg[8]_i_1 ,\n_7_count_for_reset_r_reg[8]_i_1 }),
        .S({\n_0_count_for_reset_r[8]_i_2 ,\n_0_count_for_reset_r[8]_i_3 ,\n_0_count_for_reset_r[8]_i_4 ,\n_0_count_for_reset_r[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[9]),
        .R(cc_sync));
LUT6 #(
    .INIT(64'h7FFF888800000000)) 
     link_reset_0_i_1
       (.I0(count_for_reset_r_reg[3]),
        .I1(count_for_reset_r_reg[2]),
        .I2(count_for_reset_r_reg[0]),
        .I3(count_for_reset_r_reg[1]),
        .I4(count_for_reset_r_reg[4]),
        .I5(n_0_link_reset_0_i_2),
        .O(n_0_link_reset_0_i_1));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_2
       (.I0(n_0_link_reset_0_i_3),
        .I1(count_for_reset_r_reg[17]),
        .I2(count_for_reset_r_reg[14]),
        .I3(count_for_reset_r_reg[11]),
        .I4(n_0_link_reset_0_i_4),
        .I5(n_0_link_reset_0_i_5),
        .O(n_0_link_reset_0_i_2));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_3
       (.I0(count_for_reset_r_reg[21]),
        .I1(count_for_reset_r_reg[6]),
        .I2(count_for_reset_r_reg[7]),
        .I3(count_for_reset_r_reg[23]),
        .I4(count_for_reset_r_reg[25]),
        .I5(count_for_reset_r_reg[18]),
        .O(n_0_link_reset_0_i_3));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_4
       (.I0(count_for_reset_r_reg[8]),
        .I1(count_for_reset_r_reg[9]),
        .I2(count_for_reset_r_reg[13]),
        .I3(count_for_reset_r_reg[19]),
        .I4(count_for_reset_r_reg[16]),
        .I5(count_for_reset_r_reg[22]),
        .O(n_0_link_reset_0_i_4));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_5
       (.I0(count_for_reset_r_reg[15]),
        .I1(count_for_reset_r_reg[12]),
        .I2(count_for_reset_r_reg[10]),
        .I3(count_for_reset_r_reg[20]),
        .I4(count_for_reset_r_reg[5]),
        .I5(count_for_reset_r_reg[24]),
        .O(n_0_link_reset_0_i_5));
FDRE link_reset_0_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_link_reset_0_i_1),
        .Q(link_reset_0),
        .R(1'b0));
FDRE \link_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_0),
        .Q(link_reset_out),
        .R(1'b0));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_19 rx_cc_cdc_sync
       (.O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .cc_sync(cc_sync),
        .init_clk_in(init_clk_in),
        .rx_cc_extend_r2(rx_cc_extend_r2),
        .s_out_d1_cdc_to_21(s_out_d1_cdc_to_21),
        .s_out_d2_22(s_out_d2_22),
        .s_out_d3_23(s_out_d3_23),
        .s_out_d4_24(s_out_d4_24),
        .s_out_d5_25(s_out_d5_25),
        .s_out_d6_26(s_out_d6_26),
        .s_out_d7_27(s_out_d7_27));
LUT3 #(
    .INIT(8'hFE)) 
     rx_cc_extend_r2_i_1
       (.I0(rx_cc_extend_r[2]),
        .I1(n_0_rx_cc_extend_r2_i_2),
        .I2(rx_cc_extend_r[3]),
        .O(n_0_rx_cc_extend_r2_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     rx_cc_extend_r2_i_2
       (.I0(rx_cc_extend_r[1]),
        .I1(rx_cc_extend_r[0]),
        .I2(rx_cc_extend_r[6]),
        .I3(rx_cc_extend_r[7]),
        .I4(rx_cc_extend_r[5]),
        .I5(rx_cc_extend_r[4]),
        .O(n_0_rx_cc_extend_r2_i_2));
FDRE rx_cc_extend_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_rx_cc_extend_r2_i_1),
        .Q(rx_cc_extend_r2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[1]),
        .Q(rx_cc_extend_r[0]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[2]),
        .Q(rx_cc_extend_r[1]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[3]),
        .Q(rx_cc_extend_r[2]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[4]),
        .Q(rx_cc_extend_r[3]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[5]),
        .Q(rx_cc_extend_r[4]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[6]),
        .Q(rx_cc_extend_r[5]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[7]),
        .Q(rx_cc_extend_r[6]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(rx_cc_extend_r[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_multi_gt" *) 
module aurora_8b10b_0_aurora_8b10b_0_multi_gt
   (O2,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    O1,
    tx_out_clk,
    O3,
    drpdo_out,
    D,
    ack_flag,
    O4,
    O5,
    O6,
    I11,
    O7,
    hard_err_flop_r0,
    I9,
    I10,
    init_clk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    SR,
    gt_tx_reset_i,
    rxn,
    rxp,
    gt_qpllclk_quad6_in,
    gt_qpllrefclk_quad6_in,
    gt_rxdfelfhold_i,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    I1,
    cpll_reset_i,
    I2,
    tx_reset_i,
    comma_over_two_cycles_r,
    bucket_full_r);
  output O2;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output O1;
  output tx_out_clk;
  output O3;
  output [15:0]drpdo_out;
  output [1:0]D;
  output ack_flag;
  output O4;
  output O5;
  output O6;
  output [1:0]I11;
  output O7;
  output hard_err_flop_r0;
  output [7:0]I9;
  output [7:0]I10;
  input init_clk_in;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input [0:0]SR;
  input gt_tx_reset_i;
  input rxn;
  input rxp;
  input gt_qpllclk_quad6_in;
  input gt_qpllrefclk_quad6_in;
  input gt_rxdfelfhold_i;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [15:0]TXDATA;
  input [1:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input I1;
  input cpll_reset_i;
  input I2;
  input tx_reset_i;
  input comma_over_two_cycles_r;
  input bucket_full_r;

  wire [1:0]D;
  wire I1;
  wire [7:0]I10;
  wire [1:0]I11;
  wire I2;
  wire [7:0]I9;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire [0:0]SR;
  wire [1:0]TXCHARISK;
  wire [15:0]TXDATA;
  wire ack_flag;
  wire bucket_full_r;
  wire comma_over_two_cycles_r;
  wire cpll_reset_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire gt_qpllclk_quad6_in;
  wire gt_qpllrefclk_quad6_in;
  wire gt_refclk1;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire hard_err_flop_r0;
  wire init_clk_in;
  wire [2:0]loopback;
  wire power_down;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire sync_clk;
  wire tx_out_clk;
  wire tx_reset_i;
  wire txn;
  wire txp;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_gt gt0_aurora_8b10b_0_i
       (.D(D),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I2(I2),
        .I9(I9),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .SR(SR),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .ack_flag(ack_flag),
        .bucket_full_r(bucket_full_r),
        .comma_over_two_cycles_r(comma_over_two_cycles_r),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_qpllclk_quad6_in(gt_qpllclk_quad6_in),
        .gt_qpllrefclk_quad6_in(gt_qpllrefclk_quad6_in),
        .gt_refclk1(gt_refclk1),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_flop_r0(hard_err_flop_r0),
        .init_clk_in(init_clk_in),
        .loopback(loopback),
        .power_down(power_down),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxn(rxn),
        .rxp(rxp),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_rx_startup_fsm" *) 
module aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm
   (s_out_d1_cdc_to_84,
    s_out_d2_85,
    s_out_d3_86,
    s_out_d4_87,
    s_out_d5_88,
    s_out_d6_89,
    s_out_d7_90,
    O78,
    O79,
    O80,
    O81,
    O82,
    O83,
    s_out_d1_cdc_to_91,
    s_out_d2_92,
    s_out_d3_93,
    s_out_d4_94,
    s_out_d5_95,
    s_out_d6_96,
    s_out_d7_97,
    O84,
    O85,
    O86,
    O87,
    O88,
    O89,
    s_out_d1_cdc_to_98,
    s_out_d2_99,
    s_out_d3_100,
    s_out_d4_101,
    s_out_d5_102,
    s_out_d6_103,
    s_out_d7_104,
    O90,
    O91,
    O92,
    O93,
    O94,
    O95,
    s_out_d1_cdc_to_105,
    s_out_d2_106,
    s_out_d3_107,
    s_out_d4_108,
    s_out_d5_109,
    s_out_d6_110,
    s_out_d7_111,
    O96,
    O97,
    O98,
    O99,
    O100,
    O101,
    s_out_d1_cdc_to_112,
    s_out_d2_113,
    s_out_d3_114,
    s_out_d4_115,
    s_out_d5_116,
    s_out_d6_117,
    s_out_d7_118,
    O102,
    O103,
    O104,
    O105,
    O106,
    O107,
    gt_rxuserrdy_i,
    s_out_d1_cdc_to_119,
    s_out_d2_120,
    s_out_d3_121,
    s_out_d4_122,
    s_out_d5_123,
    s_out_d6_124,
    s_out_d7_125,
    O108,
    O109,
    O110,
    O111,
    O112,
    O113,
    s_out_d1_cdc_to_126,
    s_out_d2_127,
    s_out_d3_128,
    s_out_d4_129,
    s_out_d5_130,
    s_out_d6_131,
    s_out_d7_132,
    O114,
    O115,
    O116,
    O117,
    O118,
    O119,
    s_out_d1_cdc_to_133,
    s_out_d2_134,
    s_out_d3_135,
    s_out_d4_136,
    s_out_d5_137,
    s_out_d6_138,
    s_out_d7_139,
    O120,
    O121,
    O122,
    O123,
    O124,
    O125,
    gt_rxdfelfhold_i,
    gtrxreset_i,
    rxfsm_rxresetdone_r,
    O2,
    user_clk,
    init_clk_in,
    AR,
    gt_txuserrdy_i,
    I1);
  output s_out_d1_cdc_to_84;
  output s_out_d2_85;
  output s_out_d3_86;
  output s_out_d4_87;
  output s_out_d5_88;
  output s_out_d6_89;
  output s_out_d7_90;
  output [1:0]O78;
  output [1:0]O79;
  output [1:0]O80;
  output [1:0]O81;
  output [1:0]O82;
  output [1:0]O83;
  output s_out_d1_cdc_to_91;
  output s_out_d2_92;
  output s_out_d3_93;
  output s_out_d4_94;
  output s_out_d5_95;
  output s_out_d6_96;
  output s_out_d7_97;
  output [1:0]O84;
  output [1:0]O85;
  output [1:0]O86;
  output [1:0]O87;
  output [1:0]O88;
  output [1:0]O89;
  output s_out_d1_cdc_to_98;
  output s_out_d2_99;
  output s_out_d3_100;
  output s_out_d4_101;
  output s_out_d5_102;
  output s_out_d6_103;
  output s_out_d7_104;
  output [1:0]O90;
  output [1:0]O91;
  output [1:0]O92;
  output [1:0]O93;
  output [1:0]O94;
  output [1:0]O95;
  output s_out_d1_cdc_to_105;
  output s_out_d2_106;
  output s_out_d3_107;
  output s_out_d4_108;
  output s_out_d5_109;
  output s_out_d6_110;
  output s_out_d7_111;
  output [1:0]O96;
  output [1:0]O97;
  output [1:0]O98;
  output [1:0]O99;
  output [1:0]O100;
  output [1:0]O101;
  output s_out_d1_cdc_to_112;
  output s_out_d2_113;
  output s_out_d3_114;
  output s_out_d4_115;
  output s_out_d5_116;
  output s_out_d6_117;
  output s_out_d7_118;
  output [1:0]O102;
  output [1:0]O103;
  output [1:0]O104;
  output [1:0]O105;
  output [1:0]O106;
  output [1:0]O107;
  output gt_rxuserrdy_i;
  output s_out_d1_cdc_to_119;
  output s_out_d2_120;
  output s_out_d3_121;
  output s_out_d4_122;
  output s_out_d5_123;
  output s_out_d6_124;
  output s_out_d7_125;
  output [1:0]O108;
  output [1:0]O109;
  output [1:0]O110;
  output [1:0]O111;
  output [1:0]O112;
  output [1:0]O113;
  output s_out_d1_cdc_to_126;
  output s_out_d2_127;
  output s_out_d3_128;
  output s_out_d4_129;
  output s_out_d5_130;
  output s_out_d6_131;
  output s_out_d7_132;
  output [1:0]O114;
  output [1:0]O115;
  output [1:0]O116;
  output [1:0]O117;
  output [1:0]O118;
  output [1:0]O119;
  output s_out_d1_cdc_to_133;
  output s_out_d2_134;
  output s_out_d3_135;
  output s_out_d4_136;
  output s_out_d5_137;
  output s_out_d6_138;
  output s_out_d7_139;
  output [1:0]O120;
  output [1:0]O121;
  output [1:0]O122;
  output [1:0]O123;
  output [1:0]O124;
  output [1:0]O125;
  output gt_rxdfelfhold_i;
  output gtrxreset_i;
  input rxfsm_rxresetdone_r;
  input O2;
  input user_clk;
  input init_clk_in;
  input [0:0]AR;
  input gt_txuserrdy_i;
  input I1;

  wire [0:0]AR;
  wire I1;
  wire [1:0]O100;
  wire [1:0]O101;
  wire [1:0]O102;
  wire [1:0]O103;
  wire [1:0]O104;
  wire [1:0]O105;
  wire [1:0]O106;
  wire [1:0]O107;
  wire [1:0]O108;
  wire [1:0]O109;
  wire [1:0]O110;
  wire [1:0]O111;
  wire [1:0]O112;
  wire [1:0]O113;
  wire [1:0]O114;
  wire [1:0]O115;
  wire [1:0]O116;
  wire [1:0]O117;
  wire [1:0]O118;
  wire [1:0]O119;
  wire [1:0]O120;
  wire [1:0]O121;
  wire [1:0]O122;
  wire [1:0]O123;
  wire [1:0]O124;
  wire [1:0]O125;
  wire O2;
  wire [1:0]O78;
  wire [1:0]O79;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire [1:0]O90;
  wire [1:0]O91;
  wire [1:0]O92;
  wire [1:0]O93;
  wire [1:0]O94;
  wire [1:0]O95;
  wire [1:0]O96;
  wire [1:0]O97;
  wire [1:0]O98;
  wire [1:0]O99;
  wire [31:0]adapt_count_reg;
  wire cplllock_sync;
  wire data_valid_sync;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire init_clk_in;
  wire [7:0]init_wait_count_reg__0;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_rx_state[0]_i_2 ;
  wire \n_0_FSM_sequential_rx_state[2]_i_1 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_11 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_5 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_8 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_9 ;
  wire n_0_RXDFEAGCHOLD_i_1;
  wire n_0_RXUSERRDY_i_1;
  wire \n_0_adapt_count[0]_i_1 ;
  wire \n_0_adapt_count[0]_i_10 ;
  wire \n_0_adapt_count[0]_i_11 ;
  wire \n_0_adapt_count[0]_i_12 ;
  wire \n_0_adapt_count[0]_i_13 ;
  wire \n_0_adapt_count[0]_i_4 ;
  wire \n_0_adapt_count[0]_i_5 ;
  wire \n_0_adapt_count[0]_i_6 ;
  wire \n_0_adapt_count[0]_i_7 ;
  wire \n_0_adapt_count[0]_i_8 ;
  wire \n_0_adapt_count[0]_i_9 ;
  wire \n_0_adapt_count[12]_i_2 ;
  wire \n_0_adapt_count[12]_i_3 ;
  wire \n_0_adapt_count[12]_i_4 ;
  wire \n_0_adapt_count[12]_i_5 ;
  wire \n_0_adapt_count[16]_i_2 ;
  wire \n_0_adapt_count[16]_i_3 ;
  wire \n_0_adapt_count[16]_i_4 ;
  wire \n_0_adapt_count[16]_i_5 ;
  wire \n_0_adapt_count[20]_i_2 ;
  wire \n_0_adapt_count[20]_i_3 ;
  wire \n_0_adapt_count[20]_i_4 ;
  wire \n_0_adapt_count[20]_i_5 ;
  wire \n_0_adapt_count[24]_i_2 ;
  wire \n_0_adapt_count[24]_i_3 ;
  wire \n_0_adapt_count[24]_i_4 ;
  wire \n_0_adapt_count[24]_i_5 ;
  wire \n_0_adapt_count[28]_i_2 ;
  wire \n_0_adapt_count[28]_i_3 ;
  wire \n_0_adapt_count[28]_i_4 ;
  wire \n_0_adapt_count[28]_i_5 ;
  wire \n_0_adapt_count[4]_i_2 ;
  wire \n_0_adapt_count[4]_i_3 ;
  wire \n_0_adapt_count[4]_i_4 ;
  wire \n_0_adapt_count[4]_i_5 ;
  wire \n_0_adapt_count[8]_i_2 ;
  wire \n_0_adapt_count[8]_i_3 ;
  wire \n_0_adapt_count[8]_i_4 ;
  wire \n_0_adapt_count[8]_i_5 ;
  wire \n_0_adapt_count_reg[0]_i_2 ;
  wire \n_0_adapt_count_reg[12]_i_1 ;
  wire \n_0_adapt_count_reg[16]_i_1 ;
  wire \n_0_adapt_count_reg[20]_i_1 ;
  wire \n_0_adapt_count_reg[24]_i_1 ;
  wire \n_0_adapt_count_reg[4]_i_1 ;
  wire \n_0_adapt_count_reg[8]_i_1 ;
  wire n_0_check_tlock_max_i_1;
  wire n_0_check_tlock_max_reg;
  wire n_0_gtrxreset_i_i_1;
  wire \n_0_init_wait_count[7]_i_1__0 ;
  wire \n_0_init_wait_count[7]_i_3__0 ;
  wire \n_0_init_wait_count[7]_i_4__0 ;
  wire n_0_init_wait_done_i_1__0;
  wire n_0_init_wait_done_reg;
  wire \n_0_mmcm_lock_count[9]_i_2__0 ;
  wire \n_0_mmcm_lock_count[9]_i_4__0 ;
  wire n_0_mmcm_lock_reclocked_i_2__0;
  wire n_0_reset_time_out_i_4;
  wire n_0_reset_time_out_reg;
  wire n_0_run_phase_alignment_int_i_1__0;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_rx_fsm_reset_done_int_reg;
  wire n_0_sync_run_phase_alignment_int_cdc_sync;
  wire n_0_time_out_100us_i_1;
  wire n_0_time_out_100us_i_2;
  wire n_0_time_out_100us_i_3;
  wire n_0_time_out_100us_i_4;
  wire n_0_time_out_100us_reg;
  wire n_0_time_out_1us_i_1;
  wire n_0_time_out_1us_i_2;
  wire n_0_time_out_1us_i_3;
  wire n_0_time_out_1us_i_4;
  wire n_0_time_out_1us_reg;
  wire n_0_time_out_2ms_i_1;
  wire n_0_time_out_2ms_i_2;
  wire n_0_time_out_2ms_reg;
  wire n_0_time_out_adapt_i_1;
  wire n_0_time_out_adapt_reg;
  wire \n_0_time_out_counter[0]_i_1 ;
  wire \n_0_time_out_counter[0]_i_3 ;
  wire \n_0_time_out_counter[0]_i_4 ;
  wire \n_0_time_out_counter[0]_i_5__0 ;
  wire \n_0_time_out_counter[0]_i_6__0 ;
  wire \n_0_time_out_counter[0]_i_7__0 ;
  wire \n_0_time_out_counter[0]_i_8__0 ;
  wire \n_0_time_out_counter[0]_i_9__0 ;
  wire \n_0_time_out_counter[12]_i_2__0 ;
  wire \n_0_time_out_counter[12]_i_3__0 ;
  wire \n_0_time_out_counter[12]_i_4__0 ;
  wire \n_0_time_out_counter[12]_i_5__0 ;
  wire \n_0_time_out_counter[16]_i_2__0 ;
  wire \n_0_time_out_counter[16]_i_3__0 ;
  wire \n_0_time_out_counter[16]_i_4 ;
  wire \n_0_time_out_counter[4]_i_2__0 ;
  wire \n_0_time_out_counter[4]_i_3__0 ;
  wire \n_0_time_out_counter[4]_i_4__0 ;
  wire \n_0_time_out_counter[4]_i_5__0 ;
  wire \n_0_time_out_counter[8]_i_2__0 ;
  wire \n_0_time_out_counter[8]_i_3__0 ;
  wire \n_0_time_out_counter[8]_i_4__0 ;
  wire \n_0_time_out_counter[8]_i_5__0 ;
  wire \n_0_time_out_counter_reg[0]_i_2__0 ;
  wire \n_0_time_out_counter_reg[12]_i_1__0 ;
  wire \n_0_time_out_counter_reg[4]_i_1__0 ;
  wire \n_0_time_out_counter_reg[8]_i_1__0 ;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1;
  wire n_0_time_tlock_max_i_2;
  wire n_0_time_tlock_max_i_3;
  wire n_0_time_tlock_max_i_4;
  wire n_0_time_tlock_max_i_5;
  wire n_0_time_tlock_max_i_6;
  wire n_0_time_tlock_max_i_7;
  wire \n_0_wait_bypass_count[0]_i_4__0 ;
  wire \n_0_wait_bypass_count[0]_i_5__0 ;
  wire \n_0_wait_bypass_count[0]_i_6__0 ;
  wire \n_0_wait_bypass_count[0]_i_7__0 ;
  wire \n_0_wait_bypass_count[0]_i_8__0 ;
  wire \n_0_wait_bypass_count[0]_i_9 ;
  wire \n_0_wait_bypass_count[12]_i_2__0 ;
  wire \n_0_wait_bypass_count[4]_i_2__0 ;
  wire \n_0_wait_bypass_count[4]_i_3__0 ;
  wire \n_0_wait_bypass_count[4]_i_4__0 ;
  wire \n_0_wait_bypass_count[4]_i_5__0 ;
  wire \n_0_wait_bypass_count[8]_i_2__0 ;
  wire \n_0_wait_bypass_count[8]_i_3__0 ;
  wire \n_0_wait_bypass_count[8]_i_4__0 ;
  wire \n_0_wait_bypass_count[8]_i_5__0 ;
  wire \n_0_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_0_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_0_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_0_wait_time_cnt[0]_i_1__0 ;
  wire \n_0_wait_time_cnt[0]_i_2__0 ;
  wire \n_0_wait_time_cnt[0]_i_4__0 ;
  wire \n_0_wait_time_cnt[0]_i_5__0 ;
  wire \n_0_wait_time_cnt[0]_i_6__0 ;
  wire \n_0_wait_time_cnt[0]_i_7__0 ;
  wire \n_0_wait_time_cnt[0]_i_8 ;
  wire \n_0_wait_time_cnt[0]_i_9 ;
  wire \n_0_wait_time_cnt[12]_i_2__0 ;
  wire \n_0_wait_time_cnt[12]_i_3__0 ;
  wire \n_0_wait_time_cnt[12]_i_4__0 ;
  wire \n_0_wait_time_cnt[12]_i_5__0 ;
  wire \n_0_wait_time_cnt[4]_i_2__0 ;
  wire \n_0_wait_time_cnt[4]_i_3__0 ;
  wire \n_0_wait_time_cnt[4]_i_4__0 ;
  wire \n_0_wait_time_cnt[4]_i_5__0 ;
  wire \n_0_wait_time_cnt[8]_i_2__0 ;
  wire \n_0_wait_time_cnt[8]_i_3__0 ;
  wire \n_0_wait_time_cnt[8]_i_4__0 ;
  wire \n_0_wait_time_cnt[8]_i_5__0 ;
  wire \n_0_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_0_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_0_wait_time_cnt_reg[8]_i_1__0 ;
  wire n_19_sync_RXRESETDONE_cdc_sync;
  wire n_19_sync_mmcm_lock_reclocked_cdc_sync;
  wire n_19_sync_rx_fsm_reset_done_int_cdc_sync;
  wire \n_1_adapt_count_reg[0]_i_2 ;
  wire \n_1_adapt_count_reg[12]_i_1 ;
  wire \n_1_adapt_count_reg[16]_i_1 ;
  wire \n_1_adapt_count_reg[20]_i_1 ;
  wire \n_1_adapt_count_reg[24]_i_1 ;
  wire \n_1_adapt_count_reg[28]_i_1 ;
  wire \n_1_adapt_count_reg[4]_i_1 ;
  wire \n_1_adapt_count_reg[8]_i_1 ;
  wire \n_1_time_out_counter_reg[0]_i_2__0 ;
  wire \n_1_time_out_counter_reg[12]_i_1__0 ;
  wire \n_1_time_out_counter_reg[4]_i_1__0 ;
  wire \n_1_time_out_counter_reg[8]_i_1__0 ;
  wire \n_1_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_1_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_1_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_1_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_1_wait_time_cnt_reg[8]_i_1__0 ;
  wire n_20_sync_RXRESETDONE_cdc_sync;
  wire n_20_sync_cplllock_cdc_sync;
  wire n_20_sync_data_valid_cdc_sync;
  wire n_20_sync_mmcm_lock_reclocked_cdc_sync;
  wire n_20_sync_run_phase_alignment_int_cdc_sync;
  wire n_20_sync_rx_fsm_reset_done_int_cdc_sync;
  wire n_21_sync_data_valid_cdc_sync;
  wire n_22_sync_data_valid_cdc_sync;
  wire n_23_sync_data_valid_cdc_sync;
  wire n_24_sync_data_valid_cdc_sync;
  wire n_25_sync_data_valid_cdc_sync;
  wire \n_2_adapt_count_reg[0]_i_2 ;
  wire \n_2_adapt_count_reg[12]_i_1 ;
  wire \n_2_adapt_count_reg[16]_i_1 ;
  wire \n_2_adapt_count_reg[20]_i_1 ;
  wire \n_2_adapt_count_reg[24]_i_1 ;
  wire \n_2_adapt_count_reg[28]_i_1 ;
  wire \n_2_adapt_count_reg[4]_i_1 ;
  wire \n_2_adapt_count_reg[8]_i_1 ;
  wire \n_2_time_out_counter_reg[0]_i_2__0 ;
  wire \n_2_time_out_counter_reg[12]_i_1__0 ;
  wire \n_2_time_out_counter_reg[16]_i_1__0 ;
  wire \n_2_time_out_counter_reg[4]_i_1__0 ;
  wire \n_2_time_out_counter_reg[8]_i_1__0 ;
  wire \n_2_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_2_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_2_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_2_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_2_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_2_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_2_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_3_adapt_count_reg[0]_i_2 ;
  wire \n_3_adapt_count_reg[12]_i_1 ;
  wire \n_3_adapt_count_reg[16]_i_1 ;
  wire \n_3_adapt_count_reg[20]_i_1 ;
  wire \n_3_adapt_count_reg[24]_i_1 ;
  wire \n_3_adapt_count_reg[28]_i_1 ;
  wire \n_3_adapt_count_reg[4]_i_1 ;
  wire \n_3_adapt_count_reg[8]_i_1 ;
  wire \n_3_time_out_counter_reg[0]_i_2__0 ;
  wire \n_3_time_out_counter_reg[12]_i_1__0 ;
  wire \n_3_time_out_counter_reg[16]_i_1__0 ;
  wire \n_3_time_out_counter_reg[4]_i_1__0 ;
  wire \n_3_time_out_counter_reg[8]_i_1__0 ;
  wire \n_3_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_3_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_3_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_3_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_3_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_3_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_3_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_4_adapt_count_reg[0]_i_2 ;
  wire \n_4_adapt_count_reg[12]_i_1 ;
  wire \n_4_adapt_count_reg[16]_i_1 ;
  wire \n_4_adapt_count_reg[20]_i_1 ;
  wire \n_4_adapt_count_reg[24]_i_1 ;
  wire \n_4_adapt_count_reg[28]_i_1 ;
  wire \n_4_adapt_count_reg[4]_i_1 ;
  wire \n_4_adapt_count_reg[8]_i_1 ;
  wire \n_4_time_out_counter_reg[0]_i_2__0 ;
  wire \n_4_time_out_counter_reg[12]_i_1__0 ;
  wire \n_4_time_out_counter_reg[4]_i_1__0 ;
  wire \n_4_time_out_counter_reg[8]_i_1__0 ;
  wire \n_4_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_4_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_4_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_4_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_4_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_4_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_4_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_5_adapt_count_reg[0]_i_2 ;
  wire \n_5_adapt_count_reg[12]_i_1 ;
  wire \n_5_adapt_count_reg[16]_i_1 ;
  wire \n_5_adapt_count_reg[20]_i_1 ;
  wire \n_5_adapt_count_reg[24]_i_1 ;
  wire \n_5_adapt_count_reg[28]_i_1 ;
  wire \n_5_adapt_count_reg[4]_i_1 ;
  wire \n_5_adapt_count_reg[8]_i_1 ;
  wire \n_5_time_out_counter_reg[0]_i_2__0 ;
  wire \n_5_time_out_counter_reg[12]_i_1__0 ;
  wire \n_5_time_out_counter_reg[16]_i_1__0 ;
  wire \n_5_time_out_counter_reg[4]_i_1__0 ;
  wire \n_5_time_out_counter_reg[8]_i_1__0 ;
  wire \n_5_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_5_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_5_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_5_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_5_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_5_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_5_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_6_adapt_count_reg[0]_i_2 ;
  wire \n_6_adapt_count_reg[12]_i_1 ;
  wire \n_6_adapt_count_reg[16]_i_1 ;
  wire \n_6_adapt_count_reg[20]_i_1 ;
  wire \n_6_adapt_count_reg[24]_i_1 ;
  wire \n_6_adapt_count_reg[28]_i_1 ;
  wire \n_6_adapt_count_reg[4]_i_1 ;
  wire \n_6_adapt_count_reg[8]_i_1 ;
  wire \n_6_time_out_counter_reg[0]_i_2__0 ;
  wire \n_6_time_out_counter_reg[12]_i_1__0 ;
  wire \n_6_time_out_counter_reg[16]_i_1__0 ;
  wire \n_6_time_out_counter_reg[4]_i_1__0 ;
  wire \n_6_time_out_counter_reg[8]_i_1__0 ;
  wire \n_6_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_6_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_6_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_6_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_6_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_6_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_6_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_7_adapt_count_reg[0]_i_2 ;
  wire \n_7_adapt_count_reg[12]_i_1 ;
  wire \n_7_adapt_count_reg[16]_i_1 ;
  wire \n_7_adapt_count_reg[20]_i_1 ;
  wire \n_7_adapt_count_reg[24]_i_1 ;
  wire \n_7_adapt_count_reg[28]_i_1 ;
  wire \n_7_adapt_count_reg[4]_i_1 ;
  wire \n_7_adapt_count_reg[8]_i_1 ;
  wire \n_7_time_out_counter_reg[0]_i_2__0 ;
  wire \n_7_time_out_counter_reg[12]_i_1__0 ;
  wire \n_7_time_out_counter_reg[16]_i_1__0 ;
  wire \n_7_time_out_counter_reg[4]_i_1__0 ;
  wire \n_7_time_out_counter_reg[8]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_7_wait_bypass_count_reg[12]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_7_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_7_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_7_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_7_wait_time_cnt_reg[8]_i_1__0 ;
  wire [7:0]p_0_in__1;
  wire [9:0]p_0_in__2;
  wire recclk_mon_count_reset;
(* RTL_KEEP = "yes" *)   wire [3:0]rx_state;
  wire rx_state16_out;
  wire rxfsm_rxresetdone_r;
  wire s_out_d1_cdc_to_105;
  wire s_out_d1_cdc_to_112;
  wire s_out_d1_cdc_to_119;
  wire s_out_d1_cdc_to_126;
  wire s_out_d1_cdc_to_133;
  wire s_out_d1_cdc_to_84;
  wire s_out_d1_cdc_to_91;
  wire s_out_d1_cdc_to_98;
  wire s_out_d2_106;
  wire s_out_d2_113;
  wire s_out_d2_120;
  wire s_out_d2_127;
  wire s_out_d2_134;
  wire s_out_d2_85;
  wire s_out_d2_92;
  wire s_out_d2_99;
  wire s_out_d3_100;
  wire s_out_d3_107;
  wire s_out_d3_114;
  wire s_out_d3_121;
  wire s_out_d3_128;
  wire s_out_d3_135;
  wire s_out_d3_86;
  wire s_out_d3_93;
  wire s_out_d4_101;
  wire s_out_d4_108;
  wire s_out_d4_115;
  wire s_out_d4_122;
  wire s_out_d4_129;
  wire s_out_d4_136;
  wire s_out_d4_87;
  wire s_out_d4_94;
  wire s_out_d5_102;
  wire s_out_d5_109;
  wire s_out_d5_116;
  wire s_out_d5_123;
  wire s_out_d5_130;
  wire s_out_d5_137;
  wire s_out_d5_88;
  wire s_out_d5_95;
  wire s_out_d6_103;
  wire s_out_d6_110;
  wire s_out_d6_117;
  wire s_out_d6_124;
  wire s_out_d6_131;
  wire s_out_d6_138;
  wire s_out_d6_89;
  wire s_out_d6_96;
  wire s_out_d7_104;
  wire s_out_d7_111;
  wire s_out_d7_118;
  wire s_out_d7_125;
  wire s_out_d7_132;
  wire s_out_d7_139;
  wire s_out_d7_90;
  wire s_out_d7_97;
  wire time_out_adapt;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire user_clk;
  wire [12:0]wait_bypass_count_reg;
  wire [15:0]wait_time_cnt_reg;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

LUT6 #(
    .INIT(64'h08B80888FFFFFFFF)) 
     \FSM_sequential_rx_state[0]_i_2 
       (.I0(n_0_time_out_2ms_reg),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(n_0_reset_time_out_reg),
        .I4(time_tlock_max),
        .I5(rx_state[0]),
        .O(\n_0_FSM_sequential_rx_state[0]_i_2 ));
LUT6 #(
    .INIT(64'h00000000262226AA)) 
     \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(n_0_time_out_2ms_reg),
        .I3(rx_state[1]),
        .I4(rx_state16_out),
        .I5(rx_state[3]),
        .O(\n_0_FSM_sequential_rx_state[2]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_rx_state[2]_i_2 
       (.I0(time_tlock_max),
        .I1(n_0_reset_time_out_reg),
        .O(rx_state16_out));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_sequential_rx_state[3]_i_11 
       (.I0(wait_time_cnt_reg[15]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[11]),
        .I3(wait_time_cnt_reg[6]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_11 ));
LUT5 #(
    .INIT(32'h80880000)) 
     \FSM_sequential_rx_state[3]_i_5 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(n_0_reset_time_out_reg),
        .I3(n_0_time_out_2ms_reg),
        .I4(rx_state[0]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_5 ));
LUT5 #(
    .INIT(32'h80FF8000)) 
     \FSM_sequential_rx_state[3]_i_8 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_11 ),
        .I1(\n_0_wait_time_cnt[0]_i_4__0 ),
        .I2(\n_0_wait_time_cnt[0]_i_5__0 ),
        .I3(rx_state[1]),
        .I4(I1),
        .O(\n_0_FSM_sequential_rx_state[3]_i_8 ));
LUT5 #(
    .INIT(32'h80FF8000)) 
     \FSM_sequential_rx_state[3]_i_9 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_11 ),
        .I1(\n_0_wait_time_cnt[0]_i_4__0 ),
        .I2(\n_0_wait_time_cnt[0]_i_5__0 ),
        .I3(rx_state[1]),
        .I4(n_0_init_wait_done_reg),
        .O(\n_0_FSM_sequential_rx_state[3]_i_9 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[0] 
       (.C(init_clk_in),
        .CE(n_19_sync_RXRESETDONE_cdc_sync),
        .D(n_24_sync_data_valid_cdc_sync),
        .Q(rx_state[0]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[1] 
       (.C(init_clk_in),
        .CE(n_19_sync_RXRESETDONE_cdc_sync),
        .D(n_23_sync_data_valid_cdc_sync),
        .Q(rx_state[1]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[2] 
       (.C(init_clk_in),
        .CE(n_19_sync_RXRESETDONE_cdc_sync),
        .D(\n_0_FSM_sequential_rx_state[2]_i_1 ),
        .Q(rx_state[2]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[3] 
       (.C(init_clk_in),
        .CE(n_19_sync_RXRESETDONE_cdc_sync),
        .D(n_22_sync_data_valid_cdc_sync),
        .Q(rx_state[3]),
        .R(AR));
LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
     RXDFEAGCHOLD_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(n_0_time_out_adapt_reg),
        .I5(gt_rxdfelfhold_i),
        .O(n_0_RXDFEAGCHOLD_i_1));
FDRE #(
    .INIT(1'b0)) 
     RXDFEAGCHOLD_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_RXDFEAGCHOLD_i_1),
        .Q(gt_rxdfelfhold_i),
        .R(AR));
LUT6 #(
    .INIT(64'hFFFFFFF500008000)) 
     RXUSERRDY_i_1
       (.I0(rx_state[0]),
        .I1(gt_txuserrdy_i),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .I5(gt_rxuserrdy_i),
        .O(n_0_RXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     RXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_RXUSERRDY_i_1),
        .Q(gt_rxuserrdy_i),
        .R(AR));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_count[0]_i_1 
       (.I0(time_out_adapt),
        .O(\n_0_adapt_count[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000004000)) 
     \adapt_count[0]_i_10 
       (.I0(adapt_count_reg[10]),
        .I1(adapt_count_reg[14]),
        .I2(adapt_count_reg[16]),
        .I3(adapt_count_reg[1]),
        .I4(adapt_count_reg[18]),
        .I5(adapt_count_reg[20]),
        .O(\n_0_adapt_count[0]_i_10 ));
LUT6 #(
    .INIT(64'h0000000000004000)) 
     \adapt_count[0]_i_11 
       (.I0(adapt_count_reg[24]),
        .I1(adapt_count_reg[19]),
        .I2(adapt_count_reg[17]),
        .I3(adapt_count_reg[2]),
        .I4(adapt_count_reg[5]),
        .I5(adapt_count_reg[29]),
        .O(\n_0_adapt_count[0]_i_11 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \adapt_count[0]_i_12 
       (.I0(adapt_count_reg[31]),
        .I1(adapt_count_reg[27]),
        .I2(adapt_count_reg[9]),
        .I3(adapt_count_reg[12]),
        .I4(adapt_count_reg[6]),
        .I5(adapt_count_reg[8]),
        .O(\n_0_adapt_count[0]_i_12 ));
LUT6 #(
    .INIT(64'h0000000000080000)) 
     \adapt_count[0]_i_13 
       (.I0(adapt_count_reg[3]),
        .I1(adapt_count_reg[4]),
        .I2(adapt_count_reg[26]),
        .I3(adapt_count_reg[23]),
        .I4(adapt_count_reg[7]),
        .I5(adapt_count_reg[22]),
        .O(\n_0_adapt_count[0]_i_13 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \adapt_count[0]_i_3 
       (.I0(\n_0_adapt_count[0]_i_8 ),
        .I1(\n_0_adapt_count[0]_i_9 ),
        .I2(\n_0_adapt_count[0]_i_10 ),
        .I3(\n_0_adapt_count[0]_i_11 ),
        .I4(\n_0_adapt_count[0]_i_12 ),
        .I5(\n_0_adapt_count[0]_i_13 ),
        .O(time_out_adapt));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_4 
       (.I0(adapt_count_reg[3]),
        .O(\n_0_adapt_count[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_5 
       (.I0(adapt_count_reg[2]),
        .O(\n_0_adapt_count[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_6 
       (.I0(adapt_count_reg[1]),
        .O(\n_0_adapt_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_count[0]_i_7 
       (.I0(adapt_count_reg[0]),
        .O(\n_0_adapt_count[0]_i_7 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \adapt_count[0]_i_8 
       (.I0(adapt_count_reg[15]),
        .I1(adapt_count_reg[30]),
        .I2(adapt_count_reg[11]),
        .I3(adapt_count_reg[0]),
        .I4(adapt_count_reg[25]),
        .I5(adapt_count_reg[28]),
        .O(\n_0_adapt_count[0]_i_8 ));
LUT2 #(
    .INIT(4'h1)) 
     \adapt_count[0]_i_9 
       (.I0(adapt_count_reg[13]),
        .I1(adapt_count_reg[21]),
        .O(\n_0_adapt_count[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[12]_i_2 
       (.I0(adapt_count_reg[15]),
        .O(\n_0_adapt_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[12]_i_3 
       (.I0(adapt_count_reg[14]),
        .O(\n_0_adapt_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[12]_i_4 
       (.I0(adapt_count_reg[13]),
        .O(\n_0_adapt_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[12]_i_5 
       (.I0(adapt_count_reg[12]),
        .O(\n_0_adapt_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[16]_i_2 
       (.I0(adapt_count_reg[19]),
        .O(\n_0_adapt_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[16]_i_3 
       (.I0(adapt_count_reg[18]),
        .O(\n_0_adapt_count[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[16]_i_4 
       (.I0(adapt_count_reg[17]),
        .O(\n_0_adapt_count[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[16]_i_5 
       (.I0(adapt_count_reg[16]),
        .O(\n_0_adapt_count[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[20]_i_2 
       (.I0(adapt_count_reg[23]),
        .O(\n_0_adapt_count[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[20]_i_3 
       (.I0(adapt_count_reg[22]),
        .O(\n_0_adapt_count[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[20]_i_4 
       (.I0(adapt_count_reg[21]),
        .O(\n_0_adapt_count[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[20]_i_5 
       (.I0(adapt_count_reg[20]),
        .O(\n_0_adapt_count[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[24]_i_2 
       (.I0(adapt_count_reg[27]),
        .O(\n_0_adapt_count[24]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[24]_i_3 
       (.I0(adapt_count_reg[26]),
        .O(\n_0_adapt_count[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[24]_i_4 
       (.I0(adapt_count_reg[25]),
        .O(\n_0_adapt_count[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[24]_i_5 
       (.I0(adapt_count_reg[24]),
        .O(\n_0_adapt_count[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[28]_i_2 
       (.I0(adapt_count_reg[31]),
        .O(\n_0_adapt_count[28]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[28]_i_3 
       (.I0(adapt_count_reg[30]),
        .O(\n_0_adapt_count[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[28]_i_4 
       (.I0(adapt_count_reg[29]),
        .O(\n_0_adapt_count[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[28]_i_5 
       (.I0(adapt_count_reg[28]),
        .O(\n_0_adapt_count[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[4]_i_2 
       (.I0(adapt_count_reg[7]),
        .O(\n_0_adapt_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[4]_i_3 
       (.I0(adapt_count_reg[6]),
        .O(\n_0_adapt_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[4]_i_4 
       (.I0(adapt_count_reg[5]),
        .O(\n_0_adapt_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[4]_i_5 
       (.I0(adapt_count_reg[4]),
        .O(\n_0_adapt_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[8]_i_2 
       (.I0(adapt_count_reg[11]),
        .O(\n_0_adapt_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[8]_i_3 
       (.I0(adapt_count_reg[10]),
        .O(\n_0_adapt_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[8]_i_4 
       (.I0(adapt_count_reg[9]),
        .O(\n_0_adapt_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[8]_i_5 
       (.I0(adapt_count_reg[8]),
        .O(\n_0_adapt_count[8]_i_5 ));
FDRE \adapt_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[0]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_adapt_count_reg[0]_i_2 ,\n_1_adapt_count_reg[0]_i_2 ,\n_2_adapt_count_reg[0]_i_2 ,\n_3_adapt_count_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_adapt_count_reg[0]_i_2 ,\n_5_adapt_count_reg[0]_i_2 ,\n_6_adapt_count_reg[0]_i_2 ,\n_7_adapt_count_reg[0]_i_2 }),
        .S({\n_0_adapt_count[0]_i_4 ,\n_0_adapt_count[0]_i_5 ,\n_0_adapt_count[0]_i_6 ,\n_0_adapt_count[0]_i_7 }));
FDRE \adapt_count_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[10]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[11]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[12]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[12]_i_1 
       (.CI(\n_0_adapt_count_reg[8]_i_1 ),
        .CO({\n_0_adapt_count_reg[12]_i_1 ,\n_1_adapt_count_reg[12]_i_1 ,\n_2_adapt_count_reg[12]_i_1 ,\n_3_adapt_count_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[12]_i_1 ,\n_5_adapt_count_reg[12]_i_1 ,\n_6_adapt_count_reg[12]_i_1 ,\n_7_adapt_count_reg[12]_i_1 }),
        .S({\n_0_adapt_count[12]_i_2 ,\n_0_adapt_count[12]_i_3 ,\n_0_adapt_count[12]_i_4 ,\n_0_adapt_count[12]_i_5 }));
FDRE \adapt_count_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[13]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[14]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[15]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[16] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[16]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[16]_i_1 
       (.CI(\n_0_adapt_count_reg[12]_i_1 ),
        .CO({\n_0_adapt_count_reg[16]_i_1 ,\n_1_adapt_count_reg[16]_i_1 ,\n_2_adapt_count_reg[16]_i_1 ,\n_3_adapt_count_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[16]_i_1 ,\n_5_adapt_count_reg[16]_i_1 ,\n_6_adapt_count_reg[16]_i_1 ,\n_7_adapt_count_reg[16]_i_1 }),
        .S({\n_0_adapt_count[16]_i_2 ,\n_0_adapt_count[16]_i_3 ,\n_0_adapt_count[16]_i_4 ,\n_0_adapt_count[16]_i_5 }));
FDRE \adapt_count_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[17]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[18] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[18]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[19] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[19]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[1]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[20] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[20]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[20]_i_1 
       (.CI(\n_0_adapt_count_reg[16]_i_1 ),
        .CO({\n_0_adapt_count_reg[20]_i_1 ,\n_1_adapt_count_reg[20]_i_1 ,\n_2_adapt_count_reg[20]_i_1 ,\n_3_adapt_count_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[20]_i_1 ,\n_5_adapt_count_reg[20]_i_1 ,\n_6_adapt_count_reg[20]_i_1 ,\n_7_adapt_count_reg[20]_i_1 }),
        .S({\n_0_adapt_count[20]_i_2 ,\n_0_adapt_count[20]_i_3 ,\n_0_adapt_count[20]_i_4 ,\n_0_adapt_count[20]_i_5 }));
FDRE \adapt_count_reg[21] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[21]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[22] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[22]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[23] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[23]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[24] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[24]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[24]_i_1 
       (.CI(\n_0_adapt_count_reg[20]_i_1 ),
        .CO({\n_0_adapt_count_reg[24]_i_1 ,\n_1_adapt_count_reg[24]_i_1 ,\n_2_adapt_count_reg[24]_i_1 ,\n_3_adapt_count_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[24]_i_1 ,\n_5_adapt_count_reg[24]_i_1 ,\n_6_adapt_count_reg[24]_i_1 ,\n_7_adapt_count_reg[24]_i_1 }),
        .S({\n_0_adapt_count[24]_i_2 ,\n_0_adapt_count[24]_i_3 ,\n_0_adapt_count[24]_i_4 ,\n_0_adapt_count[24]_i_5 }));
FDRE \adapt_count_reg[25] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[25]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[26] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[26]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[27] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[27]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[28] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[28]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[28]_i_1 
       (.CI(\n_0_adapt_count_reg[24]_i_1 ),
        .CO({\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_adapt_count_reg[28]_i_1 ,\n_2_adapt_count_reg[28]_i_1 ,\n_3_adapt_count_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[28]_i_1 ,\n_5_adapt_count_reg[28]_i_1 ,\n_6_adapt_count_reg[28]_i_1 ,\n_7_adapt_count_reg[28]_i_1 }),
        .S({\n_0_adapt_count[28]_i_2 ,\n_0_adapt_count[28]_i_3 ,\n_0_adapt_count[28]_i_4 ,\n_0_adapt_count[28]_i_5 }));
FDRE \adapt_count_reg[29] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[29]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[2]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[30] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[30]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[31] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[31]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[3]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[4]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[4]_i_1 
       (.CI(\n_0_adapt_count_reg[0]_i_2 ),
        .CO({\n_0_adapt_count_reg[4]_i_1 ,\n_1_adapt_count_reg[4]_i_1 ,\n_2_adapt_count_reg[4]_i_1 ,\n_3_adapt_count_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[4]_i_1 ,\n_5_adapt_count_reg[4]_i_1 ,\n_6_adapt_count_reg[4]_i_1 ,\n_7_adapt_count_reg[4]_i_1 }),
        .S({\n_0_adapt_count[4]_i_2 ,\n_0_adapt_count[4]_i_3 ,\n_0_adapt_count[4]_i_4 ,\n_0_adapt_count[4]_i_5 }));
FDRE \adapt_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[5]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[6]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[7]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[8]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[8]_i_1 
       (.CI(\n_0_adapt_count_reg[4]_i_1 ),
        .CO({\n_0_adapt_count_reg[8]_i_1 ,\n_1_adapt_count_reg[8]_i_1 ,\n_2_adapt_count_reg[8]_i_1 ,\n_3_adapt_count_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[8]_i_1 ,\n_5_adapt_count_reg[8]_i_1 ,\n_6_adapt_count_reg[8]_i_1 ,\n_7_adapt_count_reg[8]_i_1 }),
        .S({\n_0_adapt_count[8]_i_2 ,\n_0_adapt_count[8]_i_3 ,\n_0_adapt_count[8]_i_4 ,\n_0_adapt_count[8]_i_5 }));
FDRE \adapt_count_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[9]),
        .R(recclk_mon_count_reset));
FDSE #(
    .INIT(1'b0)) 
     adapt_count_reset_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_20_sync_cplllock_cdc_sync),
        .Q(recclk_mon_count_reset),
        .S(AR));
LUT5 #(
    .INIT(32'hFFEF0020)) 
     check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(n_0_check_tlock_max_reg),
        .O(n_0_check_tlock_max_i_1));
FDRE #(
    .INIT(1'b0)) 
     check_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_check_tlock_max_i_1),
        .Q(n_0_check_tlock_max_reg),
        .R(AR));
LUT5 #(
    .INIT(32'hFFFB0010)) 
     gtrxreset_i_i_1
       (.I0(rx_state[1]),
        .I1(rx_state[2]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(gtrxreset_i),
        .O(n_0_gtrxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gtrxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_gtrxreset_i_i_1),
        .Q(gtrxreset_i),
        .R(AR));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in__1[0]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in__1[1]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in__1[2]));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in__1[3]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in__1[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in__1[5]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(\n_0_init_wait_count[7]_i_4__0 ),
        .I2(init_wait_count_reg__0[5]),
        .O(p_0_in__1[6]));
LUT3 #(
    .INIT(8'hF7)) 
     \init_wait_count[7]_i_1__0 
       (.I0(\n_0_init_wait_count[7]_i_3__0 ),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .O(\n_0_init_wait_count[7]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\n_0_init_wait_count[7]_i_4__0 ),
        .I3(init_wait_count_reg__0[6]),
        .O(p_0_in__1[7]));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[6]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[5]),
        .I5(init_wait_count_reg__0[7]),
        .O(\n_0_init_wait_count[7]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .O(\n_0_init_wait_count[7]_i_4__0 ));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[0]),
        .Q(init_wait_count_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[7]),
        .Q(init_wait_count_reg__0[7]));
LUT4 #(
    .INIT(16'hFF08)) 
     init_wait_done_i_1__0
       (.I0(\n_0_init_wait_count[7]_i_3__0 ),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(n_0_init_wait_done_reg),
        .O(n_0_init_wait_done_i_1__0));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(n_0_init_wait_done_i_1__0),
        .Q(n_0_init_wait_done_reg));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__2[0]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[1]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[2]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__2[3]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__2[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__2[5]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I2(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__2[6]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__2[7]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__2[8]));
LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
     \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2__0 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I4(mmcm_lock_count_reg__0[6]),
        .I5(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__2[9]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(\n_0_mmcm_lock_count[9]_i_4__0 ));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[6]),
        .O(n_0_mmcm_lock_reclocked_i_2__0));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_19_sync_mmcm_lock_reclocked_cdc_sync),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
LUT5 #(
    .INIT(32'h55772262)) 
     reset_time_out_i_4
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(I1),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(n_0_reset_time_out_i_4));
FDSE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_20_sync_data_valid_cdc_sync),
        .Q(n_0_reset_time_out_reg),
        .S(AR));
LUT5 #(
    .INIT(32'hFEFF0002)) 
     run_phase_alignment_int_i_1__0
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(n_0_run_phase_alignment_int_reg),
        .O(n_0_run_phase_alignment_int_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_run_phase_alignment_int_i_1__0),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(AR));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_21_sync_data_valid_cdc_sync),
        .Q(n_0_rx_fsm_reset_done_int_reg),
        .R(AR));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_8 sync_RXRESETDONE_cdc_sync
       (.E(n_19_sync_RXRESETDONE_cdc_sync),
        .I1(n_25_sync_data_valid_cdc_sync),
        .I2(\n_0_FSM_sequential_rx_state[3]_i_8 ),
        .I3(\n_0_FSM_sequential_rx_state[3]_i_9 ),
        .I4(n_0_time_out_2ms_reg),
        .I5(n_0_reset_time_out_reg),
        .I6(I1),
        .O1(n_20_sync_RXRESETDONE_cdc_sync),
        .O100(O100),
        .O101(O101),
        .O96(O96),
        .O97(O97),
        .O98(O98),
        .O99(O99),
        .cplllock_sync(cplllock_sync),
        .data_valid_sync(data_valid_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(rx_state),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .s_out_d1_cdc_to_105(s_out_d1_cdc_to_105),
        .s_out_d2_106(s_out_d2_106),
        .s_out_d3_107(s_out_d3_107),
        .s_out_d4_108(s_out_d4_108),
        .s_out_d5_109(s_out_d5_109),
        .s_out_d6_110(s_out_d6_110),
        .s_out_d7_111(s_out_d7_111),
        .time_tlock_max(time_tlock_max));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_9 sync_cplllock_cdc_sync
       (.O1(n_20_sync_cplllock_cdc_sync),
        .O114(O114),
        .O115(O115),
        .O116(O116),
        .O117(O117),
        .O118(O118),
        .O119(O119),
        .O2(O2),
        .cplllock_sync(cplllock_sync),
        .init_clk_in(init_clk_in),
        .out(rx_state),
        .recclk_mon_count_reset(recclk_mon_count_reset),
        .s_out_d1_cdc_to_126(s_out_d1_cdc_to_126),
        .s_out_d2_127(s_out_d2_127),
        .s_out_d3_128(s_out_d3_128),
        .s_out_d4_129(s_out_d4_129),
        .s_out_d5_130(s_out_d5_130),
        .s_out_d6_131(s_out_d6_131),
        .s_out_d7_132(s_out_d7_132));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_10 sync_data_valid_cdc_sync
       (.D({n_22_sync_data_valid_cdc_sync,n_23_sync_data_valid_cdc_sync,n_24_sync_data_valid_cdc_sync}),
        .I1(n_20_sync_RXRESETDONE_cdc_sync),
        .I2(n_0_reset_time_out_i_4),
        .I3(n_0_reset_time_out_reg),
        .I4(n_0_rx_fsm_reset_done_int_reg),
        .I5(\n_0_FSM_sequential_rx_state[0]_i_2 ),
        .I6(n_0_time_out_100us_reg),
        .I7(\n_0_FSM_sequential_rx_state[3]_i_5 ),
        .I8(n_0_time_out_1us_reg),
        .O1(n_20_sync_data_valid_cdc_sync),
        .O108(O108),
        .O109(O109),
        .O110(O110),
        .O111(O111),
        .O112(O112),
        .O113(O113),
        .O2(n_21_sync_data_valid_cdc_sync),
        .O3(n_25_sync_data_valid_cdc_sync),
        .data_valid_sync(data_valid_sync),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .init_clk_in(init_clk_in),
        .out(rx_state),
        .rx_state16_out(rx_state16_out),
        .s_out_d1_cdc_to_119(s_out_d1_cdc_to_119),
        .s_out_d2_120(s_out_d2_120),
        .s_out_d3_121(s_out_d3_121),
        .s_out_d4_122(s_out_d4_122),
        .s_out_d5_123(s_out_d5_123),
        .s_out_d6_124(s_out_d6_124),
        .s_out_d7_125(s_out_d7_125),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11 sync_mmcm_lock_reclocked_cdc_sync
       (.I1(n_0_mmcm_lock_reclocked_i_2__0),
        .O1(n_19_sync_mmcm_lock_reclocked_cdc_sync),
        .O102(O102),
        .O103(O103),
        .O104(O104),
        .O105(O105),
        .O106(O106),
        .O107(O107),
        .Q(mmcm_lock_count_reg__0[9:8]),
        .SR(n_20_sync_mmcm_lock_reclocked_cdc_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .s_out_d1_cdc_to_112(s_out_d1_cdc_to_112),
        .s_out_d2_113(s_out_d2_113),
        .s_out_d3_114(s_out_d3_114),
        .s_out_d4_115(s_out_d4_115),
        .s_out_d5_116(s_out_d5_116),
        .s_out_d6_117(s_out_d6_117),
        .s_out_d7_118(s_out_d7_118));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12 sync_qplllock_cdc_sync
       (.O120(O120),
        .O121(O121),
        .O122(O122),
        .O123(O123),
        .O124(O124),
        .O125(O125),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_133(s_out_d1_cdc_to_133),
        .s_out_d2_134(s_out_d2_134),
        .s_out_d3_135(s_out_d3_135),
        .s_out_d4_136(s_out_d4_136),
        .s_out_d5_137(s_out_d5_137),
        .s_out_d6_138(s_out_d6_138),
        .s_out_d7_139(s_out_d7_139));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13 sync_run_phase_alignment_int_cdc_sync
       (.I1(n_0_run_phase_alignment_int_reg),
        .O1(n_0_sync_run_phase_alignment_int_cdc_sync),
        .O2(n_20_sync_run_phase_alignment_int_cdc_sync),
        .O78(O78),
        .O79(O79),
        .O80(O80),
        .O81(O81),
        .O82(O82),
        .O83(O83),
        .s_out_d1_cdc_to_84(s_out_d1_cdc_to_84),
        .s_out_d2_85(s_out_d2_85),
        .s_out_d3_86(s_out_d3_86),
        .s_out_d4_87(s_out_d4_87),
        .s_out_d5_88(s_out_d5_88),
        .s_out_d6_89(s_out_d6_89),
        .s_out_d7_90(s_out_d7_90),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_14 sync_rx_fsm_reset_done_int_cdc_sync
       (.I1(n_0_rx_fsm_reset_done_int_reg),
        .I2(\n_0_wait_bypass_count[0]_i_4__0 ),
        .I3(\n_0_wait_bypass_count[0]_i_5__0 ),
        .I4(n_0_time_out_wait_bypass_reg),
        .I5(n_0_sync_run_phase_alignment_int_cdc_sync),
        .O1(n_19_sync_rx_fsm_reset_done_int_cdc_sync),
        .O2(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .O84(O84),
        .O85(O85),
        .O86(O86),
        .O87(O87),
        .O88(O88),
        .O89(O89),
        .s_out_d1_cdc_to_91(s_out_d1_cdc_to_91),
        .s_out_d2_92(s_out_d2_92),
        .s_out_d3_93(s_out_d3_93),
        .s_out_d4_94(s_out_d4_94),
        .s_out_d5_95(s_out_d5_95),
        .s_out_d6_96(s_out_d6_96),
        .s_out_d7_97(s_out_d7_97),
        .user_clk(user_clk),
        .wait_bypass_count_reg(wait_bypass_count_reg[8]));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_15 sync_time_out_wait_bypass_cdc_sync
       (.I1(n_0_time_out_wait_bypass_reg),
        .O90(O90),
        .O91(O91),
        .O92(O92),
        .O93(O93),
        .O94(O94),
        .O95(O95),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_98(s_out_d1_cdc_to_98),
        .s_out_d2_99(s_out_d2_99),
        .s_out_d3_100(s_out_d3_100),
        .s_out_d4_101(s_out_d4_101),
        .s_out_d5_102(s_out_d5_102),
        .s_out_d6_103(s_out_d6_103),
        .s_out_d7_104(s_out_d7_104),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'hFFFF0800)) 
     time_out_100us_i_1
       (.I0(n_0_time_out_100us_i_2),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[11]),
        .I3(n_0_time_out_100us_i_3),
        .I4(n_0_time_out_100us_reg),
        .O(n_0_time_out_100us_i_1));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     time_out_100us_i_2
       (.I0(n_0_time_out_2ms_i_2),
        .I1(n_0_time_out_1us_i_3),
        .I2(n_0_time_tlock_max_i_6),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[0]),
        .I5(time_out_counter_reg[5]),
        .O(n_0_time_out_100us_i_2));
LUT5 #(
    .INIT(32'h00010000)) 
     time_out_100us_i_3
       (.I0(n_0_time_out_100us_i_4),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[4]),
        .O(n_0_time_out_100us_i_3));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     time_out_100us_i_4
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[16]),
        .O(n_0_time_out_100us_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_100us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_100us_i_1),
        .Q(n_0_time_out_100us_reg),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
     time_out_1us_i_1
       (.I0(n_0_time_out_1us_i_2),
        .I1(time_out_counter_reg[5]),
        .I2(n_0_time_out_1us_i_3),
        .I3(n_0_time_out_1us_i_4),
        .I4(n_0_time_out_100us_i_3),
        .I5(n_0_time_out_1us_reg),
        .O(n_0_time_out_1us_i_1));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'hB)) 
     time_out_1us_i_2
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[2]),
        .O(n_0_time_out_1us_i_2));
LUT2 #(
    .INIT(4'hE)) 
     time_out_1us_i_3
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .O(n_0_time_out_1us_i_3));
LUT6 #(
    .INIT(64'h0000000010000000)) 
     time_out_1us_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[7]),
        .O(n_0_time_out_1us_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_1us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_1us_i_1),
        .Q(n_0_time_out_1us_reg),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
     time_out_2ms_i_1
       (.I0(\n_0_time_out_counter[0]_i_3 ),
        .I1(n_0_time_out_2ms_i_2),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[12]),
        .I4(\n_0_time_out_counter[0]_i_4 ),
        .I5(n_0_time_out_2ms_reg),
        .O(n_0_time_out_2ms_i_1));
LUT2 #(
    .INIT(4'h7)) 
     time_out_2ms_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(n_0_time_out_2ms_i_2));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_2ms_i_1),
        .Q(n_0_time_out_2ms_reg),
        .R(n_0_reset_time_out_reg));
LUT3 #(
    .INIT(8'h0E)) 
     time_out_adapt_i_1
       (.I0(n_0_time_out_adapt_reg),
        .I1(time_out_adapt),
        .I2(recclk_mon_count_reset),
        .O(n_0_time_out_adapt_i_1));
FDRE time_out_adapt_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_adapt_i_1),
        .Q(n_0_time_out_adapt_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
     \time_out_counter[0]_i_1 
       (.I0(\n_0_time_out_counter[0]_i_3 ),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[12]),
        .I5(\n_0_time_out_counter[0]_i_4 ),
        .O(\n_0_time_out_counter[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[0]_i_3 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[17]),
        .I5(\n_0_time_out_counter[0]_i_9__0 ),
        .O(\n_0_time_out_counter[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_8__0 
       (.I0(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_8__0 ));
LUT6 #(
    .INIT(64'h0000000000800000)) 
     \time_out_counter[0]_i_9__0 
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[14]),
        .O(\n_0_time_out_counter[0]_i_9__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_2__0 
       (.I0(time_out_counter_reg[15]),
        .O(\n_0_time_out_counter[12]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_3__0 
       (.I0(time_out_counter_reg[14]),
        .O(\n_0_time_out_counter[12]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_4__0 
       (.I0(time_out_counter_reg[13]),
        .O(\n_0_time_out_counter[12]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_5__0 
       (.I0(time_out_counter_reg[12]),
        .O(\n_0_time_out_counter[12]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_2__0 
       (.I0(time_out_counter_reg[18]),
        .O(\n_0_time_out_counter[16]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_3__0 
       (.I0(time_out_counter_reg[17]),
        .O(\n_0_time_out_counter[16]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_4 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_2__0 
       (.I0(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[4]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_3__0 
       (.I0(time_out_counter_reg[6]),
        .O(\n_0_time_out_counter[4]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_4__0 
       (.I0(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[4]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_5__0 
       (.I0(time_out_counter_reg[4]),
        .O(\n_0_time_out_counter[4]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_2__0 
       (.I0(time_out_counter_reg[11]),
        .O(\n_0_time_out_counter[8]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_3__0 
       (.I0(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[8]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_4__0 
       (.I0(time_out_counter_reg[9]),
        .O(\n_0_time_out_counter[8]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_5__0 
       (.I0(time_out_counter_reg[8]),
        .O(\n_0_time_out_counter[8]_i_5__0 ));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[0]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\n_0_time_out_counter_reg[0]_i_2__0 ,\n_1_time_out_counter_reg[0]_i_2__0 ,\n_2_time_out_counter_reg[0]_i_2__0 ,\n_3_time_out_counter_reg[0]_i_2__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_time_out_counter_reg[0]_i_2__0 ,\n_5_time_out_counter_reg[0]_i_2__0 ,\n_6_time_out_counter_reg[0]_i_2__0 ,\n_7_time_out_counter_reg[0]_i_2__0 }),
        .S({\n_0_time_out_counter[0]_i_5__0 ,\n_0_time_out_counter[0]_i_6__0 ,\n_0_time_out_counter[0]_i_7__0 ,\n_0_time_out_counter[0]_i_8__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[10]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[11]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[12]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[8]_i_1__0 ),
        .CO({\n_0_time_out_counter_reg[12]_i_1__0 ,\n_1_time_out_counter_reg[12]_i_1__0 ,\n_2_time_out_counter_reg[12]_i_1__0 ,\n_3_time_out_counter_reg[12]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[12]_i_1__0 ,\n_5_time_out_counter_reg[12]_i_1__0 ,\n_6_time_out_counter_reg[12]_i_1__0 ,\n_7_time_out_counter_reg[12]_i_1__0 }),
        .S({\n_0_time_out_counter[12]_i_2__0 ,\n_0_time_out_counter[12]_i_3__0 ,\n_0_time_out_counter[12]_i_4__0 ,\n_0_time_out_counter[12]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[13]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[14]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[15]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[16]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[12]_i_1__0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\n_2_time_out_counter_reg[16]_i_1__0 ,\n_3_time_out_counter_reg[16]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\n_5_time_out_counter_reg[16]_i_1__0 ,\n_6_time_out_counter_reg[16]_i_1__0 ,\n_7_time_out_counter_reg[16]_i_1__0 }),
        .S({1'b0,\n_0_time_out_counter[16]_i_2__0 ,\n_0_time_out_counter[16]_i_3__0 ,\n_0_time_out_counter[16]_i_4 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[17]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[18]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[1]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[2]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[3]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[4]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[0]_i_2__0 ),
        .CO({\n_0_time_out_counter_reg[4]_i_1__0 ,\n_1_time_out_counter_reg[4]_i_1__0 ,\n_2_time_out_counter_reg[4]_i_1__0 ,\n_3_time_out_counter_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[4]_i_1__0 ,\n_5_time_out_counter_reg[4]_i_1__0 ,\n_6_time_out_counter_reg[4]_i_1__0 ,\n_7_time_out_counter_reg[4]_i_1__0 }),
        .S({\n_0_time_out_counter[4]_i_2__0 ,\n_0_time_out_counter[4]_i_3__0 ,\n_0_time_out_counter[4]_i_4__0 ,\n_0_time_out_counter[4]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[5]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[6]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[7]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[8]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[4]_i_1__0 ),
        .CO({\n_0_time_out_counter_reg[8]_i_1__0 ,\n_1_time_out_counter_reg[8]_i_1__0 ,\n_2_time_out_counter_reg[8]_i_1__0 ,\n_3_time_out_counter_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[8]_i_1__0 ,\n_5_time_out_counter_reg[8]_i_1__0 ,\n_6_time_out_counter_reg[8]_i_1__0 ,\n_7_time_out_counter_reg[8]_i_1__0 }),
        .S({\n_0_time_out_counter[8]_i_2__0 ,\n_0_time_out_counter[8]_i_3__0 ,\n_0_time_out_counter[8]_i_4__0 ,\n_0_time_out_counter[8]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[9]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_19_sync_rx_fsm_reset_done_int_cdc_sync),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFF000E0000)) 
     time_tlock_max_i_1
       (.I0(time_out_counter_reg[2]),
        .I1(n_0_time_tlock_max_i_2),
        .I2(n_0_time_tlock_max_i_3),
        .I3(n_0_time_tlock_max_i_4),
        .I4(n_0_check_tlock_max_reg),
        .I5(time_tlock_max),
        .O(n_0_time_tlock_max_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     time_tlock_max_i_2
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[8]),
        .I4(n_0_time_out_1us_i_3),
        .I5(n_0_time_tlock_max_i_5),
        .O(n_0_time_tlock_max_i_2));
LUT6 #(
    .INIT(64'h00000000FFFF0010)) 
     time_tlock_max_i_3
       (.I0(time_out_counter_reg[8]),
        .I1(n_0_time_out_1us_i_3),
        .I2(n_0_time_out_2ms_i_2),
        .I3(time_out_counter_reg[11]),
        .I4(n_0_time_tlock_max_i_6),
        .I5(n_0_time_tlock_max_i_5),
        .O(n_0_time_tlock_max_i_3));
LUT6 #(
    .INIT(64'h00000001000000FF)) 
     time_tlock_max_i_4
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .I3(n_0_time_tlock_max_i_5),
        .I4(n_0_time_tlock_max_i_7),
        .I5(time_out_counter_reg[4]),
        .O(n_0_time_tlock_max_i_4));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     time_tlock_max_i_5
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[14]),
        .I4(time_out_counter_reg[15]),
        .O(n_0_time_tlock_max_i_5));
LUT2 #(
    .INIT(4'h7)) 
     time_tlock_max_i_6
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(n_0_time_tlock_max_i_6));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     time_tlock_max_i_7
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[9]),
        .O(n_0_time_tlock_max_i_7));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_tlock_max_i_1),
        .Q(time_tlock_max),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[1]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[0]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[0]_i_4__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
     \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[4]),
        .I5(wait_bypass_count_reg[11]),
        .O(\n_0_wait_bypass_count[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_6__0 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_7__0 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_8__0 
       (.I0(wait_bypass_count_reg[1]),
        .O(\n_0_wait_bypass_count[0]_i_8__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_9 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_2__0 
       (.I0(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[12]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_2__0 
       (.I0(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[4]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_3__0 
       (.I0(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[4]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_4__0 
       (.I0(wait_bypass_count_reg[5]),
        .O(\n_0_wait_bypass_count[4]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_5__0 
       (.I0(wait_bypass_count_reg[4]),
        .O(\n_0_wait_bypass_count[4]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_2__0 
       (.I0(wait_bypass_count_reg[11]),
        .O(\n_0_wait_bypass_count[8]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_3__0 
       (.I0(wait_bypass_count_reg[10]),
        .O(\n_0_wait_bypass_count[8]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_4__0 
       (.I0(wait_bypass_count_reg[9]),
        .O(\n_0_wait_bypass_count[8]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_5__0 
       (.I0(wait_bypass_count_reg[8]),
        .O(\n_0_wait_bypass_count[8]_i_5__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[0]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3__0 ,\n_1_wait_bypass_count_reg[0]_i_3__0 ,\n_2_wait_bypass_count_reg[0]_i_3__0 ,\n_3_wait_bypass_count_reg[0]_i_3__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_wait_bypass_count_reg[0]_i_3__0 ,\n_5_wait_bypass_count_reg[0]_i_3__0 ,\n_6_wait_bypass_count_reg[0]_i_3__0 ,\n_7_wait_bypass_count_reg[0]_i_3__0 }),
        .S({\n_0_wait_bypass_count[0]_i_6__0 ,\n_0_wait_bypass_count[0]_i_7__0 ,\n_0_wait_bypass_count[0]_i_8__0 ,\n_0_wait_bypass_count[0]_i_9 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[10]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[11]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[12]_i_1__0 ),
        .Q(wait_bypass_count_reg[12]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1__0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[12]_i_1__0 }),
        .S({1'b0,1'b0,1'b0,\n_0_wait_bypass_count[12]_i_2__0 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[1]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[2]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[3]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[4]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3__0 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1__0 ,\n_1_wait_bypass_count_reg[4]_i_1__0 ,\n_2_wait_bypass_count_reg[4]_i_1__0 ,\n_3_wait_bypass_count_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[4]_i_1__0 ,\n_5_wait_bypass_count_reg[4]_i_1__0 ,\n_6_wait_bypass_count_reg[4]_i_1__0 ,\n_7_wait_bypass_count_reg[4]_i_1__0 }),
        .S({\n_0_wait_bypass_count[4]_i_2__0 ,\n_0_wait_bypass_count[4]_i_3__0 ,\n_0_wait_bypass_count[4]_i_4__0 ,\n_0_wait_bypass_count[4]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[5]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[6]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[7]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[8]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1__0 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1__0 ,\n_1_wait_bypass_count_reg[8]_i_1__0 ,\n_2_wait_bypass_count_reg[8]_i_1__0 ,\n_3_wait_bypass_count_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[8]_i_1__0 ,\n_5_wait_bypass_count_reg[8]_i_1__0 ,\n_6_wait_bypass_count_reg[8]_i_1__0 ,\n_7_wait_bypass_count_reg[8]_i_1__0 }),
        .S({\n_0_wait_bypass_count[8]_i_2__0 ,\n_0_wait_bypass_count[8]_i_3__0 ,\n_0_wait_bypass_count[8]_i_4__0 ,\n_0_wait_bypass_count[8]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[9]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
LUT3 #(
    .INIT(8'h02)) 
     \wait_time_cnt[0]_i_1__0 
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .O(\n_0_wait_time_cnt[0]_i_1__0 ));
LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
     \wait_time_cnt[0]_i_2__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[13]),
        .I3(wait_time_cnt_reg[15]),
        .I4(\n_0_wait_time_cnt[0]_i_4__0 ),
        .I5(\n_0_wait_time_cnt[0]_i_5__0 ),
        .O(\n_0_wait_time_cnt[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[9]),
        .I2(wait_time_cnt_reg[3]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[4]),
        .I5(wait_time_cnt_reg[14]),
        .O(\n_0_wait_time_cnt[0]_i_4__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[5]),
        .I3(wait_time_cnt_reg[2]),
        .I4(wait_time_cnt_reg[10]),
        .I5(wait_time_cnt_reg[8]),
        .O(\n_0_wait_time_cnt[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[3]),
        .O(\n_0_wait_time_cnt[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[2]),
        .O(\n_0_wait_time_cnt[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[1]),
        .O(\n_0_wait_time_cnt[0]_i_8 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[0]),
        .O(\n_0_wait_time_cnt[0]_i_9 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\n_0_wait_time_cnt[12]_i_2__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\n_0_wait_time_cnt[12]_i_3__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\n_0_wait_time_cnt[12]_i_4__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\n_0_wait_time_cnt[12]_i_5__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\n_0_wait_time_cnt[4]_i_2__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\n_0_wait_time_cnt[4]_i_3__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\n_0_wait_time_cnt[4]_i_4__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\n_0_wait_time_cnt[4]_i_5__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\n_0_wait_time_cnt[8]_i_2__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\n_0_wait_time_cnt[8]_i_3__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\n_0_wait_time_cnt[8]_i_4__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\n_0_wait_time_cnt[8]_i_5__0 ));
FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\n_0_wait_time_cnt_reg[0]_i_3__0 ,\n_1_wait_time_cnt_reg[0]_i_3__0 ,\n_2_wait_time_cnt_reg[0]_i_3__0 ,\n_3_wait_time_cnt_reg[0]_i_3__0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[0]_i_3__0 ,\n_5_wait_time_cnt_reg[0]_i_3__0 ,\n_6_wait_time_cnt_reg[0]_i_3__0 ,\n_7_wait_time_cnt_reg[0]_i_3__0 }),
        .S({\n_0_wait_time_cnt[0]_i_6__0 ,\n_0_wait_time_cnt[0]_i_7__0 ,\n_0_wait_time_cnt[0]_i_8 ,\n_0_wait_time_cnt[0]_i_9 }));
FDSE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\n_0_wait_time_cnt_reg[8]_i_1__0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\n_1_wait_time_cnt_reg[12]_i_1__0 ,\n_2_wait_time_cnt_reg[12]_i_1__0 ,\n_3_wait_time_cnt_reg[12]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[12]_i_1__0 ,\n_5_wait_time_cnt_reg[12]_i_1__0 ,\n_6_wait_time_cnt_reg[12]_i_1__0 ,\n_7_wait_time_cnt_reg[12]_i_1__0 }),
        .S({\n_0_wait_time_cnt[12]_i_2__0 ,\n_0_wait_time_cnt[12]_i_3__0 ,\n_0_wait_time_cnt[12]_i_4__0 ,\n_0_wait_time_cnt[12]_i_5__0 }));
FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\n_0_wait_time_cnt_reg[0]_i_3__0 ),
        .CO({\n_0_wait_time_cnt_reg[4]_i_1__0 ,\n_1_wait_time_cnt_reg[4]_i_1__0 ,\n_2_wait_time_cnt_reg[4]_i_1__0 ,\n_3_wait_time_cnt_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[4]_i_1__0 ,\n_5_wait_time_cnt_reg[4]_i_1__0 ,\n_6_wait_time_cnt_reg[4]_i_1__0 ,\n_7_wait_time_cnt_reg[4]_i_1__0 }),
        .S({\n_0_wait_time_cnt[4]_i_2__0 ,\n_0_wait_time_cnt[4]_i_3__0 ,\n_0_wait_time_cnt[4]_i_4__0 ,\n_0_wait_time_cnt[4]_i_5__0 }));
FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\n_0_wait_time_cnt_reg[4]_i_1__0 ),
        .CO({\n_0_wait_time_cnt_reg[8]_i_1__0 ,\n_1_wait_time_cnt_reg[8]_i_1__0 ,\n_2_wait_time_cnt_reg[8]_i_1__0 ,\n_3_wait_time_cnt_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[8]_i_1__0 ,\n_5_wait_time_cnt_reg[8]_i_1__0 ,\n_6_wait_time_cnt_reg[8]_i_1__0 ,\n_7_wait_time_cnt_reg[8]_i_1__0 }),
        .S({\n_0_wait_time_cnt[8]_i_2__0 ,\n_0_wait_time_cnt[8]_i_3__0 ,\n_0_wait_time_cnt[8]_i_4__0 ,\n_0_wait_time_cnt[8]_i_5__0 }));
FDRE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_tx_startup_fsm" *) 
module aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm
   (s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O1,
    s_out_d1_cdc_to_42,
    s_out_d2_43,
    s_out_d3_44,
    s_out_d4_45,
    s_out_d5_46,
    s_out_d6_47,
    s_out_d7_48,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    s_out_d1_cdc_to_49,
    s_out_d2_50,
    s_out_d3_51,
    s_out_d4_52,
    s_out_d5_53,
    s_out_d6_54,
    s_out_d7_55,
    O48,
    O49,
    O50,
    O51,
    O52,
    O53,
    s_out_d1_cdc_to_56,
    s_out_d2_57,
    s_out_d3_58,
    s_out_d4_59,
    s_out_d5_60,
    s_out_d6_61,
    s_out_d7_62,
    O54,
    O55,
    O56,
    O57,
    O58,
    O59,
    s_out_d1_cdc_to_63,
    s_out_d2_64,
    s_out_d3_65,
    s_out_d4_66,
    s_out_d5_67,
    s_out_d6_68,
    s_out_d7_69,
    O60,
    O61,
    O62,
    O63,
    O64,
    O65,
    s_out_d1_cdc_to_70,
    s_out_d2_71,
    s_out_d3_72,
    s_out_d4_73,
    s_out_d5_74,
    s_out_d6_75,
    s_out_d7_76,
    O66,
    O67,
    O68,
    O69,
    O70,
    O71,
    s_out_d1_cdc_to_77,
    s_out_d2_78,
    s_out_d3_79,
    s_out_d4_80,
    s_out_d5_81,
    s_out_d6_82,
    s_out_d7_83,
    O72,
    O73,
    O74,
    O75,
    O76,
    O77,
    gt_tx_reset_i,
    cpll_reset_i,
    gt_txuserrdy_i,
    O3,
    txfsm_txresetdone_r,
    O2,
    user_clk,
    init_clk_in,
    gt_reset,
    ack_flag);
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O36;
  output [1:0]O37;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output O1;
  output s_out_d1_cdc_to_42;
  output s_out_d2_43;
  output s_out_d3_44;
  output s_out_d4_45;
  output s_out_d5_46;
  output s_out_d6_47;
  output s_out_d7_48;
  output [1:0]O42;
  output [1:0]O43;
  output [1:0]O44;
  output [1:0]O45;
  output [1:0]O46;
  output [1:0]O47;
  output s_out_d1_cdc_to_49;
  output s_out_d2_50;
  output s_out_d3_51;
  output s_out_d4_52;
  output s_out_d5_53;
  output s_out_d6_54;
  output s_out_d7_55;
  output [1:0]O48;
  output [1:0]O49;
  output [1:0]O50;
  output [1:0]O51;
  output [1:0]O52;
  output [1:0]O53;
  output s_out_d1_cdc_to_56;
  output s_out_d2_57;
  output s_out_d3_58;
  output s_out_d4_59;
  output s_out_d5_60;
  output s_out_d6_61;
  output s_out_d7_62;
  output [1:0]O54;
  output [1:0]O55;
  output [1:0]O56;
  output [1:0]O57;
  output [1:0]O58;
  output [1:0]O59;
  output s_out_d1_cdc_to_63;
  output s_out_d2_64;
  output s_out_d3_65;
  output s_out_d4_66;
  output s_out_d5_67;
  output s_out_d6_68;
  output s_out_d7_69;
  output [1:0]O60;
  output [1:0]O61;
  output [1:0]O62;
  output [1:0]O63;
  output [1:0]O64;
  output [1:0]O65;
  output s_out_d1_cdc_to_70;
  output s_out_d2_71;
  output s_out_d3_72;
  output s_out_d4_73;
  output s_out_d5_74;
  output s_out_d6_75;
  output s_out_d7_76;
  output [1:0]O66;
  output [1:0]O67;
  output [1:0]O68;
  output [1:0]O69;
  output [1:0]O70;
  output [1:0]O71;
  output s_out_d1_cdc_to_77;
  output s_out_d2_78;
  output s_out_d3_79;
  output s_out_d4_80;
  output s_out_d5_81;
  output s_out_d6_82;
  output s_out_d7_83;
  output [1:0]O72;
  output [1:0]O73;
  output [1:0]O74;
  output [1:0]O75;
  output [1:0]O76;
  output [1:0]O77;
  output gt_tx_reset_i;
  output cpll_reset_i;
  output gt_txuserrdy_i;
  output O3;
  input txfsm_txresetdone_r;
  input O2;
  input user_clk;
  input init_clk_in;
  input gt_reset;
  input ack_flag;

  wire O1;
  wire O2;
  wire O3;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [1:0]O38;
  wire [1:0]O39;
  wire [1:0]O40;
  wire [1:0]O41;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire [1:0]O48;
  wire [1:0]O49;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire [1:0]O70;
  wire [1:0]O71;
  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire ack_flag;
  wire clear;
  wire cpll_reset_i;
  wire cplllock_sync;
  wire gt_reset;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire init_clk_in;
  wire [7:0]init_wait_count_reg__0;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire n_0_CPLL_RESET_i_1;
  wire \n_0_FSM_sequential_tx_state[0]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[0]_i_2 ;
  wire \n_0_FSM_sequential_tx_state[1]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[2]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[2]_i_2 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_10 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_5 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_6 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_9 ;
  wire n_0_TXUSERRDY_i_1;
  wire n_0_gttxreset_i_i_1;
  wire \n_0_init_wait_count[7]_i_1 ;
  wire \n_0_init_wait_count[7]_i_3 ;
  wire \n_0_init_wait_count[7]_i_4 ;
  wire n_0_init_wait_done_i_1;
  wire n_0_init_wait_done_reg;
  wire \n_0_mmcm_lock_count[9]_i_2 ;
  wire \n_0_mmcm_lock_count[9]_i_4 ;
  wire n_0_mmcm_lock_reclocked_i_2;
  wire n_0_pll_reset_asserted_i_1;
  wire n_0_pll_reset_asserted_reg;
  wire n_0_run_phase_alignment_int_i_1;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_sync_run_phase_alignment_int_cdc_sync;
  wire n_0_time_out_2ms_i_1__0;
  wire n_0_time_out_2ms_i_2__0;
  wire n_0_time_out_2ms_i_3;
  wire n_0_time_out_2ms_reg;
  wire n_0_time_out_500us_i_1;
  wire n_0_time_out_500us_i_2;
  wire n_0_time_out_500us_i_3;
  wire n_0_time_out_500us_i_4;
  wire n_0_time_out_500us_reg;
  wire \n_0_time_out_counter[0]_i_1__0 ;
  wire \n_0_time_out_counter[0]_i_3__0 ;
  wire \n_0_time_out_counter[0]_i_4__0 ;
  wire \n_0_time_out_counter[0]_i_5 ;
  wire \n_0_time_out_counter[0]_i_6 ;
  wire \n_0_time_out_counter[0]_i_7 ;
  wire \n_0_time_out_counter[0]_i_8 ;
  wire \n_0_time_out_counter[0]_i_9 ;
  wire \n_0_time_out_counter[12]_i_2 ;
  wire \n_0_time_out_counter[12]_i_3 ;
  wire \n_0_time_out_counter[12]_i_4 ;
  wire \n_0_time_out_counter[12]_i_5 ;
  wire \n_0_time_out_counter[16]_i_2 ;
  wire \n_0_time_out_counter[16]_i_3 ;
  wire \n_0_time_out_counter[4]_i_2 ;
  wire \n_0_time_out_counter[4]_i_3 ;
  wire \n_0_time_out_counter[4]_i_4 ;
  wire \n_0_time_out_counter[4]_i_5 ;
  wire \n_0_time_out_counter[8]_i_2 ;
  wire \n_0_time_out_counter[8]_i_3 ;
  wire \n_0_time_out_counter[8]_i_4 ;
  wire \n_0_time_out_counter[8]_i_5 ;
  wire \n_0_time_out_counter_reg[0]_i_2 ;
  wire \n_0_time_out_counter_reg[12]_i_1 ;
  wire \n_0_time_out_counter_reg[4]_i_1 ;
  wire \n_0_time_out_counter_reg[8]_i_1 ;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1__0;
  wire n_0_time_tlock_max_i_2__0;
  wire n_0_time_tlock_max_i_3__0;
  wire n_0_time_tlock_max_i_4__0;
  wire n_0_time_tlock_max_reg;
  wire n_0_tx_fsm_reset_done_int_i_1;
  wire \n_0_wait_bypass_count[0]_i_10 ;
  wire \n_0_wait_bypass_count[0]_i_11 ;
  wire \n_0_wait_bypass_count[0]_i_4 ;
  wire \n_0_wait_bypass_count[0]_i_5 ;
  wire \n_0_wait_bypass_count[0]_i_6 ;
  wire \n_0_wait_bypass_count[0]_i_7 ;
  wire \n_0_wait_bypass_count[0]_i_8 ;
  wire \n_0_wait_bypass_count[0]_i_9__0 ;
  wire \n_0_wait_bypass_count[12]_i_2 ;
  wire \n_0_wait_bypass_count[12]_i_3 ;
  wire \n_0_wait_bypass_count[12]_i_4 ;
  wire \n_0_wait_bypass_count[12]_i_5 ;
  wire \n_0_wait_bypass_count[16]_i_2 ;
  wire \n_0_wait_bypass_count[4]_i_2 ;
  wire \n_0_wait_bypass_count[4]_i_3 ;
  wire \n_0_wait_bypass_count[4]_i_4 ;
  wire \n_0_wait_bypass_count[4]_i_5 ;
  wire \n_0_wait_bypass_count[8]_i_2 ;
  wire \n_0_wait_bypass_count[8]_i_3 ;
  wire \n_0_wait_bypass_count[8]_i_4 ;
  wire \n_0_wait_bypass_count[8]_i_5 ;
  wire \n_0_wait_bypass_count_reg[0]_i_3 ;
  wire \n_0_wait_bypass_count_reg[12]_i_1 ;
  wire \n_0_wait_bypass_count_reg[4]_i_1 ;
  wire \n_0_wait_bypass_count_reg[8]_i_1 ;
  wire \n_0_wait_time_cnt[0]_i_4 ;
  wire \n_0_wait_time_cnt[0]_i_5 ;
  wire \n_0_wait_time_cnt[0]_i_6 ;
  wire \n_0_wait_time_cnt[0]_i_7 ;
  wire \n_0_wait_time_cnt[12]_i_2 ;
  wire \n_0_wait_time_cnt[12]_i_3 ;
  wire \n_0_wait_time_cnt[12]_i_4 ;
  wire \n_0_wait_time_cnt[12]_i_5 ;
  wire \n_0_wait_time_cnt[4]_i_2 ;
  wire \n_0_wait_time_cnt[4]_i_3 ;
  wire \n_0_wait_time_cnt[4]_i_4 ;
  wire \n_0_wait_time_cnt[4]_i_5 ;
  wire \n_0_wait_time_cnt[8]_i_2 ;
  wire \n_0_wait_time_cnt[8]_i_3 ;
  wire \n_0_wait_time_cnt[8]_i_4 ;
  wire \n_0_wait_time_cnt[8]_i_5 ;
  wire \n_0_wait_time_cnt_reg[0]_i_3 ;
  wire \n_0_wait_time_cnt_reg[4]_i_1 ;
  wire \n_0_wait_time_cnt_reg[8]_i_1 ;
  wire n_19_sync_mmcm_lock_reclocked_cdc_sync;
  wire n_19_sync_time_out_wait_bypass_cdc_sync;
  wire n_19_sync_tx_fsm_reset_done_int_cdc_sync;
  wire \n_1_time_out_counter_reg[0]_i_2 ;
  wire \n_1_time_out_counter_reg[12]_i_1 ;
  wire \n_1_time_out_counter_reg[4]_i_1 ;
  wire \n_1_time_out_counter_reg[8]_i_1 ;
  wire \n_1_wait_bypass_count_reg[0]_i_3 ;
  wire \n_1_wait_bypass_count_reg[12]_i_1 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1 ;
  wire \n_1_wait_time_cnt_reg[0]_i_3 ;
  wire \n_1_wait_time_cnt_reg[12]_i_1 ;
  wire \n_1_wait_time_cnt_reg[4]_i_1 ;
  wire \n_1_wait_time_cnt_reg[8]_i_1 ;
  wire n_20_sync_TXRESETDONE_cdc_sync;
  wire n_20_sync_cplllock_cdc_sync;
  wire n_20_sync_mmcm_lock_reclocked_cdc_sync;
  wire n_20_sync_run_phase_alignment_int_cdc_sync;
  wire n_20_sync_tx_fsm_reset_done_int_cdc_sync;
  wire n_21_sync_cplllock_cdc_sync;
  wire \n_2_time_out_counter_reg[0]_i_2 ;
  wire \n_2_time_out_counter_reg[12]_i_1 ;
  wire \n_2_time_out_counter_reg[4]_i_1 ;
  wire \n_2_time_out_counter_reg[8]_i_1 ;
  wire \n_2_wait_bypass_count_reg[0]_i_3 ;
  wire \n_2_wait_bypass_count_reg[12]_i_1 ;
  wire \n_2_wait_bypass_count_reg[4]_i_1 ;
  wire \n_2_wait_bypass_count_reg[8]_i_1 ;
  wire \n_2_wait_time_cnt_reg[0]_i_3 ;
  wire \n_2_wait_time_cnt_reg[12]_i_1 ;
  wire \n_2_wait_time_cnt_reg[4]_i_1 ;
  wire \n_2_wait_time_cnt_reg[8]_i_1 ;
  wire \n_3_time_out_counter_reg[0]_i_2 ;
  wire \n_3_time_out_counter_reg[12]_i_1 ;
  wire \n_3_time_out_counter_reg[16]_i_1 ;
  wire \n_3_time_out_counter_reg[4]_i_1 ;
  wire \n_3_time_out_counter_reg[8]_i_1 ;
  wire \n_3_wait_bypass_count_reg[0]_i_3 ;
  wire \n_3_wait_bypass_count_reg[12]_i_1 ;
  wire \n_3_wait_bypass_count_reg[4]_i_1 ;
  wire \n_3_wait_bypass_count_reg[8]_i_1 ;
  wire \n_3_wait_time_cnt_reg[0]_i_3 ;
  wire \n_3_wait_time_cnt_reg[12]_i_1 ;
  wire \n_3_wait_time_cnt_reg[4]_i_1 ;
  wire \n_3_wait_time_cnt_reg[8]_i_1 ;
  wire \n_4_time_out_counter_reg[0]_i_2 ;
  wire \n_4_time_out_counter_reg[12]_i_1 ;
  wire \n_4_time_out_counter_reg[4]_i_1 ;
  wire \n_4_time_out_counter_reg[8]_i_1 ;
  wire \n_4_wait_bypass_count_reg[0]_i_3 ;
  wire \n_4_wait_bypass_count_reg[12]_i_1 ;
  wire \n_4_wait_bypass_count_reg[4]_i_1 ;
  wire \n_4_wait_bypass_count_reg[8]_i_1 ;
  wire \n_4_wait_time_cnt_reg[0]_i_3 ;
  wire \n_4_wait_time_cnt_reg[12]_i_1 ;
  wire \n_4_wait_time_cnt_reg[4]_i_1 ;
  wire \n_4_wait_time_cnt_reg[8]_i_1 ;
  wire \n_5_time_out_counter_reg[0]_i_2 ;
  wire \n_5_time_out_counter_reg[12]_i_1 ;
  wire \n_5_time_out_counter_reg[4]_i_1 ;
  wire \n_5_time_out_counter_reg[8]_i_1 ;
  wire \n_5_wait_bypass_count_reg[0]_i_3 ;
  wire \n_5_wait_bypass_count_reg[12]_i_1 ;
  wire \n_5_wait_bypass_count_reg[4]_i_1 ;
  wire \n_5_wait_bypass_count_reg[8]_i_1 ;
  wire \n_5_wait_time_cnt_reg[0]_i_3 ;
  wire \n_5_wait_time_cnt_reg[12]_i_1 ;
  wire \n_5_wait_time_cnt_reg[4]_i_1 ;
  wire \n_5_wait_time_cnt_reg[8]_i_1 ;
  wire \n_6_time_out_counter_reg[0]_i_2 ;
  wire \n_6_time_out_counter_reg[12]_i_1 ;
  wire \n_6_time_out_counter_reg[16]_i_1 ;
  wire \n_6_time_out_counter_reg[4]_i_1 ;
  wire \n_6_time_out_counter_reg[8]_i_1 ;
  wire \n_6_wait_bypass_count_reg[0]_i_3 ;
  wire \n_6_wait_bypass_count_reg[12]_i_1 ;
  wire \n_6_wait_bypass_count_reg[4]_i_1 ;
  wire \n_6_wait_bypass_count_reg[8]_i_1 ;
  wire \n_6_wait_time_cnt_reg[0]_i_3 ;
  wire \n_6_wait_time_cnt_reg[12]_i_1 ;
  wire \n_6_wait_time_cnt_reg[4]_i_1 ;
  wire \n_6_wait_time_cnt_reg[8]_i_1 ;
  wire \n_7_time_out_counter_reg[0]_i_2 ;
  wire \n_7_time_out_counter_reg[12]_i_1 ;
  wire \n_7_time_out_counter_reg[16]_i_1 ;
  wire \n_7_time_out_counter_reg[4]_i_1 ;
  wire \n_7_time_out_counter_reg[8]_i_1 ;
  wire \n_7_wait_bypass_count_reg[0]_i_3 ;
  wire \n_7_wait_bypass_count_reg[12]_i_1 ;
  wire \n_7_wait_bypass_count_reg[16]_i_1 ;
  wire \n_7_wait_bypass_count_reg[4]_i_1 ;
  wire \n_7_wait_bypass_count_reg[8]_i_1 ;
  wire \n_7_wait_time_cnt_reg[0]_i_3 ;
  wire \n_7_wait_time_cnt_reg[12]_i_1 ;
  wire \n_7_wait_time_cnt_reg[4]_i_1 ;
  wire \n_7_wait_time_cnt_reg[8]_i_1 ;
  wire [7:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire reset_time_out;
  wire s_out_d1_cdc_to_35;
  wire s_out_d1_cdc_to_42;
  wire s_out_d1_cdc_to_49;
  wire s_out_d1_cdc_to_56;
  wire s_out_d1_cdc_to_63;
  wire s_out_d1_cdc_to_70;
  wire s_out_d1_cdc_to_77;
  wire s_out_d2_36;
  wire s_out_d2_43;
  wire s_out_d2_50;
  wire s_out_d2_57;
  wire s_out_d2_64;
  wire s_out_d2_71;
  wire s_out_d2_78;
  wire s_out_d3_37;
  wire s_out_d3_44;
  wire s_out_d3_51;
  wire s_out_d3_58;
  wire s_out_d3_65;
  wire s_out_d3_72;
  wire s_out_d3_79;
  wire s_out_d4_38;
  wire s_out_d4_45;
  wire s_out_d4_52;
  wire s_out_d4_59;
  wire s_out_d4_66;
  wire s_out_d4_73;
  wire s_out_d4_80;
  wire s_out_d5_39;
  wire s_out_d5_46;
  wire s_out_d5_53;
  wire s_out_d5_60;
  wire s_out_d5_67;
  wire s_out_d5_74;
  wire s_out_d5_81;
  wire s_out_d6_40;
  wire s_out_d6_47;
  wire s_out_d6_54;
  wire s_out_d6_61;
  wire s_out_d6_68;
  wire s_out_d6_75;
  wire s_out_d6_82;
  wire s_out_d7_41;
  wire s_out_d7_48;
  wire s_out_d7_55;
  wire s_out_d7_62;
  wire s_out_d7_69;
  wire s_out_d7_76;
  wire s_out_d7_83;
  wire sel;
  wire [17:0]time_out_counter_reg;
(* RTL_KEEP = "yes" *)   wire [3:0]tx_state;
  wire tx_state13_out;
  wire txfsm_txresetdone_r;
  wire txresetdone_s3;
  wire user_clk;
  wire [16:0]wait_bypass_count_reg;
  wire [15:0]wait_time_cnt_reg;
  wire wait_time_done;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
     CPLL_RESET_i_1
       (.I0(n_0_pll_reset_asserted_reg),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[2]),
        .I4(tx_state[0]),
        .I5(cpll_reset_i),
        .O(n_0_CPLL_RESET_i_1));
FDRE #(
    .INIT(1'b0)) 
     CPLL_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_CPLL_RESET_i_1),
        .Q(cpll_reset_i),
        .R(gt_reset));
LUT6 #(
    .INIT(64'h000000005555FDF5)) 
     \FSM_sequential_tx_state[0]_i_1 
       (.I0(tx_state[0]),
        .I1(n_0_time_out_2ms_reg),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(\n_0_FSM_sequential_tx_state[2]_i_2 ),
        .I5(\n_0_FSM_sequential_tx_state[0]_i_2 ),
        .O(\n_0_FSM_sequential_tx_state[0]_i_1 ));
LUT6 #(
    .INIT(64'hEFAAAAAAAAAA0000)) 
     \FSM_sequential_tx_state[0]_i_2 
       (.I0(tx_state[3]),
        .I1(reset_time_out),
        .I2(n_0_time_out_500us_reg),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\n_0_FSM_sequential_tx_state[0]_i_2 ));
LUT5 #(
    .INIT(32'h04141414)) 
     \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state13_out),
        .I4(tx_state[2]),
        .O(\n_0_FSM_sequential_tx_state[1]_i_1 ));
LUT3 #(
    .INIT(8'h04)) 
     \FSM_sequential_tx_state[1]_i_2 
       (.I0(reset_time_out),
        .I1(n_0_time_tlock_max_reg),
        .I2(mmcm_lock_reclocked),
        .O(tx_state13_out));
LUT6 #(
    .INIT(64'h5555004005050040)) 
     \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(n_0_time_out_2ms_reg),
        .I4(tx_state[2]),
        .I5(\n_0_FSM_sequential_tx_state[2]_i_2 ),
        .O(\n_0_FSM_sequential_tx_state[2]_i_1 ));
LUT4 #(
    .INIT(16'h5545)) 
     \FSM_sequential_tx_state[2]_i_2 
       (.I0(tx_state[1]),
        .I1(mmcm_lock_reclocked),
        .I2(n_0_time_tlock_max_reg),
        .I3(reset_time_out),
        .O(\n_0_FSM_sequential_tx_state[2]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_sequential_tx_state[3]_i_10 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[9]),
        .I4(wait_time_cnt_reg[7]),
        .I5(wait_time_cnt_reg[6]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_10 ));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     \FSM_sequential_tx_state[3]_i_4 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[3]),
        .I3(wait_time_cnt_reg[0]),
        .I4(\n_0_FSM_sequential_tx_state[3]_i_9 ),
        .I5(\n_0_FSM_sequential_tx_state[3]_i_10 ),
        .O(wait_time_done));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_sequential_tx_state[3]_i_5 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_5 ));
LUT3 #(
    .INIT(8'h4F)) 
     \FSM_sequential_tx_state[3]_i_6 
       (.I0(reset_time_out),
        .I1(n_0_time_out_500us_reg),
        .I2(tx_state[0]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_sequential_tx_state[3]_i_9 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[15]),
        .I4(wait_time_cnt_reg[13]),
        .I5(wait_time_cnt_reg[12]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_9 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[0] 
       (.C(init_clk_in),
        .CE(n_21_sync_cplllock_cdc_sync),
        .D(\n_0_FSM_sequential_tx_state[0]_i_1 ),
        .Q(tx_state[0]),
        .R(gt_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[1] 
       (.C(init_clk_in),
        .CE(n_21_sync_cplllock_cdc_sync),
        .D(\n_0_FSM_sequential_tx_state[1]_i_1 ),
        .Q(tx_state[1]),
        .R(gt_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[2] 
       (.C(init_clk_in),
        .CE(n_21_sync_cplllock_cdc_sync),
        .D(\n_0_FSM_sequential_tx_state[2]_i_1 ),
        .Q(tx_state[2]),
        .R(gt_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[3] 
       (.C(init_clk_in),
        .CE(n_21_sync_cplllock_cdc_sync),
        .D(n_19_sync_time_out_wait_bypass_cdc_sync),
        .Q(tx_state[3]),
        .R(gt_reset));
LUT5 #(
    .INIT(32'hFFFB4000)) 
     TXUSERRDY_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt_txuserrdy_i),
        .O(n_0_TXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     TXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_TXUSERRDY_i_1),
        .Q(gt_txuserrdy_i),
        .R(gt_reset));
LUT2 #(
    .INIT(4'h2)) 
     flag2_i_1
       (.I0(cpll_reset_i),
        .I1(ack_flag),
        .O(O3));
LUT5 #(
    .INIT(32'hFEFF0010)) 
     gttxreset_i_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .I4(gt_tx_reset_i),
        .O(n_0_gttxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gttxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_gttxreset_i_i_1),
        .Q(gt_tx_reset_i),
        .R(gt_reset));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg__0[6]),
        .I1(\n_0_init_wait_count[7]_i_4 ),
        .I2(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
LUT3 #(
    .INIT(8'h7F)) 
     \init_wait_count[7]_i_1 
       (.I0(\n_0_init_wait_count[7]_i_3 ),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[6]),
        .O(\n_0_init_wait_count[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\n_0_init_wait_count[7]_i_4 ),
        .I3(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[5]),
        .I3(init_wait_count_reg__0[7]),
        .I4(init_wait_count_reg__0[0]),
        .I5(init_wait_count_reg__0[1]),
        .O(\n_0_init_wait_count[7]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .O(\n_0_init_wait_count[7]_i_4 ));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
LUT4 #(
    .INIT(16'hFF80)) 
     init_wait_done_i_1
       (.I0(\n_0_init_wait_count[7]_i_3 ),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[6]),
        .I3(n_0_init_wait_done_reg),
        .O(n_0_init_wait_done_i_1));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(gt_reset),
        .D(n_0_init_wait_done_i_1),
        .Q(n_0_init_wait_done_reg));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__0[3]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\n_0_mmcm_lock_count[9]_i_4 ),
        .I2(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[7]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__0[8]));
LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
     \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(\n_0_mmcm_lock_count[9]_i_4 ),
        .I4(mmcm_lock_count_reg__0[6]),
        .I5(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__0[9]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(\n_0_mmcm_lock_count[9]_i_4 ));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[6]),
        .O(n_0_mmcm_lock_reclocked_i_2));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_19_sync_mmcm_lock_reclocked_cdc_sync),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
LUT5 #(
    .INIT(32'hEF00FF10)) 
     pll_reset_asserted_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(n_0_pll_reset_asserted_reg),
        .I4(tx_state[1]),
        .O(n_0_pll_reset_asserted_i_1));
FDRE #(
    .INIT(1'b0)) 
     pll_reset_asserted_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_pll_reset_asserted_i_1),
        .Q(n_0_pll_reset_asserted_reg),
        .R(gt_reset));
FDRE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_20_sync_cplllock_cdc_sync),
        .Q(reset_time_out),
        .R(gt_reset));
LUT5 #(
    .INIT(32'hFFFD0004)) 
     run_phase_alignment_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(n_0_run_phase_alignment_int_reg),
        .O(n_0_run_phase_alignment_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_run_phase_alignment_int_i_1),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(gt_reset));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1 sync_TXRESETDONE_cdc_sync
       (.I1(n_0_time_out_500us_reg),
        .I2(n_0_time_out_2ms_reg),
        .O1(n_20_sync_TXRESETDONE_cdc_sync),
        .O54(O54),
        .O55(O55),
        .O56(O56),
        .O57(O57),
        .O58(O58),
        .O59(O59),
        .cplllock_sync(cplllock_sync),
        .init_clk_in(init_clk_in),
        .out(tx_state[2]),
        .reset_time_out(reset_time_out),
        .s_out_d1_cdc_to_56(s_out_d1_cdc_to_56),
        .s_out_d2_57(s_out_d2_57),
        .s_out_d3_58(s_out_d3_58),
        .s_out_d4_59(s_out_d4_59),
        .s_out_d5_60(s_out_d5_60),
        .s_out_d6_61(s_out_d6_61),
        .s_out_d7_62(s_out_d7_62),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .txresetdone_s3(txresetdone_s3));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_2 sync_cplllock_cdc_sync
       (.E(n_21_sync_cplllock_cdc_sync),
        .I1(\n_0_FSM_sequential_tx_state[3]_i_5 ),
        .I2(n_0_init_wait_done_reg),
        .I3(n_20_sync_TXRESETDONE_cdc_sync),
        .I4(n_0_time_tlock_max_reg),
        .I5(n_0_pll_reset_asserted_reg),
        .O1(n_20_sync_cplllock_cdc_sync),
        .O2(O2),
        .O66(O66),
        .O67(O67),
        .O68(O68),
        .O69(O69),
        .O70(O70),
        .O71(O71),
        .cplllock_sync(cplllock_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(tx_state),
        .reset_time_out(reset_time_out),
        .s_out_d1_cdc_to_70(s_out_d1_cdc_to_70),
        .s_out_d2_71(s_out_d2_71),
        .s_out_d3_72(s_out_d3_72),
        .s_out_d4_73(s_out_d4_73),
        .s_out_d5_74(s_out_d5_74),
        .s_out_d6_75(s_out_d6_75),
        .s_out_d7_76(s_out_d7_76),
        .txresetdone_s3(txresetdone_s3),
        .wait_time_done(wait_time_done));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_3 sync_mmcm_lock_reclocked_cdc_sync
       (.I1(n_0_mmcm_lock_reclocked_i_2),
        .O1(n_19_sync_mmcm_lock_reclocked_cdc_sync),
        .O60(O60),
        .O61(O61),
        .O62(O62),
        .O63(O63),
        .O64(O64),
        .O65(O65),
        .Q(mmcm_lock_count_reg__0[9:8]),
        .SR(n_20_sync_mmcm_lock_reclocked_cdc_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .s_out_d1_cdc_to_63(s_out_d1_cdc_to_63),
        .s_out_d2_64(s_out_d2_64),
        .s_out_d3_65(s_out_d3_65),
        .s_out_d4_66(s_out_d4_66),
        .s_out_d5_67(s_out_d5_67),
        .s_out_d6_68(s_out_d6_68),
        .s_out_d7_69(s_out_d7_69));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4 sync_qplllock_cdc_sync
       (.O72(O72),
        .O73(O73),
        .O74(O74),
        .O75(O75),
        .O76(O76),
        .O77(O77),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_77(s_out_d1_cdc_to_77),
        .s_out_d2_78(s_out_d2_78),
        .s_out_d3_79(s_out_d3_79),
        .s_out_d4_80(s_out_d4_80),
        .s_out_d5_81(s_out_d5_81),
        .s_out_d6_82(s_out_d6_82),
        .s_out_d7_83(s_out_d7_83));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5 sync_run_phase_alignment_int_cdc_sync
       (.I1(n_0_run_phase_alignment_int_reg),
        .O1(n_0_sync_run_phase_alignment_int_cdc_sync),
        .O2(n_20_sync_run_phase_alignment_int_cdc_sync),
        .O36(O36),
        .O37(O37),
        .O38(O38),
        .O39(O39),
        .O40(O40),
        .O41(O41),
        .s_out_d1_cdc_to_35(s_out_d1_cdc_to_35),
        .s_out_d2_36(s_out_d2_36),
        .s_out_d3_37(s_out_d3_37),
        .s_out_d4_38(s_out_d4_38),
        .s_out_d5_39(s_out_d5_39),
        .s_out_d6_40(s_out_d6_40),
        .s_out_d7_41(s_out_d7_41),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6 sync_time_out_wait_bypass_cdc_sync
       (.D(n_19_sync_time_out_wait_bypass_cdc_sync),
        .I1(n_0_time_out_wait_bypass_reg),
        .I2(\n_0_FSM_sequential_tx_state[3]_i_6 ),
        .O48(O48),
        .O49(O49),
        .O50(O50),
        .O51(O51),
        .O52(O52),
        .O53(O53),
        .init_clk_in(init_clk_in),
        .out(tx_state[3:1]),
        .s_out_d1_cdc_to_49(s_out_d1_cdc_to_49),
        .s_out_d2_50(s_out_d2_50),
        .s_out_d3_51(s_out_d3_51),
        .s_out_d4_52(s_out_d4_52),
        .s_out_d5_53(s_out_d5_53),
        .s_out_d6_54(s_out_d6_54),
        .s_out_d7_55(s_out_d7_55));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_7 sync_tx_fsm_reset_done_int_cdc_sync
       (.I1(n_0_time_out_wait_bypass_reg),
        .I2(\n_0_wait_bypass_count[0]_i_4 ),
        .I3(\n_0_wait_bypass_count[0]_i_5 ),
        .I4(\n_0_wait_bypass_count[0]_i_6 ),
        .I5(n_0_sync_run_phase_alignment_int_cdc_sync),
        .I6(\n_0_wait_bypass_count[0]_i_7 ),
        .O1(O1),
        .O2(n_19_sync_tx_fsm_reset_done_int_cdc_sync),
        .O3(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .O42(O42),
        .O43(O43),
        .O44(O44),
        .O45(O45),
        .O46(O46),
        .O47(O47),
        .s_out_d1_cdc_to_42(s_out_d1_cdc_to_42),
        .s_out_d2_43(s_out_d2_43),
        .s_out_d3_44(s_out_d3_44),
        .s_out_d4_45(s_out_d4_45),
        .s_out_d5_46(s_out_d5_46),
        .s_out_d6_47(s_out_d6_47),
        .s_out_d7_48(s_out_d7_48),
        .user_clk(user_clk),
        .wait_bypass_count_reg({wait_bypass_count_reg[12:11],wait_bypass_count_reg[4],wait_bypass_count_reg[2]}));
LUT5 #(
    .INIT(32'h0000AAAE)) 
     time_out_2ms_i_1__0
       (.I0(n_0_time_out_2ms_reg),
        .I1(n_0_time_out_2ms_i_2__0),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[8]),
        .I4(reset_time_out),
        .O(n_0_time_out_2ms_i_1__0));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     time_out_2ms_i_2__0
       (.I0(n_0_time_out_2ms_i_3),
        .I1(\n_0_time_out_counter[0]_i_9 ),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[6]),
        .O(n_0_time_out_2ms_i_2__0));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     time_out_2ms_i_3
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[1]),
        .I4(time_out_counter_reg[15]),
        .I5(time_out_counter_reg[14]),
        .O(n_0_time_out_2ms_i_3));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_2ms_i_1__0),
        .Q(n_0_time_out_2ms_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000AAAAAEAA)) 
     time_out_500us_i_1
       (.I0(n_0_time_out_500us_reg),
        .I1(n_0_time_out_500us_i_2),
        .I2(n_0_time_out_500us_i_3),
        .I3(n_0_time_tlock_max_i_3__0),
        .I4(n_0_time_out_500us_i_4),
        .I5(reset_time_out),
        .O(n_0_time_out_500us_i_1));
LUT6 #(
    .INIT(64'h0000000000040000)) 
     time_out_500us_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[10]),
        .I5(time_out_counter_reg[4]),
        .O(n_0_time_out_500us_i_2));
LUT2 #(
    .INIT(4'h7)) 
     time_out_500us_i_3
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .O(n_0_time_out_500us_i_3));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT2 #(
    .INIT(4'hB)) 
     time_out_500us_i_4
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[2]),
        .O(n_0_time_out_500us_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_500us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_500us_i_1),
        .Q(n_0_time_out_500us_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
     \time_out_counter[0]_i_1__0 
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[15]),
        .I4(\n_0_time_out_counter[0]_i_3__0 ),
        .I5(\n_0_time_out_counter[0]_i_4__0 ),
        .O(\n_0_time_out_counter[0]_i_1__0 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT5 #(
    .INIT(32'h00100000)) 
     \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[2]),
        .I4(\n_0_time_out_counter[0]_i_9 ),
        .O(\n_0_time_out_counter[0]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_7 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_8 ));
LUT6 #(
    .INIT(64'h0000000040000000)) 
     \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_2 
       (.I0(time_out_counter_reg[15]),
        .O(\n_0_time_out_counter[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_3 
       (.I0(time_out_counter_reg[14]),
        .O(\n_0_time_out_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_4 
       (.I0(time_out_counter_reg[13]),
        .O(\n_0_time_out_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_5 
       (.I0(time_out_counter_reg[12]),
        .O(\n_0_time_out_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_2 
       (.I0(time_out_counter_reg[17]),
        .O(\n_0_time_out_counter[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_3 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_2 
       (.I0(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_3 
       (.I0(time_out_counter_reg[6]),
        .O(\n_0_time_out_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_4 
       (.I0(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_5 
       (.I0(time_out_counter_reg[4]),
        .O(\n_0_time_out_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_2 
       (.I0(time_out_counter_reg[11]),
        .O(\n_0_time_out_counter[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_3 
       (.I0(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_4 
       (.I0(time_out_counter_reg[9]),
        .O(\n_0_time_out_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_5 
       (.I0(time_out_counter_reg[8]),
        .O(\n_0_time_out_counter[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_time_out_counter_reg[0]_i_2 ,\n_1_time_out_counter_reg[0]_i_2 ,\n_2_time_out_counter_reg[0]_i_2 ,\n_3_time_out_counter_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_time_out_counter_reg[0]_i_2 ,\n_5_time_out_counter_reg[0]_i_2 ,\n_6_time_out_counter_reg[0]_i_2 ,\n_7_time_out_counter_reg[0]_i_2 }),
        .S({\n_0_time_out_counter[0]_i_5 ,\n_0_time_out_counter[0]_i_6 ,\n_0_time_out_counter[0]_i_7 ,\n_0_time_out_counter[0]_i_8 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\n_0_time_out_counter_reg[8]_i_1 ),
        .CO({\n_0_time_out_counter_reg[12]_i_1 ,\n_1_time_out_counter_reg[12]_i_1 ,\n_2_time_out_counter_reg[12]_i_1 ,\n_3_time_out_counter_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[12]_i_1 ,\n_5_time_out_counter_reg[12]_i_1 ,\n_6_time_out_counter_reg[12]_i_1 ,\n_7_time_out_counter_reg[12]_i_1 }),
        .S({\n_0_time_out_counter[12]_i_2 ,\n_0_time_out_counter[12]_i_3 ,\n_0_time_out_counter[12]_i_4 ,\n_0_time_out_counter[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\n_0_time_out_counter_reg[12]_i_1 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\n_3_time_out_counter_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\n_6_time_out_counter_reg[16]_i_1 ,\n_7_time_out_counter_reg[16]_i_1 }),
        .S({1'b0,1'b0,\n_0_time_out_counter[16]_i_2 ,\n_0_time_out_counter[16]_i_3 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\n_0_time_out_counter_reg[0]_i_2 ),
        .CO({\n_0_time_out_counter_reg[4]_i_1 ,\n_1_time_out_counter_reg[4]_i_1 ,\n_2_time_out_counter_reg[4]_i_1 ,\n_3_time_out_counter_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[4]_i_1 ,\n_5_time_out_counter_reg[4]_i_1 ,\n_6_time_out_counter_reg[4]_i_1 ,\n_7_time_out_counter_reg[4]_i_1 }),
        .S({\n_0_time_out_counter[4]_i_2 ,\n_0_time_out_counter[4]_i_3 ,\n_0_time_out_counter[4]_i_4 ,\n_0_time_out_counter[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\n_0_time_out_counter_reg[4]_i_1 ),
        .CO({\n_0_time_out_counter_reg[8]_i_1 ,\n_1_time_out_counter_reg[8]_i_1 ,\n_2_time_out_counter_reg[8]_i_1 ,\n_3_time_out_counter_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[8]_i_1 ,\n_5_time_out_counter_reg[8]_i_1 ,\n_6_time_out_counter_reg[8]_i_1 ,\n_7_time_out_counter_reg[8]_i_1 }),
        .S({\n_0_time_out_counter[8]_i_2 ,\n_0_time_out_counter[8]_i_3 ,\n_0_time_out_counter[8]_i_4 ,\n_0_time_out_counter[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_19_sync_tx_fsm_reset_done_int_cdc_sync),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
     time_tlock_max_i_1__0
       (.I0(n_0_time_tlock_max_reg),
        .I1(n_0_time_tlock_max_i_2__0),
        .I2(n_0_time_tlock_max_i_3__0),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[17]),
        .I5(reset_time_out),
        .O(n_0_time_tlock_max_i_1__0));
LUT3 #(
    .INIT(8'h40)) 
     time_tlock_max_i_2__0
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[6]),
        .I2(n_0_time_tlock_max_i_4__0),
        .O(n_0_time_tlock_max_i_2__0));
LUT5 #(
    .INIT(32'h00000008)) 
     time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[9]),
        .I4(\n_0_time_out_counter[0]_i_3__0 ),
        .O(n_0_time_tlock_max_i_3__0));
LUT6 #(
    .INIT(64'h0000000000100000)) 
     time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[10]),
        .O(n_0_time_tlock_max_i_4__0));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_tlock_max_i_1__0),
        .Q(n_0_time_tlock_max_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFFFF0008)) 
     tx_fsm_reset_done_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(O1),
        .O(n_0_tx_fsm_reset_done_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_tx_fsm_reset_done_int_i_1),
        .Q(O1),
        .R(gt_reset));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_10 
       (.I0(wait_bypass_count_reg[1]),
        .O(\n_0_wait_bypass_count[0]_i_10 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_11 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_11 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[6]),
        .I1(wait_bypass_count_reg[13]),
        .I2(wait_bypass_count_reg[14]),
        .I3(wait_bypass_count_reg[7]),
        .I4(wait_bypass_count_reg[9]),
        .I5(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_4 ));
LUT4 #(
    .INIT(16'hFF7F)) 
     \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[1]),
        .I1(wait_bypass_count_reg[0]),
        .I2(wait_bypass_count_reg[5]),
        .I3(wait_bypass_count_reg[16]),
        .O(\n_0_wait_bypass_count[0]_i_5 ));
LUT3 #(
    .INIT(8'hFE)) 
     \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[10]),
        .O(\n_0_wait_bypass_count[0]_i_6 ));
LUT4 #(
    .INIT(16'hFFF7)) 
     \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[2]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_9__0 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_9__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_2 
       (.I0(wait_bypass_count_reg[15]),
        .O(\n_0_wait_bypass_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_3 
       (.I0(wait_bypass_count_reg[14]),
        .O(\n_0_wait_bypass_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_4 
       (.I0(wait_bypass_count_reg[13]),
        .O(\n_0_wait_bypass_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_5 
       (.I0(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[16]_i_2 
       (.I0(wait_bypass_count_reg[16]),
        .O(\n_0_wait_bypass_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_2 
       (.I0(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_3 
       (.I0(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_4 
       (.I0(wait_bypass_count_reg[5]),
        .O(\n_0_wait_bypass_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_5 
       (.I0(wait_bypass_count_reg[4]),
        .O(\n_0_wait_bypass_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_2 
       (.I0(wait_bypass_count_reg[11]),
        .O(\n_0_wait_bypass_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_3 
       (.I0(wait_bypass_count_reg[10]),
        .O(\n_0_wait_bypass_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_4 
       (.I0(wait_bypass_count_reg[9]),
        .O(\n_0_wait_bypass_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_5 
       (.I0(wait_bypass_count_reg[8]),
        .O(\n_0_wait_bypass_count[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[0]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3 ,\n_1_wait_bypass_count_reg[0]_i_3 ,\n_2_wait_bypass_count_reg[0]_i_3 ,\n_3_wait_bypass_count_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_wait_bypass_count_reg[0]_i_3 ,\n_5_wait_bypass_count_reg[0]_i_3 ,\n_6_wait_bypass_count_reg[0]_i_3 ,\n_7_wait_bypass_count_reg[0]_i_3 }),
        .S({\n_0_wait_bypass_count[0]_i_8 ,\n_0_wait_bypass_count[0]_i_9__0 ,\n_0_wait_bypass_count[0]_i_10 ,\n_0_wait_bypass_count[0]_i_11 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[10]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[11]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[12]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[12]_i_1 ,\n_1_wait_bypass_count_reg[12]_i_1 ,\n_2_wait_bypass_count_reg[12]_i_1 ,\n_3_wait_bypass_count_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[12]_i_1 ,\n_5_wait_bypass_count_reg[12]_i_1 ,\n_6_wait_bypass_count_reg[12]_i_1 ,\n_7_wait_bypass_count_reg[12]_i_1 }),
        .S({\n_0_wait_bypass_count[12]_i_2 ,\n_0_wait_bypass_count[12]_i_3 ,\n_0_wait_bypass_count[12]_i_4 ,\n_0_wait_bypass_count[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[13] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[13]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[14] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[14]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[15] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[15]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[16] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[16]_i_1 ),
        .Q(wait_bypass_count_reg[16]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[12]_i_1 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[16]_i_1 }),
        .S({1'b0,1'b0,1'b0,\n_0_wait_bypass_count[16]_i_2 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[1]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[2]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[3]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[4]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1 ,\n_1_wait_bypass_count_reg[4]_i_1 ,\n_2_wait_bypass_count_reg[4]_i_1 ,\n_3_wait_bypass_count_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[4]_i_1 ,\n_5_wait_bypass_count_reg[4]_i_1 ,\n_6_wait_bypass_count_reg[4]_i_1 ,\n_7_wait_bypass_count_reg[4]_i_1 }),
        .S({\n_0_wait_bypass_count[4]_i_2 ,\n_0_wait_bypass_count[4]_i_3 ,\n_0_wait_bypass_count[4]_i_4 ,\n_0_wait_bypass_count[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[5]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[6]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[7]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[8]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1 ,\n_1_wait_bypass_count_reg[8]_i_1 ,\n_2_wait_bypass_count_reg[8]_i_1 ,\n_3_wait_bypass_count_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[8]_i_1 ,\n_5_wait_bypass_count_reg[8]_i_1 ,\n_6_wait_bypass_count_reg[8]_i_1 ,\n_7_wait_bypass_count_reg[8]_i_1 }),
        .S({\n_0_wait_bypass_count[8]_i_2 ,\n_0_wait_bypass_count[8]_i_3 ,\n_0_wait_bypass_count[8]_i_4 ,\n_0_wait_bypass_count[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[9]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
LUT4 #(
    .INIT(16'h002A)) 
     \wait_time_cnt[0]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .O(clear));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_2 
       (.I0(wait_time_done),
        .O(sel));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[3]),
        .O(\n_0_wait_time_cnt[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[2]),
        .O(\n_0_wait_time_cnt[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[1]),
        .O(\n_0_wait_time_cnt[0]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[0]),
        .O(\n_0_wait_time_cnt[0]_i_7 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\n_0_wait_time_cnt[12]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\n_0_wait_time_cnt[12]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\n_0_wait_time_cnt[12]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\n_0_wait_time_cnt[12]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\n_0_wait_time_cnt[4]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\n_0_wait_time_cnt[4]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\n_0_wait_time_cnt[4]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\n_0_wait_time_cnt[4]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\n_0_wait_time_cnt[8]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\n_0_wait_time_cnt[8]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\n_0_wait_time_cnt[8]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\n_0_wait_time_cnt[8]_i_5 ));
FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_7_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[0]),
        .R(clear));
CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\n_0_wait_time_cnt_reg[0]_i_3 ,\n_1_wait_time_cnt_reg[0]_i_3 ,\n_2_wait_time_cnt_reg[0]_i_3 ,\n_3_wait_time_cnt_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[0]_i_3 ,\n_5_wait_time_cnt_reg[0]_i_3 ,\n_6_wait_time_cnt_reg[0]_i_3 ,\n_7_wait_time_cnt_reg[0]_i_3 }),
        .S({\n_0_wait_time_cnt[0]_i_4 ,\n_0_wait_time_cnt[0]_i_5 ,\n_0_wait_time_cnt[0]_i_6 ,\n_0_wait_time_cnt[0]_i_7 }));
FDSE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_5_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[10]),
        .S(clear));
FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_4_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[11]),
        .R(clear));
FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_7_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[12]),
        .R(clear));
CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\n_0_wait_time_cnt_reg[8]_i_1 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\n_1_wait_time_cnt_reg[12]_i_1 ,\n_2_wait_time_cnt_reg[12]_i_1 ,\n_3_wait_time_cnt_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[12]_i_1 ,\n_5_wait_time_cnt_reg[12]_i_1 ,\n_6_wait_time_cnt_reg[12]_i_1 ,\n_7_wait_time_cnt_reg[12]_i_1 }),
        .S({\n_0_wait_time_cnt[12]_i_2 ,\n_0_wait_time_cnt[12]_i_3 ,\n_0_wait_time_cnt[12]_i_4 ,\n_0_wait_time_cnt[12]_i_5 }));
FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_6_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[13]),
        .R(clear));
FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_5_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[14]),
        .R(clear));
FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_4_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[15]),
        .R(clear));
FDSE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_6_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[1]),
        .S(clear));
FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_5_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[2]),
        .R(clear));
FDRE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_4_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[3]),
        .R(clear));
FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_7_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[4]),
        .R(clear));
CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\n_0_wait_time_cnt_reg[0]_i_3 ),
        .CO({\n_0_wait_time_cnt_reg[4]_i_1 ,\n_1_wait_time_cnt_reg[4]_i_1 ,\n_2_wait_time_cnt_reg[4]_i_1 ,\n_3_wait_time_cnt_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[4]_i_1 ,\n_5_wait_time_cnt_reg[4]_i_1 ,\n_6_wait_time_cnt_reg[4]_i_1 ,\n_7_wait_time_cnt_reg[4]_i_1 }),
        .S({\n_0_wait_time_cnt[4]_i_2 ,\n_0_wait_time_cnt[4]_i_3 ,\n_0_wait_time_cnt[4]_i_4 ,\n_0_wait_time_cnt[4]_i_5 }));
FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_6_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[5]),
        .S(clear));
FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_5_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[6]),
        .S(clear));
FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_4_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[7]),
        .S(clear));
FDRE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_7_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[8]),
        .R(clear));
CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\n_0_wait_time_cnt_reg[4]_i_1 ),
        .CO({\n_0_wait_time_cnt_reg[8]_i_1 ,\n_1_wait_time_cnt_reg[8]_i_1 ,\n_2_wait_time_cnt_reg[8]_i_1 ,\n_3_wait_time_cnt_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[8]_i_1 ,\n_5_wait_time_cnt_reg[8]_i_1 ,\n_6_wait_time_cnt_reg[8]_i_1 ,\n_7_wait_time_cnt_reg[8]_i_1 }),
        .S({\n_0_wait_time_cnt[8]_i_2 ,\n_0_wait_time_cnt[8]_i_3 ,\n_0_wait_time_cnt[8]_i_4 ,\n_0_wait_time_cnt[8]_i_5 }));
FDRE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_6_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[9]),
        .R(clear));
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
