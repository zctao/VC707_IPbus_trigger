// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Thu Apr 09 18:43:57 2015
// Host        : 0602-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/ztaotest/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_funcsim.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma_0
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    independent_clock_bufg,
    pma_reset_out,
    mmcm_locked_out,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    an_interrupt,
    an_adv_config_vector,
    an_restart_config,
    status_vector,
    reset,
    signal_detect,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  input independent_clock_bufg;
  output pma_reset_out;
  output mmcm_locked_out;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;

  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [15:0]status_vector;
  wire txn;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

  assign rxuserclk_out = rxuserclk2_out;
(* CORE_GENERATION_INFO = "gig_ethernet_pcs_pma_0,gig_ethernet_pcs_pma_v14_3,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=14.3,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,c_elaboration_transient_dir=.,c_component_name=gig_ethernet_pcs_pma_0,c_family=virtex7,c_is_sgmii=false,c_use_transceiver=true,c_use_tbi=false,c_use_lvds=false,c_has_an=true,c_has_mdio=false,c_has_ext_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_transceiver_mode=A,c_sgmii_fabric_buffer=true,c_1588=0,gt_rx_byte_width=1,C_EMAC_IF_TEMAC=true,C_PHYADDR=1,EXAMPLE_SIMULATION=0,c_support_level=true,c_sub_core_name=gig_ethernet_pcs_pma_0_gt,c_transceivercontrol=false,c_xdevicefamily=xc7vx485t,c_gt_dmonitorout_width=8}" *) 
   (* X_CORE_INFO = "gig_ethernet_pcs_pma_v14_3,Vivado 2014.4" *) 
   gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support inst
       (.an_adv_config_vector(an_adv_config_vector),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_vector(configuration_vector),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .pma_reset_out(pma_reset_out),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .signal_detect(signal_detect),
        .status_vector(status_vector),
        .txn(txn),
        .txp(txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
endmodule

(* ORIG_REF_NAME = "AUTO_NEG" *) 
module gig_ethernet_pcs_pma_0_AUTO_NEG__parameterized0
   (status_vector,
    O1,
    O2,
    XMIT_CONFIG_INT,
    RX_RUDI_INVALID,
    STAT_VEC_DUPLEX_MODE_RSLVD_reg,
    STATUS_VECTOR_0_PRE0,
    O3,
    XMIT_DATA,
    D,
    O4,
    O5,
    O6,
    an_interrupt,
    I1,
    userclk2,
    RESTART_AN_SET,
    Q,
    p_1_in,
    RX_IDLE,
    I2,
    I3,
    I4,
    RX_CONFIG_VALID,
    S,
    I5,
    I6,
    RXSYNC_STATUS,
    reset_done,
    SOP_REG3,
    an_adv_config_vector,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    link_timer_value,
    I18,
    I19,
    EOP_REG1,
    SR,
    gmii_rx_dv,
    p_0_in,
    data_out,
    I20,
    RX_CONFIG_REG,
    MASK_RUDI_BUFERR_TIMER0,
    I21,
    I22,
    I23);
  output [5:0]status_vector;
  output O1;
  output O2;
  output XMIT_CONFIG_INT;
  output RX_RUDI_INVALID;
  output STAT_VEC_DUPLEX_MODE_RSLVD_reg;
  output STATUS_VECTOR_0_PRE0;
  output O3;
  output XMIT_DATA;
  output [7:0]D;
  output [2:0]O4;
  output O5;
  output [2:0]O6;
  output an_interrupt;
  input I1;
  input userclk2;
  input RESTART_AN_SET;
  input [3:0]Q;
  input p_1_in;
  input RX_IDLE;
  input I2;
  input I3;
  input I4;
  input RX_CONFIG_VALID;
  input [0:0]S;
  input [0:0]I5;
  input I6;
  input RXSYNC_STATUS;
  input reset_done;
  input SOP_REG3;
  input [6:0]an_adv_config_vector;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input [8:0]link_timer_value;
  input [2:0]I18;
  input I19;
  input EOP_REG1;
  input [0:0]SR;
  input gmii_rx_dv;
  input p_0_in;
  input data_out;
  input I20;
  input [0:0]RX_CONFIG_REG;
  input MASK_RUDI_BUFERR_TIMER0;
  input [0:0]I21;
  input I22;
  input I23;

  wire ABILITY_MATCH;
  wire ABILITY_MATCH_2;
  wire ACKNOWLEDGE_MATCH_2;
  wire ACKNOWLEDGE_MATCH_3;
  wire AN_SYNC_STATUS;
  wire CONSISTENCY_MATCH;
  wire CONSISTENCY_MATCH1;
  wire CONSISTENCY_MATCH_COMB;
  wire [7:0]D;
  wire EOP_REG1;
  wire GENERATE_REMOTE_FAULT;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [2:0]I18;
  wire I19;
  wire I2;
  wire I20;
  wire [0:0]I21;
  wire I22;
  wire I23;
  wire I3;
  wire I4;
  wire [0:0]I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire IDLE_INSERTED;
  wire IDLE_INSERTED0;
  wire IDLE_INSERTED_REG1;
  wire IDLE_INSERTED_REG2;
  wire IDLE_INSERTED_REG3;
  wire IDLE_INSERTED_REG30;
  wire IDLE_INSERTED_REG4;
  wire IDLE_MATCH;
  wire IDLE_MATCH_2;
  wire IDLE_REMOVED;
  wire IDLE_REMOVED0;
  wire IDLE_REMOVED_REG1;
  wire IDLE_REMOVED_REG2;
  wire LINK_TIMER_DONE;
  wire LINK_TIMER_SATURATED;
  wire LINK_TIMER_SATURATED_COMB;
  wire [8:0]LINK_TIMER_reg__0;
  wire [8:0]MASK_RUDI_BUFERR_TIMER;
  wire MASK_RUDI_BUFERR_TIMER0;
  wire MR_AN_ENABLE_CHANGE;
  wire MR_AN_ENABLE_CHANGE0;
  wire MR_AN_ENABLE_REG1;
  wire MR_AN_ENABLE_REG2;
  wire MR_RESTART_AN_SET_REG1;
  wire MR_RESTART_AN_SET_REG2;
  wire [3:3]NEXT_STATE;
  wire O1;
  wire O2;
  wire O3;
  wire [2:0]O4;
  wire O5;
  wire [2:0]O6;
  wire PREVIOUS_STATE;
  wire PULSE4096;
  wire PULSE40960;
  wire [3:0]Q;
  wire RESTART_AN_SET;
  wire RXSYNC_STATUS;
  wire [0:0]RX_CONFIG_REG;
  wire RX_CONFIG_SNAPSHOT;
  wire RX_CONFIG_VALID;
  wire RX_IDLE;
  wire RX_IDLE_REG1;
  wire RX_IDLE_REG2;
  wire RX_RUDI_INVALID;
  wire [1:0]RX_RUDI_INVALID_DELAY;
  wire RX_RUDI_INVALID_DELAY0;
  wire RX_RUDI_INVALID_REG;
  wire [0:0]S;
  wire SOP_REG3;
  wire [0:0]SR;
  wire START_LINK_TIMER114_out;
  wire START_LINK_TIMER_REG;
  wire START_LINK_TIMER_REG2;
  wire STATUS_VECTOR_0_PRE0;
  wire STAT_VEC_DUPLEX_MODE_RSLVD_reg;
  wire SYNC_STATUS_HELD;
  wire TIMER4096_MSB_REG;
  wire TOGGLE_RX;
  wire TOGGLE_TX;
  wire XMIT_CONFIG_INT;
  wire XMIT_DATA;
  wire XMIT_DATA_INT;
  wire XMIT_DATA_INT0;
  wire [6:0]an_adv_config_vector;
  wire an_interrupt;
  wire data_out;
  wire gmii_rx_dv;
  wire [8:0]link_timer_value;
  wire n_0_ABILITY_MATCH_2_i_1;
  wire n_0_ABILITY_MATCH_i_1;
  wire n_0_ACKNOWLEDGE_MATCH_2_i_1;
  wire n_0_ACKNOWLEDGE_MATCH_3_i_1;
  wire n_0_ACKNOWLEDGE_MATCH_3_reg;
  wire n_0_AN_SYNC_STATUS_i_1;
  wire \n_0_BASEX_REMOTE_FAULT[0]_i_1 ;
  wire \n_0_BASEX_REMOTE_FAULT[1]_i_1 ;
  wire n_0_CONSISTENCY_MATCH_i_4;
  wire n_0_CONSISTENCY_MATCH_i_6;
  wire n_0_CONSISTENCY_MATCH_i_7;
  wire n_0_CONSISTENCY_MATCH_i_8;
  wire n_0_CONSISTENCY_MATCH_reg_i_3;
  wire n_0_IDLE_MATCH_2_i_1;
  wire n_0_IDLE_MATCH_i_1;
  wire \n_0_LINK_TIMER[2]_i_1 ;
  wire \n_0_LINK_TIMER[5]_i_1 ;
  wire \n_0_LINK_TIMER[8]_i_1 ;
  wire \n_0_LINK_TIMER[8]_i_3 ;
  wire n_0_LINK_TIMER_DONE_i_1;
  wire n_0_LINK_TIMER_DONE_i_2;
  wire n_0_LINK_TIMER_DONE_i_3;
  wire n_0_LINK_TIMER_DONE_i_4;
  wire n_0_LINK_TIMER_SATURATED_i_2;
  wire n_0_LINK_TIMER_SATURATED_i_3;
  wire n_0_LINK_TIMER_SATURATED_i_4;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[0]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[1]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[2]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[3]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[4]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[5]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[5]_i_2 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[6]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[7]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[8]_i_1 ;
  wire \n_0_MASK_RUDI_BUFERR_TIMER[8]_i_2 ;
  wire n_0_MASK_RUDI_BUFERR_i_1;
  wire n_0_MASK_RUDI_BUFERR_reg;
  wire n_0_MASK_RUDI_CLKCOR_i_1;
  wire n_0_MASK_RUDI_CLKCOR_i_2;
  wire n_0_MASK_RUDI_CLKCOR_reg;
  wire n_0_MR_AN_COMPLETE_i_1;
  wire \n_0_MR_LP_ADV_ABILITY_INT[13]_i_1 ;
  wire \n_0_MR_LP_ADV_ABILITY_INT[14]_i_1 ;
  wire \n_0_MR_LP_ADV_ABILITY_INT[16]_i_1 ;
  wire \n_0_MR_LP_ADV_ABILITY_INT[6]_i_1 ;
  wire \n_0_MR_LP_ADV_ABILITY_INT[8]_i_1 ;
  wire \n_0_MR_LP_ADV_ABILITY_INT[9]_i_1 ;
  wire \n_0_MR_LP_ADV_ABILITY_INT_reg[13] ;
  wire \n_0_MR_LP_ADV_ABILITY_INT_reg[14] ;
  wire \n_0_MR_LP_ADV_ABILITY_INT_reg[16] ;
  wire \n_0_MR_NP_RX_INT_reg[16] ;
  wire n_0_MR_REMOTE_FAULT_i_1;
  wire n_0_MR_RESTART_AN_INT_i_1;
  wire n_0_MR_RESTART_AN_INT_i_2;
  wire n_0_MR_RESTART_AN_INT_reg;
  wire \n_0_PREVIOUS_STATE_reg[0] ;
  wire \n_0_PREVIOUS_STATE_reg[1] ;
  wire \n_0_PREVIOUS_STATE_reg[2] ;
  wire \n_0_PREVIOUS_STATE_reg[3] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[0] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[12] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[13] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[1] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[2] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[3] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[4] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[5] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[6] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[7] ;
  wire \n_0_RX_CONFIG_REG_REG_reg[8] ;
  wire \n_0_RX_CONFIG_SNAPSHOT[15]_i_10 ;
  wire \n_0_RX_CONFIG_SNAPSHOT[15]_i_11 ;
  wire \n_0_RX_CONFIG_SNAPSHOT[15]_i_3 ;
  wire \n_0_RX_CONFIG_SNAPSHOT[15]_i_4 ;
  wire \n_0_RX_CONFIG_SNAPSHOT[15]_i_5 ;
  wire \n_0_RX_CONFIG_SNAPSHOT[15]_i_7 ;
  wire \n_0_RX_CONFIG_SNAPSHOT[15]_i_9 ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[0] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[12] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[13] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[15] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[15]_i_6 ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[1] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[2] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[3] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[4] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[5] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[6] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[7] ;
  wire \n_0_RX_CONFIG_SNAPSHOT_reg[8] ;
  wire n_0_RX_DV_i_2;
  wire n_0_START_LINK_TIMER_REG_i_1;
  wire n_0_START_LINK_TIMER_REG_i_2;
  wire n_0_START_LINK_TIMER_REG_i_3;
  wire \n_0_STATE[0]_i_1 ;
  wire \n_0_STATE[0]_i_2 ;
  wire \n_0_STATE[0]_i_3 ;
  wire \n_0_STATE[0]_i_4 ;
  wire \n_0_STATE[0]_i_5 ;
  wire \n_0_STATE[0]_i_6 ;
  wire \n_0_STATE[1]_i_1 ;
  wire \n_0_STATE[1]_i_2 ;
  wire \n_0_STATE[1]_i_3 ;
  wire \n_0_STATE[1]_i_4 ;
  wire \n_0_STATE[2]_i_1 ;
  wire \n_0_STATE[2]_i_2 ;
  wire \n_0_STATE[2]_i_3 ;
  wire \n_0_STATE[2]_i_4 ;
  wire \n_0_STATE[2]_i_5 ;
  wire \n_0_STATE[2]_i_6 ;
  wire \n_0_STATE[3]_i_1 ;
  wire \n_0_STATE[3]_i_4 ;
  wire \n_0_STATE_reg[0] ;
  wire \n_0_STATE_reg[1] ;
  wire \n_0_STATE_reg[2] ;
  wire \n_0_STATE_reg[3] ;
  wire n_0_SYNC_STATUS_HELD_i_1;
  wire \n_0_TIMER4096[0]_i_2 ;
  wire \n_0_TIMER4096_reg[0] ;
  wire \n_0_TIMER4096_reg[0]_i_1 ;
  wire \n_0_TIMER4096_reg[10] ;
  wire \n_0_TIMER4096_reg[10]_i_1 ;
  wire \n_0_TIMER4096_reg[10]_i_2 ;
  wire \n_0_TIMER4096_reg[11] ;
  wire \n_0_TIMER4096_reg[11]_i_1 ;
  wire \n_0_TIMER4096_reg[1] ;
  wire \n_0_TIMER4096_reg[1]_i_1 ;
  wire \n_0_TIMER4096_reg[1]_i_2 ;
  wire \n_0_TIMER4096_reg[2] ;
  wire \n_0_TIMER4096_reg[2]_i_1 ;
  wire \n_0_TIMER4096_reg[2]_i_2 ;
  wire \n_0_TIMER4096_reg[3] ;
  wire \n_0_TIMER4096_reg[3]_i_1 ;
  wire \n_0_TIMER4096_reg[3]_i_2 ;
  wire \n_0_TIMER4096_reg[4] ;
  wire \n_0_TIMER4096_reg[4]_i_1 ;
  wire \n_0_TIMER4096_reg[4]_i_2 ;
  wire \n_0_TIMER4096_reg[5] ;
  wire \n_0_TIMER4096_reg[5]_i_1 ;
  wire \n_0_TIMER4096_reg[5]_i_2 ;
  wire \n_0_TIMER4096_reg[6] ;
  wire \n_0_TIMER4096_reg[6]_i_1 ;
  wire \n_0_TIMER4096_reg[6]_i_2 ;
  wire \n_0_TIMER4096_reg[7] ;
  wire \n_0_TIMER4096_reg[7]_i_1 ;
  wire \n_0_TIMER4096_reg[7]_i_2 ;
  wire \n_0_TIMER4096_reg[8] ;
  wire \n_0_TIMER4096_reg[8]_i_1 ;
  wire \n_0_TIMER4096_reg[8]_i_2 ;
  wire \n_0_TIMER4096_reg[9] ;
  wire \n_0_TIMER4096_reg[9]_i_1 ;
  wire \n_0_TIMER4096_reg[9]_i_2 ;
  wire n_0_TOGGLE_RX_i_1;
  wire n_0_TOGGLE_TX_i_1;
  wire \n_0_TX_CONFIG_REG_INT[11]_i_1 ;
  wire \n_0_TX_CONFIG_REG_INT[12]_i_1 ;
  wire \n_0_TX_CONFIG_REG_INT[13]_i_1 ;
  wire \n_0_TX_CONFIG_REG_INT[14]_i_1 ;
  wire \n_0_TX_CONFIG_REG_INT[15]_i_1 ;
  wire \n_0_TX_CONFIG_REG_INT[5]_i_1 ;
  wire \n_0_TX_CONFIG_REG_INT[7]_i_1 ;
  wire \n_0_TX_CONFIG_REG_INT[8]_i_1 ;
  wire n_0_XMIT_CONFIG_INT_i_1;
  wire n_0_XMIT_CONFIG_INT_i_2;
  wire n_0_XMIT_CONFIG_INT_i_3;
  wire n_1_CONSISTENCY_MATCH_reg_i_3;
  wire \n_1_RX_CONFIG_SNAPSHOT_reg[15]_i_6 ;
  wire n_2_CONSISTENCY_MATCH_reg_i_3;
  wire n_2_LINK_TIMER_SATURATED_reg_i_1;
  wire \n_2_RX_CONFIG_SNAPSHOT_reg[15]_i_6 ;
  wire n_3_CONSISTENCY_MATCH_reg_i_3;
  wire n_3_LINK_TIMER_SATURATED_reg_i_1;
  wire \n_3_RX_CONFIG_SNAPSHOT_reg[15]_i_2 ;
  wire \n_3_RX_CONFIG_SNAPSHOT_reg[15]_i_6 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in38_in;
  wire p_1_in;
  wire [8:0]plusOp__0;
  wire reset_done;
  wire [5:0]status_vector;
  wire userclk2;
  wire [3:1]NLW_CONSISTENCY_MATCH_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_CONSISTENCY_MATCH_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_CONSISTENCY_MATCH_reg_i_3_O_UNCONNECTED;
  wire [3:3]NLW_LINK_TIMER_SATURATED_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_LINK_TIMER_SATURATED_reg_i_1_O_UNCONNECTED;
  wire [3:1]\NLW_RX_CONFIG_SNAPSHOT_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_RX_CONFIG_SNAPSHOT_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_RX_CONFIG_SNAPSHOT_reg[15]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_TIMER4096_reg[9]_i_2_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_TIMER4096_reg[9]_i_2_CARRY4_DI_UNCONNECTED ;

LUT5 #(
    .INIT(32'h00002E22)) 
     ABILITY_MATCH_2_i_1
       (.I0(ABILITY_MATCH_2),
        .I1(RX_CONFIG_VALID),
        .I2(\n_0_RX_CONFIG_SNAPSHOT[15]_i_5 ),
        .I3(\n_3_RX_CONFIG_SNAPSHOT_reg[15]_i_2 ),
        .I4(ACKNOWLEDGE_MATCH_3),
        .O(n_0_ABILITY_MATCH_2_i_1));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     ABILITY_MATCH_2_i_2
       (.I0(I1),
        .I1(n_0_MASK_RUDI_BUFERR_reg),
        .I2(RX_IDLE),
        .O(ACKNOWLEDGE_MATCH_3));
FDRE ABILITY_MATCH_2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ABILITY_MATCH_2_i_1),
        .Q(ABILITY_MATCH_2),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000020FF2000)) 
     ABILITY_MATCH_i_1
       (.I0(\n_3_RX_CONFIG_SNAPSHOT_reg[15]_i_2 ),
        .I1(\n_0_RX_CONFIG_SNAPSHOT[15]_i_5 ),
        .I2(ABILITY_MATCH_2),
        .I3(RX_CONFIG_VALID),
        .I4(ABILITY_MATCH),
        .I5(ACKNOWLEDGE_MATCH_3),
        .O(n_0_ABILITY_MATCH_i_1));
FDRE ABILITY_MATCH_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ABILITY_MATCH_i_1),
        .Q(ABILITY_MATCH),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000E222)) 
     ACKNOWLEDGE_MATCH_2_i_1
       (.I0(ACKNOWLEDGE_MATCH_2),
        .I1(RX_CONFIG_VALID),
        .I2(p_0_in38_in),
        .I3(RX_CONFIG_REG),
        .I4(ACKNOWLEDGE_MATCH_3),
        .O(n_0_ACKNOWLEDGE_MATCH_2_i_1));
FDRE ACKNOWLEDGE_MATCH_2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ACKNOWLEDGE_MATCH_2_i_1),
        .Q(ACKNOWLEDGE_MATCH_2),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000E2222222)) 
     ACKNOWLEDGE_MATCH_3_i_1
       (.I0(n_0_ACKNOWLEDGE_MATCH_3_reg),
        .I1(RX_CONFIG_VALID),
        .I2(RX_CONFIG_REG),
        .I3(p_0_in38_in),
        .I4(ACKNOWLEDGE_MATCH_2),
        .I5(ACKNOWLEDGE_MATCH_3),
        .O(n_0_ACKNOWLEDGE_MATCH_3_i_1));
FDRE ACKNOWLEDGE_MATCH_3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ACKNOWLEDGE_MATCH_3_i_1),
        .Q(n_0_ACKNOWLEDGE_MATCH_3_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFFBFFF80)) 
     AN_SYNC_STATUS_i_1
       (.I0(SYNC_STATUS_HELD),
        .I1(PULSE4096),
        .I2(LINK_TIMER_SATURATED),
        .I3(RXSYNC_STATUS),
        .I4(AN_SYNC_STATUS),
        .O(n_0_AN_SYNC_STATUS_i_1));
FDRE AN_SYNC_STATUS_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_AN_SYNC_STATUS_i_1),
        .Q(AN_SYNC_STATUS),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \BASEX_REMOTE_FAULT[0]_i_1 
       (.I0(I17),
        .I1(PREVIOUS_STATE),
        .I2(status_vector[1]),
        .O(\n_0_BASEX_REMOTE_FAULT[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \BASEX_REMOTE_FAULT[1]_i_1 
       (.I0(I16),
        .I1(PREVIOUS_STATE),
        .I2(status_vector[2]),
        .O(\n_0_BASEX_REMOTE_FAULT[1]_i_1 ));
FDRE \BASEX_REMOTE_FAULT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_BASEX_REMOTE_FAULT[0]_i_1 ),
        .Q(status_vector[1]),
        .R(I1));
FDRE \BASEX_REMOTE_FAULT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_BASEX_REMOTE_FAULT[1]_i_1 ),
        .Q(status_vector[2]),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h82)) 
     CONSISTENCY_MATCH_i_1
       (.I0(CONSISTENCY_MATCH1),
        .I1(\n_0_RX_CONFIG_SNAPSHOT_reg[15] ),
        .I2(p_1_in),
        .O(CONSISTENCY_MATCH_COMB));
LUT4 #(
    .INIT(16'h9009)) 
     CONSISTENCY_MATCH_i_4
       (.I0(\n_0_RX_CONFIG_SNAPSHOT_reg[13] ),
        .I1(I16),
        .I2(\n_0_RX_CONFIG_SNAPSHOT_reg[12] ),
        .I3(I17),
        .O(n_0_CONSISTENCY_MATCH_i_4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     CONSISTENCY_MATCH_i_6
       (.I0(\n_0_RX_CONFIG_SNAPSHOT_reg[8] ),
        .I1(I7),
        .I2(I8),
        .I3(\n_0_RX_CONFIG_SNAPSHOT_reg[6] ),
        .I4(I9),
        .I5(\n_0_RX_CONFIG_SNAPSHOT_reg[7] ),
        .O(n_0_CONSISTENCY_MATCH_i_6));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     CONSISTENCY_MATCH_i_7
       (.I0(\n_0_RX_CONFIG_SNAPSHOT_reg[5] ),
        .I1(I10),
        .I2(I11),
        .I3(\n_0_RX_CONFIG_SNAPSHOT_reg[3] ),
        .I4(I12),
        .I5(\n_0_RX_CONFIG_SNAPSHOT_reg[4] ),
        .O(n_0_CONSISTENCY_MATCH_i_7));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     CONSISTENCY_MATCH_i_8
       (.I0(\n_0_RX_CONFIG_SNAPSHOT_reg[1] ),
        .I1(I13),
        .I2(I14),
        .I3(\n_0_RX_CONFIG_SNAPSHOT_reg[2] ),
        .I4(I15),
        .I5(\n_0_RX_CONFIG_SNAPSHOT_reg[0] ),
        .O(n_0_CONSISTENCY_MATCH_i_8));
FDRE CONSISTENCY_MATCH_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CONSISTENCY_MATCH_COMB),
        .Q(CONSISTENCY_MATCH),
        .R(I1));
CARRY4 CONSISTENCY_MATCH_reg_i_2
       (.CI(n_0_CONSISTENCY_MATCH_reg_i_3),
        .CO({NLW_CONSISTENCY_MATCH_reg_i_2_CO_UNCONNECTED[3:1],CONSISTENCY_MATCH1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CONSISTENCY_MATCH_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_CONSISTENCY_MATCH_i_4}));
CARRY4 CONSISTENCY_MATCH_reg_i_3
       (.CI(1'b0),
        .CO({n_0_CONSISTENCY_MATCH_reg_i_3,n_1_CONSISTENCY_MATCH_reg_i_3,n_2_CONSISTENCY_MATCH_reg_i_3,n_3_CONSISTENCY_MATCH_reg_i_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CONSISTENCY_MATCH_reg_i_3_O_UNCONNECTED[3:0]),
        .S({I5,n_0_CONSISTENCY_MATCH_i_6,n_0_CONSISTENCY_MATCH_i_7,n_0_CONSISTENCY_MATCH_i_8}));
LUT6 #(
    .INIT(64'h0000000000080000)) 
     GENERATE_REMOTE_FAULT_i_1
       (.I0(\n_0_PREVIOUS_STATE_reg[0] ),
        .I1(\n_0_PREVIOUS_STATE_reg[1] ),
        .I2(\n_0_PREVIOUS_STATE_reg[3] ),
        .I3(\n_0_PREVIOUS_STATE_reg[2] ),
        .I4(\n_0_STATE[2]_i_3 ),
        .I5(n_0_XMIT_CONFIG_INT_i_3),
        .O(PREVIOUS_STATE));
FDRE GENERATE_REMOTE_FAULT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(PREVIOUS_STATE),
        .Q(GENERATE_REMOTE_FAULT),
        .R(I1));
FDRE IDLE_INSERTED_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(IDLE_INSERTED),
        .Q(IDLE_INSERTED_REG1),
        .R(I1));
FDRE IDLE_INSERTED_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(IDLE_INSERTED_REG1),
        .Q(IDLE_INSERTED_REG2),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h2)) 
     IDLE_INSERTED_REG3_i_1
       (.I0(IDLE_INSERTED_REG2),
        .I1(RX_IDLE_REG2),
        .O(IDLE_INSERTED_REG30));
FDRE IDLE_INSERTED_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(IDLE_INSERTED_REG30),
        .Q(IDLE_INSERTED_REG3),
        .R(I1));
FDRE IDLE_INSERTED_REG4_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(IDLE_INSERTED_REG3),
        .Q(IDLE_INSERTED_REG4),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     IDLE_INSERTED_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(I18[0]),
        .I2(I18[2]),
        .I3(I18[1]),
        .O(IDLE_INSERTED0));
FDRE IDLE_INSERTED_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(IDLE_INSERTED0),
        .Q(IDLE_INSERTED),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'h04FF0400)) 
     IDLE_MATCH_2_i_1
       (.I0(IDLE_INSERTED_REG2),
        .I1(RX_IDLE),
        .I2(IDLE_INSERTED_REG4),
        .I3(RX_IDLE_REG2),
        .I4(IDLE_MATCH_2),
        .O(n_0_IDLE_MATCH_2_i_1));
FDRE IDLE_MATCH_2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_IDLE_MATCH_2_i_1),
        .Q(IDLE_MATCH_2),
        .R(I1));
LUT6 #(
    .INIT(64'h4440FFFF44400000)) 
     IDLE_MATCH_i_1
       (.I0(IDLE_INSERTED_REG2),
        .I1(RX_IDLE),
        .I2(IDLE_REMOVED_REG2),
        .I3(IDLE_MATCH_2),
        .I4(RX_IDLE_REG2),
        .I5(IDLE_MATCH),
        .O(n_0_IDLE_MATCH_i_1));
FDRE IDLE_MATCH_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_IDLE_MATCH_i_1),
        .Q(IDLE_MATCH),
        .R(I1));
FDRE IDLE_REMOVED_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(IDLE_REMOVED),
        .Q(IDLE_REMOVED_REG1),
        .R(I1));
FDRE IDLE_REMOVED_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(IDLE_REMOVED_REG1),
        .Q(IDLE_REMOVED_REG2),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     IDLE_REMOVED_i_1
       (.I0(I18[2]),
        .I1(I18[1]),
        .I2(XMIT_CONFIG_INT),
        .I3(I18[0]),
        .O(IDLE_REMOVED0));
FDRE IDLE_REMOVED_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(IDLE_REMOVED0),
        .Q(IDLE_REMOVED),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h7F557F77)) 
     I_i_4
       (.I0(RXSYNC_STATUS),
        .I1(XMIT_DATA_INT),
        .I2(STAT_VEC_DUPLEX_MODE_RSLVD_reg),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \LINK_TIMER[0]_i_1 
       (.I0(LINK_TIMER_reg__0[0]),
        .O(plusOp__0[0]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \LINK_TIMER[1]_i_1 
       (.I0(LINK_TIMER_reg__0[0]),
        .I1(LINK_TIMER_reg__0[1]),
        .O(plusOp__0[1]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \LINK_TIMER[2]_i_1 
       (.I0(LINK_TIMER_reg__0[2]),
        .I1(LINK_TIMER_reg__0[1]),
        .I2(LINK_TIMER_reg__0[0]),
        .O(\n_0_LINK_TIMER[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \LINK_TIMER[3]_i_1 
       (.I0(LINK_TIMER_reg__0[3]),
        .I1(LINK_TIMER_reg__0[1]),
        .I2(LINK_TIMER_reg__0[0]),
        .I3(LINK_TIMER_reg__0[2]),
        .O(plusOp__0[3]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \LINK_TIMER[4]_i_1 
       (.I0(LINK_TIMER_reg__0[4]),
        .I1(LINK_TIMER_reg__0[2]),
        .I2(LINK_TIMER_reg__0[0]),
        .I3(LINK_TIMER_reg__0[1]),
        .I4(LINK_TIMER_reg__0[3]),
        .O(plusOp__0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \LINK_TIMER[5]_i_1 
       (.I0(LINK_TIMER_reg__0[5]),
        .I1(LINK_TIMER_reg__0[4]),
        .I2(LINK_TIMER_reg__0[2]),
        .I3(LINK_TIMER_reg__0[0]),
        .I4(LINK_TIMER_reg__0[1]),
        .I5(LINK_TIMER_reg__0[3]),
        .O(\n_0_LINK_TIMER[5]_i_1 ));
LUT3 #(
    .INIT(8'h9A)) 
     \LINK_TIMER[6]_i_1 
       (.I0(LINK_TIMER_reg__0[6]),
        .I1(\n_0_LINK_TIMER[8]_i_3 ),
        .I2(LINK_TIMER_reg__0[5]),
        .O(plusOp__0[6]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'hA6AA)) 
     \LINK_TIMER[7]_i_1 
       (.I0(LINK_TIMER_reg__0[7]),
        .I1(LINK_TIMER_reg__0[5]),
        .I2(\n_0_LINK_TIMER[8]_i_3 ),
        .I3(LINK_TIMER_reg__0[6]),
        .O(plusOp__0[7]));
LUT4 #(
    .INIT(16'hFFEA)) 
     \LINK_TIMER[8]_i_1 
       (.I0(START_LINK_TIMER_REG),
        .I1(LINK_TIMER_SATURATED),
        .I2(PULSE4096),
        .I3(I1),
        .O(\n_0_LINK_TIMER[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hA6AAAAAA)) 
     \LINK_TIMER[8]_i_2 
       (.I0(LINK_TIMER_reg__0[8]),
        .I1(LINK_TIMER_reg__0[6]),
        .I2(\n_0_LINK_TIMER[8]_i_3 ),
        .I3(LINK_TIMER_reg__0[5]),
        .I4(LINK_TIMER_reg__0[7]),
        .O(plusOp__0[8]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h7FFFFFFF)) 
     \LINK_TIMER[8]_i_3 
       (.I0(LINK_TIMER_reg__0[3]),
        .I1(LINK_TIMER_reg__0[1]),
        .I2(LINK_TIMER_reg__0[0]),
        .I3(LINK_TIMER_reg__0[2]),
        .I4(LINK_TIMER_reg__0[4]),
        .O(\n_0_LINK_TIMER[8]_i_3 ));
LUT6 #(
    .INIT(64'h000000000000000E)) 
     LINK_TIMER_DONE_i_1
       (.I0(LINK_TIMER_DONE),
        .I1(LINK_TIMER_SATURATED),
        .I2(n_0_LINK_TIMER_DONE_i_2),
        .I3(START_LINK_TIMER114_out),
        .I4(n_0_START_LINK_TIMER_REG_i_2),
        .I5(n_0_LINK_TIMER_DONE_i_3),
        .O(n_0_LINK_TIMER_DONE_i_1));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     LINK_TIMER_DONE_i_2
       (.I0(START_LINK_TIMER_REG2),
        .I1(START_LINK_TIMER_REG),
        .I2(I1),
        .O(n_0_LINK_TIMER_DONE_i_2));
LUT6 #(
    .INIT(64'h0000000000000080)) 
     LINK_TIMER_DONE_i_3
       (.I0(n_0_ACKNOWLEDGE_MATCH_3_reg),
        .I1(CONSISTENCY_MATCH),
        .I2(ABILITY_MATCH),
        .I3(O2),
        .I4(\n_0_RX_CONFIG_SNAPSHOT[15]_i_4 ),
        .I5(n_0_LINK_TIMER_DONE_i_4),
        .O(n_0_LINK_TIMER_DONE_i_3));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'hB)) 
     LINK_TIMER_DONE_i_4
       (.I0(\n_0_STATE_reg[3] ),
        .I1(\n_0_STATE_reg[0] ),
        .O(n_0_LINK_TIMER_DONE_i_4));
FDRE LINK_TIMER_DONE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_LINK_TIMER_DONE_i_1),
        .Q(LINK_TIMER_DONE),
        .R(1'b0));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     LINK_TIMER_SATURATED_i_2
       (.I0(LINK_TIMER_reg__0[6]),
        .I1(link_timer_value[6]),
        .I2(LINK_TIMER_reg__0[7]),
        .I3(link_timer_value[7]),
        .I4(link_timer_value[8]),
        .I5(LINK_TIMER_reg__0[8]),
        .O(n_0_LINK_TIMER_SATURATED_i_2));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     LINK_TIMER_SATURATED_i_3
       (.I0(link_timer_value[5]),
        .I1(LINK_TIMER_reg__0[5]),
        .I2(LINK_TIMER_reg__0[3]),
        .I3(link_timer_value[3]),
        .I4(LINK_TIMER_reg__0[4]),
        .I5(link_timer_value[4]),
        .O(n_0_LINK_TIMER_SATURATED_i_3));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     LINK_TIMER_SATURATED_i_4
       (.I0(link_timer_value[2]),
        .I1(LINK_TIMER_reg__0[2]),
        .I2(LINK_TIMER_reg__0[0]),
        .I3(link_timer_value[0]),
        .I4(LINK_TIMER_reg__0[1]),
        .I5(link_timer_value[1]),
        .O(n_0_LINK_TIMER_SATURATED_i_4));
FDRE LINK_TIMER_SATURATED_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(LINK_TIMER_SATURATED_COMB),
        .Q(LINK_TIMER_SATURATED),
        .R(I1));
CARRY4 LINK_TIMER_SATURATED_reg_i_1
       (.CI(1'b0),
        .CO({NLW_LINK_TIMER_SATURATED_reg_i_1_CO_UNCONNECTED[3],LINK_TIMER_SATURATED_COMB,n_2_LINK_TIMER_SATURATED_reg_i_1,n_3_LINK_TIMER_SATURATED_reg_i_1}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_LINK_TIMER_SATURATED_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,n_0_LINK_TIMER_SATURATED_i_2,n_0_LINK_TIMER_SATURATED_i_3,n_0_LINK_TIMER_SATURATED_i_4}));
FDRE \LINK_TIMER_reg[0] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[0]),
        .Q(LINK_TIMER_reg__0[0]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
FDRE \LINK_TIMER_reg[1] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[1]),
        .Q(LINK_TIMER_reg__0[1]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
FDRE \LINK_TIMER_reg[2] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(\n_0_LINK_TIMER[2]_i_1 ),
        .Q(LINK_TIMER_reg__0[2]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
FDRE \LINK_TIMER_reg[3] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[3]),
        .Q(LINK_TIMER_reg__0[3]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
FDRE \LINK_TIMER_reg[4] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[4]),
        .Q(LINK_TIMER_reg__0[4]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
FDRE \LINK_TIMER_reg[5] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(\n_0_LINK_TIMER[5]_i_1 ),
        .Q(LINK_TIMER_reg__0[5]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
FDRE \LINK_TIMER_reg[6] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[6]),
        .Q(LINK_TIMER_reg__0[6]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
FDRE \LINK_TIMER_reg[7] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[7]),
        .Q(LINK_TIMER_reg__0[7]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
FDRE \LINK_TIMER_reg[8] 
       (.C(userclk2),
        .CE(PULSE4096),
        .D(plusOp__0[8]),
        .Q(LINK_TIMER_reg__0[8]),
        .R(\n_0_LINK_TIMER[8]_i_1 ));
LUT5 #(
    .INIT(32'h5155A2AA)) 
     \MASK_RUDI_BUFERR_TIMER[0]_i_1 
       (.I0(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ),
        .I1(data_out),
        .I2(Q[1]),
        .I3(p_0_in),
        .I4(MASK_RUDI_BUFERR_TIMER[0]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[0]_i_1 ));
LUT6 #(
    .INIT(64'h7707777788088888)) 
     \MASK_RUDI_BUFERR_TIMER[1]_i_1 
       (.I0(MASK_RUDI_BUFERR_TIMER[0]),
        .I1(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ),
        .I2(data_out),
        .I3(Q[1]),
        .I4(p_0_in),
        .I5(MASK_RUDI_BUFERR_TIMER[1]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[1]_i_1 ));
LUT5 #(
    .INIT(32'h007F0080)) 
     \MASK_RUDI_BUFERR_TIMER[2]_i_1 
       (.I0(MASK_RUDI_BUFERR_TIMER[0]),
        .I1(MASK_RUDI_BUFERR_TIMER[1]),
        .I2(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ),
        .I3(MASK_RUDI_BUFERR_TIMER0),
        .I4(MASK_RUDI_BUFERR_TIMER[2]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[2]_i_1 ));
LUT6 #(
    .INIT(64'h00007FFF00008000)) 
     \MASK_RUDI_BUFERR_TIMER[3]_i_1 
       (.I0(MASK_RUDI_BUFERR_TIMER[2]),
        .I1(MASK_RUDI_BUFERR_TIMER[1]),
        .I2(MASK_RUDI_BUFERR_TIMER[0]),
        .I3(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ),
        .I4(MASK_RUDI_BUFERR_TIMER0),
        .I5(MASK_RUDI_BUFERR_TIMER[3]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[3]_i_1 ));
LUT6 #(
    .INIT(64'hBB0BBBBB44044444)) 
     \MASK_RUDI_BUFERR_TIMER[4]_i_1 
       (.I0(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_2 ),
        .I1(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ),
        .I2(data_out),
        .I3(Q[1]),
        .I4(p_0_in),
        .I5(MASK_RUDI_BUFERR_TIMER[4]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[4]_i_1 ));
LUT5 #(
    .INIT(32'h00DF0020)) 
     \MASK_RUDI_BUFERR_TIMER[5]_i_1 
       (.I0(MASK_RUDI_BUFERR_TIMER[4]),
        .I1(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_2 ),
        .I2(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ),
        .I3(MASK_RUDI_BUFERR_TIMER0),
        .I4(MASK_RUDI_BUFERR_TIMER[5]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_1 ));
LUT4 #(
    .INIT(16'h7FFF)) 
     \MASK_RUDI_BUFERR_TIMER[5]_i_2 
       (.I0(MASK_RUDI_BUFERR_TIMER[2]),
        .I1(MASK_RUDI_BUFERR_TIMER[1]),
        .I2(MASK_RUDI_BUFERR_TIMER[0]),
        .I3(MASK_RUDI_BUFERR_TIMER[3]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \MASK_RUDI_BUFERR_TIMER[5]_i_3 
       (.I0(MASK_RUDI_BUFERR_TIMER[8]),
        .I1(MASK_RUDI_BUFERR_TIMER[6]),
        .I2(\n_0_MASK_RUDI_BUFERR_TIMER[8]_i_2 ),
        .I3(MASK_RUDI_BUFERR_TIMER[7]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'h0000BC3C)) 
     \MASK_RUDI_BUFERR_TIMER[6]_i_1 
       (.I0(MASK_RUDI_BUFERR_TIMER[7]),
        .I1(\n_0_MASK_RUDI_BUFERR_TIMER[8]_i_2 ),
        .I2(MASK_RUDI_BUFERR_TIMER[6]),
        .I3(MASK_RUDI_BUFERR_TIMER[8]),
        .I4(MASK_RUDI_BUFERR_TIMER0),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h0000EA6A)) 
     \MASK_RUDI_BUFERR_TIMER[7]_i_1 
       (.I0(MASK_RUDI_BUFERR_TIMER[7]),
        .I1(\n_0_MASK_RUDI_BUFERR_TIMER[8]_i_2 ),
        .I2(MASK_RUDI_BUFERR_TIMER[6]),
        .I3(MASK_RUDI_BUFERR_TIMER[8]),
        .I4(MASK_RUDI_BUFERR_TIMER0),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h0000FF80)) 
     \MASK_RUDI_BUFERR_TIMER[8]_i_1 
       (.I0(MASK_RUDI_BUFERR_TIMER[7]),
        .I1(\n_0_MASK_RUDI_BUFERR_TIMER[8]_i_2 ),
        .I2(MASK_RUDI_BUFERR_TIMER[6]),
        .I3(MASK_RUDI_BUFERR_TIMER[8]),
        .I4(MASK_RUDI_BUFERR_TIMER0),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[8]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \MASK_RUDI_BUFERR_TIMER[8]_i_2 
       (.I0(MASK_RUDI_BUFERR_TIMER[5]),
        .I1(MASK_RUDI_BUFERR_TIMER[4]),
        .I2(MASK_RUDI_BUFERR_TIMER[2]),
        .I3(MASK_RUDI_BUFERR_TIMER[1]),
        .I4(MASK_RUDI_BUFERR_TIMER[0]),
        .I5(MASK_RUDI_BUFERR_TIMER[3]),
        .O(\n_0_MASK_RUDI_BUFERR_TIMER[8]_i_2 ));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[0]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[0]),
        .S(I1));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[1]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[1]),
        .S(I1));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[2]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[2]),
        .S(I1));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[3]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[3]),
        .S(I1));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[4]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[4]),
        .S(I1));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[5]),
        .S(I1));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[6]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[6]),
        .S(I1));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[7]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[7]),
        .S(I1));
FDSE \MASK_RUDI_BUFERR_TIMER_reg[8] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MASK_RUDI_BUFERR_TIMER[8]_i_1 ),
        .Q(MASK_RUDI_BUFERR_TIMER[8]),
        .S(I1));
LUT6 #(
    .INIT(64'h0000AEAA00000C00)) 
     MASK_RUDI_BUFERR_i_1
       (.I0(\n_0_MASK_RUDI_BUFERR_TIMER[5]_i_3 ),
        .I1(p_0_in),
        .I2(Q[1]),
        .I3(data_out),
        .I4(I1),
        .I5(n_0_MASK_RUDI_BUFERR_reg),
        .O(n_0_MASK_RUDI_BUFERR_i_1));
FDRE MASK_RUDI_BUFERR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_MASK_RUDI_BUFERR_i_1),
        .Q(n_0_MASK_RUDI_BUFERR_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000BF0000000F00)) 
     MASK_RUDI_CLKCOR_i_1
       (.I0(RX_RUDI_INVALID),
        .I1(RX_RUDI_INVALID_REG),
        .I2(n_0_MASK_RUDI_CLKCOR_i_2),
        .I3(RXSYNC_STATUS),
        .I4(I1),
        .I5(n_0_MASK_RUDI_CLKCOR_reg),
        .O(n_0_MASK_RUDI_CLKCOR_i_1));
LUT3 #(
    .INIT(8'h01)) 
     MASK_RUDI_CLKCOR_i_2
       (.I0(I18[2]),
        .I1(I18[1]),
        .I2(I18[0]),
        .O(n_0_MASK_RUDI_CLKCOR_i_2));
FDRE MASK_RUDI_CLKCOR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_MASK_RUDI_CLKCOR_i_1),
        .Q(n_0_MASK_RUDI_CLKCOR_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h2322222222222200)) 
     MR_AN_COMPLETE_i_1
       (.I0(an_interrupt),
        .I1(I1),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[0] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(\n_0_STATE_reg[1] ),
        .O(n_0_MR_AN_COMPLETE_i_1));
FDRE MR_AN_COMPLETE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_MR_AN_COMPLETE_i_1),
        .Q(an_interrupt),
        .R(1'b0));
LUT2 #(
    .INIT(4'h6)) 
     MR_AN_ENABLE_CHANGE_i_1
       (.I0(MR_AN_ENABLE_REG1),
        .I1(MR_AN_ENABLE_REG2),
        .O(MR_AN_ENABLE_CHANGE0));
FDRE MR_AN_ENABLE_CHANGE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_AN_ENABLE_CHANGE0),
        .Q(MR_AN_ENABLE_CHANGE),
        .R(I1));
FDRE MR_AN_ENABLE_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(Q[3]),
        .Q(MR_AN_ENABLE_REG1),
        .R(I1));
FDRE MR_AN_ENABLE_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_AN_ENABLE_REG1),
        .Q(MR_AN_ENABLE_REG2),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \MR_LP_ADV_ABILITY_INT[13]_i_1 
       (.I0(I17),
        .I1(PREVIOUS_STATE),
        .I2(\n_0_MR_LP_ADV_ABILITY_INT_reg[13] ),
        .O(\n_0_MR_LP_ADV_ABILITY_INT[13]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \MR_LP_ADV_ABILITY_INT[14]_i_1 
       (.I0(I16),
        .I1(PREVIOUS_STATE),
        .I2(\n_0_MR_LP_ADV_ABILITY_INT_reg[14] ),
        .O(\n_0_MR_LP_ADV_ABILITY_INT[14]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \MR_LP_ADV_ABILITY_INT[16]_i_1 
       (.I0(p_1_in),
        .I1(PREVIOUS_STATE),
        .I2(\n_0_MR_LP_ADV_ABILITY_INT_reg[16] ),
        .O(\n_0_MR_LP_ADV_ABILITY_INT[16]_i_1 ));
LUT3 #(
    .INIT(8'hB8)) 
     \MR_LP_ADV_ABILITY_INT[6]_i_1 
       (.I0(I10),
        .I1(PREVIOUS_STATE),
        .I2(STAT_VEC_DUPLEX_MODE_RSLVD_reg),
        .O(\n_0_MR_LP_ADV_ABILITY_INT[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \MR_LP_ADV_ABILITY_INT[8]_i_1 
       (.I0(I9),
        .I1(PREVIOUS_STATE),
        .I2(status_vector[4]),
        .O(\n_0_MR_LP_ADV_ABILITY_INT[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \MR_LP_ADV_ABILITY_INT[9]_i_1 
       (.I0(I7),
        .I1(PREVIOUS_STATE),
        .I2(status_vector[5]),
        .O(\n_0_MR_LP_ADV_ABILITY_INT[9]_i_1 ));
FDRE \MR_LP_ADV_ABILITY_INT_reg[13] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MR_LP_ADV_ABILITY_INT[13]_i_1 ),
        .Q(\n_0_MR_LP_ADV_ABILITY_INT_reg[13] ),
        .R(I1));
FDRE \MR_LP_ADV_ABILITY_INT_reg[14] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MR_LP_ADV_ABILITY_INT[14]_i_1 ),
        .Q(\n_0_MR_LP_ADV_ABILITY_INT_reg[14] ),
        .R(I1));
FDRE \MR_LP_ADV_ABILITY_INT_reg[16] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MR_LP_ADV_ABILITY_INT[16]_i_1 ),
        .Q(\n_0_MR_LP_ADV_ABILITY_INT_reg[16] ),
        .R(I1));
FDRE \MR_LP_ADV_ABILITY_INT_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MR_LP_ADV_ABILITY_INT[6]_i_1 ),
        .Q(STAT_VEC_DUPLEX_MODE_RSLVD_reg),
        .R(I1));
FDRE \MR_LP_ADV_ABILITY_INT_reg[8] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MR_LP_ADV_ABILITY_INT[8]_i_1 ),
        .Q(status_vector[4]),
        .R(I1));
FDRE \MR_LP_ADV_ABILITY_INT_reg[9] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_MR_LP_ADV_ABILITY_INT[9]_i_1 ),
        .Q(status_vector[5]),
        .R(I1));
FDRE \MR_NP_RX_INT_reg[16] 
       (.C(userclk2),
        .CE(1'b0),
        .D(p_1_in),
        .Q(\n_0_MR_NP_RX_INT_reg[16] ),
        .R(I1));
LUT5 #(
    .INIT(32'h00FF00E0)) 
     MR_REMOTE_FAULT_i_1
       (.I0(\n_0_MR_LP_ADV_ABILITY_INT_reg[13] ),
        .I1(\n_0_MR_LP_ADV_ABILITY_INT_reg[14] ),
        .I2(GENERATE_REMOTE_FAULT),
        .I3(I1),
        .I4(status_vector[3]),
        .O(n_0_MR_REMOTE_FAULT_i_1));
FDRE MR_REMOTE_FAULT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_MR_REMOTE_FAULT_i_1),
        .Q(status_vector[3]),
        .R(1'b0));
LUT6 #(
    .INIT(64'h3030553000005500)) 
     MR_RESTART_AN_INT_i_1
       (.I0(I1),
        .I1(n_0_MR_RESTART_AN_INT_i_2),
        .I2(Q[3]),
        .I3(MR_RESTART_AN_SET_REG1),
        .I4(MR_RESTART_AN_SET_REG2),
        .I5(n_0_MR_RESTART_AN_INT_reg),
        .O(n_0_MR_RESTART_AN_INT_i_1));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hAAAAAAAB)) 
     MR_RESTART_AN_INT_i_2
       (.I0(I1),
        .I1(\n_0_STATE_reg[3] ),
        .I2(\n_0_STATE_reg[0] ),
        .I3(\n_0_STATE_reg[2] ),
        .I4(\n_0_STATE_reg[1] ),
        .O(n_0_MR_RESTART_AN_INT_i_2));
FDRE MR_RESTART_AN_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_MR_RESTART_AN_INT_i_1),
        .Q(n_0_MR_RESTART_AN_INT_reg),
        .R(1'b0));
FDRE MR_RESTART_AN_SET_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RESTART_AN_SET),
        .Q(MR_RESTART_AN_SET_REG1),
        .R(I1));
FDRE MR_RESTART_AN_SET_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(MR_RESTART_AN_SET_REG1),
        .Q(MR_RESTART_AN_SET_REG2),
        .R(I1));
FDRE \PREVIOUS_STATE_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_STATE_reg[0] ),
        .Q(\n_0_PREVIOUS_STATE_reg[0] ),
        .R(I1));
FDRE \PREVIOUS_STATE_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_STATE_reg[1] ),
        .Q(\n_0_PREVIOUS_STATE_reg[1] ),
        .R(I1));
FDRE \PREVIOUS_STATE_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_STATE_reg[2] ),
        .Q(\n_0_PREVIOUS_STATE_reg[2] ),
        .R(I1));
FDRE \PREVIOUS_STATE_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_STATE_reg[3] ),
        .Q(\n_0_PREVIOUS_STATE_reg[3] ),
        .R(I1));
LUT2 #(
    .INIT(4'h2)) 
     PULSE4096_i_1
       (.I0(TIMER4096_MSB_REG),
        .I1(\n_0_TIMER4096_reg[11] ),
        .O(PULSE40960));
FDRE PULSE4096_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(PULSE40960),
        .Q(PULSE4096),
        .R(I1));
FDRE RECEIVED_IDLE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I3),
        .Q(O1),
        .R(1'b0));
FDRE RUDI_INVALID_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_RUDI_INVALID_DELAY[1]),
        .Q(status_vector[0]),
        .R(I1));
FDRE RX_CONFIG_REG_NULL_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I4),
        .Q(O2),
        .R(1'b0));
FDRE \RX_CONFIG_REG_REG_reg[0] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I15),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[0] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[10] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I22),
        .Q(O4[1]),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[11] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I20),
        .Q(O4[2]),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[12] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I17),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[12] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[13] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I16),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[13] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[14] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(RX_CONFIG_REG),
        .Q(p_0_in38_in),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[15] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(p_1_in),
        .Q(p_0_in0_in),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[1] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I13),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[1] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[2] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I14),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[2] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[3] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I11),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[3] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[4] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I12),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[4] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[5] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I10),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[5] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[6] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I8),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[6] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[7] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I9),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[7] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[8] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I7),
        .Q(\n_0_RX_CONFIG_REG_REG_reg[8] ),
        .R(I21));
FDRE \RX_CONFIG_REG_REG_reg[9] 
       (.C(userclk2),
        .CE(RX_CONFIG_VALID),
        .D(I23),
        .Q(O4[0]),
        .R(I21));
LUT6 #(
    .INIT(64'h0000000088808888)) 
     \RX_CONFIG_SNAPSHOT[15]_i_1 
       (.I0(\n_3_RX_CONFIG_SNAPSHOT_reg[15]_i_2 ),
        .I1(\n_0_RX_CONFIG_SNAPSHOT[15]_i_3 ),
        .I2(\n_0_RX_CONFIG_SNAPSHOT[15]_i_4 ),
        .I3(\n_0_STATE_reg[3] ),
        .I4(\n_0_STATE_reg[0] ),
        .I5(\n_0_RX_CONFIG_SNAPSHOT[15]_i_5 ),
        .O(RX_CONFIG_SNAPSHOT));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \RX_CONFIG_SNAPSHOT[15]_i_10 
       (.I0(\n_0_RX_CONFIG_REG_REG_reg[5] ),
        .I1(I10),
        .I2(I11),
        .I3(\n_0_RX_CONFIG_REG_REG_reg[3] ),
        .I4(I12),
        .I5(\n_0_RX_CONFIG_REG_REG_reg[4] ),
        .O(\n_0_RX_CONFIG_SNAPSHOT[15]_i_10 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \RX_CONFIG_SNAPSHOT[15]_i_11 
       (.I0(\n_0_RX_CONFIG_REG_REG_reg[1] ),
        .I1(I13),
        .I2(I14),
        .I3(\n_0_RX_CONFIG_REG_REG_reg[2] ),
        .I4(I15),
        .I5(\n_0_RX_CONFIG_REG_REG_reg[0] ),
        .O(\n_0_RX_CONFIG_SNAPSHOT[15]_i_11 ));
LUT5 #(
    .INIT(32'h00000020)) 
     \RX_CONFIG_SNAPSHOT[15]_i_3 
       (.I0(RX_CONFIG_VALID),
        .I1(ABILITY_MATCH),
        .I2(ABILITY_MATCH_2),
        .I3(n_0_MASK_RUDI_BUFERR_reg),
        .I4(RX_IDLE),
        .O(\n_0_RX_CONFIG_SNAPSHOT[15]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \RX_CONFIG_SNAPSHOT[15]_i_4 
       (.I0(\n_0_STATE_reg[2] ),
        .I1(\n_0_STATE_reg[1] ),
        .O(\n_0_RX_CONFIG_SNAPSHOT[15]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hF6)) 
     \RX_CONFIG_SNAPSHOT[15]_i_5 
       (.I0(p_0_in0_in),
        .I1(p_1_in),
        .I2(O1),
        .O(\n_0_RX_CONFIG_SNAPSHOT[15]_i_5 ));
LUT4 #(
    .INIT(16'h9009)) 
     \RX_CONFIG_SNAPSHOT[15]_i_7 
       (.I0(\n_0_RX_CONFIG_REG_REG_reg[13] ),
        .I1(I16),
        .I2(\n_0_RX_CONFIG_REG_REG_reg[12] ),
        .I3(I17),
        .O(\n_0_RX_CONFIG_SNAPSHOT[15]_i_7 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \RX_CONFIG_SNAPSHOT[15]_i_9 
       (.I0(\n_0_RX_CONFIG_REG_REG_reg[8] ),
        .I1(I7),
        .I2(I8),
        .I3(\n_0_RX_CONFIG_REG_REG_reg[6] ),
        .I4(I9),
        .I5(\n_0_RX_CONFIG_REG_REG_reg[7] ),
        .O(\n_0_RX_CONFIG_SNAPSHOT[15]_i_9 ));
FDRE \RX_CONFIG_SNAPSHOT_reg[0] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I15),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[0] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[10] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I22),
        .Q(O6[1]),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[11] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I20),
        .Q(O6[2]),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[12] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I17),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[12] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[13] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I16),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[13] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[15] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(p_1_in),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[15] ),
        .R(I1));
CARRY4 \RX_CONFIG_SNAPSHOT_reg[15]_i_2 
       (.CI(\n_0_RX_CONFIG_SNAPSHOT_reg[15]_i_6 ),
        .CO({\NLW_RX_CONFIG_SNAPSHOT_reg[15]_i_2_CO_UNCONNECTED [3:1],\n_3_RX_CONFIG_SNAPSHOT_reg[15]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_RX_CONFIG_SNAPSHOT_reg[15]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\n_0_RX_CONFIG_SNAPSHOT[15]_i_7 }));
CARRY4 \RX_CONFIG_SNAPSHOT_reg[15]_i_6 
       (.CI(1'b0),
        .CO({\n_0_RX_CONFIG_SNAPSHOT_reg[15]_i_6 ,\n_1_RX_CONFIG_SNAPSHOT_reg[15]_i_6 ,\n_2_RX_CONFIG_SNAPSHOT_reg[15]_i_6 ,\n_3_RX_CONFIG_SNAPSHOT_reg[15]_i_6 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_RX_CONFIG_SNAPSHOT_reg[15]_i_6_O_UNCONNECTED [3:0]),
        .S({S,\n_0_RX_CONFIG_SNAPSHOT[15]_i_9 ,\n_0_RX_CONFIG_SNAPSHOT[15]_i_10 ,\n_0_RX_CONFIG_SNAPSHOT[15]_i_11 }));
FDRE \RX_CONFIG_SNAPSHOT_reg[1] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I13),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[1] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[2] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I14),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[2] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[3] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I11),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[3] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[4] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I12),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[4] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[5] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I10),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[5] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[6] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I8),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[6] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[7] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I9),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[7] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[8] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I7),
        .Q(\n_0_RX_CONFIG_SNAPSHOT_reg[8] ),
        .R(I1));
FDRE \RX_CONFIG_SNAPSHOT_reg[9] 
       (.C(userclk2),
        .CE(RX_CONFIG_SNAPSHOT),
        .D(I23),
        .Q(O6[0]),
        .R(I1));
LUT6 #(
    .INIT(64'h0057005500550055)) 
     RX_DV_i_1
       (.I0(n_0_RX_DV_i_2),
        .I1(I19),
        .I2(EOP_REG1),
        .I3(SR),
        .I4(XMIT_DATA),
        .I5(gmii_rx_dv),
        .O(O5));
LUT4 #(
    .INIT(16'hFFFB)) 
     RX_DV_i_2
       (.I0(O3),
        .I1(SOP_REG3),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(n_0_RX_DV_i_2));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'hF322)) 
     RX_DV_i_4
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(STAT_VEC_DUPLEX_MODE_RSLVD_reg),
        .I3(XMIT_DATA_INT),
        .O(XMIT_DATA));
FDRE RX_IDLE_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_IDLE),
        .Q(RX_IDLE_REG1),
        .R(I1));
FDRE RX_IDLE_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_IDLE_REG1),
        .Q(RX_IDLE_REG2),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \RX_RUDI_INVALID_DELAY[0]_i_1 
       (.I0(RX_RUDI_INVALID),
        .I1(n_0_MASK_RUDI_CLKCOR_reg),
        .I2(n_0_MASK_RUDI_BUFERR_reg),
        .O(RX_RUDI_INVALID_DELAY0));
LUT6 #(
    .INIT(64'hAAAAAAEEAAEFAAEF)) 
     \RX_RUDI_INVALID_DELAY[0]_i_2 
       (.I0(I6),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(RXSYNC_STATUS),
        .I4(STAT_VEC_DUPLEX_MODE_RSLVD_reg),
        .I5(XMIT_DATA_INT),
        .O(RX_RUDI_INVALID));
FDRE \RX_RUDI_INVALID_DELAY_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_RUDI_INVALID_DELAY0),
        .Q(RX_RUDI_INVALID_DELAY[0]),
        .R(I1));
FDRE \RX_RUDI_INVALID_DELAY_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_RUDI_INVALID_DELAY[0]),
        .Q(RX_RUDI_INVALID_DELAY[1]),
        .R(I1));
FDRE RX_RUDI_INVALID_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I2),
        .Q(RX_RUDI_INVALID_REG),
        .R(1'b0));
FDRE START_LINK_TIMER_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(START_LINK_TIMER_REG),
        .Q(START_LINK_TIMER_REG2),
        .R(I1));
LUT6 #(
    .INIT(64'hEEEEEEFEEEEEEEEE)) 
     START_LINK_TIMER_REG_i_1
       (.I0(START_LINK_TIMER114_out),
        .I1(n_0_START_LINK_TIMER_REG_i_2),
        .I2(n_0_START_LINK_TIMER_REG_i_3),
        .I3(\n_0_RX_CONFIG_SNAPSHOT[15]_i_4 ),
        .I4(\n_0_STATE_reg[3] ),
        .I5(\n_0_STATE_reg[0] ),
        .O(n_0_START_LINK_TIMER_REG_i_1));
LUT6 #(
    .INIT(64'h00010001000F0000)) 
     START_LINK_TIMER_REG_i_2
       (.I0(\n_0_STATE[2]_i_2 ),
        .I1(\n_0_STATE[0]_i_5 ),
        .I2(\n_0_STATE_reg[1] ),
        .I3(n_0_XMIT_CONFIG_INT_i_3),
        .I4(Q[3]),
        .I5(\n_0_STATE_reg[2] ),
        .O(n_0_START_LINK_TIMER_REG_i_2));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     START_LINK_TIMER_REG_i_3
       (.I0(O2),
        .I1(ABILITY_MATCH),
        .I2(CONSISTENCY_MATCH),
        .I3(n_0_ACKNOWLEDGE_MATCH_3_reg),
        .O(n_0_START_LINK_TIMER_REG_i_3));
FDRE START_LINK_TIMER_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_START_LINK_TIMER_REG_i_1),
        .Q(START_LINK_TIMER_REG),
        .R(I1));
LUT6 #(
    .INIT(64'h0000000000005554)) 
     \STATE[0]_i_1 
       (.I0(\n_0_STATE_reg[3] ),
        .I1(\n_0_STATE[0]_i_2 ),
        .I2(\n_0_STATE[0]_i_3 ),
        .I3(\n_0_STATE[0]_i_4 ),
        .I4(START_LINK_TIMER114_out),
        .I5(I1),
        .O(\n_0_STATE[0]_i_1 ));
LUT6 #(
    .INIT(64'h0070000000700070)) 
     \STATE[0]_i_2 
       (.I0(ABILITY_MATCH),
        .I1(O2),
        .I2(\n_0_STATE_reg[2] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[0] ),
        .I5(\n_0_STATE[0]_i_5 ),
        .O(\n_0_STATE[0]_i_2 ));
LUT5 #(
    .INIT(32'h08A8A808)) 
     \STATE[0]_i_3 
       (.I0(\n_0_STATE[2]_i_5 ),
        .I1(\n_0_STATE_reg[0] ),
        .I2(ABILITY_MATCH),
        .I3(TOGGLE_RX),
        .I4(O4[2]),
        .O(\n_0_STATE[0]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000074)) 
     \STATE[0]_i_4 
       (.I0(LINK_TIMER_DONE),
        .I1(\n_0_STATE_reg[0] ),
        .I2(Q[3]),
        .I3(\n_0_STATE_reg[2] ),
        .I4(\n_0_STATE_reg[1] ),
        .I5(\n_0_STATE[0]_i_6 ),
        .O(\n_0_STATE[0]_i_4 ));
LUT5 #(
    .INIT(32'hFD555555)) 
     \STATE[0]_i_5 
       (.I0(LINK_TIMER_DONE),
        .I1(D[7]),
        .I2(\n_0_MR_NP_RX_INT_reg[16] ),
        .I3(an_adv_config_vector[6]),
        .I4(\n_0_MR_LP_ADV_ABILITY_INT_reg[16] ),
        .O(\n_0_STATE[0]_i_5 ));
LUT6 #(
    .INIT(64'h00001C5C00000000)) 
     \STATE[0]_i_6 
       (.I0(O2),
        .I1(\n_0_STATE_reg[0] ),
        .I2(ABILITY_MATCH),
        .I3(n_0_ACKNOWLEDGE_MATCH_3_reg),
        .I4(\n_0_STATE_reg[2] ),
        .I5(\n_0_STATE_reg[1] ),
        .O(\n_0_STATE[0]_i_6 ));
LUT5 #(
    .INIT(32'h00000054)) 
     \STATE[1]_i_1 
       (.I0(\n_0_STATE_reg[3] ),
        .I1(\n_0_STATE[1]_i_2 ),
        .I2(\n_0_STATE[1]_i_3 ),
        .I3(START_LINK_TIMER114_out),
        .I4(I1),
        .O(\n_0_STATE[1]_i_1 ));
LUT6 #(
    .INIT(64'h7000000000000000)) 
     \STATE[1]_i_2 
       (.I0(ABILITY_MATCH),
        .I1(O2),
        .I2(IDLE_MATCH),
        .I3(\n_0_STATE_reg[0] ),
        .I4(\n_0_STATE[2]_i_3 ),
        .I5(LINK_TIMER_DONE),
        .O(\n_0_STATE[1]_i_2 ));
LUT6 #(
    .INIT(64'h3700FFFF37000000)) 
     \STATE[1]_i_3 
       (.I0(O2),
        .I1(ABILITY_MATCH),
        .I2(\n_0_STATE_reg[0] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(\n_0_STATE[1]_i_4 ),
        .O(\n_0_STATE[1]_i_3 ));
LUT6 #(
    .INIT(64'h57FFFF005700FF00)) 
     \STATE[1]_i_4 
       (.I0(ABILITY_MATCH),
        .I1(O2),
        .I2(n_0_ACKNOWLEDGE_MATCH_3_reg),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[0] ),
        .I5(LINK_TIMER_DONE),
        .O(\n_0_STATE[1]_i_4 ));
LUT6 #(
    .INIT(64'h0000000000005510)) 
     \STATE[2]_i_1 
       (.I0(\n_0_STATE_reg[3] ),
        .I1(\n_0_STATE[2]_i_2 ),
        .I2(\n_0_STATE[2]_i_3 ),
        .I3(\n_0_STATE[2]_i_4 ),
        .I4(START_LINK_TIMER114_out),
        .I5(I1),
        .O(\n_0_STATE[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \STATE[2]_i_2 
       (.I0(ABILITY_MATCH),
        .I1(O2),
        .O(\n_0_STATE[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \STATE[2]_i_3 
       (.I0(\n_0_STATE_reg[2] ),
        .I1(\n_0_STATE_reg[1] ),
        .O(\n_0_STATE[2]_i_3 ));
LUT6 #(
    .INIT(64'hA22AA22AFFFFA22A)) 
     \STATE[2]_i_4 
       (.I0(\n_0_STATE[2]_i_5 ),
        .I1(ABILITY_MATCH),
        .I2(TOGGLE_RX),
        .I3(O4[2]),
        .I4(\n_0_STATE[2]_i_6 ),
        .I5(\n_0_STATE_reg[2] ),
        .O(\n_0_STATE[2]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h00880888)) 
     \STATE[2]_i_5 
       (.I0(\n_0_STATE_reg[1] ),
        .I1(\n_0_STATE_reg[2] ),
        .I2(\n_0_STATE_reg[0] ),
        .I3(ABILITY_MATCH),
        .I4(O2),
        .O(\n_0_STATE[2]_i_5 ));
LUT6 #(
    .INIT(64'h2000000000000000)) 
     \STATE[2]_i_6 
       (.I0(\n_0_STATE_reg[1] ),
        .I1(O2),
        .I2(ABILITY_MATCH),
        .I3(CONSISTENCY_MATCH),
        .I4(n_0_ACKNOWLEDGE_MATCH_3_reg),
        .I5(\n_0_STATE_reg[0] ),
        .O(\n_0_STATE[2]_i_6 ));
LUT5 #(
    .INIT(32'h000C0A0A)) 
     \STATE[3]_i_1 
       (.I0(NEXT_STATE),
        .I1(AN_SYNC_STATUS),
        .I2(I1),
        .I3(Q[3]),
        .I4(START_LINK_TIMER114_out),
        .O(\n_0_STATE[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h00000203)) 
     \STATE[3]_i_2 
       (.I0(\n_0_STATE_reg[3] ),
        .I1(\n_0_STATE_reg[1] ),
        .I2(\n_0_STATE_reg[0] ),
        .I3(Q[3]),
        .I4(\n_0_STATE_reg[2] ),
        .O(NEXT_STATE));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFFF0200)) 
     \STATE[3]_i_3 
       (.I0(RX_RUDI_INVALID),
        .I1(n_0_MASK_RUDI_CLKCOR_reg),
        .I2(n_0_MASK_RUDI_BUFERR_reg),
        .I3(XMIT_CONFIG_INT),
        .I4(\n_0_STATE[3]_i_4 ),
        .O(START_LINK_TIMER114_out));
LUT3 #(
    .INIT(8'hFB)) 
     \STATE[3]_i_4 
       (.I0(n_0_MR_RESTART_AN_INT_reg),
        .I1(AN_SYNC_STATUS),
        .I2(MR_AN_ENABLE_CHANGE),
        .O(\n_0_STATE[3]_i_4 ));
FDRE \STATE_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_STATE[0]_i_1 ),
        .Q(\n_0_STATE_reg[0] ),
        .R(1'b0));
FDRE \STATE_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_STATE[1]_i_1 ),
        .Q(\n_0_STATE_reg[1] ),
        .R(1'b0));
FDRE \STATE_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_STATE[2]_i_1 ),
        .Q(\n_0_STATE_reg[2] ),
        .R(1'b0));
FDRE \STATE_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_STATE[3]_i_1 ),
        .Q(\n_0_STATE_reg[3] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAA0A080800000000)) 
     STATUS_VECTOR_0_PRE_i_1
       (.I0(reset_done),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(STAT_VEC_DUPLEX_MODE_RSLVD_reg),
        .I4(XMIT_DATA_INT),
        .I5(RXSYNC_STATUS),
        .O(STATUS_VECTOR_0_PRE0));
LUT5 #(
    .INIT(32'h00BF00AA)) 
     SYNC_STATUS_HELD_i_1
       (.I0(RXSYNC_STATUS),
        .I1(LINK_TIMER_SATURATED),
        .I2(PULSE4096),
        .I3(I1),
        .I4(SYNC_STATUS_HELD),
        .O(n_0_SYNC_STATUS_HELD_i_1));
FDRE SYNC_STATUS_HELD_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_SYNC_STATUS_HELD_i_1),
        .Q(SYNC_STATUS_HELD),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \TIMER4096[0]_i_2 
       (.I0(\n_0_TIMER4096_reg[0] ),
        .O(\n_0_TIMER4096[0]_i_2 ));
FDRE TIMER4096_MSB_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[11] ),
        .Q(TIMER4096_MSB_REG),
        .R(I1));
FDRE \TIMER4096_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[0]_i_1 ),
        .Q(\n_0_TIMER4096_reg[0] ),
        .R(I1));
FDRE \TIMER4096_reg[10] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[10]_i_1 ),
        .Q(\n_0_TIMER4096_reg[10] ),
        .R(I1));
FDRE \TIMER4096_reg[11] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[11]_i_1 ),
        .Q(\n_0_TIMER4096_reg[11] ),
        .R(I1));
FDRE \TIMER4096_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[1]_i_1 ),
        .Q(\n_0_TIMER4096_reg[1] ),
        .R(I1));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \TIMER4096_reg[1]_i_2_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_TIMER4096_reg[4]_i_2 ,\n_0_TIMER4096_reg[3]_i_2 ,\n_0_TIMER4096_reg[2]_i_2 ,\n_0_TIMER4096_reg[1]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_0_TIMER4096_reg[3]_i_1 ,\n_0_TIMER4096_reg[2]_i_1 ,\n_0_TIMER4096_reg[1]_i_1 ,\n_0_TIMER4096_reg[0]_i_1 }),
        .S({\n_0_TIMER4096_reg[3] ,\n_0_TIMER4096_reg[2] ,\n_0_TIMER4096_reg[1] ,\n_0_TIMER4096[0]_i_2 }));
FDRE \TIMER4096_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[2]_i_1 ),
        .Q(\n_0_TIMER4096_reg[2] ),
        .R(I1));
FDRE \TIMER4096_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[3]_i_1 ),
        .Q(\n_0_TIMER4096_reg[3] ),
        .R(I1));
FDRE \TIMER4096_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[4]_i_1 ),
        .Q(\n_0_TIMER4096_reg[4] ),
        .R(I1));
FDRE \TIMER4096_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[5]_i_1 ),
        .Q(\n_0_TIMER4096_reg[5] ),
        .R(I1));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \TIMER4096_reg[5]_i_2_CARRY4 
       (.CI(\n_0_TIMER4096_reg[4]_i_2 ),
        .CO({\n_0_TIMER4096_reg[8]_i_2 ,\n_0_TIMER4096_reg[7]_i_2 ,\n_0_TIMER4096_reg[6]_i_2 ,\n_0_TIMER4096_reg[5]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_TIMER4096_reg[7]_i_1 ,\n_0_TIMER4096_reg[6]_i_1 ,\n_0_TIMER4096_reg[5]_i_1 ,\n_0_TIMER4096_reg[4]_i_1 }),
        .S({\n_0_TIMER4096_reg[7] ,\n_0_TIMER4096_reg[6] ,\n_0_TIMER4096_reg[5] ,\n_0_TIMER4096_reg[4] }));
FDRE \TIMER4096_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[6]_i_1 ),
        .Q(\n_0_TIMER4096_reg[6] ),
        .R(I1));
FDRE \TIMER4096_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[7]_i_1 ),
        .Q(\n_0_TIMER4096_reg[7] ),
        .R(I1));
FDRE \TIMER4096_reg[8] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[8]_i_1 ),
        .Q(\n_0_TIMER4096_reg[8] ),
        .R(I1));
FDRE \TIMER4096_reg[9] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TIMER4096_reg[9]_i_1 ),
        .Q(\n_0_TIMER4096_reg[9] ),
        .R(I1));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \TIMER4096_reg[9]_i_2_CARRY4 
       (.CI(\n_0_TIMER4096_reg[8]_i_2 ),
        .CO({\NLW_TIMER4096_reg[9]_i_2_CARRY4_CO_UNCONNECTED [3:2],\n_0_TIMER4096_reg[10]_i_2 ,\n_0_TIMER4096_reg[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({\NLW_TIMER4096_reg[9]_i_2_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\n_0_TIMER4096_reg[11]_i_1 ,\n_0_TIMER4096_reg[10]_i_1 ,\n_0_TIMER4096_reg[9]_i_1 ,\n_0_TIMER4096_reg[8]_i_1 }),
        .S({\n_0_TIMER4096_reg[11] ,\n_0_TIMER4096_reg[10] ,\n_0_TIMER4096_reg[9] ,\n_0_TIMER4096_reg[8] }));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     TOGGLE_RX_i_1
       (.I0(I20),
        .I1(PREVIOUS_STATE),
        .I2(TOGGLE_RX),
        .O(n_0_TOGGLE_RX_i_1));
FDRE TOGGLE_RX_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_TOGGLE_RX_i_1),
        .Q(TOGGLE_RX),
        .R(I1));
LUT6 #(
    .INIT(64'h3B3B3A3BC8C8CAC8)) 
     TOGGLE_TX_i_1
       (.I0(an_adv_config_vector[3]),
        .I1(PREVIOUS_STATE),
        .I2(\n_0_STATE_reg[2] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(n_0_XMIT_CONFIG_INT_i_3),
        .I5(TOGGLE_TX),
        .O(n_0_TOGGLE_TX_i_1));
FDRE TOGGLE_TX_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_TOGGLE_TX_i_1),
        .Q(TOGGLE_TX),
        .R(I1));
LUT6 #(
    .INIT(64'hFEFFFCFC02000000)) 
     \TX_CONFIG_REG_INT[11]_i_1 
       (.I0(TOGGLE_TX),
        .I1(\n_0_STATE_reg[0] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(D[3]),
        .O(\n_0_TX_CONFIG_REG_INT[11]_i_1 ));
LUT6 #(
    .INIT(64'hFCFFFEFC00000200)) 
     \TX_CONFIG_REG_INT[12]_i_1 
       (.I0(an_adv_config_vector[4]),
        .I1(\n_0_STATE_reg[0] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(D[4]),
        .O(\n_0_TX_CONFIG_REG_INT[12]_i_1 ));
LUT6 #(
    .INIT(64'hFCFFFEFC00000200)) 
     \TX_CONFIG_REG_INT[13]_i_1 
       (.I0(an_adv_config_vector[5]),
        .I1(\n_0_STATE_reg[0] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(D[5]),
        .O(\n_0_TX_CONFIG_REG_INT[13]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT5 #(
    .INIT(32'hFFAE0020)) 
     \TX_CONFIG_REG_INT[14]_i_1 
       (.I0(\n_0_STATE_reg[0] ),
        .I1(\n_0_STATE_reg[2] ),
        .I2(\n_0_STATE_reg[1] ),
        .I3(\n_0_STATE_reg[3] ),
        .I4(D[6]),
        .O(\n_0_TX_CONFIG_REG_INT[14]_i_1 ));
LUT6 #(
    .INIT(64'hFCFFFEFC00000200)) 
     \TX_CONFIG_REG_INT[15]_i_1 
       (.I0(an_adv_config_vector[6]),
        .I1(\n_0_STATE_reg[0] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(D[7]),
        .O(\n_0_TX_CONFIG_REG_INT[15]_i_1 ));
LUT6 #(
    .INIT(64'hFCFFFEFC00000200)) 
     \TX_CONFIG_REG_INT[5]_i_1 
       (.I0(an_adv_config_vector[0]),
        .I1(\n_0_STATE_reg[0] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(D[0]),
        .O(\n_0_TX_CONFIG_REG_INT[5]_i_1 ));
LUT6 #(
    .INIT(64'hFCFFFEFC00000200)) 
     \TX_CONFIG_REG_INT[7]_i_1 
       (.I0(an_adv_config_vector[1]),
        .I1(\n_0_STATE_reg[0] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(D[1]),
        .O(\n_0_TX_CONFIG_REG_INT[7]_i_1 ));
LUT6 #(
    .INIT(64'hFCFFFEFC00000200)) 
     \TX_CONFIG_REG_INT[8]_i_1 
       (.I0(an_adv_config_vector[2]),
        .I1(\n_0_STATE_reg[0] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[1] ),
        .I4(\n_0_STATE_reg[2] ),
        .I5(D[2]),
        .O(\n_0_TX_CONFIG_REG_INT[8]_i_1 ));
FDRE \TX_CONFIG_REG_INT_reg[11] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TX_CONFIG_REG_INT[11]_i_1 ),
        .Q(D[3]),
        .R(I1));
FDRE \TX_CONFIG_REG_INT_reg[12] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TX_CONFIG_REG_INT[12]_i_1 ),
        .Q(D[4]),
        .R(I1));
FDRE \TX_CONFIG_REG_INT_reg[13] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TX_CONFIG_REG_INT[13]_i_1 ),
        .Q(D[5]),
        .R(I1));
FDRE \TX_CONFIG_REG_INT_reg[14] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TX_CONFIG_REG_INT[14]_i_1 ),
        .Q(D[6]),
        .R(I1));
FDRE \TX_CONFIG_REG_INT_reg[15] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TX_CONFIG_REG_INT[15]_i_1 ),
        .Q(D[7]),
        .R(I1));
FDRE \TX_CONFIG_REG_INT_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TX_CONFIG_REG_INT[5]_i_1 ),
        .Q(D[0]),
        .R(I1));
FDRE \TX_CONFIG_REG_INT_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TX_CONFIG_REG_INT[7]_i_1 ),
        .Q(D[1]),
        .R(I1));
FDRE \TX_CONFIG_REG_INT_reg[8] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_TX_CONFIG_REG_INT[8]_i_1 ),
        .Q(D[2]),
        .R(I1));
LUT6 #(
    .INIT(64'hFAFAFAFAFAFAFAFE)) 
     XMIT_CONFIG_INT_i_1
       (.I0(n_0_XMIT_CONFIG_INT_i_2),
        .I1(Q[3]),
        .I2(I1),
        .I3(n_0_XMIT_CONFIG_INT_i_3),
        .I4(\n_0_STATE_reg[2] ),
        .I5(\n_0_STATE_reg[1] ),
        .O(n_0_XMIT_CONFIG_INT_i_1));
LUT6 #(
    .INIT(64'hAAAAA28AAAAAA288)) 
     XMIT_CONFIG_INT_i_2
       (.I0(XMIT_CONFIG_INT),
        .I1(\n_0_STATE_reg[0] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[2] ),
        .I4(\n_0_STATE_reg[1] ),
        .I5(Q[3]),
        .O(n_0_XMIT_CONFIG_INT_i_2));
LUT2 #(
    .INIT(4'hE)) 
     XMIT_CONFIG_INT_i_3
       (.I0(\n_0_STATE_reg[3] ),
        .I1(\n_0_STATE_reg[0] ),
        .O(n_0_XMIT_CONFIG_INT_i_3));
FDRE XMIT_CONFIG_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_XMIT_CONFIG_INT_i_1),
        .Q(XMIT_CONFIG_INT),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h0810)) 
     XMIT_DATA_INT_i_1
       (.I0(\n_0_STATE_reg[2] ),
        .I1(\n_0_STATE_reg[1] ),
        .I2(\n_0_STATE_reg[3] ),
        .I3(\n_0_STATE_reg[0] ),
        .O(XMIT_DATA_INT0));
FDRE XMIT_DATA_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(XMIT_DATA_INT0),
        .Q(XMIT_DATA_INT),
        .R(I1));
endmodule

(* ORIG_REF_NAME = "GPCS_PMA_GEN" *) 
module gig_ethernet_pcs_pma_0_GPCS_PMA_GEN
   (MGT_TX_RESET,
    status_vector,
    Q,
    MGT_RX_RESET,
    enablealign,
    gmii_rxd,
    gmii_rx_er,
    an_interrupt,
    txchardispmode,
    txcharisk,
    txdata,
    gmii_rx_dv,
    txchardispval,
    userclk2,
    reset,
    dcm_locked,
    an_restart_config,
    gmii_txd,
    signal_detect,
    gmii_tx_er,
    gmii_tx_en,
    userclk,
    configuration_vector,
    an_adv_config_vector,
    rxclkcorcnt,
    rxbufstatus,
    txbuferr,
    reset_done,
    rxcharisk,
    rxchariscomma,
    link_timer_value,
    rxdata,
    rxdisperr,
    rxnotintable);
  output MGT_TX_RESET;
  output [12:0]status_vector;
  output [1:0]Q;
  output MGT_RX_RESET;
  output enablealign;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  output an_interrupt;
  output txchardispmode;
  output txcharisk;
  output [7:0]txdata;
  output gmii_rx_dv;
  output txchardispval;
  input userclk2;
  input reset;
  input dcm_locked;
  input an_restart_config;
  input [7:0]gmii_txd;
  input signal_detect;
  input gmii_tx_er;
  input gmii_tx_en;
  input userclk;
  input [4:0]configuration_vector;
  input [6:0]an_adv_config_vector;
  input [2:0]rxclkcorcnt;
  input [0:0]rxbufstatus;
  input txbuferr;
  input reset_done;
  input [0:0]rxcharisk;
  input [0:0]rxchariscomma;
  input [8:0]link_timer_value;
  input [7:0]rxdata;
  input [0:0]rxdisperr;
  input [0:0]rxnotintable;

  wire AN_ENABLE_INT;
  wire D;
  wire DUPLEX_MODE_RSLVD_REG;
  wire EOP_REG1;
  wire K28p5_REG1;
  wire LOOPBACK_INT;
  wire MASK_RUDI_BUFERR_TIMER0;
  wire MGT_RX_RESET;
  wire MGT_RX_RESET_INT;
  wire MGT_TX_RESET;
  wire MGT_TX_RESET_INT;
  wire [1:0]Q;
  wire RESET_INT;
  wire RESET_INT_PIPE;
  wire RESTART_AN_EN;
  wire RESTART_AN_EN_REG;
  wire RESTART_AN_SET;
  wire RESTART_AN_SET_0;
  wire RXDISPERR_SRL;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXNOTINTABLE_SRL;
  wire RXSYNC_STATUS;
  wire [14:14]RX_CONFIG_REG;
  wire RX_CONFIG_REG_REG0;
  wire RX_CONFIG_VALID;
  wire RX_IDLE;
(* RTL_KEEP = "yes" *)   wire [3:0]RX_RST_SM;
  wire RX_RUDI_INVALID;
  wire SIGNAL_DETECT_MOD;
  wire SOP_REG3;
  wire SRESET_PIPE;
  wire STATUS_VECTOR_0_PRE;
  wire STATUS_VECTOR_0_PRE0;
  wire STAT_VEC_DUPLEX_MODE_RSLVD_reg;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire TXBUFERR_INT;
  wire [15:15]TX_CONFIG_REG;
(* RTL_KEEP = "yes" *)   wire [3:0]TX_RST_SM;
  wire XMIT_CONFIG_INT;
  wire XMIT_DATA;
  wire [6:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire data_out;
  wire dcm_locked;
  wire enablealign;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire [8:0]link_timer_value;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1 ;
  wire \n_0_MGT_RESET.RESET_INT_PIPE_i_1 ;
  wire \n_0_MGT_RESET.SRESET_reg ;
  wire \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] ;
  wire \n_0_NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_i_1 ;
  wire n_0_TRANSMITTER;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[2]_i_1 ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ;
  wire n_10_RECEIVER;
  wire n_10_TRANSMITTER;
  wire n_11_RECEIVER;
  wire n_11_TRANSMITTER;
  wire \n_12_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_12_RECEIVER;
  wire n_12_TRANSMITTER;
  wire n_13_TRANSMITTER;
  wire n_14_RECEIVER;
  wire n_14_TRANSMITTER;
  wire \n_15_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_15_TRANSMITTER;
  wire \n_16_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_16_RECEIVER;
  wire n_16_TRANSMITTER;
  wire \n_17_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_17_RECEIVER;
  wire n_17_TRANSMITTER;
  wire \n_18_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_18_RECEIVER;
  wire n_18_TRANSMITTER;
  wire \n_19_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_19_RECEIVER;
  wire n_19_TRANSMITTER;
  wire n_1_TRANSMITTER;
  wire \n_20_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_20_RECEIVER;
  wire n_20_TRANSMITTER;
  wire \n_21_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_21_RECEIVER;
  wire n_21_TRANSMITTER;
  wire \n_22_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_22_RECEIVER;
  wire \n_23_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_23_RECEIVER;
  wire \n_24_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_24_RECEIVER;
  wire \n_25_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_25_RECEIVER;
  wire \n_26_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_26_RECEIVER;
  wire \n_27_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire \n_28_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_28_RECEIVER;
  wire n_29_RECEIVER;
  wire n_2_SYNCHRONISATION;
  wire n_2_TRANSMITTER;
  wire n_30_RECEIVER;
  wire n_31_RECEIVER;
  wire n_3_TRANSMITTER;
  wire n_4_SYNCHRONISATION;
  wire n_4_TRANSMITTER;
  wire n_5_SYNCHRONISATION;
  wire n_5_TRANSMITTER;
  wire \n_6_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_6_SYNCHRONISATION;
  wire n_6_TRANSMITTER;
  wire \n_7_HAS_AUTO_NEG.AUTO_NEGOTIATION ;
  wire n_7_TRANSMITTER;
  wire n_8_RECEIVER;
  wire n_8_TRANSMITTER;
  wire n_9_TRANSMITTER;
  wire p_0_in;
  wire p_0_out;
  wire p_1_in;
  wire p_1_out;
  wire reset;
  wire reset_done;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [2:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire [0:0]rxdisperr;
  wire [0:0]rxnotintable;
  wire signal_detect;
  wire [12:0]status_vector;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire userclk;
  wire userclk2;

(* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* box_type = "PRIMITIVE" *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/DELAY_RXDISPERR " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     DELAY_RXDISPERR
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(D),
        .Q(RXDISPERR_SRL));
(* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* box_type = "PRIMITIVE" *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/DELAY_RXNOTINTABLE " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     DELAY_RXNOTINTABLE
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(RXNOTINTABLE_INT),
        .Q(RXNOTINTABLE_SRL));
FDRE #(
    .INIT(1'b0)) 
     DUPLEX_MODE_RSLVD_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(STAT_VEC_DUPLEX_MODE_RSLVD_reg),
        .Q(DUPLEX_MODE_RSLVD_REG),
        .R(1'b0));
LUT4 #(
    .INIT(16'h1554)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[2]),
        .I2(RX_RST_SM[3]),
        .I3(RX_RST_SM[1]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 ));
LUT4 #(
    .INIT(16'h2666)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[1]),
        .I2(RX_RST_SM[3]),
        .I3(RX_RST_SM[2]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ));
LUT4 #(
    .INIT(16'h34CC)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 
       (.I0(RX_RST_SM[3]),
        .I1(RX_RST_SM[2]),
        .I2(RX_RST_SM[0]),
        .I3(RX_RST_SM[1]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ));
LUT4 #(
    .INIT(16'h3F80)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[1]),
        .I2(RX_RST_SM[2]),
        .I3(RX_RST_SM[3]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1 ));
(* KEEP = "yes" *) 
   FDSE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 ),
        .Q(RX_RST_SM[0]),
        .S(p_0_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ),
        .Q(RX_RST_SM[1]),
        .R(p_0_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ),
        .Q(RX_RST_SM[2]),
        .R(p_0_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1 ),
        .Q(RX_RST_SM[3]),
        .R(p_0_out));
LUT4 #(
    .INIT(16'h1554)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[2]),
        .I2(TX_RST_SM[3]),
        .I3(TX_RST_SM[1]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 ));
LUT4 #(
    .INIT(16'h2666)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[1]),
        .I2(TX_RST_SM[3]),
        .I3(TX_RST_SM[2]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ));
LUT4 #(
    .INIT(16'h34CC)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 
       (.I0(TX_RST_SM[3]),
        .I1(TX_RST_SM[2]),
        .I2(TX_RST_SM[0]),
        .I3(TX_RST_SM[1]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ));
LUT4 #(
    .INIT(16'h3F80)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[1]),
        .I2(TX_RST_SM[2]),
        .I3(TX_RST_SM[3]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1 ));
(* KEEP = "yes" *) 
   FDSE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 ),
        .Q(TX_RST_SM[0]),
        .S(p_1_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ),
        .Q(TX_RST_SM[1]),
        .R(p_1_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ),
        .Q(TX_RST_SM[2]),
        .R(p_1_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1 ),
        .Q(TX_RST_SM[3]),
        .R(p_1_out));
gig_ethernet_pcs_pma_0_AUTO_NEG__parameterized0 \HAS_AUTO_NEG.AUTO_NEGOTIATION 
       (.D({TX_CONFIG_REG,\n_15_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_16_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_17_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_18_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_19_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_20_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_21_HAS_AUTO_NEG.AUTO_NEGOTIATION }),
        .EOP_REG1(EOP_REG1),
        .I1(\n_0_MGT_RESET.SRESET_reg ),
        .I10(n_17_RECEIVER),
        .I11(n_22_RECEIVER),
        .I12(n_23_RECEIVER),
        .I13(n_24_RECEIVER),
        .I14(n_25_RECEIVER),
        .I15(n_26_RECEIVER),
        .I16(n_14_RECEIVER),
        .I17(n_11_RECEIVER),
        .I18({\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] ,\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ,\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] }),
        .I19(n_6_SYNCHRONISATION),
        .I2(n_2_SYNCHRONISATION),
        .I20(n_12_RECEIVER),
        .I21(RX_CONFIG_REG_REG0),
        .I22(n_19_RECEIVER),
        .I23(n_18_RECEIVER),
        .I3(n_30_RECEIVER),
        .I4(n_31_RECEIVER),
        .I5(n_29_RECEIVER),
        .I6(n_10_RECEIVER),
        .I7(n_21_RECEIVER),
        .I8(n_16_RECEIVER),
        .I9(n_20_RECEIVER),
        .MASK_RUDI_BUFERR_TIMER0(MASK_RUDI_BUFERR_TIMER0),
        .O1(\n_6_HAS_AUTO_NEG.AUTO_NEGOTIATION ),
        .O2(\n_7_HAS_AUTO_NEG.AUTO_NEGOTIATION ),
        .O3(\n_12_HAS_AUTO_NEG.AUTO_NEGOTIATION ),
        .O4({\n_22_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_23_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_24_HAS_AUTO_NEG.AUTO_NEGOTIATION }),
        .O5(\n_25_HAS_AUTO_NEG.AUTO_NEGOTIATION ),
        .O6({\n_26_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_27_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_28_HAS_AUTO_NEG.AUTO_NEGOTIATION }),
        .Q({AN_ENABLE_INT,Q,\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] }),
        .RESTART_AN_SET(RESTART_AN_SET),
        .RXSYNC_STATUS(RXSYNC_STATUS),
        .RX_CONFIG_REG(RX_CONFIG_REG),
        .RX_CONFIG_VALID(RX_CONFIG_VALID),
        .RX_IDLE(RX_IDLE),
        .RX_RUDI_INVALID(RX_RUDI_INVALID),
        .S(n_28_RECEIVER),
        .SOP_REG3(SOP_REG3),
        .SR(MGT_RX_RESET),
        .STATUS_VECTOR_0_PRE0(STATUS_VECTOR_0_PRE0),
        .STAT_VEC_DUPLEX_MODE_RSLVD_reg(STAT_VEC_DUPLEX_MODE_RSLVD_reg),
        .XMIT_CONFIG_INT(XMIT_CONFIG_INT),
        .XMIT_DATA(XMIT_DATA),
        .an_adv_config_vector(an_adv_config_vector),
        .an_interrupt(an_interrupt),
        .data_out(data_out),
        .gmii_rx_dv(gmii_rx_dv),
        .link_timer_value(link_timer_value),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .reset_done(reset_done),
        .status_vector({status_vector[12:10],status_vector[8:7],status_vector[4]}),
        .userclk2(userclk2));
LUT2 #(
    .INIT(4'hB)) 
     \MGT_RESET.RESET_INT_PIPE_i_1 
       (.I0(reset),
        .I1(dcm_locked),
        .O(\n_0_MGT_RESET.RESET_INT_PIPE_i_1 ));
(* ASYNC_REG *) 
   FDPE #(
    .INIT(1'b0)) 
     \MGT_RESET.RESET_INT_PIPE_reg 
       (.C(userclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_MGT_RESET.RESET_INT_PIPE_i_1 ),
        .Q(RESET_INT_PIPE));
(* ASYNC_REG *) 
   FDPE #(
    .INIT(1'b0)) 
     \MGT_RESET.RESET_INT_reg 
       (.C(userclk),
        .CE(1'b1),
        .D(RESET_INT_PIPE),
        .PRE(\n_0_MGT_RESET.RESET_INT_PIPE_i_1 ),
        .Q(RESET_INT));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \MGT_RESET.SRESET_PIPE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESET_INT),
        .Q(SRESET_PIPE),
        .R(1'b0));
(* ASYNC_REG *) 
   FDSE #(
    .INIT(1'b0)) 
     \MGT_RESET.SRESET_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(SRESET_PIPE),
        .Q(\n_0_MGT_RESET.SRESET_reg ),
        .S(RESET_INT));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[0]),
        .Q(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] ),
        .R(\n_0_MGT_RESET.SRESET_reg ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[1]),
        .Q(LOOPBACK_INT),
        .R(\n_0_MGT_RESET.SRESET_reg ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[2]),
        .Q(Q[0]),
        .R(\n_0_MGT_RESET.SRESET_reg ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[3]),
        .Q(Q[1]),
        .R(\n_0_MGT_RESET.SRESET_reg ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(configuration_vector[4]),
        .Q(AN_ENABLE_INT),
        .R(\n_0_MGT_RESET.SRESET_reg ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_REG_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(an_restart_config),
        .Q(RESTART_AN_EN_REG),
        .R(\n_0_MGT_RESET.SRESET_reg ));
LUT2 #(
    .INIT(4'h2)) 
     \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_i_1 
       (.I0(an_restart_config),
        .I1(RESTART_AN_EN_REG),
        .O(\n_0_NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_EN_i_1 ),
        .Q(RESTART_AN_EN),
        .R(\n_0_MGT_RESET.SRESET_reg ));
LUT2 #(
    .INIT(4'h2)) 
     \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_SET_i_1 
       (.I0(RESTART_AN_EN),
        .I1(\n_0_MGT_RESET.SRESET_reg ),
        .O(RESTART_AN_SET_0));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.NO_MDIO_HAS_AN.RESTART_AN_SET_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESTART_AN_SET_0),
        .Q(RESTART_AN_SET),
        .R(1'b0));
gig_ethernet_pcs_pma_0_RX__parameterized0 RECEIVER
       (.D(D),
        .EOP_REG1(EOP_REG1),
        .I1(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I10(n_4_SYNCHRONISATION),
        .I11(\n_6_HAS_AUTO_NEG.AUTO_NEGOTIATION ),
        .I12(\n_7_HAS_AUTO_NEG.AUTO_NEGOTIATION ),
        .I2(\n_25_HAS_AUTO_NEG.AUTO_NEGOTIATION ),
        .I21(RX_CONFIG_REG_REG0),
        .I3(\n_0_MGT_RESET.SRESET_reg ),
        .I4(\n_12_HAS_AUTO_NEG.AUTO_NEGOTIATION ),
        .I5({\n_22_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_23_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_24_HAS_AUTO_NEG.AUTO_NEGOTIATION }),
        .I6({\n_26_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_27_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_28_HAS_AUTO_NEG.AUTO_NEGOTIATION }),
        .I7(n_5_SYNCHRONISATION),
        .I8(Q),
        .I9({\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] ,\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ,\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] }),
        .K28p5_REG1(K28p5_REG1),
        .O1(n_8_RECEIVER),
        .O10(n_20_RECEIVER),
        .O11(n_21_RECEIVER),
        .O12(n_22_RECEIVER),
        .O13(n_23_RECEIVER),
        .O14(n_24_RECEIVER),
        .O15(n_25_RECEIVER),
        .O16(n_26_RECEIVER),
        .O17(n_29_RECEIVER),
        .O18(n_30_RECEIVER),
        .O19(n_31_RECEIVER),
        .O2(n_10_RECEIVER),
        .O3(n_11_RECEIVER),
        .O4(n_12_RECEIVER),
        .O5(n_14_RECEIVER),
        .O6(n_16_RECEIVER),
        .O7(n_17_RECEIVER),
        .O8(n_18_RECEIVER),
        .O9(n_19_RECEIVER),
        .Q({\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] }),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .RXSYNC_STATUS(RXSYNC_STATUS),
        .RX_CONFIG_REG(RX_CONFIG_REG),
        .RX_CONFIG_VALID(RX_CONFIG_VALID),
        .RX_IDLE(RX_IDLE),
        .S(n_28_RECEIVER),
        .SOP_REG3(SOP_REG3),
        .SR(MGT_RX_RESET),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .XMIT_DATA(XMIT_DATA),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .status_vector(status_vector[3:2]),
        .userclk2(userclk2));
FDRE #(
    .INIT(1'b0)) 
     RXDISPERR_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXDISPERR_SRL),
        .Q(status_vector[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     RXNOTINTABLE_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXNOTINTABLE_SRL),
        .Q(status_vector[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     STATUS_VECTOR_0_PRE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(STATUS_VECTOR_0_PRE0),
        .Q(STATUS_VECTOR_0_PRE),
        .R(1'b0));
FDRE \STATUS_VECTOR_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(STATUS_VECTOR_0_PRE),
        .Q(status_vector[0]),
        .R(1'b0));
FDRE \STATUS_VECTOR_reg[12] 
       (.C(userclk2),
        .CE(1'b1),
        .D(DUPLEX_MODE_RSLVD_REG),
        .Q(status_vector[9]),
        .R(1'b0));
FDRE \STATUS_VECTOR_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_STATUS_REG),
        .Q(status_vector[1]),
        .R(1'b0));
gig_ethernet_pcs_pma_0_SYNCHRONISE SYNCHRONISATION
       (.D(D),
        .I1(\n_0_MGT_RESET.SRESET_reg ),
        .I2(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .I3(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I4(n_8_RECEIVER),
        .K28p5_REG1(K28p5_REG1),
        .O1(n_2_SYNCHRONISATION),
        .O2(n_4_SYNCHRONISATION),
        .O3(n_5_SYNCHRONISATION),
        .O4(n_6_SYNCHRONISATION),
        .Q(LOOPBACK_INT),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .RXSYNC_STATUS(RXSYNC_STATUS),
        .RX_RUDI_INVALID(RX_RUDI_INVALID),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .SR(MGT_RX_RESET),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .enablealign(enablealign),
        .p_0_in(p_0_in),
        .userclk2(userclk2));
gig_ethernet_pcs_pma_0_sync_block__parameterized0 SYNC_SIGNAL_DETECT
       (.MASK_RUDI_BUFERR_TIMER0(MASK_RUDI_BUFERR_TIMER0),
        .Q(Q[0]),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .data_out(data_out),
        .p_0_in(p_0_in),
        .signal_detect(signal_detect),
        .userclk2(userclk2));
FDRE #(
    .INIT(1'b0)) 
     SYNC_STATUS_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXSYNC_STATUS),
        .Q(SYNC_STATUS_REG),
        .R(1'b0));
gig_ethernet_pcs_pma_0_TX__parameterized0 TRANSMITTER
       (.D({n_0_TRANSMITTER,n_1_TRANSMITTER,n_2_TRANSMITTER,n_3_TRANSMITTER}),
        .I1(MGT_TX_RESET),
        .I2({TX_CONFIG_REG,\n_15_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_16_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_17_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_18_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_19_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_20_HAS_AUTO_NEG.AUTO_NEGOTIATION ,\n_21_HAS_AUTO_NEG.AUTO_NEGOTIATION }),
        .O1(n_4_TRANSMITTER),
        .O10(n_20_TRANSMITTER),
        .O11(n_21_TRANSMITTER),
        .O2(n_5_TRANSMITTER),
        .O3(n_6_TRANSMITTER),
        .O4(n_7_TRANSMITTER),
        .O5(n_8_TRANSMITTER),
        .O6(n_9_TRANSMITTER),
        .O7(n_10_TRANSMITTER),
        .O8(n_11_TRANSMITTER),
        .O9({n_12_TRANSMITTER,n_13_TRANSMITTER,n_14_TRANSMITTER,n_15_TRANSMITTER,n_16_TRANSMITTER,n_17_TRANSMITTER,n_18_TRANSMITTER,n_19_TRANSMITTER}),
        .Q({AN_ENABLE_INT,Q[1],LOOPBACK_INT,\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[0] }),
        .XMIT_CONFIG_INT(XMIT_CONFIG_INT),
        .XMIT_DATA(XMIT_DATA),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdata(rxdata),
        .userclk2(userclk2));
LUT2 #(
    .INIT(4'hE)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_1 
       (.I0(p_0_in),
        .I1(RESET_INT),
        .O(p_0_out));
LUT4 #(
    .INIT(16'h7FFE)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[1]),
        .I2(RX_RST_SM[2]),
        .I3(RX_RST_SM[3]),
        .O(MGT_RX_RESET_INT));
FDSE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(MGT_RX_RESET_INT),
        .Q(MGT_RX_RESET),
        .S(p_0_out));
LUT2 #(
    .INIT(4'hE)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_1 
       (.I0(RESET_INT),
        .I1(TXBUFERR_INT),
        .O(p_1_out));
LUT4 #(
    .INIT(16'h7FFE)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[1]),
        .I2(TX_RST_SM[2]),
        .I3(TX_RST_SM[3]),
        .O(MGT_TX_RESET_INT));
FDSE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(MGT_TX_RESET_INT),
        .Q(MGT_TX_RESET),
        .S(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxbufstatus),
        .Q(p_0_in),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_11_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .R(MGT_RX_RESET));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_10_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .R(MGT_RX_RESET));
LUT2 #(
    .INIT(4'hE)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[2]_i_1 
       (.I0(LOOPBACK_INT),
        .I1(MGT_RX_RESET),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt[0]),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] ),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt[1]),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt[2]),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[2] ),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_19_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] ),
        .R(MGT_RX_RESET));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_18_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ),
        .R(MGT_RX_RESET));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_17_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ),
        .R(MGT_RX_RESET));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_16_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ),
        .R(MGT_RX_RESET));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_15_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ),
        .R(MGT_RX_RESET));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_14_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ),
        .R(MGT_RX_RESET));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_13_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ),
        .R(MGT_RX_RESET));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_12_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ),
        .R(MGT_RX_RESET));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 
       (.I0(rxdisperr),
        .I1(MGT_RX_RESET),
        .I2(LOOPBACK_INT),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 ),
        .Q(D),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 
       (.I0(rxnotintable),
        .I1(MGT_RX_RESET),
        .I2(LOOPBACK_INT),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ),
        .Q(RXNOTINTABLE_INT),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.TXBUFERR_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(txbuferr),
        .Q(TXBUFERR_INT),
        .R(MGT_TX_RESET));
FDRE \USE_ROCKET_IO.TXCHARDISPMODE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_4_TRANSMITTER),
        .Q(txchardispmode),
        .R(MGT_TX_RESET));
FDRE \USE_ROCKET_IO.TXCHARDISPVAL_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_21_TRANSMITTER),
        .Q(txchardispval),
        .R(1'b0));
FDRE \USE_ROCKET_IO.TXCHARISK_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_9_TRANSMITTER),
        .Q(txcharisk),
        .R(MGT_TX_RESET));
FDRE \USE_ROCKET_IO.TXDATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_3_TRANSMITTER),
        .Q(txdata[0]),
        .R(1'b0));
FDRE \USE_ROCKET_IO.TXDATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_2_TRANSMITTER),
        .Q(txdata[1]),
        .R(1'b0));
FDSE \USE_ROCKET_IO.TXDATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_8_TRANSMITTER),
        .Q(txdata[2]),
        .S(n_20_TRANSMITTER));
FDSE \USE_ROCKET_IO.TXDATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_7_TRANSMITTER),
        .Q(txdata[3]),
        .S(n_20_TRANSMITTER));
FDRE \USE_ROCKET_IO.TXDATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_1_TRANSMITTER),
        .Q(txdata[4]),
        .R(1'b0));
FDSE \USE_ROCKET_IO.TXDATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_6_TRANSMITTER),
        .Q(txdata[5]),
        .S(n_20_TRANSMITTER));
FDRE \USE_ROCKET_IO.TXDATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_TRANSMITTER),
        .Q(txdata[6]),
        .R(1'b0));
FDSE \USE_ROCKET_IO.TXDATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_5_TRANSMITTER),
        .Q(txdata[7]),
        .S(n_20_TRANSMITTER));
endmodule

(* ORIG_REF_NAME = "RX" *) 
module gig_ethernet_pcs_pma_0_RX__parameterized0
   (K28p5_REG1,
    RX_IDLE,
    SOP_REG3,
    EOP_REG1,
    gmii_rx_er,
    RX_CONFIG_VALID,
    status_vector,
    O1,
    gmii_rx_dv,
    O2,
    O3,
    O4,
    p_1_in,
    O5,
    RX_CONFIG_REG,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    I21,
    S,
    O17,
    O18,
    O19,
    gmii_rxd,
    Q,
    userclk2,
    SR,
    SYNC_STATUS_REG0,
    I1,
    I2,
    I3,
    RXSYNC_STATUS,
    RXNOTINTABLE_INT,
    D,
    p_0_in,
    I4,
    XMIT_DATA,
    RXEVEN,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12);
  output K28p5_REG1;
  output RX_IDLE;
  output SOP_REG3;
  output EOP_REG1;
  output gmii_rx_er;
  output RX_CONFIG_VALID;
  output [1:0]status_vector;
  output O1;
  output gmii_rx_dv;
  output O2;
  output O3;
  output O4;
  output p_1_in;
  output O5;
  output [0:0]RX_CONFIG_REG;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output [0:0]I21;
  output [0:0]S;
  output [0:0]O17;
  output O18;
  output O19;
  output [7:0]gmii_rxd;
  input [7:0]Q;
  input userclk2;
  input [0:0]SR;
  input SYNC_STATUS_REG0;
  input I1;
  input I2;
  input I3;
  input RXSYNC_STATUS;
  input RXNOTINTABLE_INT;
  input D;
  input p_0_in;
  input I4;
  input XMIT_DATA;
  input RXEVEN;
  input [2:0]I5;
  input [2:0]I6;
  input I7;
  input [1:0]I8;
  input [2:0]I9;
  input I10;
  input I11;
  input I12;

  wire C;
  wire C0;
  wire CGBAD;
  wire CGBAD_REG1;
  wire CGBAD_REG2;
  wire CGBAD_REG3;
  wire C_HDR_REMOVED;
  wire C_HDR_REMOVED_REG;
  wire C_REG1;
  wire C_REG2;
  wire C_REG3;
  wire D;
  wire D0p0;
  wire D0p0_REG;
  wire EOP;
  wire EOP0;
  wire EOP_REG1;
  wire EOP_REG10;
  wire EXTEND_ERR;
  wire EXTEND_ERR0;
  wire EXTEND_REG1;
  wire EXTEND_REG2;
  wire EXTEND_REG3;
  wire EXT_ILLEGAL_K;
  wire EXT_ILLEGAL_K0;
  wire EXT_ILLEGAL_K_REG1;
  wire EXT_ILLEGAL_K_REG2;
  wire FALSE_CARRIER;
  wire FALSE_CARRIER_REG1;
  wire FALSE_CARRIER_REG2;
  wire FALSE_CARRIER_REG3;
  wire FALSE_DATA;
  wire FALSE_DATA0;
  wire FALSE_K;
  wire FALSE_K0;
  wire FALSE_NIT;
  wire FALSE_NIT0;
  wire FROM_IDLE_D;
  wire FROM_IDLE_D0;
  wire FROM_RX_CX;
  wire FROM_RX_CX0;
  wire FROM_RX_K;
  wire FROM_RX_K0;
  wire I;
  wire I0;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I2;
  wire [0:0]I21;
  wire I3;
  wire I4;
  wire [2:0]I5;
  wire [2:0]I6;
  wire I7;
  wire [1:0]I8;
  wire [2:0]I9;
  wire ILLEGAL_K;
  wire ILLEGAL_K0;
  wire ILLEGAL_K_REG1;
  wire ILLEGAL_K_REG2;
  wire K23p7;
  wire K28p5;
  wire K28p5_REG1;
  wire K28p5_REG2;
  wire K29p7;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire [0:0]O17;
  wire O18;
  wire O19;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire R;
  wire RUDI_C0;
  wire RUDI_I0;
  wire RXCHARISK_REG1;
  wire [7:0]RXDATA_REG5;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXSYNC_STATUS;
  wire [0:0]RX_CONFIG_REG;
  wire RX_CONFIG_VALID;
  wire RX_CONFIG_VALID_INT0;
  wire RX_DATA_ERROR;
  wire RX_DATA_ERROR0;
  wire RX_ER0;
  wire RX_IDLE;
  wire R_REG1;
  wire [0:0]S;
  wire S0;
  wire S2;
  wire SOP;
  wire SOP0;
  wire SOP_REG1;
  wire SOP_REG2;
  wire SOP_REG3;
  wire [0:0]SR;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire S_0;
  wire T;
  wire T_REG1;
  wire T_REG2;
  wire WAIT_FOR_K;
  wire XMIT_DATA;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire n_0_D0p0_REG_i_2;
  wire n_0_EOP_i_2;
  wire n_0_EXTEND_i_1;
  wire n_0_EXTEND_i_3;
  wire n_0_EXTEND_reg;
  wire n_0_FALSE_CARRIER_i_1;
  wire n_0_FALSE_CARRIER_i_2;
  wire n_0_FALSE_CARRIER_i_3;
  wire n_0_FALSE_DATA_i_2;
  wire n_0_FALSE_DATA_i_3;
  wire n_0_FALSE_DATA_i_4;
  wire n_0_FALSE_DATA_i_5;
  wire n_0_FALSE_DATA_i_6;
  wire n_0_FALSE_K_i_2;
  wire n_0_FALSE_NIT_i_2;
  wire n_0_FALSE_NIT_i_3;
  wire n_0_FALSE_NIT_i_4;
  wire n_0_FALSE_NIT_i_5;
  wire n_0_FALSE_NIT_i_6;
  wire \n_0_IDLE_REG_reg[0] ;
  wire \n_0_IDLE_REG_reg[2] ;
  wire n_0_I_i_2;
  wire n_0_I_i_3;
  wire n_0_I_i_5;
  wire n_0_I_i_6;
  wire n_0_I_i_7;
  wire n_0_RECEIVE_i_1;
  wire \n_0_RXDATA_REG4_reg[0]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[1]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[2]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[3]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[4]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[5]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[6]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[7]_srl4 ;
  wire \n_0_RXD[0]_i_1 ;
  wire \n_0_RXD[1]_i_1 ;
  wire \n_0_RXD[2]_i_1 ;
  wire \n_0_RXD[3]_i_1 ;
  wire \n_0_RXD[4]_i_1 ;
  wire \n_0_RXD[5]_i_1 ;
  wire \n_0_RXD[6]_i_1 ;
  wire \n_0_RXD[7]_i_1 ;
  wire \n_0_RX_CONFIG_REG[0]_i_1 ;
  wire \n_0_RX_CONFIG_REG[10]_i_1 ;
  wire \n_0_RX_CONFIG_REG[11]_i_1 ;
  wire \n_0_RX_CONFIG_REG[12]_i_1 ;
  wire \n_0_RX_CONFIG_REG[13]_i_1 ;
  wire \n_0_RX_CONFIG_REG[14]_i_1 ;
  wire \n_0_RX_CONFIG_REG[15]_i_1 ;
  wire \n_0_RX_CONFIG_REG[1]_i_1 ;
  wire \n_0_RX_CONFIG_REG[2]_i_1 ;
  wire \n_0_RX_CONFIG_REG[3]_i_1 ;
  wire \n_0_RX_CONFIG_REG[4]_i_1 ;
  wire \n_0_RX_CONFIG_REG[5]_i_1 ;
  wire \n_0_RX_CONFIG_REG[6]_i_1 ;
  wire \n_0_RX_CONFIG_REG[7]_i_1 ;
  wire \n_0_RX_CONFIG_REG[7]_i_2 ;
  wire \n_0_RX_CONFIG_REG[8]_i_1 ;
  wire \n_0_RX_CONFIG_REG[9]_i_1 ;
  wire n_0_RX_CONFIG_REG_NULL_i_2;
  wire n_0_RX_CONFIG_REG_NULL_i_3;
  wire n_0_RX_CONFIG_REG_NULL_i_4;
  wire n_0_RX_CONFIG_VALID_INT_i_2;
  wire \n_0_RX_CONFIG_VALID_REG_reg[0] ;
  wire \n_0_RX_CONFIG_VALID_REG_reg[3] ;
  wire n_0_RX_DATA_ERROR_i_2;
  wire n_0_RX_DATA_ERROR_i_4;
  wire n_0_RX_ER_i_2;
  wire n_0_RX_ER_i_3;
  wire n_0_RX_INVALID_i_1;
  wire n_0_RX_INVALID_i_2;
  wire n_0_R_i_2;
  wire n_0_S_i_2;
  wire n_0_WAIT_FOR_K_i_1;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire p_1_in_1;
  wire [1:0]status_vector;
  wire userclk2;

FDRE CGBAD_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD),
        .Q(CGBAD_REG1),
        .R(1'b0));
FDRE CGBAD_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD_REG1),
        .Q(CGBAD_REG2),
        .R(1'b0));
FDRE CGBAD_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD_REG2),
        .Q(CGBAD_REG3),
        .R(SR));
LUT3 #(
    .INIT(8'hFE)) 
     CGBAD_i_1
       (.I0(RXNOTINTABLE_INT),
        .I1(D),
        .I2(p_0_in),
        .O(S2));
FDRE CGBAD_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S2),
        .Q(CGBAD),
        .R(SR));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     CONSISTENCY_MATCH_i_5
       (.I0(O8),
        .I1(I6[0]),
        .I2(O9),
        .I3(I6[1]),
        .I4(I6[2]),
        .I5(O4),
        .O(O17));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     C_HDR_REMOVED_REG_i_1
       (.I0(I9[2]),
        .I1(I9[1]),
        .I2(I9[0]),
        .I3(C_REG2),
        .O(C_HDR_REMOVED));
FDRE C_HDR_REMOVED_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_HDR_REMOVED),
        .Q(C_HDR_REMOVED_REG),
        .R(1'b0));
FDRE C_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C),
        .Q(C_REG1),
        .R(1'b0));
FDRE C_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_REG1),
        .Q(C_REG2),
        .R(1'b0));
FDRE C_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_REG2),
        .Q(C_REG3),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT2 #(
    .INIT(4'h2)) 
     C_i_1
       (.I0(K28p5_REG1),
        .I1(n_0_I_i_2),
        .O(C0));
FDRE C_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C0),
        .Q(C),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     D0p0_REG_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[7]),
        .I3(n_0_D0p0_REG_i_2),
        .O(D0p0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     D0p0_REG_i_2
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(I1),
        .O(n_0_D0p0_REG_i_2));
FDRE D0p0_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D0p0),
        .Q(D0p0_REG),
        .R(1'b0));
LUT3 #(
    .INIT(8'hEA)) 
     EOP_REG1_i_1
       (.I0(EOP),
        .I1(n_0_EXTEND_reg),
        .I2(EXTEND_REG1),
        .O(EOP_REG10));
FDRE EOP_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EOP_REG10),
        .Q(EOP_REG1),
        .R(SR));
LUT6 #(
    .INIT(64'hFFFFFFFF88888000)) 
     EOP_i_1
       (.I0(T_REG2),
        .I1(R_REG1),
        .I2(RXEVEN),
        .I3(K28p5_REG1),
        .I4(R),
        .I5(n_0_EOP_i_2),
        .O(EOP0));
LUT5 #(
    .INIT(32'hF8888888)) 
     EOP_i_2
       (.I0(RX_IDLE),
        .I1(K28p5_REG1),
        .I2(RXEVEN),
        .I3(D0p0_REG),
        .I4(C_REG1),
        .O(n_0_EOP_i_2));
FDRE EOP_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EOP0),
        .Q(EOP),
        .R(SR));
LUT3 #(
    .INIT(8'hEA)) 
     EXTEND_ERR_i_1
       (.I0(EXT_ILLEGAL_K_REG2),
        .I1(CGBAD_REG3),
        .I2(EXTEND_REG3),
        .O(EXTEND_ERR0));
FDRE EXTEND_ERR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_ERR0),
        .Q(EXTEND_ERR),
        .R(SYNC_STATUS_REG0));
FDRE EXTEND_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_EXTEND_reg),
        .Q(EXTEND_REG1),
        .R(1'b0));
FDRE EXTEND_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_REG1),
        .Q(EXTEND_REG2),
        .R(1'b0));
FDRE EXTEND_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_REG2),
        .Q(EXTEND_REG3),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAA00AA2AAA00AA00)) 
     EXTEND_i_1
       (.I0(I10),
        .I1(RXEVEN),
        .I2(K28p5_REG1),
        .I3(n_0_EXTEND_i_3),
        .I4(S_0),
        .I5(n_0_EXTEND_reg),
        .O(n_0_EXTEND_i_1));
LUT3 #(
    .INIT(8'h80)) 
     EXTEND_i_3
       (.I0(R),
        .I1(O1),
        .I2(R_REG1),
        .O(n_0_EXTEND_i_3));
FDRE EXTEND_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_EXTEND_i_1),
        .Q(n_0_EXTEND_reg),
        .R(1'b0));
FDRE EXT_ILLEGAL_K_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K),
        .Q(EXT_ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
FDRE EXT_ILLEGAL_K_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K_REG1),
        .Q(EXT_ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
LUT5 #(
    .INIT(32'h00000700)) 
     EXT_ILLEGAL_K_i_1
       (.I0(RXEVEN),
        .I1(K28p5_REG1),
        .I2(R),
        .I3(EXTEND_REG1),
        .I4(S_0),
        .O(EXT_ILLEGAL_K0));
FDRE EXT_ILLEGAL_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K0),
        .Q(EXT_ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
FDRE FALSE_CARRIER_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER),
        .Q(FALSE_CARRIER_REG1),
        .R(1'b0));
FDRE FALSE_CARRIER_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_REG1),
        .Q(FALSE_CARRIER_REG2),
        .R(1'b0));
FDRE FALSE_CARRIER_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_REG2),
        .Q(FALSE_CARRIER_REG3),
        .R(SYNC_STATUS_REG0));
LUT6 #(
    .INIT(64'h0A0E0E0E0A0A0A0A)) 
     FALSE_CARRIER_i_1
       (.I0(n_0_FALSE_CARRIER_i_2),
        .I1(RXSYNC_STATUS),
        .I2(SR),
        .I3(RXEVEN),
        .I4(K28p5_REG1),
        .I5(FALSE_CARRIER),
        .O(n_0_FALSE_CARRIER_i_1));
LUT5 #(
    .INIT(32'h00000010)) 
     FALSE_CARRIER_i_2
       (.I0(I4),
        .I1(S_0),
        .I2(RX_IDLE),
        .I3(K28p5_REG1),
        .I4(n_0_FALSE_CARRIER_i_3),
        .O(n_0_FALSE_CARRIER_i_2));
LUT3 #(
    .INIT(8'hFE)) 
     FALSE_CARRIER_i_3
       (.I0(FALSE_DATA),
        .I1(FALSE_K),
        .I2(FALSE_NIT),
        .O(n_0_FALSE_CARRIER_i_3));
FDRE FALSE_CARRIER_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_FALSE_CARRIER_i_1),
        .Q(FALSE_CARRIER),
        .R(1'b0));
LUT4 #(
    .INIT(16'h000E)) 
     FALSE_DATA_i_1
       (.I0(n_0_FALSE_DATA_i_2),
        .I1(n_0_FALSE_DATA_i_3),
        .I2(RXNOTINTABLE_INT),
        .I3(I1),
        .O(FALSE_DATA0));
LUT6 #(
    .INIT(64'h0042000000000000)) 
     FALSE_DATA_i_2
       (.I0(n_0_FALSE_DATA_i_4),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(n_0_FALSE_DATA_i_5),
        .I4(Q[2]),
        .I5(Q[7]),
        .O(n_0_FALSE_DATA_i_2));
LUT6 #(
    .INIT(64'h0000000010007000)) 
     FALSE_DATA_i_3
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(n_0_FALSE_DATA_i_6),
        .O(n_0_FALSE_DATA_i_3));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT2 #(
    .INIT(4'hE)) 
     FALSE_DATA_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(n_0_FALSE_DATA_i_4));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT2 #(
    .INIT(4'hB)) 
     FALSE_DATA_i_5
       (.I0(Q[6]),
        .I1(Q[5]),
        .O(n_0_FALSE_DATA_i_5));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hFB)) 
     FALSE_DATA_i_6
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .O(n_0_FALSE_DATA_i_6));
FDRE FALSE_DATA_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_DATA0),
        .Q(FALSE_DATA),
        .R(SR));
LUT6 #(
    .INIT(64'h0000000040000040)) 
     FALSE_K_i_1
       (.I0(n_0_FALSE_K_i_2),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(RXNOTINTABLE_INT),
        .O(FALSE_K0));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT5 #(
    .INIT(32'hEFFFFFFF)) 
     FALSE_K_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(I1),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(n_0_FALSE_K_i_2));
FDRE FALSE_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_K0),
        .Q(FALSE_K),
        .R(SR));
LUT6 #(
    .INIT(64'h000A02A2A0AA02A2)) 
     FALSE_NIT_i_1
       (.I0(RXNOTINTABLE_INT),
        .I1(n_0_FALSE_NIT_i_2),
        .I2(Q[7]),
        .I3(n_0_FALSE_NIT_i_3),
        .I4(D),
        .I5(n_0_FALSE_NIT_i_4),
        .O(FALSE_NIT0));
LUT6 #(
    .INIT(64'hFFFFFFFFFF7F7FFF)) 
     FALSE_NIT_i_2
       (.I0(I1),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(n_0_FALSE_NIT_i_5),
        .O(n_0_FALSE_NIT_i_2));
LUT6 #(
    .INIT(64'hBFFF0000BFFFBFFF)) 
     FALSE_NIT_i_3
       (.I0(n_0_FALSE_K_i_2),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(n_0_D0p0_REG_i_2),
        .I5(n_0_FALSE_NIT_i_6),
        .O(n_0_FALSE_NIT_i_3));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hEB)) 
     FALSE_NIT_i_4
       (.I0(n_0_D0p0_REG_i_2),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(n_0_FALSE_NIT_i_4));
LUT3 #(
    .INIT(8'h7F)) 
     FALSE_NIT_i_5
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[5]),
        .O(n_0_FALSE_NIT_i_5));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h8)) 
     FALSE_NIT_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(n_0_FALSE_NIT_i_6));
FDRE FALSE_NIT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_NIT0),
        .Q(FALSE_NIT),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     FROM_IDLE_D_i_1
       (.I0(I4),
        .I1(K28p5_REG1),
        .I2(RX_IDLE),
        .I3(WAIT_FOR_K),
        .O(FROM_IDLE_D0));
FDRE FROM_IDLE_D_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_IDLE_D0),
        .Q(FROM_IDLE_D),
        .R(SYNC_STATUS_REG0));
LUT6 #(
    .INIT(64'hFFFFA8FFFCFCA8A8)) 
     FROM_RX_CX_i_1
       (.I0(RXCHARISK_REG1),
        .I1(C_REG1),
        .I2(C_REG2),
        .I3(I7),
        .I4(CGBAD),
        .I5(C_REG3),
        .O(FROM_RX_CX0));
FDRE FROM_RX_CX_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_RX_CX0),
        .Q(FROM_RX_CX),
        .R(SYNC_STATUS_REG0));
LUT4 #(
    .INIT(16'h8880)) 
     FROM_RX_K_i_1
       (.I0(I4),
        .I1(K28p5_REG2),
        .I2(RXCHARISK_REG1),
        .I3(CGBAD),
        .O(FROM_RX_K0));
FDRE FROM_RX_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_RX_K0),
        .Q(FROM_RX_K),
        .R(SYNC_STATUS_REG0));
FDRE \IDLE_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_IDLE),
        .Q(\n_0_IDLE_REG_reg[0] ),
        .R(SR));
FDRE \IDLE_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_IDLE_REG_reg[0] ),
        .Q(p_0_in1_in),
        .R(SR));
FDRE \IDLE_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(\n_0_IDLE_REG_reg[2] ),
        .R(SR));
FDRE ILLEGAL_K_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K),
        .Q(ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
FDRE ILLEGAL_K_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K_REG1),
        .Q(ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
LUT4 #(
    .INIT(16'h0010)) 
     ILLEGAL_K_i_1
       (.I0(R),
        .I1(K28p5_REG1),
        .I2(RXCHARISK_REG1),
        .I3(T),
        .O(ILLEGAL_K0));
FDRE ILLEGAL_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K0),
        .Q(ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
FDRE I_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I),
        .Q(RX_IDLE),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h02220202)) 
     I_i_1
       (.I0(n_0_I_i_2),
        .I1(n_0_I_i_3),
        .I2(I4),
        .I3(I1),
        .I4(K28p5_REG1),
        .O(I0));
LUT5 #(
    .INIT(32'hFBFBFBAA)) 
     I_i_2
       (.I0(I1),
        .I1(n_0_I_i_5),
        .I2(n_0_I_i_6),
        .I3(n_0_FALSE_DATA_i_6),
        .I4(n_0_I_i_7),
        .O(n_0_I_i_2));
LUT6 #(
    .INIT(64'h000001FFFFFFFFFF)) 
     I_i_3
       (.I0(FALSE_DATA),
        .I1(FALSE_K),
        .I2(FALSE_NIT),
        .I3(RX_IDLE),
        .I4(K28p5_REG1),
        .I5(RXEVEN),
        .O(n_0_I_i_3));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'h08)) 
     I_i_5
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(n_0_I_i_5));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'hFFFFF7FF)) 
     I_i_6
       (.I0(Q[4]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[3]),
        .O(n_0_I_i_6));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFD)) 
     I_i_7
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(n_0_I_i_7));
FDRE I_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I0),
        .Q(I),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'h02000000)) 
     K28p5_REG1_i_1
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(n_0_FALSE_K_i_2),
        .I3(Q[7]),
        .I4(Q[4]),
        .O(K28p5));
FDRE K28p5_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5),
        .Q(K28p5_REG1),
        .R(1'b0));
FDRE K28p5_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5_REG1),
        .Q(K28p5_REG2),
        .R(1'b0));
LUT4 #(
    .INIT(16'h0D0C)) 
     RECEIVED_IDLE_i_1
       (.I0(RX_CONFIG_VALID),
        .I1(RX_IDLE),
        .I2(I3),
        .I3(I11),
        .O(O18));
LUT5 #(
    .INIT(32'h44044400)) 
     RECEIVE_i_1
       (.I0(SR),
        .I1(RXSYNC_STATUS),
        .I2(EOP),
        .I3(SOP_REG2),
        .I4(O1),
        .O(n_0_RECEIVE_i_1));
FDRE RECEIVE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_RECEIVE_i_1),
        .Q(O1),
        .R(1'b0));
LUT4 #(
    .INIT(16'hFFFE)) 
     RUDI_C_i_1
       (.I0(p_1_in_1),
        .I1(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .I2(\n_0_RX_CONFIG_VALID_REG_reg[3] ),
        .I3(p_0_in2_in),
        .O(RUDI_C0));
FDRE RUDI_C_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RUDI_C0),
        .Q(status_vector[0]),
        .R(SR));
LUT2 #(
    .INIT(4'hE)) 
     RUDI_I_i_1
       (.I0(\n_0_IDLE_REG_reg[2] ),
        .I1(p_0_in1_in),
        .O(RUDI_I0));
FDRE RUDI_I_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RUDI_I0),
        .Q(status_vector[1]),
        .R(SR));
FDRE RXCHARISK_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I1),
        .Q(RXCHARISK_REG1),
        .R(1'b0));
(* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[0]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[0]),
        .Q(\n_0_RXDATA_REG4_reg[0]_srl4 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[1]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[1]),
        .Q(\n_0_RXDATA_REG4_reg[1]_srl4 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[2]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[2]),
        .Q(\n_0_RXDATA_REG4_reg[2]_srl4 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[3]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[3]),
        .Q(\n_0_RXDATA_REG4_reg[3]_srl4 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[4]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[4]),
        .Q(\n_0_RXDATA_REG4_reg[4]_srl4 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[5]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[5]),
        .Q(\n_0_RXDATA_REG4_reg[5]_srl4 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[6]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[6]),
        .Q(\n_0_RXDATA_REG4_reg[6]_srl4 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/gig_ethernet_pcs_pma_0_core /\gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[7]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[7]),
        .Q(\n_0_RXDATA_REG4_reg[7]_srl4 ));
FDRE \RXDATA_REG5_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[0]_srl4 ),
        .Q(RXDATA_REG5[0]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[1]_srl4 ),
        .Q(RXDATA_REG5[1]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[2]_srl4 ),
        .Q(RXDATA_REG5[2]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[3]_srl4 ),
        .Q(RXDATA_REG5[3]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[4]_srl4 ),
        .Q(RXDATA_REG5[4]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[5]_srl4 ),
        .Q(RXDATA_REG5[5]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[6]_srl4 ),
        .Q(RXDATA_REG5[6]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[7]_srl4 ),
        .Q(RXDATA_REG5[7]),
        .R(1'b0));
LUT4 #(
    .INIT(16'hBBBA)) 
     \RXD[0]_i_1 
       (.I0(SOP_REG3),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_REG1),
        .I3(RXDATA_REG5[0]),
        .O(\n_0_RXD[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h5554)) 
     \RXD[1]_i_1 
       (.I0(SOP_REG3),
        .I1(RXDATA_REG5[1]),
        .I2(FALSE_CARRIER_REG3),
        .I3(EXTEND_REG1),
        .O(\n_0_RXD[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \RXD[2]_i_1 
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .I2(RXDATA_REG5[2]),
        .I3(SOP_REG3),
        .O(\n_0_RXD[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h5554)) 
     \RXD[3]_i_1 
       (.I0(SOP_REG3),
        .I1(RXDATA_REG5[3]),
        .I2(FALSE_CARRIER_REG3),
        .I3(EXTEND_REG1),
        .O(\n_0_RXD[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT5 #(
    .INIT(32'hBABBBAAA)) 
     \RXD[4]_i_1 
       (.I0(SOP_REG3),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_ERR),
        .I3(EXTEND_REG1),
        .I4(RXDATA_REG5[4]),
        .O(\n_0_RXD[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \RXD[5]_i_1 
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .I2(RXDATA_REG5[5]),
        .I3(SOP_REG3),
        .O(\n_0_RXD[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT4 #(
    .INIT(16'hABAA)) 
     \RXD[6]_i_1 
       (.I0(SOP_REG3),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_REG1),
        .I3(RXDATA_REG5[6]),
        .O(\n_0_RXD[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \RXD[7]_i_1 
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .I2(RXDATA_REG5[7]),
        .I3(SOP_REG3),
        .O(\n_0_RXD[7]_i_1 ));
FDRE \RXD_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[0]_i_1 ),
        .Q(gmii_rxd[0]),
        .R(I8[1]));
FDRE \RXD_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[1]_i_1 ),
        .Q(gmii_rxd[1]),
        .R(I8[1]));
FDRE \RXD_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[2]_i_1 ),
        .Q(gmii_rxd[2]),
        .R(I8[1]));
FDRE \RXD_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[3]_i_1 ),
        .Q(gmii_rxd[3]),
        .R(I8[1]));
FDRE \RXD_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[4]_i_1 ),
        .Q(gmii_rxd[4]),
        .R(I8[1]));
FDRE \RXD_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[5]_i_1 ),
        .Q(gmii_rxd[5]),
        .R(I8[1]));
FDRE \RXD_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[6]_i_1 ),
        .Q(gmii_rxd[6]),
        .R(I8[1]));
FDRE \RXD_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[7]_i_1 ),
        .Q(gmii_rxd[7]),
        .R(I8[1]));
LUT4 #(
    .INIT(16'hFE02)) 
     \RX_CONFIG_REG[0]_i_1 
       (.I0(Q[0]),
        .I1(I1),
        .I2(\n_0_RX_CONFIG_REG[7]_i_2 ),
        .I3(O16),
        .O(\n_0_RX_CONFIG_REG[0]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFEEEF00002220)) 
     \RX_CONFIG_REG[10]_i_1 
       (.I0(Q[2]),
        .I1(RXCHARISK_REG1),
        .I2(C_REG1),
        .I3(C_HDR_REMOVED_REG),
        .I4(I1),
        .I5(O9),
        .O(\n_0_RX_CONFIG_REG[10]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFEEEF00002220)) 
     \RX_CONFIG_REG[11]_i_1 
       (.I0(Q[3]),
        .I1(RXCHARISK_REG1),
        .I2(C_REG1),
        .I3(C_HDR_REMOVED_REG),
        .I4(I1),
        .I5(O4),
        .O(\n_0_RX_CONFIG_REG[11]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFEEEF00002220)) 
     \RX_CONFIG_REG[12]_i_1 
       (.I0(Q[4]),
        .I1(RXCHARISK_REG1),
        .I2(C_REG1),
        .I3(C_HDR_REMOVED_REG),
        .I4(I1),
        .I5(O3),
        .O(\n_0_RX_CONFIG_REG[12]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFEEEF00002220)) 
     \RX_CONFIG_REG[13]_i_1 
       (.I0(Q[5]),
        .I1(RXCHARISK_REG1),
        .I2(C_REG1),
        .I3(C_HDR_REMOVED_REG),
        .I4(I1),
        .I5(O5),
        .O(\n_0_RX_CONFIG_REG[13]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFEEEF00002220)) 
     \RX_CONFIG_REG[14]_i_1 
       (.I0(Q[6]),
        .I1(RXCHARISK_REG1),
        .I2(C_REG1),
        .I3(C_HDR_REMOVED_REG),
        .I4(I1),
        .I5(RX_CONFIG_REG),
        .O(\n_0_RX_CONFIG_REG[14]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFEEEF00002220)) 
     \RX_CONFIG_REG[15]_i_1 
       (.I0(Q[7]),
        .I1(RXCHARISK_REG1),
        .I2(C_REG1),
        .I3(C_HDR_REMOVED_REG),
        .I4(I1),
        .I5(p_1_in),
        .O(\n_0_RX_CONFIG_REG[15]_i_1 ));
LUT4 #(
    .INIT(16'hFE02)) 
     \RX_CONFIG_REG[1]_i_1 
       (.I0(Q[1]),
        .I1(I1),
        .I2(\n_0_RX_CONFIG_REG[7]_i_2 ),
        .I3(O14),
        .O(\n_0_RX_CONFIG_REG[1]_i_1 ));
LUT4 #(
    .INIT(16'hFE02)) 
     \RX_CONFIG_REG[2]_i_1 
       (.I0(Q[2]),
        .I1(I1),
        .I2(\n_0_RX_CONFIG_REG[7]_i_2 ),
        .I3(O15),
        .O(\n_0_RX_CONFIG_REG[2]_i_1 ));
LUT4 #(
    .INIT(16'hFE02)) 
     \RX_CONFIG_REG[3]_i_1 
       (.I0(Q[3]),
        .I1(I1),
        .I2(\n_0_RX_CONFIG_REG[7]_i_2 ),
        .I3(O12),
        .O(\n_0_RX_CONFIG_REG[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'hFE02)) 
     \RX_CONFIG_REG[4]_i_1 
       (.I0(Q[4]),
        .I1(I1),
        .I2(\n_0_RX_CONFIG_REG[7]_i_2 ),
        .I3(O13),
        .O(\n_0_RX_CONFIG_REG[4]_i_1 ));
LUT4 #(
    .INIT(16'hFE02)) 
     \RX_CONFIG_REG[5]_i_1 
       (.I0(Q[5]),
        .I1(I1),
        .I2(\n_0_RX_CONFIG_REG[7]_i_2 ),
        .I3(O7),
        .O(\n_0_RX_CONFIG_REG[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hFE02)) 
     \RX_CONFIG_REG[6]_i_1 
       (.I0(Q[6]),
        .I1(I1),
        .I2(\n_0_RX_CONFIG_REG[7]_i_2 ),
        .I3(O6),
        .O(\n_0_RX_CONFIG_REG[6]_i_1 ));
LUT4 #(
    .INIT(16'hFE02)) 
     \RX_CONFIG_REG[7]_i_1 
       (.I0(Q[7]),
        .I1(I1),
        .I2(\n_0_RX_CONFIG_REG[7]_i_2 ),
        .I3(O10),
        .O(\n_0_RX_CONFIG_REG[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'h55555515)) 
     \RX_CONFIG_REG[7]_i_2 
       (.I0(C),
        .I1(C_REG2),
        .I2(I9[0]),
        .I3(I9[1]),
        .I4(I9[2]),
        .O(\n_0_RX_CONFIG_REG[7]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFEEEF00002220)) 
     \RX_CONFIG_REG[8]_i_1 
       (.I0(Q[0]),
        .I1(RXCHARISK_REG1),
        .I2(C_REG1),
        .I3(C_HDR_REMOVED_REG),
        .I4(I1),
        .I5(O11),
        .O(\n_0_RX_CONFIG_REG[8]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFEEEF00002220)) 
     \RX_CONFIG_REG[9]_i_1 
       (.I0(Q[1]),
        .I1(RXCHARISK_REG1),
        .I2(C_REG1),
        .I3(C_HDR_REMOVED_REG),
        .I4(I1),
        .I5(O8),
        .O(\n_0_RX_CONFIG_REG[9]_i_1 ));
LUT6 #(
    .INIT(64'h808080FF80808000)) 
     RX_CONFIG_REG_NULL_i_1
       (.I0(n_0_RX_CONFIG_REG_NULL_i_2),
        .I1(n_0_RX_CONFIG_REG_NULL_i_3),
        .I2(n_0_RX_CONFIG_REG_NULL_i_4),
        .I3(I3),
        .I4(RX_CONFIG_VALID),
        .I5(I12),
        .O(O19));
LUT5 #(
    .INIT(32'h00000001)) 
     RX_CONFIG_REG_NULL_i_2
       (.I0(O12),
        .I1(O13),
        .I2(O14),
        .I3(O15),
        .I4(O16),
        .O(n_0_RX_CONFIG_REG_NULL_i_2));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     RX_CONFIG_REG_NULL_i_3
       (.I0(O3),
        .I1(O4),
        .I2(p_1_in),
        .I3(I3),
        .I4(O5),
        .I5(RX_CONFIG_REG),
        .O(n_0_RX_CONFIG_REG_NULL_i_3));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     RX_CONFIG_REG_NULL_i_4
       (.I0(O6),
        .I1(O7),
        .I2(O8),
        .I3(O9),
        .I4(O10),
        .I5(O11),
        .O(n_0_RX_CONFIG_REG_NULL_i_4));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \RX_CONFIG_REG_REG[15]_i_1 
       (.I0(I3),
        .I1(RX_IDLE),
        .O(I21));
FDRE \RX_CONFIG_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[0]_i_1 ),
        .Q(O16),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[10] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[10]_i_1 ),
        .Q(O9),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[11] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[11]_i_1 ),
        .Q(O4),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[12] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[12]_i_1 ),
        .Q(O3),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[13] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[13]_i_1 ),
        .Q(O5),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[14] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[14]_i_1 ),
        .Q(RX_CONFIG_REG),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[15] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[15]_i_1 ),
        .Q(p_1_in),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[1]_i_1 ),
        .Q(O14),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[2]_i_1 ),
        .Q(O15),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[3]_i_1 ),
        .Q(O12),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[4]_i_1 ),
        .Q(O13),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[5]_i_1 ),
        .Q(O7),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[6]_i_1 ),
        .Q(O6),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[7]_i_1 ),
        .Q(O10),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[8] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[8]_i_1 ),
        .Q(O11),
        .R(1'b0));
FDRE \RX_CONFIG_REG_reg[9] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_REG[9]_i_1 ),
        .Q(O8),
        .R(1'b0));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \RX_CONFIG_SNAPSHOT[15]_i_8 
       (.I0(O9),
        .I1(I5[1]),
        .I2(O4),
        .I3(I5[2]),
        .I4(I5[0]),
        .I5(O8),
        .O(S));
LUT5 #(
    .INIT(32'h00000004)) 
     RX_CONFIG_VALID_INT_i_1
       (.I0(S2),
        .I1(RXSYNC_STATUS),
        .I2(CGBAD),
        .I3(RXCHARISK_REG1),
        .I4(n_0_RX_CONFIG_VALID_INT_i_2),
        .O(RX_CONFIG_VALID_INT0));
LUT3 #(
    .INIT(8'hAB)) 
     RX_CONFIG_VALID_INT_i_2
       (.I0(I1),
        .I1(C_HDR_REMOVED_REG),
        .I2(C_REG1),
        .O(n_0_RX_CONFIG_VALID_INT_i_2));
FDRE RX_CONFIG_VALID_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_VALID_INT0),
        .Q(RX_CONFIG_VALID),
        .R(SR));
FDRE \RX_CONFIG_VALID_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_VALID),
        .Q(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .R(SR));
FDRE \RX_CONFIG_VALID_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .Q(p_0_in2_in),
        .R(SR));
FDRE \RX_CONFIG_VALID_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in2_in),
        .Q(p_1_in_1),
        .R(SR));
FDRE \RX_CONFIG_VALID_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_1_in_1),
        .Q(\n_0_RX_CONFIG_VALID_REG_reg[3] ),
        .R(SR));
LUT6 #(
    .INIT(64'h888AAAAA88888888)) 
     RX_DATA_ERROR_i_1
       (.I0(O1),
        .I1(n_0_RX_DATA_ERROR_i_2),
        .I2(R),
        .I3(I7),
        .I4(R_REG1),
        .I5(T_REG2),
        .O(RX_DATA_ERROR0));
LUT5 #(
    .INIT(32'hFFFF0A0E)) 
     RX_DATA_ERROR_i_2
       (.I0(K28p5_REG1),
        .I1(R),
        .I2(R_REG1),
        .I3(T_REG1),
        .I4(n_0_RX_DATA_ERROR_i_4),
        .O(n_0_RX_DATA_ERROR_i_2));
LUT4 #(
    .INIT(16'hFFFE)) 
     RX_DATA_ERROR_i_4
       (.I0(CGBAD_REG3),
        .I1(C_REG1),
        .I2(ILLEGAL_K_REG2),
        .I3(RX_IDLE),
        .O(n_0_RX_DATA_ERROR_i_4));
FDRE RX_DATA_ERROR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_DATA_ERROR0),
        .Q(RX_DATA_ERROR),
        .R(SYNC_STATUS_REG0));
FDRE #(
    .INIT(1'b0)) 
     RX_DV_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I2),
        .Q(gmii_rx_dv),
        .R(1'b0));
LUT6 #(
    .INIT(64'h2220222000202220)) 
     RX_ER_i_1
       (.I0(XMIT_DATA),
        .I1(n_0_RX_ER_i_2),
        .I2(O1),
        .I3(RXSYNC_STATUS),
        .I4(n_0_RX_ER_i_3),
        .I5(RX_DATA_ERROR),
        .O(RX_ER0));
LUT2 #(
    .INIT(4'hE)) 
     RX_ER_i_2
       (.I0(I8[1]),
        .I1(I8[0]),
        .O(n_0_RX_ER_i_2));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h1)) 
     RX_ER_i_3
       (.I0(FALSE_CARRIER_REG3),
        .I1(EXTEND_REG1),
        .O(n_0_RX_ER_i_3));
FDRE #(
    .INIT(1'b0)) 
     RX_ER_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_ER0),
        .Q(gmii_rx_er),
        .R(SR));
LUT5 #(
    .INIT(32'h080C0808)) 
     RX_INVALID_i_1
       (.I0(n_0_RX_INVALID_i_2),
        .I1(RXSYNC_STATUS),
        .I2(SR),
        .I3(K28p5_REG1),
        .I4(O2),
        .O(n_0_RX_INVALID_i_1));
LUT4 #(
    .INIT(16'hFEAA)) 
     RX_INVALID_i_2
       (.I0(FROM_RX_CX),
        .I1(FROM_RX_K),
        .I2(FROM_IDLE_D),
        .I3(I4),
        .O(n_0_RX_INVALID_i_2));
FDRE RX_INVALID_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_RX_INVALID_i_1),
        .Q(O2),
        .R(1'b0));
FDRE R_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(R),
        .Q(R_REG1),
        .R(1'b0));
LUT6 #(
    .INIT(64'h2000000000000000)) 
     R_i_1
       (.I0(n_0_R_i_2),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(I1),
        .O(K23p7));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     R_i_2
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[7]),
        .O(n_0_R_i_2));
FDRE R_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K23p7),
        .Q(R),
        .R(1'b0));
FDRE SOP_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP),
        .Q(SOP_REG1),
        .R(1'b0));
FDRE SOP_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP_REG1),
        .Q(SOP_REG2),
        .R(1'b0));
FDRE SOP_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP_REG2),
        .Q(SOP_REG3),
        .R(1'b0));
LUT5 #(
    .INIT(32'h00004440)) 
     SOP_i_1
       (.I0(WAIT_FOR_K),
        .I1(S_0),
        .I2(RX_IDLE),
        .I3(n_0_EXTEND_reg),
        .I4(I4),
        .O(SOP0));
FDRE SOP_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP0),
        .Q(SOP),
        .R(SR));
FDRE SYNC_STATUS_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b1),
        .Q(SYNC_STATUS_REG),
        .R(SYNC_STATUS_REG0));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h00002000)) 
     S_i_1
       (.I0(n_0_S_i_2),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(S2),
        .O(S0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     S_i_2
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[3]),
        .I5(I1),
        .O(n_0_S_i_2));
FDRE S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S0),
        .Q(S_0),
        .R(1'b0));
FDRE T_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T),
        .Q(T_REG1),
        .R(1'b0));
FDRE T_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T_REG1),
        .Q(T_REG2),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     T_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(n_0_S_i_2),
        .O(K29p7));
FDRE T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K29p7),
        .Q(T),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0222222200002222)) 
     WAIT_FOR_K_i_1
       (.I0(RXSYNC_STATUS),
        .I1(SR),
        .I2(RXEVEN),
        .I3(K28p5_REG1),
        .I4(SYNC_STATUS_REG),
        .I5(WAIT_FOR_K),
        .O(n_0_WAIT_FOR_K_i_1));
FDRE WAIT_FOR_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_WAIT_FOR_K_i_1),
        .Q(WAIT_FOR_K),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SYNCHRONISE" *) 
module gig_ethernet_pcs_pma_0_SYNCHRONISE
   (RXEVEN,
    RXSYNC_STATUS,
    O1,
    SYNC_STATUS_REG0,
    O2,
    O3,
    O4,
    enablealign,
    SIGNAL_DETECT_MOD,
    userclk2,
    SR,
    I1,
    RX_RUDI_INVALID,
    I2,
    I3,
    Q,
    p_0_in,
    D,
    RXNOTINTABLE_INT,
    K28p5_REG1,
    I4);
  output RXEVEN;
  output RXSYNC_STATUS;
  output O1;
  output SYNC_STATUS_REG0;
  output O2;
  output O3;
  output O4;
  output enablealign;
  input SIGNAL_DETECT_MOD;
  input userclk2;
  input [0:0]SR;
  input I1;
  input RX_RUDI_INVALID;
  input I2;
  input I3;
  input [0:0]Q;
  input p_0_in;
  input D;
  input RXNOTINTABLE_INT;
  input K28p5_REG1;
  input I4;

  wire D;
  wire [1:0]GOOD_CGS;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire K28p5_REG1;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [0:0]Q;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXSYNC_STATUS;
  wire RX_RUDI_INVALID;
  wire SIGNAL_DETECT_MOD;
  wire SIGNAL_DETECT_REG;
  wire [0:0]SR;
(* RTL_KEEP = "yes" *)   wire [3:0]STATE;
  wire SYNC_STATUS0;
  wire SYNC_STATUS_REG0;
  wire enablealign;
  wire n_0_ENCOMMAALIGN_i_1;
  wire n_0_ENCOMMAALIGN_i_2;
  wire n_0_EVEN_i_1;
  wire \n_0_FSM_sequential_STATE[0]_i_2 ;
  wire \n_0_FSM_sequential_STATE[0]_i_3 ;
  wire \n_0_FSM_sequential_STATE[1]_i_2 ;
  wire \n_0_FSM_sequential_STATE[1]_i_3 ;
  wire \n_0_FSM_sequential_STATE[2]_i_2 ;
  wire \n_0_FSM_sequential_STATE[2]_i_3 ;
  wire \n_0_FSM_sequential_STATE[3]_i_1 ;
  wire \n_0_FSM_sequential_STATE[3]_i_2 ;
  wire \n_0_FSM_sequential_STATE[3]_i_3 ;
  wire \n_0_FSM_sequential_STATE[3]_i_4 ;
  wire \n_0_FSM_sequential_STATE_reg[0]_i_1 ;
  wire \n_0_FSM_sequential_STATE_reg[1]_i_1 ;
  wire \n_0_FSM_sequential_STATE_reg[2]_i_1 ;
  wire \n_0_GOOD_CGS[0]_i_1 ;
  wire \n_0_GOOD_CGS[1]_i_1 ;
  wire \n_0_GOOD_CGS[1]_i_2 ;
  wire n_0_SYNC_STATUS_i_1;
  wire p_0_in;
  wire userclk2;

(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     ENCOMMAALIGN_i_1
       (.I0(enablealign),
        .I1(n_0_ENCOMMAALIGN_i_2),
        .I2(SYNC_STATUS0),
        .O(n_0_ENCOMMAALIGN_i_1));
LUT5 #(
    .INIT(32'h00000443)) 
     ENCOMMAALIGN_i_2
       (.I0(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .I1(STATE[3]),
        .I2(STATE[1]),
        .I3(STATE[2]),
        .I4(STATE[0]),
        .O(n_0_ENCOMMAALIGN_i_2));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     ENCOMMAALIGN_i_3
       (.I0(STATE[3]),
        .I1(STATE[1]),
        .I2(STATE[2]),
        .I3(STATE[0]),
        .I4(I3),
        .I5(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .O(SYNC_STATUS0));
FDRE ENCOMMAALIGN_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ENCOMMAALIGN_i_1),
        .Q(enablealign),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'h4F)) 
     EVEN_i_1
       (.I0(RXSYNC_STATUS),
        .I1(I2),
        .I2(RXEVEN),
        .O(n_0_EVEN_i_1));
FDRE EVEN_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_EVEN_i_1),
        .Q(RXEVEN),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT2 #(
    .INIT(4'h2)) 
     EXTEND_i_2
       (.I0(RXSYNC_STATUS),
        .I1(SR),
        .O(O2));
LUT5 #(
    .INIT(32'h99404050)) 
     \FSM_sequential_STATE[0]_i_2 
       (.I0(STATE[0]),
        .I1(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .I2(I2),
        .I3(STATE[1]),
        .I4(STATE[2]),
        .O(\n_0_FSM_sequential_STATE[0]_i_2 ));
LUT6 #(
    .INIT(64'h00F000DF00000000)) 
     \FSM_sequential_STATE[0]_i_3 
       (.I0(GOOD_CGS[1]),
        .I1(GOOD_CGS[0]),
        .I2(STATE[0]),
        .I3(STATE[2]),
        .I4(STATE[1]),
        .I5(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .O(\n_0_FSM_sequential_STATE[0]_i_3 ));
LUT5 #(
    .INIT(32'h33403040)) 
     \FSM_sequential_STATE[1]_i_2 
       (.I0(I3),
        .I1(STATE[0]),
        .I2(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .I3(STATE[1]),
        .I4(STATE[2]),
        .O(\n_0_FSM_sequential_STATE[1]_i_2 ));
LUT6 #(
    .INIT(64'h00000000FF0020FF)) 
     \FSM_sequential_STATE[1]_i_3 
       (.I0(GOOD_CGS[1]),
        .I1(GOOD_CGS[0]),
        .I2(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .I3(STATE[0]),
        .I4(STATE[1]),
        .I5(STATE[2]),
        .O(\n_0_FSM_sequential_STATE[1]_i_3 ));
LUT5 #(
    .INIT(32'h33704000)) 
     \FSM_sequential_STATE[2]_i_2 
       (.I0(I3),
        .I1(STATE[0]),
        .I2(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .I3(STATE[1]),
        .I4(STATE[2]),
        .O(\n_0_FSM_sequential_STATE[2]_i_2 ));
LUT6 #(
    .INIT(64'h140E141400000000)) 
     \FSM_sequential_STATE[2]_i_3 
       (.I0(STATE[0]),
        .I1(STATE[1]),
        .I2(STATE[2]),
        .I3(GOOD_CGS[0]),
        .I4(GOOD_CGS[1]),
        .I5(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .O(\n_0_FSM_sequential_STATE[2]_i_3 ));
LUT3 #(
    .INIT(8'hAB)) 
     \FSM_sequential_STATE[3]_i_1 
       (.I0(SR),
        .I1(SIGNAL_DETECT_REG),
        .I2(Q),
        .O(\n_0_FSM_sequential_STATE[3]_i_1 ));
LUT6 #(
    .INIT(64'h0FB000B000C0C0F0)) 
     \FSM_sequential_STATE[3]_i_2 
       (.I0(\n_0_FSM_sequential_STATE[3]_i_3 ),
        .I1(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .I2(STATE[3]),
        .I3(STATE[2]),
        .I4(STATE[1]),
        .I5(STATE[0]),
        .O(\n_0_FSM_sequential_STATE[3]_i_2 ));
LUT2 #(
    .INIT(4'hB)) 
     \FSM_sequential_STATE[3]_i_3 
       (.I0(GOOD_CGS[0]),
        .I1(GOOD_CGS[1]),
        .O(\n_0_FSM_sequential_STATE[3]_i_3 ));
LUT5 #(
    .INIT(32'h00000007)) 
     \FSM_sequential_STATE[3]_i_4 
       (.I0(I2),
        .I1(RXEVEN),
        .I2(p_0_in),
        .I3(D),
        .I4(RXNOTINTABLE_INT),
        .O(\n_0_FSM_sequential_STATE[3]_i_4 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_STATE_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_STATE_reg[0]_i_1 ),
        .Q(STATE[0]),
        .R(\n_0_FSM_sequential_STATE[3]_i_1 ));
MUXF7 \FSM_sequential_STATE_reg[0]_i_1 
       (.I0(\n_0_FSM_sequential_STATE[0]_i_2 ),
        .I1(\n_0_FSM_sequential_STATE[0]_i_3 ),
        .O(\n_0_FSM_sequential_STATE_reg[0]_i_1 ),
        .S(STATE[3]));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_STATE_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_STATE_reg[1]_i_1 ),
        .Q(STATE[1]),
        .R(\n_0_FSM_sequential_STATE[3]_i_1 ));
MUXF7 \FSM_sequential_STATE_reg[1]_i_1 
       (.I0(\n_0_FSM_sequential_STATE[1]_i_2 ),
        .I1(\n_0_FSM_sequential_STATE[1]_i_3 ),
        .O(\n_0_FSM_sequential_STATE_reg[1]_i_1 ),
        .S(STATE[3]));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_STATE_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_STATE_reg[2]_i_1 ),
        .Q(STATE[2]),
        .R(\n_0_FSM_sequential_STATE[3]_i_1 ));
MUXF7 \FSM_sequential_STATE_reg[2]_i_1 
       (.I0(\n_0_FSM_sequential_STATE[2]_i_2 ),
        .I1(\n_0_FSM_sequential_STATE[2]_i_3 ),
        .O(\n_0_FSM_sequential_STATE_reg[2]_i_1 ),
        .S(STATE[3]));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_STATE_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_STATE[3]_i_2 ),
        .Q(STATE[3]),
        .R(\n_0_FSM_sequential_STATE[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \GOOD_CGS[0]_i_1 
       (.I0(GOOD_CGS[0]),
        .I1(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .I2(\n_0_GOOD_CGS[1]_i_2 ),
        .O(\n_0_GOOD_CGS[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \GOOD_CGS[1]_i_1 
       (.I0(GOOD_CGS[1]),
        .I1(\n_0_FSM_sequential_STATE[3]_i_4 ),
        .I2(GOOD_CGS[0]),
        .I3(\n_0_GOOD_CGS[1]_i_2 ),
        .O(\n_0_GOOD_CGS[1]_i_1 ));
LUT5 #(
    .INIT(32'hFFFF0580)) 
     \GOOD_CGS[1]_i_2 
       (.I0(STATE[0]),
        .I1(STATE[1]),
        .I2(STATE[2]),
        .I3(STATE[3]),
        .I4(SR),
        .O(\n_0_GOOD_CGS[1]_i_2 ));
FDRE \GOOD_CGS_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_GOOD_CGS[0]_i_1 ),
        .Q(GOOD_CGS[0]),
        .R(1'b0));
FDRE \GOOD_CGS_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_GOOD_CGS[1]_i_1 ),
        .Q(GOOD_CGS[1]),
        .R(1'b0));
LUT2 #(
    .INIT(4'h8)) 
     RX_DATA_ERROR_i_3
       (.I0(RXEVEN),
        .I1(K28p5_REG1),
        .O(O3));
LUT2 #(
    .INIT(4'h1)) 
     RX_DV_i_3
       (.I0(RXSYNC_STATUS),
        .I1(I4),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'h40)) 
     RX_RUDI_INVALID_REG_i_1
       (.I0(I1),
        .I1(RXSYNC_STATUS),
        .I2(RX_RUDI_INVALID),
        .O(O1));
FDRE SIGNAL_DETECT_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SIGNAL_DETECT_MOD),
        .Q(SIGNAL_DETECT_REG),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT2 #(
    .INIT(4'hB)) 
     SYNC_STATUS_REG_i_1
       (.I0(SR),
        .I1(RXSYNC_STATUS),
        .O(SYNC_STATUS_REG0));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     SYNC_STATUS_i_1
       (.I0(n_0_ENCOMMAALIGN_i_2),
        .I1(RXSYNC_STATUS),
        .I2(SYNC_STATUS0),
        .O(n_0_SYNC_STATUS_i_1));
FDRE #(
    .INIT(1'b0)) 
     SYNC_STATUS_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_SYNC_STATUS_i_1),
        .Q(RXSYNC_STATUS),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TX" *) 
module gig_ethernet_pcs_pma_0_TX__parameterized0
   (D,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    gmii_tx_er,
    userclk2,
    gmii_tx_en,
    I1,
    Q,
    gmii_txd,
    rxcharisk,
    rxchariscomma,
    rxdata,
    XMIT_DATA,
    XMIT_CONFIG_INT,
    I2);
  output [3:0]D;
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output [7:0]O9;
  output O10;
  output O11;
  input gmii_tx_er;
  input userclk2;
  input gmii_tx_en;
  input I1;
  input [3:0]Q;
  input [7:0]gmii_txd;
  input [0:0]rxcharisk;
  input [0:0]rxchariscomma;
  input [7:0]rxdata;
  input XMIT_DATA;
  input XMIT_CONFIG_INT;
  input [7:0]I2;

  wire CODE_GRPISK;
  wire CONFIG_K28p5;
  wire CONFIG_K28p5_1;
  wire [3:0]D;
  wire DISPARITY;
  wire I1;
  wire [7:0]I2;
  wire K28p5;
  wire O1;
  wire O10;
  wire O11;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire [7:0]O9;
  wire [3:0]Q;
  wire S;
  wire S0;
  wire T;
  wire T0;
  wire TRIGGER_S;
  wire TRIGGER_S0;
  wire TRIGGER_T;
  wire TXCHARDISPMODE_INT;
  wire TXCHARDISPVAL;
  wire TXCHARISK_INT;
  wire [7:0]TXDATA;
  wire [7:0]TXD_REG1;
  wire [15:5]TX_CONFIG;
  wire TX_EN_REG1;
  wire TX_ER_REG1;
  wire TX_EVEN;
  wire XMIT_CONFIG_INT;
  wire XMIT_CONFIG_INT_0;
  wire XMIT_DATA;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire n_0_C1_OR_C2_i_1;
  wire n_0_C1_OR_C2_reg;
  wire n_0_CODE_GRPISK_i_1;
  wire \n_0_CODE_GRP[0]_i_1 ;
  wire \n_0_CODE_GRP[0]_i_2 ;
  wire \n_0_CODE_GRP[1]_i_1 ;
  wire \n_0_CODE_GRP[1]_i_2 ;
  wire \n_0_CODE_GRP[2]_i_1 ;
  wire \n_0_CODE_GRP[2]_i_2 ;
  wire \n_0_CODE_GRP[3]_i_1 ;
  wire \n_0_CODE_GRP[3]_i_2 ;
  wire \n_0_CODE_GRP[4]_i_1 ;
  wire \n_0_CODE_GRP[5]_i_1 ;
  wire \n_0_CODE_GRP[6]_i_1 ;
  wire \n_0_CODE_GRP[6]_i_2 ;
  wire \n_0_CODE_GRP[7]_i_1 ;
  wire \n_0_CODE_GRP[7]_i_2 ;
  wire \n_0_CODE_GRP[7]_i_3 ;
  wire \n_0_CODE_GRP_CNT_reg[1] ;
  wire \n_0_CODE_GRP_reg[0] ;
  wire \n_0_CONFIG_DATA[0]_i_1 ;
  wire \n_0_CONFIG_DATA[1]_i_1 ;
  wire \n_0_CONFIG_DATA[2]_i_1 ;
  wire \n_0_CONFIG_DATA[3]_i_1 ;
  wire \n_0_CONFIG_DATA[4]_i_1 ;
  wire \n_0_CONFIG_DATA[5]_i_1 ;
  wire \n_0_CONFIG_DATA[6]_i_1 ;
  wire \n_0_CONFIG_DATA[7]_i_1 ;
  wire \n_0_CONFIG_DATA_reg[0] ;
  wire \n_0_CONFIG_DATA_reg[1] ;
  wire \n_0_CONFIG_DATA_reg[2] ;
  wire \n_0_CONFIG_DATA_reg[3] ;
  wire \n_0_CONFIG_DATA_reg[4] ;
  wire \n_0_CONFIG_DATA_reg[5] ;
  wire \n_0_CONFIG_DATA_reg[6] ;
  wire \n_0_CONFIG_DATA_reg[7] ;
  wire n_0_INSERT_IDLE_i_1;
  wire n_0_INSERT_IDLE_reg;
  wire n_0_K28p5_i_1;
  wire \n_0_NO_QSGMII_CHAR.TXCHARDISPVAL_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ;
  wire \n_0_NO_QSGMII_DISP.DISPARITY_i_1 ;
  wire \n_0_NO_QSGMII_DISP.DISPARITY_i_2 ;
  wire \n_0_NO_QSGMII_DISP.DISPARITY_i_3 ;
  wire n_0_R_i_1__0;
  wire n_0_R_reg;
  wire n_0_SYNC_DISPARITY_i_1;
  wire n_0_SYNC_DISPARITY_reg;
  wire n_0_TX_PACKET_i_1;
  wire n_0_TX_PACKET_reg;
  wire n_0_V_i_1;
  wire n_0_V_i_2;
  wire n_0_V_i_3;
  wire n_0_V_i_4;
  wire n_0_V_reg;
  wire n_0_XMIT_CONFIG_INT_i_1;
  wire n_0_XMIT_DATA_INT_i_1__0;
  wire n_0_XMIT_DATA_INT_reg;
  wire p_0_in;
  wire p_0_in18_in;
  wire p_0_in37_in;
  wire p_12_out;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in36_in;
  wire p_35_in;
  wire p_49_in;
  wire [1:0]plusOp;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [7:0]rxdata;
  wire userclk2;

(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT4 #(
    .INIT(16'h3F80)) 
     C1_OR_C2_i_1
       (.I0(XMIT_CONFIG_INT_0),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_EVEN),
        .I3(n_0_C1_OR_C2_reg),
        .O(n_0_C1_OR_C2_i_1));
FDRE C1_OR_C2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_C1_OR_C2_i_1),
        .Q(n_0_C1_OR_C2_reg),
        .R(I1));
LUT6 #(
    .INIT(64'h30303030FFFF55FF)) 
     CODE_GRPISK_i_1
       (.I0(n_0_TX_PACKET_reg),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_EVEN),
        .I3(\n_0_CODE_GRP[6]_i_2 ),
        .I4(Q[2]),
        .I5(XMIT_CONFIG_INT_0),
        .O(n_0_CODE_GRPISK_i_1));
FDRE CODE_GRPISK_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_CODE_GRPISK_i_1),
        .Q(CODE_GRPISK),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFF000031003100)) 
     \CODE_GRP[0]_i_1 
       (.I0(n_0_V_reg),
        .I1(Q[2]),
        .I2(S),
        .I3(\n_0_CODE_GRP[0]_i_2 ),
        .I4(\n_0_CONFIG_DATA_reg[0] ),
        .I5(XMIT_CONFIG_INT_0),
        .O(\n_0_CODE_GRP[0]_i_1 ));
LUT5 #(
    .INIT(32'hFFFEFEFE)) 
     \CODE_GRP[0]_i_2 
       (.I0(S),
        .I1(n_0_R_reg),
        .I2(T),
        .I3(TXD_REG1[0]),
        .I4(n_0_TX_PACKET_reg),
        .O(\n_0_CODE_GRP[0]_i_2 ));
LUT4 #(
    .INIT(16'hF011)) 
     \CODE_GRP[1]_i_1 
       (.I0(\n_0_CODE_GRP[1]_i_2 ),
        .I1(Q[2]),
        .I2(\n_0_CONFIG_DATA_reg[1] ),
        .I3(XMIT_CONFIG_INT_0),
        .O(\n_0_CODE_GRP[1]_i_1 ));
LUT6 #(
    .INIT(64'h1010101110111011)) 
     \CODE_GRP[1]_i_2 
       (.I0(n_0_V_reg),
        .I1(S),
        .I2(T),
        .I3(n_0_R_reg),
        .I4(TXD_REG1[1]),
        .I5(n_0_TX_PACKET_reg),
        .O(\n_0_CODE_GRP[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT5 #(
    .INIT(32'hA2A280A2)) 
     \CODE_GRP[2]_i_1 
       (.I0(\n_0_CODE_GRP[2]_i_2 ),
        .I1(XMIT_CONFIG_INT_0),
        .I2(\n_0_CONFIG_DATA_reg[2] ),
        .I3(S),
        .I4(Q[2]),
        .O(\n_0_CODE_GRP[2]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
     \CODE_GRP[2]_i_2 
       (.I0(n_0_TX_PACKET_reg),
        .I1(n_0_V_reg),
        .I2(\n_0_CODE_GRP[7]_i_3 ),
        .I3(T),
        .I4(TXD_REG1[2]),
        .I5(n_0_R_reg),
        .O(\n_0_CODE_GRP[2]_i_2 ));
LUT6 #(
    .INIT(64'hD0DDD0D0D0DDD0DD)) 
     \CODE_GRP[3]_i_1 
       (.I0(XMIT_CONFIG_INT_0),
        .I1(\n_0_CONFIG_DATA_reg[3] ),
        .I2(\n_0_CODE_GRP[3]_i_2 ),
        .I3(n_0_R_reg),
        .I4(TXD_REG1[3]),
        .I5(n_0_TX_PACKET_reg),
        .O(\n_0_CODE_GRP[3]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \CODE_GRP[3]_i_2 
       (.I0(n_0_V_reg),
        .I1(S),
        .I2(T),
        .I3(Q[2]),
        .I4(XMIT_CONFIG_INT_0),
        .O(\n_0_CODE_GRP[3]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT4 #(
    .INIT(16'hE0EE)) 
     \CODE_GRP[4]_i_1 
       (.I0(\n_0_CODE_GRP[7]_i_2 ),
        .I1(TXD_REG1[4]),
        .I2(\n_0_CONFIG_DATA_reg[4] ),
        .I3(XMIT_CONFIG_INT_0),
        .O(\n_0_CODE_GRP[4]_i_1 ));
LUT4 #(
    .INIT(16'hE0EE)) 
     \CODE_GRP[5]_i_1 
       (.I0(\n_0_CODE_GRP[7]_i_2 ),
        .I1(TXD_REG1[5]),
        .I2(\n_0_CONFIG_DATA_reg[5] ),
        .I3(XMIT_CONFIG_INT_0),
        .O(\n_0_CODE_GRP[5]_i_1 ));
LUT6 #(
    .INIT(64'hFFFF000000D500D5)) 
     \CODE_GRP[6]_i_1 
       (.I0(\n_0_CODE_GRP[6]_i_2 ),
        .I1(TXD_REG1[6]),
        .I2(n_0_TX_PACKET_reg),
        .I3(Q[2]),
        .I4(\n_0_CONFIG_DATA_reg[6] ),
        .I5(XMIT_CONFIG_INT_0),
        .O(\n_0_CODE_GRP[6]_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \CODE_GRP[6]_i_2 
       (.I0(n_0_V_reg),
        .I1(T),
        .I2(n_0_R_reg),
        .I3(S),
        .O(\n_0_CODE_GRP[6]_i_2 ));
LUT4 #(
    .INIT(16'hDDD0)) 
     \CODE_GRP[7]_i_1 
       (.I0(XMIT_CONFIG_INT_0),
        .I1(\n_0_CONFIG_DATA_reg[7] ),
        .I2(\n_0_CODE_GRP[7]_i_2 ),
        .I3(TXD_REG1[7]),
        .O(\n_0_CODE_GRP[7]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
     \CODE_GRP[7]_i_2 
       (.I0(S),
        .I1(n_0_R_reg),
        .I2(T),
        .I3(n_0_TX_PACKET_reg),
        .I4(n_0_V_reg),
        .I5(\n_0_CODE_GRP[7]_i_3 ),
        .O(\n_0_CODE_GRP[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \CODE_GRP[7]_i_3 
       (.I0(Q[2]),
        .I1(XMIT_CONFIG_INT_0),
        .O(\n_0_CODE_GRP[7]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \CODE_GRP_CNT[0]_i_1 
       (.I0(TX_EVEN),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \CODE_GRP_CNT[1]_i_1 
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(TX_EVEN),
        .O(plusOp[1]));
FDSE \CODE_GRP_CNT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(TX_EVEN),
        .S(I1));
FDSE \CODE_GRP_CNT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\n_0_CODE_GRP_CNT_reg[1] ),
        .S(I1));
FDRE \CODE_GRP_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[0]_i_1 ),
        .Q(\n_0_CODE_GRP_reg[0] ),
        .R(1'b0));
FDRE \CODE_GRP_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[1]_i_1 ),
        .Q(p_1_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[2]_i_1 ),
        .Q(p_0_in18_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[3]_i_1 ),
        .Q(p_0_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[4]_i_1 ),
        .Q(p_1_in1_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[5]_i_1 ),
        .Q(p_1_in36_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[6]_i_1 ),
        .Q(p_35_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[7]_i_1 ),
        .Q(p_0_in37_in),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT4 #(
    .INIT(16'h80A2)) 
     \CONFIG_DATA[0]_i_1 
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_CONFIG[8]),
        .I3(n_0_C1_OR_C2_reg),
        .O(\n_0_CONFIG_DATA[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'h20)) 
     \CONFIG_DATA[1]_i_1 
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(n_0_C1_OR_C2_reg),
        .O(\n_0_CONFIG_DATA[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'h15)) 
     \CONFIG_DATA[2]_i_1 
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(n_0_C1_OR_C2_reg),
        .I2(TX_EVEN),
        .O(\n_0_CONFIG_DATA[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'h83)) 
     \CONFIG_DATA[3]_i_1 
       (.I0(TX_CONFIG[11]),
        .I1(TX_EVEN),
        .I2(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(\n_0_CONFIG_DATA[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT4 #(
    .INIT(16'h85D5)) 
     \CONFIG_DATA[4]_i_1 
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(TX_CONFIG[12]),
        .I2(TX_EVEN),
        .I3(n_0_C1_OR_C2_reg),
        .O(\n_0_CONFIG_DATA[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT5 #(
    .INIT(32'hC0BBF3BB)) 
     \CONFIG_DATA[5]_i_1 
       (.I0(TX_CONFIG[5]),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_CONFIG[13]),
        .I3(TX_EVEN),
        .I4(n_0_C1_OR_C2_reg),
        .O(\n_0_CONFIG_DATA[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT4 #(
    .INIT(16'hA808)) 
     \CONFIG_DATA[6]_i_1 
       (.I0(TX_EVEN),
        .I1(n_0_C1_OR_C2_reg),
        .I2(\n_0_CODE_GRP_CNT_reg[1] ),
        .I3(TX_CONFIG[14]),
        .O(\n_0_CONFIG_DATA[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT5 #(
    .INIT(32'hC0BBF3BB)) 
     \CONFIG_DATA[7]_i_1 
       (.I0(TX_CONFIG[7]),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_CONFIG[15]),
        .I3(TX_EVEN),
        .I4(n_0_C1_OR_C2_reg),
        .O(\n_0_CONFIG_DATA[7]_i_1 ));
FDRE \CONFIG_DATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[0]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[0] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[1]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[1] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[2]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[2] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[3]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[3] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[4]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[4] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[5]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[5] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[6]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[6] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[7]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[7] ),
        .R(I1));
FDRE CONFIG_K28p5_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CONFIG_K28p5_1),
        .Q(CONFIG_K28p5),
        .R(I1));
LUT4 #(
    .INIT(16'h00F2)) 
     INSERT_IDLE_i_1
       (.I0(\n_0_CODE_GRP[6]_i_2 ),
        .I1(n_0_TX_PACKET_reg),
        .I2(Q[2]),
        .I3(XMIT_CONFIG_INT_0),
        .O(n_0_INSERT_IDLE_i_1));
FDRE INSERT_IDLE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_INSERT_IDLE_i_1),
        .Q(n_0_INSERT_IDLE_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'h8)) 
     K28p5_i_1
       (.I0(XMIT_CONFIG_INT_0),
        .I1(CONFIG_K28p5),
        .O(n_0_K28p5_i_1));
FDRE K28p5_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_K28p5_i_1),
        .Q(K28p5),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1 
       (.I0(n_0_SYNC_DISPARITY_reg),
        .I1(TX_EVEN),
        .O(p_12_out));
FDSE \NO_QSGMII_CHAR.TXCHARDISPMODE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_12_out),
        .Q(TXCHARDISPMODE_INT),
        .S(I1));
LUT3 #(
    .INIT(8'h40)) 
     \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1 
       (.I0(TX_EVEN),
        .I1(n_0_SYNC_DISPARITY_reg),
        .I2(DISPARITY),
        .O(\n_0_NO_QSGMII_CHAR.TXCHARDISPVAL_i_1 ));
FDRE \NO_QSGMII_CHAR.TXCHARDISPVAL_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_CHAR.TXCHARDISPVAL_i_1 ),
        .Q(TXCHARDISPVAL),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'h002A)) 
     \NO_QSGMII_DATA.TXCHARISK_i_1 
       (.I0(CODE_GRPISK),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(I1),
        .O(\n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ));
FDRE \NO_QSGMII_DATA.TXCHARISK_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ),
        .Q(TXCHARISK_INT),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT4 #(
    .INIT(16'hBF80)) 
     \NO_QSGMII_DATA.TXDATA[0]_i_1 
       (.I0(DISPARITY),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(\n_0_CODE_GRP_reg[0] ),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'h002A)) 
     \NO_QSGMII_DATA.TXDATA[1]_i_1 
       (.I0(p_1_in),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(I1),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT4 #(
    .INIT(16'hBF80)) 
     \NO_QSGMII_DATA.TXDATA[2]_i_1 
       (.I0(DISPARITY),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(p_0_in18_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'h002A)) 
     \NO_QSGMII_DATA.TXDATA[3]_i_1 
       (.I0(p_0_in),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(I1),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT4 #(
    .INIT(16'h7F40)) 
     \NO_QSGMII_DATA.TXDATA[4]_i_1 
       (.I0(DISPARITY),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(p_1_in1_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'h002A)) 
     \NO_QSGMII_DATA.TXDATA[5]_i_1 
       (.I0(p_1_in36_in),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(I1),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'h5540)) 
     \NO_QSGMII_DATA.TXDATA[6]_i_1 
       (.I0(I1),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(p_35_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT4 #(
    .INIT(16'hBF80)) 
     \NO_QSGMII_DATA.TXDATA[7]_i_1 
       (.I0(DISPARITY),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(p_0_in37_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ),
        .Q(TXDATA[0]),
        .R(I1));
FDRE \NO_QSGMII_DATA.TXDATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ),
        .Q(TXDATA[1]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ),
        .Q(TXDATA[2]),
        .R(I1));
FDRE \NO_QSGMII_DATA.TXDATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ),
        .Q(TXDATA[3]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ),
        .Q(TXDATA[4]),
        .R(I1));
FDRE \NO_QSGMII_DATA.TXDATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ),
        .Q(TXDATA[5]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ),
        .Q(TXDATA[6]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ),
        .Q(TXDATA[7]),
        .R(I1));
LUT6 #(
    .INIT(64'h0009090900F6F6F6)) 
     \NO_QSGMII_DISP.DISPARITY_i_1 
       (.I0(\n_0_NO_QSGMII_DISP.DISPARITY_i_2 ),
        .I1(\n_0_NO_QSGMII_DISP.DISPARITY_i_3 ),
        .I2(K28p5),
        .I3(n_0_INSERT_IDLE_reg),
        .I4(TX_EVEN),
        .I5(DISPARITY),
        .O(\n_0_NO_QSGMII_DISP.DISPARITY_i_1 ));
LUT5 #(
    .INIT(32'hE8818157)) 
     \NO_QSGMII_DISP.DISPARITY_i_2 
       (.I0(p_0_in18_in),
        .I1(p_0_in),
        .I2(p_1_in1_in),
        .I3(\n_0_CODE_GRP_reg[0] ),
        .I4(p_1_in),
        .O(\n_0_NO_QSGMII_DISP.DISPARITY_i_2 ));
LUT3 #(
    .INIT(8'h83)) 
     \NO_QSGMII_DISP.DISPARITY_i_3 
       (.I0(p_0_in37_in),
        .I1(p_1_in36_in),
        .I2(p_35_in),
        .O(\n_0_NO_QSGMII_DISP.DISPARITY_i_3 ));
FDSE \NO_QSGMII_DISP.DISPARITY_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DISP.DISPARITY_i_1 ),
        .Q(DISPARITY),
        .S(I1));
LUT6 #(
    .INIT(64'h0D0D0D0C0C0C0C0C)) 
     R_i_1__0
       (.I0(S),
        .I1(T),
        .I2(I1),
        .I3(TX_ER_REG1),
        .I4(TX_EVEN),
        .I5(n_0_R_reg),
        .O(n_0_R_i_1__0));
FDRE R_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_R_i_1__0),
        .Q(n_0_R_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h2F202F2F2F202F20)) 
     SYNC_DISPARITY_i_1
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(XMIT_CONFIG_INT_0),
        .I3(Q[2]),
        .I4(n_0_TX_PACKET_reg),
        .I5(\n_0_CODE_GRP[6]_i_2 ),
        .O(n_0_SYNC_DISPARITY_i_1));
FDRE SYNC_DISPARITY_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_SYNC_DISPARITY_i_1),
        .Q(n_0_SYNC_DISPARITY_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8888A8AA88888888)) 
     S_i_1__0
       (.I0(n_0_XMIT_DATA_INT_reg),
        .I1(TRIGGER_S),
        .I2(TX_ER_REG1),
        .I3(TX_EVEN),
        .I4(TX_EN_REG1),
        .I5(gmii_tx_en),
        .O(S0));
FDRE S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S0),
        .Q(S),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     TRIGGER_S_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .I2(TX_ER_REG1),
        .I3(TX_EVEN),
        .O(TRIGGER_S0));
FDRE TRIGGER_S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TRIGGER_S0),
        .Q(TRIGGER_S),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT2 #(
    .INIT(4'h2)) 
     TRIGGER_T_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .O(p_49_in));
FDRE TRIGGER_T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_49_in),
        .Q(TRIGGER_T),
        .R(I1));
FDRE \TXD_REG1_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[0]),
        .Q(TXD_REG1[0]),
        .R(1'b0));
FDRE \TXD_REG1_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[1]),
        .Q(TXD_REG1[1]),
        .R(1'b0));
FDRE \TXD_REG1_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[2]),
        .Q(TXD_REG1[2]),
        .R(1'b0));
FDRE \TXD_REG1_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[3]),
        .Q(TXD_REG1[3]),
        .R(1'b0));
FDRE \TXD_REG1_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[4]),
        .Q(TXD_REG1[4]),
        .R(1'b0));
FDRE \TXD_REG1_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[5]),
        .Q(TXD_REG1[5]),
        .R(1'b0));
FDRE \TXD_REG1_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[6]),
        .Q(TXD_REG1[6]),
        .R(1'b0));
FDRE \TXD_REG1_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[7]),
        .Q(TXD_REG1[7]),
        .R(1'b0));
LUT2 #(
    .INIT(4'h1)) 
     \TX_CONFIG[15]_i_1 
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(TX_EVEN),
        .O(CONFIG_K28p5_1));
FDRE \TX_CONFIG_reg[11] 
       (.C(userclk2),
        .CE(CONFIG_K28p5_1),
        .D(I2[3]),
        .Q(TX_CONFIG[11]),
        .R(I1));
FDRE \TX_CONFIG_reg[12] 
       (.C(userclk2),
        .CE(CONFIG_K28p5_1),
        .D(I2[4]),
        .Q(TX_CONFIG[12]),
        .R(I1));
FDRE \TX_CONFIG_reg[13] 
       (.C(userclk2),
        .CE(CONFIG_K28p5_1),
        .D(I2[5]),
        .Q(TX_CONFIG[13]),
        .R(I1));
FDRE \TX_CONFIG_reg[14] 
       (.C(userclk2),
        .CE(CONFIG_K28p5_1),
        .D(I2[6]),
        .Q(TX_CONFIG[14]),
        .R(I1));
FDRE \TX_CONFIG_reg[15] 
       (.C(userclk2),
        .CE(CONFIG_K28p5_1),
        .D(I2[7]),
        .Q(TX_CONFIG[15]),
        .R(I1));
FDRE \TX_CONFIG_reg[5] 
       (.C(userclk2),
        .CE(CONFIG_K28p5_1),
        .D(I2[0]),
        .Q(TX_CONFIG[5]),
        .R(I1));
FDRE \TX_CONFIG_reg[7] 
       (.C(userclk2),
        .CE(CONFIG_K28p5_1),
        .D(I2[1]),
        .Q(TX_CONFIG[7]),
        .R(I1));
FDRE \TX_CONFIG_reg[8] 
       (.C(userclk2),
        .CE(CONFIG_K28p5_1),
        .D(I2[2]),
        .Q(TX_CONFIG[8]),
        .R(I1));
FDRE TX_EN_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_tx_en),
        .Q(TX_EN_REG1),
        .R(1'b0));
FDRE TX_ER_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_tx_er),
        .Q(TX_ER_REG1),
        .R(1'b0));
LUT4 #(
    .INIT(16'h5150)) 
     TX_PACKET_i_1
       (.I0(I1),
        .I1(T),
        .I2(S),
        .I3(n_0_TX_PACKET_reg),
        .O(n_0_TX_PACKET_i_1));
FDRE TX_PACKET_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_TX_PACKET_i_1),
        .Q(n_0_TX_PACKET_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h88888888FFF88888)) 
     T_i_1__0
       (.I0(n_0_V_reg),
        .I1(TRIGGER_T),
        .I2(S),
        .I3(n_0_TX_PACKET_reg),
        .I4(TX_EN_REG1),
        .I5(gmii_tx_en),
        .O(T0));
FDRE T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T0),
        .Q(T),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(Q[1]),
        .I2(rxchariscomma),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(Q[1]),
        .I2(rxcharisk),
        .O(O7));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(Q[1]),
        .I2(rxdata[0]),
        .O(O9[0]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(Q[1]),
        .I2(rxdata[1]),
        .O(O9[1]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(Q[1]),
        .I2(rxdata[2]),
        .O(O9[2]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(Q[1]),
        .I2(rxdata[3]),
        .O(O9[3]));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[4]_i_1 
       (.I0(TXDATA[4]),
        .I1(Q[1]),
        .I2(rxdata[4]),
        .O(O9[4]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(Q[1]),
        .I2(rxdata[5]),
        .O(O9[5]));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[6]_i_1 
       (.I0(TXDATA[6]),
        .I1(Q[1]),
        .I2(rxdata[6]),
        .O(O9[6]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[7]_i_1 
       (.I0(TXDATA[7]),
        .I1(Q[1]),
        .I2(rxdata[7]),
        .O(O9[7]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.TXCHARDISPMODE_i_1 
       (.I0(TX_EVEN),
        .I1(Q[1]),
        .I2(TXCHARDISPMODE_INT),
        .O(O1));
LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXCHARDISPVAL_i_1 
       (.I0(TXCHARDISPVAL),
        .I1(Q[1]),
        .I2(I1),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.TXCHARISK_i_1 
       (.I0(TX_EVEN),
        .I1(Q[1]),
        .I2(TXCHARISK_INT),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(Q[1]),
        .I2(I1),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(Q[1]),
        .I2(I1),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(Q[1]),
        .I2(I1),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(Q[1]),
        .I2(I1),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'h54)) 
     \USE_ROCKET_IO.TXDATA[4]_i_1 
       (.I0(I1),
        .I1(TXDATA[4]),
        .I2(Q[1]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(Q[1]),
        .I2(I1),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'h003A)) 
     \USE_ROCKET_IO.TXDATA[6]_i_1 
       (.I0(TXDATA[6]),
        .I1(TX_EVEN),
        .I2(Q[1]),
        .I3(I1),
        .O(D[3]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \USE_ROCKET_IO.TXDATA[7]_i_1 
       (.I0(Q[1]),
        .I1(TX_EVEN),
        .I2(I1),
        .O(O10));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[7]_i_2 
       (.I0(TXDATA[7]),
        .I1(Q[1]),
        .I2(I1),
        .O(O2));
LUT6 #(
    .INIT(64'h00FF00D000D000D0)) 
     V_i_1
       (.I0(n_0_V_i_2),
        .I1(n_0_V_i_3),
        .I2(n_0_XMIT_DATA_INT_reg),
        .I3(I1),
        .I4(S),
        .I5(n_0_V_reg),
        .O(n_0_V_i_1));
LUT6 #(
    .INIT(64'h55555557FFFF5557)) 
     V_i_2
       (.I0(gmii_tx_er),
        .I1(n_0_V_i_4),
        .I2(gmii_txd[5]),
        .I3(gmii_txd[7]),
        .I4(gmii_tx_en),
        .I5(n_0_TX_PACKET_reg),
        .O(n_0_V_i_2));
LUT3 #(
    .INIT(8'h08)) 
     V_i_3
       (.I0(TX_ER_REG1),
        .I1(TX_EN_REG1),
        .I2(n_0_TX_PACKET_reg),
        .O(n_0_V_i_3));
LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
     V_i_4
       (.I0(gmii_txd[4]),
        .I1(gmii_txd[6]),
        .I2(gmii_txd[0]),
        .I3(gmii_txd[3]),
        .I4(gmii_txd[2]),
        .I5(gmii_txd[1]),
        .O(n_0_V_i_4));
FDRE V_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_V_i_1),
        .Q(n_0_V_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFF8A0000008A)) 
     XMIT_CONFIG_INT_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(\n_0_CODE_GRP_CNT_reg[1] ),
        .I4(TX_EVEN),
        .I5(XMIT_CONFIG_INT_0),
        .O(n_0_XMIT_CONFIG_INT_i_1));
FDSE XMIT_CONFIG_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_XMIT_CONFIG_INT_i_1),
        .Q(XMIT_CONFIG_INT_0),
        .S(I1));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'hFE02)) 
     XMIT_DATA_INT_i_1__0
       (.I0(XMIT_DATA),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_EVEN),
        .I3(n_0_XMIT_DATA_INT_reg),
        .O(n_0_XMIT_DATA_INT_i_1__0));
FDRE XMIT_DATA_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_XMIT_DATA_INT_i_1__0),
        .Q(n_0_XMIT_DATA_INT_reg),
        .R(I1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_GTWIZARD" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD
   (txn,
    txp,
    rxoutclk_i,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    O1,
    O2,
    O3,
    O4,
    O5,
    reset_done,
    independent_clock_bufg,
    CLK,
    I1,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    I2,
    TXPD,
    RXPD,
    Q,
    I3,
    I4,
    I5,
    AR,
    data_in,
    data_out,
    I6,
    I7);
  output txn;
  output txp;
  output rxoutclk_i;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output reset_done;
  input independent_clock_bufg;
  input CLK;
  input I1;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input I2;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]I3;
  input [1:0]I4;
  input [1:0]I5;
  input [0:0]AR;
  input data_in;
  input data_out;
  input I6;
  input I7;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]D;
  wire I1;
  wire I2;
  wire [1:0]I3;
  wire [1:0]I4;
  wire [1:0]I5;
  wire I6;
  wire I7;
  wire [15:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire data_in;
  wire data_out;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire independent_clock_bufg;
  wire reset_done;
  wire reset_out;
  wire rxn;
  wire rxoutclk_i;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;

gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init inst
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .data_in(data_in),
        .data_out(data_out),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_done(reset_done),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk_i(rxoutclk_i),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_GTWIZARD_GT" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT
   (O1,
    txn,
    txp,
    rxoutclk_i,
    O2,
    txoutclk,
    O3,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    O4,
    O5,
    O6,
    O7,
    O8,
    ack_flag,
    independent_clock_bufg,
    CLK,
    I1,
    data_in,
    gt0_gttxreset_gt,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gt0_rxdfelfhold_i,
    reset_out,
    wtd_rxpcsreset_in,
    gt0_rxuserrdy_t,
    I2,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    I3,
    I4,
    I5,
    I6,
    gt0_cpllreset_t);
  output O1;
  output txn;
  output txp;
  output rxoutclk_i;
  output O2;
  output txoutclk;
  output O3;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  output [1:0]O7;
  output [1:0]O8;
  output ack_flag;
  input independent_clock_bufg;
  input CLK;
  input I1;
  input data_in;
  input gt0_gttxreset_gt;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gt0_rxdfelfhold_i;
  input reset_out;
  input wtd_rxpcsreset_in;
  input gt0_rxuserrdy_t;
  input I2;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]I3;
  input [1:0]I4;
  input [1:0]I5;
  input I6;
  input gt0_cpllreset_t;

  wire CLK;
  wire [1:0]D;
  wire I1;
  wire I2;
  wire [1:0]I3;
  wire [1:0]I4;
  wire [1:0]I5;
  wire I6;
  wire O1;
  wire O2;
  wire O3;
  wire [15:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire ack_flag;
  wire ack_sync1;
  wire ack_sync2;
  wire ack_sync3;
  wire ack_sync4;
  wire ack_sync5;
  wire ack_sync6;
  wire cpll_pd_i;
  wire cpll_reset_i;
  wire cpllreset_ovrd_i;
  wire data_in;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync6;
  wire flag;
  wire flag2;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_t;
  wire gt0_gttxreset_gt;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxdfelfhold_i;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtrefclk0_in_bufg;
  wire independent_clock_bufg;
  wire n_0_ack_flag_i_1;
  wire \n_0_cpllpd_wait_reg[94]_srl31 ;
  wire \n_0_cpllreset_wait_reg[126]_srl31 ;
  wire n_0_flag_i_1;
  wire n_0_gtxe2_i;
  wire n_10_gtxe2_i;
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
  wire n_27_gtxe2_i;
  wire n_38_gtxe2_i;
  wire n_39_gtxe2_i;
  wire n_3_gtxe2_i;
  wire n_46_gtxe2_i;
  wire n_47_gtxe2_i;
  wire n_48_gtxe2_i;
  wire n_49_gtxe2_i;
  wire n_4_gtxe2_i;
  wire n_50_gtxe2_i;
  wire n_51_gtxe2_i;
  wire n_52_gtxe2_i;
  wire n_53_gtxe2_i;
  wire n_54_gtxe2_i;
  wire n_55_gtxe2_i;
  wire n_56_gtxe2_i;
  wire n_57_gtxe2_i;
  wire n_58_gtxe2_i;
  wire n_59_gtxe2_i;
  wire n_60_gtxe2_i;
  wire n_61_gtxe2_i;
  wire n_81_gtxe2_i;
  wire n_83_gtxe2_i;
  wire n_84_gtxe2_i;
  wire n_9_gtxe2_i;
  wire reset_out;
  wire rxn;
  wire rxoutclk_i;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
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
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_ack_flag_i_1),
        .Q(ack_flag),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync6),
        .Q(ack_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(ack_sync1),
        .Q(ack_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(ack_sync2),
        .Q(ack_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(ack_sync3),
        .Q(ack_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(ack_sync4),
        .Q(ack_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(ack_sync5),
        .Q(ack_sync6),
        .R(1'b0));
(* box_type = "PRIMITIVE" *) 
   BUFG bufg_gtrefclk0_in
       (.I(I1),
        .O(gtrefclk0_in_bufg));
(* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[31]_srl32 " *) 
   SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
     \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk0_in_bufg),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllpd_wait_reg[31]_srl32 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[63]_srl32 " *) 
   SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
     \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk0_in_bufg),
        .D(\n_1_cpllpd_wait_reg[31]_srl32 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllpd_wait_reg[63]_srl32 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[94]_srl31 " *) 
   SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
     \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk0_in_bufg),
        .D(\n_1_cpllpd_wait_reg[63]_srl32 ),
        .Q(\n_0_cpllpd_wait_reg[94]_srl31 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b1)) 
     \cpllpd_wait_reg[95] 
       (.C(gtrefclk0_in_bufg),
        .CE(1'b1),
        .D(\n_0_cpllpd_wait_reg[94]_srl31 ),
        .Q(cpll_pd_i),
        .R(1'b0));
(* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[126]_srl31 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk0_in_bufg),
        .D(\n_1_cpllreset_wait_reg[95]_srl32 ),
        .Q(\n_0_cpllreset_wait_reg[126]_srl31 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \cpllreset_wait_reg[127] 
       (.C(gtrefclk0_in_bufg),
        .CE(1'b1),
        .D(\n_0_cpllreset_wait_reg[126]_srl31 ),
        .Q(cpllreset_ovrd_i),
        .R(1'b0));
(* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[31]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h000000FF)) 
     \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk0_in_bufg),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[31]_srl32 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[63]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk0_in_bufg),
        .D(\n_1_cpllreset_wait_reg[31]_srl32 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[63]_srl32 ));
(* srl_bus_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/pcs_pma_block_i/transceiver_inst/gtwizard_inst/inst/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[95]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk0_in_bufg),
        .D(\n_1_cpllreset_wait_reg[63]_srl32 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[95]_srl32 ));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(gtrefclk0_in_bufg),
        .CE(1'b1),
        .D(flag),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(gtrefclk0_in_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(gtrefclk0_in_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(gtrefclk0_in_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(gtrefclk0_in_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(gtrefclk0_in_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_sync6),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     flag2_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(I6),
        .Q(flag2),
        .R(1'b0));
LUT3 #(
    .INIT(8'hB4)) 
     flag_i_1
       (.I0(ack_flag),
        .I1(gt0_cpllreset_t),
        .I2(flag),
        .O(n_0_flag_i_1));
FDRE #(
    .INIT(1'b0)) 
     flag_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_flag_i_1),
        .Q(flag),
        .R(1'b0));
(* box_type = "PRIMITIVE" *) 
   GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(33),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
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
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF40080020),
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
    .RXOUT_DIV(4),
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
    .RX_CLK25_DIV(5),
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
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(5),
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
        .CPLLLOCK(O1),
        .CPLLLOCKDETCLK(independent_clock_bufg),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(cpll_pd_i),
        .CPLLREFCLKLOST(gt0_cpllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(cpll_reset_i),
        .DMONITOROUT({n_177_gtxe2_i,n_178_gtxe2_i,n_179_gtxe2_i,n_180_gtxe2_i,n_181_gtxe2_i,n_182_gtxe2_i,n_183_gtxe2_i,n_184_gtxe2_i}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(CLK),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({n_46_gtxe2_i,n_47_gtxe2_i,n_48_gtxe2_i,n_49_gtxe2_i,n_50_gtxe2_i,n_51_gtxe2_i,n_52_gtxe2_i,n_53_gtxe2_i,n_54_gtxe2_i,n_55_gtxe2_i,n_56_gtxe2_i,n_57_gtxe2_i,n_58_gtxe2_i,n_59_gtxe2_i,n_60_gtxe2_i,n_61_gtxe2_i}),
        .DRPEN(1'b0),
        .DRPRDY(n_3_gtxe2_i),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(n_4_gtxe2_i),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(I1),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(data_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt0_gttxreset_gt),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_out),
        .QPLLREFCLK(gt0_qplloutrefclk_out),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({RXBUFSTATUS,n_83_gtxe2_i,n_84_gtxe2_i}),
        .RXBYTEISALIGNED(n_9_gtxe2_i),
        .RXBYTEREALIGN(n_10_gtxe2_i),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:2],O5}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:2],O6}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(D),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(n_16_gtxe2_i),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:16],O4}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(gt0_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(gt0_rxdfelfhold_i),
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
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:2],O7}),
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
        .RXMCOMMAALIGNEN(reset_out),
        .RXMONITOROUT({n_170_gtxe2_i,n_171_gtxe2_i,n_172_gtxe2_i,n_173_gtxe2_i,n_174_gtxe2_i,n_175_gtxe2_i,n_176_gtxe2_i}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:2],O8}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk_i),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(reset_out),
        .RXPCSRESET(wtd_rxpcsreset_in),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(n_27_gtxe2_i),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(O2),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt0_rxuserrdy_t),
        .RXUSRCLK(I2),
        .RXUSRCLK2(I2),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,n_81_gtxe2_i}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,I3}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,I4}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,I5}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
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
        .TXELECIDLE(TXPD),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(n_38_gtxe2_i),
        .TXOUTCLKPCS(n_39_gtxe2_i),
        .TXOUTCLKSEL({1'b1,1'b0,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({TXPD,TXPD}),
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
        .TXUSERRDY(gt0_txuserrdy_t),
        .TXUSRCLK(I2),
        .TXUSRCLK2(I2));
LUT3 #(
    .INIT(8'hBE)) 
     gtxe2_i_i_1
       (.I0(cpllreset_ovrd_i),
        .I1(data_sync6),
        .I2(data_sync5),
        .O(cpll_reset_i));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_GTWIZARD_init" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init
   (txn,
    txp,
    rxoutclk_i,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    O1,
    O2,
    O3,
    O4,
    O5,
    reset_done,
    independent_clock_bufg,
    CLK,
    I1,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    wtd_rxpcsreset_in,
    I2,
    TXPD,
    RXPD,
    Q,
    I3,
    I4,
    I5,
    AR,
    data_in,
    data_out,
    I6,
    I7);
  output txn;
  output txp;
  output rxoutclk_i;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output reset_done;
  input independent_clock_bufg;
  input CLK;
  input I1;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input wtd_rxpcsreset_in;
  input I2;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]I3;
  input [1:0]I4;
  input [1:0]I5;
  input [0:0]AR;
  input data_in;
  input data_out;
  input I6;
  input I7;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]D;
  wire I1;
  wire I2;
  wire [1:0]I3;
  wire [1:0]I4;
  wire [1:0]I5;
  wire I6;
  wire I7;
  wire [15:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire [31:1]data0;
  wire data_in;
  wire data_out;
  wire \gt0_GTWIZARD_i/ack_flag ;
  wire gt0_cpllreset_t;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_sync;
  wire gt0_gttxreset_gt;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire [31:0]gt0_rx_cdrlock_counter;
  wire [31:0]gt0_rx_cdrlock_counter_0;
  wire gt0_rxdfelfhold_i;
  wire gt0_rxresetdone_out_i;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire independent_clock_bufg;
  wire \n_0_gt0_rx_cdrlock_counter[12]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[12]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[12]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[12]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[16]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[16]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[16]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[16]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[20]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[20]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[20]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[20]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[24]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[24]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[24]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[24]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[28]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[28]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[28]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[28]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_10 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_11 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_7 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_8 ;
  wire \n_0_gt0_rx_cdrlock_counter[31]_i_9 ;
  wire \n_0_gt0_rx_cdrlock_counter[4]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[4]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[4]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[4]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[8]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[8]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[8]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[8]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_0_gt0_rx_cdrlocked_i_1;
  wire n_0_gt0_rx_cdrlocked_reg;
  wire n_0_gtwizard_i;
  wire \n_1_gt0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_1_gt0_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_1_gt0_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_1_gt0_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_1_gt0_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_1_gt0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_1_gt0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_2_gt0_txresetfsm_i;
  wire \n_3_gt0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_4_gtwizard_i;
  wire n_6_gtwizard_i;
  wire reset_done;
  wire reset_out;
  wire rxn;
  wire rxoutclk_i;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;
  wire [3:2]\NLW_gt0_rx_cdrlock_counter_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt0_rx_cdrlock_counter_reg[31]_i_3_O_UNCONNECTED ;

LUT2 #(
    .INIT(4'h2)) 
     \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[0]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(data0[10]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .O(gt0_rx_cdrlock_counter_0[10]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(data0[11]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .O(gt0_rx_cdrlock_counter_0[11]));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(data0[12]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .O(gt0_rx_cdrlock_counter_0[12]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[12]_i_3 
       (.I0(gt0_rx_cdrlock_counter[12]),
        .O(\n_0_gt0_rx_cdrlock_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[12]_i_4 
       (.I0(gt0_rx_cdrlock_counter[11]),
        .O(\n_0_gt0_rx_cdrlock_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[12]_i_5 
       (.I0(gt0_rx_cdrlock_counter[10]),
        .O(\n_0_gt0_rx_cdrlock_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[12]_i_6 
       (.I0(gt0_rx_cdrlock_counter[9]),
        .O(\n_0_gt0_rx_cdrlock_counter[12]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[13]),
        .O(gt0_rx_cdrlock_counter_0[13]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[14]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[14]),
        .O(gt0_rx_cdrlock_counter_0[14]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[15]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[15]),
        .O(gt0_rx_cdrlock_counter_0[15]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[16]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[16]),
        .O(gt0_rx_cdrlock_counter_0[16]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[16]_i_3 
       (.I0(gt0_rx_cdrlock_counter[16]),
        .O(\n_0_gt0_rx_cdrlock_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[16]_i_4 
       (.I0(gt0_rx_cdrlock_counter[15]),
        .O(\n_0_gt0_rx_cdrlock_counter[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[16]_i_5 
       (.I0(gt0_rx_cdrlock_counter[14]),
        .O(\n_0_gt0_rx_cdrlock_counter[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[16]_i_6 
       (.I0(gt0_rx_cdrlock_counter[13]),
        .O(\n_0_gt0_rx_cdrlock_counter[16]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[17]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[17]),
        .O(gt0_rx_cdrlock_counter_0[17]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[18]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[18]),
        .O(gt0_rx_cdrlock_counter_0[18]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[19]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[19]),
        .O(gt0_rx_cdrlock_counter_0[19]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[1]),
        .O(gt0_rx_cdrlock_counter_0[1]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[20]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[20]),
        .O(gt0_rx_cdrlock_counter_0[20]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[20]_i_3 
       (.I0(gt0_rx_cdrlock_counter[20]),
        .O(\n_0_gt0_rx_cdrlock_counter[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[20]_i_4 
       (.I0(gt0_rx_cdrlock_counter[19]),
        .O(\n_0_gt0_rx_cdrlock_counter[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[20]_i_5 
       (.I0(gt0_rx_cdrlock_counter[18]),
        .O(\n_0_gt0_rx_cdrlock_counter[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[20]_i_6 
       (.I0(gt0_rx_cdrlock_counter[17]),
        .O(\n_0_gt0_rx_cdrlock_counter[20]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[21]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[21]),
        .O(gt0_rx_cdrlock_counter_0[21]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[22]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[22]),
        .O(gt0_rx_cdrlock_counter_0[22]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[23]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[23]),
        .O(gt0_rx_cdrlock_counter_0[23]));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[24]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[24]),
        .O(gt0_rx_cdrlock_counter_0[24]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[24]_i_3 
       (.I0(gt0_rx_cdrlock_counter[24]),
        .O(\n_0_gt0_rx_cdrlock_counter[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[24]_i_4 
       (.I0(gt0_rx_cdrlock_counter[23]),
        .O(\n_0_gt0_rx_cdrlock_counter[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[24]_i_5 
       (.I0(gt0_rx_cdrlock_counter[22]),
        .O(\n_0_gt0_rx_cdrlock_counter[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[24]_i_6 
       (.I0(gt0_rx_cdrlock_counter[21]),
        .O(\n_0_gt0_rx_cdrlock_counter[24]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[25]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[25]),
        .O(gt0_rx_cdrlock_counter_0[25]));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[26]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[26]),
        .O(gt0_rx_cdrlock_counter_0[26]));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[27]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[27]),
        .O(gt0_rx_cdrlock_counter_0[27]));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[28]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[28]),
        .O(gt0_rx_cdrlock_counter_0[28]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[28]_i_3 
       (.I0(gt0_rx_cdrlock_counter[28]),
        .O(\n_0_gt0_rx_cdrlock_counter[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[28]_i_4 
       (.I0(gt0_rx_cdrlock_counter[27]),
        .O(\n_0_gt0_rx_cdrlock_counter[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[28]_i_5 
       (.I0(gt0_rx_cdrlock_counter[26]),
        .O(\n_0_gt0_rx_cdrlock_counter[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[28]_i_6 
       (.I0(gt0_rx_cdrlock_counter[25]),
        .O(\n_0_gt0_rx_cdrlock_counter[28]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[29]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[29]),
        .O(gt0_rx_cdrlock_counter_0[29]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[2]),
        .O(gt0_rx_cdrlock_counter_0[2]));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[30]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[30]),
        .O(gt0_rx_cdrlock_counter_0[30]));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[31]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[31]),
        .O(gt0_rx_cdrlock_counter_0[31]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[31]_i_10 
       (.I0(gt0_rx_cdrlock_counter[30]),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_10 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[31]_i_11 
       (.I0(gt0_rx_cdrlock_counter[29]),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_11 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \gt0_rx_cdrlock_counter[31]_i_2 
       (.I0(\n_0_gt0_rx_cdrlock_counter[31]_i_4 ),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_5 ),
        .I2(\n_0_gt0_rx_cdrlock_counter[31]_i_6 ),
        .I3(gt0_rx_cdrlock_counter[29]),
        .I4(\n_0_gt0_rx_cdrlock_counter[31]_i_7 ),
        .I5(\n_0_gt0_rx_cdrlock_counter[31]_i_8 ),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \gt0_rx_cdrlock_counter[31]_i_4 
       (.I0(gt0_rx_cdrlock_counter[31]),
        .I1(gt0_rx_cdrlock_counter[30]),
        .I2(gt0_rx_cdrlock_counter[27]),
        .I3(gt0_rx_cdrlock_counter[28]),
        .I4(gt0_rx_cdrlock_counter[25]),
        .I5(gt0_rx_cdrlock_counter[26]),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
     \gt0_rx_cdrlock_counter[31]_i_5 
       (.I0(gt0_rx_cdrlock_counter[8]),
        .I1(gt0_rx_cdrlock_counter[7]),
        .I2(gt0_rx_cdrlock_counter[3]),
        .I3(gt0_rx_cdrlock_counter[4]),
        .I4(gt0_rx_cdrlock_counter[1]),
        .I5(gt0_rx_cdrlock_counter[2]),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_5 ));
LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
     \gt0_rx_cdrlock_counter[31]_i_6 
       (.I0(gt0_rx_cdrlock_counter[10]),
        .I1(gt0_rx_cdrlock_counter[9]),
        .I2(gt0_rx_cdrlock_counter[5]),
        .I3(gt0_rx_cdrlock_counter[6]),
        .I4(gt0_rx_cdrlock_counter[11]),
        .I5(gt0_rx_cdrlock_counter[12]),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_6 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \gt0_rx_cdrlock_counter[31]_i_7 
       (.I0(gt0_rx_cdrlock_counter[20]),
        .I1(gt0_rx_cdrlock_counter[19]),
        .I2(gt0_rx_cdrlock_counter[15]),
        .I3(gt0_rx_cdrlock_counter[16]),
        .I4(gt0_rx_cdrlock_counter[13]),
        .I5(gt0_rx_cdrlock_counter[14]),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \gt0_rx_cdrlock_counter[31]_i_8 
       (.I0(gt0_rx_cdrlock_counter[22]),
        .I1(gt0_rx_cdrlock_counter[21]),
        .I2(gt0_rx_cdrlock_counter[17]),
        .I3(gt0_rx_cdrlock_counter[18]),
        .I4(gt0_rx_cdrlock_counter[23]),
        .I5(gt0_rx_cdrlock_counter[24]),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[31]_i_9 
       (.I0(gt0_rx_cdrlock_counter[31]),
        .O(\n_0_gt0_rx_cdrlock_counter[31]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[3]),
        .O(gt0_rx_cdrlock_counter_0[3]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[4]),
        .O(gt0_rx_cdrlock_counter_0[4]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[4]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .O(\n_0_gt0_rx_cdrlock_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[4]_i_4 
       (.I0(gt0_rx_cdrlock_counter[3]),
        .O(\n_0_gt0_rx_cdrlock_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[4]_i_5 
       (.I0(gt0_rx_cdrlock_counter[2]),
        .O(\n_0_gt0_rx_cdrlock_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[4]_i_6 
       (.I0(gt0_rx_cdrlock_counter[1]),
        .O(\n_0_gt0_rx_cdrlock_counter[4]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[5]),
        .O(gt0_rx_cdrlock_counter_0[5]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(data0[6]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .O(gt0_rx_cdrlock_counter_0[6]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(gt0_rx_cdrlock_counter[0]),
        .I1(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .I2(data0[7]),
        .O(gt0_rx_cdrlock_counter_0[7]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(data0[8]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .O(gt0_rx_cdrlock_counter_0[8]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[8]_i_3 
       (.I0(gt0_rx_cdrlock_counter[8]),
        .O(\n_0_gt0_rx_cdrlock_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[8]_i_4 
       (.I0(gt0_rx_cdrlock_counter[7]),
        .O(\n_0_gt0_rx_cdrlock_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[8]_i_5 
       (.I0(gt0_rx_cdrlock_counter[6]),
        .O(\n_0_gt0_rx_cdrlock_counter[8]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[8]_i_6 
       (.I0(gt0_rx_cdrlock_counter[5]),
        .O(\n_0_gt0_rx_cdrlock_counter[8]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(data0[9]),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .O(gt0_rx_cdrlock_counter_0[9]));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[0]),
        .Q(gt0_rx_cdrlock_counter[0]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[10]),
        .Q(gt0_rx_cdrlock_counter[10]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[11]),
        .Q(gt0_rx_cdrlock_counter[11]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[12]),
        .Q(gt0_rx_cdrlock_counter[12]),
        .R(gt0_gtrxreset_gt_sync));
CARRY4 \gt0_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[8]_i_2 ),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[12]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[12]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[12]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\n_0_gt0_rx_cdrlock_counter[12]_i_3 ,\n_0_gt0_rx_cdrlock_counter[12]_i_4 ,\n_0_gt0_rx_cdrlock_counter[12]_i_5 ,\n_0_gt0_rx_cdrlock_counter[12]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[13]),
        .Q(gt0_rx_cdrlock_counter[13]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[14]),
        .Q(gt0_rx_cdrlock_counter[14]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[15]),
        .Q(gt0_rx_cdrlock_counter[15]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[16]),
        .Q(gt0_rx_cdrlock_counter[16]),
        .R(gt0_gtrxreset_gt_sync));
CARRY4 \gt0_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[12]_i_2 ),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[16]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[16]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[16]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[16]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\n_0_gt0_rx_cdrlock_counter[16]_i_3 ,\n_0_gt0_rx_cdrlock_counter[16]_i_4 ,\n_0_gt0_rx_cdrlock_counter[16]_i_5 ,\n_0_gt0_rx_cdrlock_counter[16]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[17]),
        .Q(gt0_rx_cdrlock_counter[17]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[18]),
        .Q(gt0_rx_cdrlock_counter[18]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[19] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[19]),
        .Q(gt0_rx_cdrlock_counter[19]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[1]),
        .Q(gt0_rx_cdrlock_counter[1]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[20] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[20]),
        .Q(gt0_rx_cdrlock_counter[20]),
        .R(gt0_gtrxreset_gt_sync));
CARRY4 \gt0_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[16]_i_2 ),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[20]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[20]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[20]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[20]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\n_0_gt0_rx_cdrlock_counter[20]_i_3 ,\n_0_gt0_rx_cdrlock_counter[20]_i_4 ,\n_0_gt0_rx_cdrlock_counter[20]_i_5 ,\n_0_gt0_rx_cdrlock_counter[20]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[21] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[21]),
        .Q(gt0_rx_cdrlock_counter[21]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[22] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[22]),
        .Q(gt0_rx_cdrlock_counter[22]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[23] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[23]),
        .Q(gt0_rx_cdrlock_counter[23]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[24] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[24]),
        .Q(gt0_rx_cdrlock_counter[24]),
        .R(gt0_gtrxreset_gt_sync));
CARRY4 \gt0_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[20]_i_2 ),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[24]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[24]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[24]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[24]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\n_0_gt0_rx_cdrlock_counter[24]_i_3 ,\n_0_gt0_rx_cdrlock_counter[24]_i_4 ,\n_0_gt0_rx_cdrlock_counter[24]_i_5 ,\n_0_gt0_rx_cdrlock_counter[24]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[25] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[25]),
        .Q(gt0_rx_cdrlock_counter[25]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[26] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[26]),
        .Q(gt0_rx_cdrlock_counter[26]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[27] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[27]),
        .Q(gt0_rx_cdrlock_counter[27]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[28] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[28]),
        .Q(gt0_rx_cdrlock_counter[28]),
        .R(gt0_gtrxreset_gt_sync));
CARRY4 \gt0_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[24]_i_2 ),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[28]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[28]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[28]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[28]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\n_0_gt0_rx_cdrlock_counter[28]_i_3 ,\n_0_gt0_rx_cdrlock_counter[28]_i_4 ,\n_0_gt0_rx_cdrlock_counter[28]_i_5 ,\n_0_gt0_rx_cdrlock_counter[28]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[29] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[29]),
        .Q(gt0_rx_cdrlock_counter[29]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[2]),
        .Q(gt0_rx_cdrlock_counter[2]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[30] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[30]),
        .Q(gt0_rx_cdrlock_counter[30]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[31] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[31]),
        .Q(gt0_rx_cdrlock_counter[31]),
        .R(gt0_gtrxreset_gt_sync));
CARRY4 \gt0_rx_cdrlock_counter_reg[31]_i_3 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[28]_i_2 ),
        .CO({\NLW_gt0_rx_cdrlock_counter_reg[31]_i_3_CO_UNCONNECTED [3:2],\n_2_gt0_rx_cdrlock_counter_reg[31]_i_3 ,\n_3_gt0_rx_cdrlock_counter_reg[31]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt0_rx_cdrlock_counter_reg[31]_i_3_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\n_0_gt0_rx_cdrlock_counter[31]_i_9 ,\n_0_gt0_rx_cdrlock_counter[31]_i_10 ,\n_0_gt0_rx_cdrlock_counter[31]_i_11 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[3]),
        .Q(gt0_rx_cdrlock_counter[3]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[4]),
        .Q(gt0_rx_cdrlock_counter[4]),
        .R(gt0_gtrxreset_gt_sync));
CARRY4 \gt0_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[4]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[4]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[4]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[4]_i_2 }),
        .CYINIT(gt0_rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\n_0_gt0_rx_cdrlock_counter[4]_i_3 ,\n_0_gt0_rx_cdrlock_counter[4]_i_4 ,\n_0_gt0_rx_cdrlock_counter[4]_i_5 ,\n_0_gt0_rx_cdrlock_counter[4]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[5]),
        .Q(gt0_rx_cdrlock_counter[5]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[6]),
        .Q(gt0_rx_cdrlock_counter[6]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[7]),
        .Q(gt0_rx_cdrlock_counter[7]),
        .R(gt0_gtrxreset_gt_sync));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[8]),
        .Q(gt0_rx_cdrlock_counter[8]),
        .R(gt0_gtrxreset_gt_sync));
CARRY4 \gt0_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[4]_i_2 ),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[8]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[8]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[8]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[8]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\n_0_gt0_rx_cdrlock_counter[8]_i_3 ,\n_0_gt0_rx_cdrlock_counter[8]_i_4 ,\n_0_gt0_rx_cdrlock_counter[8]_i_5 ,\n_0_gt0_rx_cdrlock_counter[8]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[9]),
        .Q(gt0_rx_cdrlock_counter[9]),
        .R(gt0_gtrxreset_gt_sync));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     gt0_rx_cdrlocked_i_1
       (.I0(n_0_gt0_rx_cdrlocked_reg),
        .I1(gt0_rx_cdrlock_counter[0]),
        .I2(\n_0_gt0_rx_cdrlock_counter[31]_i_2 ),
        .O(n_0_gt0_rx_cdrlocked_i_1));
FDRE gt0_rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_gt0_rx_cdrlocked_i_1),
        .Q(n_0_gt0_rx_cdrlocked_reg),
        .R(gt0_gtrxreset_gt_sync));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM gt0_rxresetfsm_i
       (.AR(AR),
        .I1(n_4_gtwizard_i),
        .I2(I2),
        .I3(data_in),
        .I4(n_0_gtwizard_i),
        .I5(n_0_gt0_rx_cdrlocked_reg),
        .I6(I6),
        .data_in(gt0_gtrxreset_gt),
        .data_out(data_out),
        .gt0_rxdfelfhold_i(gt0_rxdfelfhold_i),
        .gt0_rxresetdone_out_i(gt0_rxresetdone_out_i),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .independent_clock_bufg(independent_clock_bufg));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM gt0_txresetfsm_i
       (.AR(AR),
        .I1(data_in),
        .I2(I2),
        .I3(n_0_gtwizard_i),
        .I7(I7),
        .O1(n_2_gt0_txresetfsm_i),
        .ack_flag(\gt0_GTWIZARD_i/ack_flag ),
        .data_in(n_6_gtwizard_i),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_rxresetdone_out_i(gt0_rxresetdone_out_i),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_done(reset_done));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt gtwizard_i
       (.CLK(CLK),
        .D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(n_2_gt0_txresetfsm_i),
        .O1(n_0_gtwizard_i),
        .O2(n_4_gtwizard_i),
        .O3(n_6_gtwizard_i),
        .O4(O1),
        .O5(O2),
        .O6(O3),
        .O7(O4),
        .O8(O5),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .ack_flag(\gt0_GTWIZARD_i/ack_flag ),
        .data_in(gt0_gtrxreset_gt),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxdfelfhold_i(gt0_rxdfelfhold_i),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk_i(rxoutclk_i),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3 sync_block_gtrxreset
       (.data_in(gt0_gtrxreset_gt),
        .data_out(gt0_gtrxreset_gt_sync),
        .independent_clock_bufg(independent_clock_bufg));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt
   (O1,
    txn,
    txp,
    rxoutclk_i,
    O2,
    txoutclk,
    O3,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    O4,
    O5,
    O6,
    O7,
    O8,
    ack_flag,
    independent_clock_bufg,
    CLK,
    I1,
    data_in,
    gt0_gttxreset_gt,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gt0_rxdfelfhold_i,
    reset_out,
    wtd_rxpcsreset_in,
    gt0_rxuserrdy_t,
    I2,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    I3,
    I4,
    I5,
    I6,
    gt0_cpllreset_t);
  output O1;
  output txn;
  output txp;
  output rxoutclk_i;
  output O2;
  output txoutclk;
  output O3;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  output [1:0]O7;
  output [1:0]O8;
  output ack_flag;
  input independent_clock_bufg;
  input CLK;
  input I1;
  input data_in;
  input gt0_gttxreset_gt;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gt0_rxdfelfhold_i;
  input reset_out;
  input wtd_rxpcsreset_in;
  input gt0_rxuserrdy_t;
  input I2;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]I3;
  input [1:0]I4;
  input [1:0]I5;
  input I6;
  input gt0_cpllreset_t;

  wire CLK;
  wire [1:0]D;
  wire I1;
  wire I2;
  wire [1:0]I3;
  wire [1:0]I4;
  wire [1:0]I5;
  wire I6;
  wire O1;
  wire O2;
  wire O3;
  wire [15:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire ack_flag;
  wire data_in;
  wire gt0_cpllreset_t;
  wire gt0_gttxreset_gt;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxdfelfhold_i;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire independent_clock_bufg;
  wire reset_out;
  wire rxn;
  wire rxoutclk_i;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire wtd_rxpcsreset_in;

gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT gt0_GTWIZARD_i
       (.CLK(CLK),
        .D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .ack_flag(ack_flag),
        .data_in(data_in),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gt0_gttxreset_gt(gt0_gttxreset_gt),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxdfelfhold_i(gt0_rxdfelfhold_i),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk_i(rxoutclk_i),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_RX_STARTUP_FSM" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
   (gt0_rxresetdone_out_i,
    gt0_rxuserrdy_t,
    gt0_rxdfelfhold_i,
    data_in,
    independent_clock_bufg,
    I2,
    AR,
    I6,
    I1,
    I3,
    data_out,
    I4,
    I5);
  output gt0_rxresetdone_out_i;
  output gt0_rxuserrdy_t;
  output gt0_rxdfelfhold_i;
  output data_in;
  input independent_clock_bufg;
  input I2;
  input [0:0]AR;
  input I6;
  input I1;
  input I3;
  input data_out;
  input I4;
  input I5;

  wire [0:0]AR;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire [31:0]adapt_count_reg;
  wire cplllock_sync;
  wire data_in;
  wire data_out;
  wire gt0_gtrxreset_t;
  wire gt0_rxdfelfhold_i;
  wire gt0_rxresetdone_out_i;
  wire gt0_rxuserrdy_t;
  wire independent_clock_bufg;
  wire [7:0]init_wait_count_reg__0;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_rx_state[0]_i_2 ;
  wire \n_0_FSM_sequential_rx_state[2]_i_1 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_11 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_13 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_14 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_15 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_4 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_5 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_6 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_8 ;
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
  wire \n_0_init_wait_count[0]_i_1__0 ;
  wire \n_0_init_wait_count[7]_i_1__0 ;
  wire \n_0_init_wait_count[7]_i_3__0 ;
  wire \n_0_init_wait_count[7]_i_4__0 ;
  wire n_0_init_wait_done_i_1;
  wire n_0_init_wait_done_reg;
  wire \n_0_mmcm_lock_count[7]_i_1__0 ;
  wire \n_0_mmcm_lock_count[8]_i_2__0 ;
  wire \n_0_mmcm_lock_count[9]_i_2__0 ;
  wire \n_0_mmcm_lock_count[9]_i_3__0 ;
  wire \n_0_mmcm_lock_count[9]_i_4__0 ;
  wire n_0_reset_time_out_i_3__0;
  wire n_0_reset_time_out_i_4;
  wire n_0_reset_time_out_i_5;
  wire n_0_reset_time_out_reg;
  wire n_0_run_phase_alignment_int_i_1__0;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_run_phase_alignment_int_s3_reg;
  wire n_0_rx_fsm_reset_done_int_i_2;
  wire n_0_sync_cplllock;
  wire n_0_sync_data_valid;
  wire n_0_sync_mmcm_lock_reclocked;
  wire n_0_time_out_100us_i_1;
  wire n_0_time_out_100us_i_2;
  wire n_0_time_out_100us_i_3;
  wire n_0_time_out_100us_reg;
  wire n_0_time_out_1us_i_1;
  wire n_0_time_out_1us_i_2;
  wire n_0_time_out_1us_i_3;
  wire n_0_time_out_1us_reg;
  wire n_0_time_out_2ms_i_1;
  wire n_0_time_out_2ms_i_2;
  wire n_0_time_out_2ms_reg;
  wire n_0_time_out_adapt_i_1;
  wire n_0_time_out_adapt_reg;
  wire \n_0_time_out_counter[0]_i_1 ;
  wire \n_0_time_out_counter[0]_i_10 ;
  wire \n_0_time_out_counter[0]_i_3 ;
  wire \n_0_time_out_counter[0]_i_4__0 ;
  wire \n_0_time_out_counter[0]_i_5 ;
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
  wire \n_0_time_out_counter[16]_i_4__0 ;
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
  wire n_0_time_out_wait_bypass_i_1__0;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1;
  wire n_0_time_tlock_max_i_2;
  wire n_0_time_tlock_max_i_3;
  wire n_0_time_tlock_max_i_4;
  wire \n_0_wait_bypass_count[0]_i_1__0 ;
  wire \n_0_wait_bypass_count[0]_i_2__0 ;
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
  wire \n_1_adapt_count_reg[0]_i_2 ;
  wire \n_1_adapt_count_reg[12]_i_1 ;
  wire \n_1_adapt_count_reg[16]_i_1 ;
  wire \n_1_adapt_count_reg[20]_i_1 ;
  wire \n_1_adapt_count_reg[24]_i_1 ;
  wire \n_1_adapt_count_reg[28]_i_1 ;
  wire \n_1_adapt_count_reg[4]_i_1 ;
  wire \n_1_adapt_count_reg[8]_i_1 ;
  wire n_1_sync_data_valid;
  wire n_1_sync_mmcm_lock_reclocked;
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
  wire \n_2_adapt_count_reg[0]_i_2 ;
  wire \n_2_adapt_count_reg[12]_i_1 ;
  wire \n_2_adapt_count_reg[16]_i_1 ;
  wire \n_2_adapt_count_reg[20]_i_1 ;
  wire \n_2_adapt_count_reg[24]_i_1 ;
  wire \n_2_adapt_count_reg[28]_i_1 ;
  wire \n_2_adapt_count_reg[4]_i_1 ;
  wire \n_2_adapt_count_reg[8]_i_1 ;
  wire n_2_sync_cplllock;
  wire n_2_sync_data_valid;
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
  wire n_3_sync_data_valid;
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
  wire n_4_sync_data_valid;
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
  wire n_5_sync_data_valid;
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
  wire [7:1]p_0_in__3;
  wire [8:0]p_0_in__4;
  wire recclk_mon_count_reset;
  wire run_phase_alignment_int_s2;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
(* RTL_KEEP = "yes" *)   wire [3:0]rx_state;
  wire rx_state16_out;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire time_out_adapt;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire [12:0]wait_bypass_count_reg;
  wire [15:0]wait_time_cnt_reg;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

LUT6 #(
    .INIT(64'h30BF30B0FFFFFFFF)) 
     \FSM_sequential_rx_state[0]_i_2 
       (.I0(n_0_time_out_2ms_reg),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(n_0_reset_time_out_reg),
        .I4(time_tlock_max),
        .I5(rx_state[0]),
        .O(\n_0_FSM_sequential_rx_state[0]_i_2 ));
LUT6 #(
    .INIT(64'h00000F5F00003000)) 
     \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state16_out),
        .I1(n_0_time_out_2ms_reg),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .I5(rx_state[2]),
        .O(\n_0_FSM_sequential_rx_state[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_rx_state[2]_i_2 
       (.I0(time_tlock_max),
        .I1(n_0_reset_time_out_reg),
        .O(rx_state16_out));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_rx_state[3]_i_11 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_11 ));
LUT5 #(
    .INIT(32'h0DFFFFFF)) 
     \FSM_sequential_rx_state[3]_i_13 
       (.I0(n_0_time_out_2ms_reg),
        .I1(n_0_reset_time_out_reg),
        .I2(rxresetdone_s3),
        .I3(rx_state[1]),
        .I4(rx_state[2]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_13 ));
LUT4 #(
    .INIT(16'h00F2)) 
     \FSM_sequential_rx_state[3]_i_14 
       (.I0(time_tlock_max),
        .I1(n_0_reset_time_out_reg),
        .I2(mmcm_lock_reclocked),
        .I3(rx_state[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_14 ));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_rx_state[3]_i_15 
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_15 ));
LUT5 #(
    .INIT(32'h00020000)) 
     \FSM_sequential_rx_state[3]_i_4 
       (.I0(\n_0_wait_time_cnt[0]_i_5__0 ),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[1]),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_4 ));
LUT3 #(
    .INIT(8'hFE)) 
     \FSM_sequential_rx_state[3]_i_5 
       (.I0(wait_time_cnt_reg[9]),
        .I1(wait_time_cnt_reg[10]),
        .I2(\n_0_wait_time_cnt[0]_i_4__0 ),
        .O(\n_0_FSM_sequential_rx_state[3]_i_5 ));
LUT3 #(
    .INIT(8'hEF)) 
     \FSM_sequential_rx_state[3]_i_6 
       (.I0(rx_state[1]),
        .I1(rx_state[2]),
        .I2(n_0_init_wait_done_reg),
        .O(\n_0_FSM_sequential_rx_state[3]_i_6 ));
LUT6 #(
    .INIT(64'hB00FB00F0000000F)) 
     \FSM_sequential_rx_state[3]_i_8 
       (.I0(n_0_reset_time_out_reg),
        .I1(n_0_time_out_2ms_reg),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(time_out_wait_bypass_s3),
        .I5(rx_state[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_8 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(n_2_sync_cplllock),
        .D(n_5_sync_data_valid),
        .Q(rx_state[0]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(n_2_sync_cplllock),
        .D(n_4_sync_data_valid),
        .Q(rx_state[1]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(n_2_sync_cplllock),
        .D(\n_0_FSM_sequential_rx_state[2]_i_1 ),
        .Q(rx_state[2]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(n_2_sync_cplllock),
        .D(n_3_sync_data_valid),
        .Q(rx_state[3]),
        .R(AR));
LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
     RXDFEAGCHOLD_i_1
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(n_0_time_out_adapt_reg),
        .I5(gt0_rxdfelfhold_i),
        .O(n_0_RXDFEAGCHOLD_i_1));
FDRE #(
    .INIT(1'b0)) 
     RXDFEAGCHOLD_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_RXDFEAGCHOLD_i_1),
        .Q(gt0_rxdfelfhold_i),
        .R(AR));
LUT5 #(
    .INIT(32'hFFFB4000)) 
     RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(gt0_rxuserrdy_t),
        .O(n_0_RXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_RXUSERRDY_i_1),
        .Q(gt0_rxuserrdy_t),
        .R(AR));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_count[0]_i_1 
       (.I0(time_out_adapt),
        .O(\n_0_adapt_count[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000000080000000)) 
     \adapt_count[0]_i_10 
       (.I0(adapt_count_reg[0]),
        .I1(adapt_count_reg[20]),
        .I2(adapt_count_reg[17]),
        .I3(adapt_count_reg[6]),
        .I4(adapt_count_reg[1]),
        .I5(adapt_count_reg[25]),
        .O(\n_0_adapt_count[0]_i_10 ));
LUT6 #(
    .INIT(64'h0000000000008000)) 
     \adapt_count[0]_i_11 
       (.I0(adapt_count_reg[22]),
        .I1(adapt_count_reg[3]),
        .I2(adapt_count_reg[12]),
        .I3(adapt_count_reg[5]),
        .I4(adapt_count_reg[9]),
        .I5(adapt_count_reg[31]),
        .O(\n_0_adapt_count[0]_i_11 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \adapt_count[0]_i_12 
       (.I0(adapt_count_reg[29]),
        .I1(adapt_count_reg[27]),
        .I2(adapt_count_reg[14]),
        .I3(adapt_count_reg[11]),
        .I4(adapt_count_reg[21]),
        .I5(adapt_count_reg[8]),
        .O(\n_0_adapt_count[0]_i_12 ));
LUT6 #(
    .INIT(64'h0000000000000008)) 
     \adapt_count[0]_i_13 
       (.I0(adapt_count_reg[4]),
        .I1(adapt_count_reg[7]),
        .I2(adapt_count_reg[24]),
        .I3(adapt_count_reg[16]),
        .I4(adapt_count_reg[15]),
        .I5(adapt_count_reg[13]),
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
    .INIT(64'h0000000000000080)) 
     \adapt_count[0]_i_8 
       (.I0(adapt_count_reg[2]),
        .I1(adapt_count_reg[10]),
        .I2(adapt_count_reg[19]),
        .I3(adapt_count_reg[30]),
        .I4(adapt_count_reg[23]),
        .I5(adapt_count_reg[28]),
        .O(\n_0_adapt_count[0]_i_8 ));
LUT2 #(
    .INIT(4'h1)) 
     \adapt_count[0]_i_9 
       (.I0(adapt_count_reg[18]),
        .I1(adapt_count_reg[26]),
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
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[10]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[11]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[12] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[13]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[14]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[15]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[16] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[17]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[18]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[19]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[1]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[20] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[21]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[22] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[22]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[23] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[23]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[24] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[25]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[26] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[26]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[27] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[27]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[28] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[29]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[2]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[30] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[30]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[31] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[31]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[3]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[4] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[5]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[6]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[7]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[8] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[9]),
        .R(recclk_mon_count_reset));
FDSE #(
    .INIT(1'b0)) 
     adapt_count_reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_cplllock),
        .Q(recclk_mon_count_reset),
        .S(AR));
LUT5 #(
    .INIT(32'hFFFB0008)) 
     check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(n_0_check_tlock_max_reg),
        .O(n_0_check_tlock_max_i_1));
FDRE #(
    .INIT(1'b0)) 
     check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_check_tlock_max_i_1),
        .Q(n_0_check_tlock_max_reg),
        .R(AR));
LUT5 #(
    .INIT(32'hFFFB0002)) 
     gtrxreset_i_i_1
       (.I0(rx_state[0]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(gt0_gtrxreset_t),
        .O(n_0_gtrxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_gtrxreset_i_i_1),
        .Q(gt0_gtrxreset_t),
        .R(AR));
LUT3 #(
    .INIT(8'hEA)) 
     gtxe2_i_i_2
       (.I0(gt0_gtrxreset_t),
        .I1(gt0_rxresetdone_out_i),
        .I2(I6),
        .O(data_in));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[0]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .O(p_0_in__3[1]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .O(p_0_in__3[2]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in__3[3]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in__3[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[0]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in__3[5]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\n_0_init_wait_count[7]_i_4__0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in__3[6]));
LUT3 #(
    .INIT(8'hF7)) 
     \init_wait_count[7]_i_1__0 
       (.I0(\n_0_init_wait_count[7]_i_3__0 ),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[7]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\n_0_init_wait_count[7]_i_4__0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in__3[7]));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[4]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[5]),
        .I4(init_wait_count_reg__0[3]),
        .I5(init_wait_count_reg__0[6]),
        .O(\n_0_init_wait_count[7]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[7]_i_4__0 ));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(\n_0_init_wait_count[0]_i_1__0 ),
        .Q(init_wait_count_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__3[1]),
        .Q(init_wait_count_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__3[2]),
        .Q(init_wait_count_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__3[3]),
        .Q(init_wait_count_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__3[4]),
        .Q(init_wait_count_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__3[5]),
        .Q(init_wait_count_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__3[6]),
        .Q(init_wait_count_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__3[7]),
        .Q(init_wait_count_reg__0[7]));
LUT4 #(
    .INIT(16'hFF08)) 
     init_wait_done_i_1
       (.I0(\n_0_init_wait_count[7]_i_3__0 ),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(n_0_init_wait_done_reg),
        .O(n_0_init_wait_done_i_1));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(AR),
        .D(n_0_init_wait_done_i_1),
        .Q(n_0_init_wait_done_reg));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__4[0]));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__4[1]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__4[2]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__4[3]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__4[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__4[5]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\n_0_mmcm_lock_count[8]_i_2__0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__4[6]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\n_0_mmcm_lock_count[8]_i_2__0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(\n_0_mmcm_lock_count[7]_i_1__0 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(mmcm_lock_count_reg__0[4]),
        .I3(\n_0_mmcm_lock_count[8]_i_2__0 ),
        .I4(mmcm_lock_count_reg__0[5]),
        .I5(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__4[8]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \mmcm_lock_count[8]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\n_0_mmcm_lock_count[8]_i_2__0 ));
LUT4 #(
    .INIT(16'hBFFF)) 
     \mmcm_lock_count[9]_i_2__0 
       (.I0(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I1(mmcm_lock_count_reg__0[8]),
        .I2(mmcm_lock_count_reg__0[7]),
        .I3(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2__0 ));
LUT4 #(
    .INIT(16'hAA6A)) 
     \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[8]),
        .I3(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .O(\n_0_mmcm_lock_count[9]_i_3__0 ));
LUT4 #(
    .INIT(16'h7FFF)) 
     \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\n_0_mmcm_lock_count[8]_i_2__0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(\n_0_mmcm_lock_count[9]_i_4__0 ));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__4[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__4[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__4[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__4[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__4[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__4[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__4[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(\n_0_mmcm_lock_count[7]_i_1__0 ),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__4[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(\n_0_mmcm_lock_count[9]_i_3__0 ),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_mmcm_lock_reclocked),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
LUT4 #(
    .INIT(16'h0080)) 
     reset_time_out_i_3__0
       (.I0(rxresetdone_s3),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .O(n_0_reset_time_out_i_3__0));
LUT5 #(
    .INIT(32'h000000E2)) 
     reset_time_out_i_4
       (.I0(I5),
        .I1(rx_state[0]),
        .I2(mmcm_lock_reclocked),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .O(n_0_reset_time_out_i_4));
LUT5 #(
    .INIT(32'h0F303F38)) 
     reset_time_out_i_5
       (.I0(I5),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .O(n_0_reset_time_out_i_5));
FDSE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_data_valid),
        .Q(n_0_reset_time_out_reg),
        .S(AR));
LUT5 #(
    .INIT(32'hFFFD0004)) 
     run_phase_alignment_int_i_1__0
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(n_0_run_phase_alignment_int_reg),
        .O(n_0_run_phase_alignment_int_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_run_phase_alignment_int_i_1__0),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(AR));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_s3_reg
       (.C(I2),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(n_0_run_phase_alignment_int_s3_reg),
        .R(1'b0));
LUT2 #(
    .INIT(4'h1)) 
     rx_fsm_reset_done_int_i_2
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .O(n_0_rx_fsm_reset_done_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_1_sync_data_valid),
        .Q(gt0_rxresetdone_out_i),
        .R(AR));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_s3_reg
       (.C(I2),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10 sync_RXRESETDONE
       (.I1(I1),
        .data_out(rxresetdone_s2),
        .independent_clock_bufg(independent_clock_bufg));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 sync_cplllock
       (.E(n_2_sync_cplllock),
        .I1(\n_0_FSM_sequential_rx_state[3]_i_4 ),
        .I2(\n_0_FSM_sequential_rx_state[3]_i_5 ),
        .I3(\n_0_FSM_sequential_rx_state[3]_i_6 ),
        .I4(n_2_sync_data_valid),
        .I5(I5),
        .I6(n_0_time_out_2ms_reg),
        .I7(I4),
        .O1(n_0_sync_cplllock),
        .data_out(cplllock_sync),
        .independent_clock_bufg(independent_clock_bufg),
        .out(rx_state),
        .recclk_mon_count_reset(recclk_mon_count_reset));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12 sync_data_valid
       (.D({n_3_sync_data_valid,n_4_sync_data_valid,n_5_sync_data_valid}),
        .I1(n_0_reset_time_out_i_3__0),
        .I10(\n_0_FSM_sequential_rx_state[3]_i_14 ),
        .I11(\n_0_FSM_sequential_rx_state[3]_i_15 ),
        .I12(\n_0_FSM_sequential_rx_state[3]_i_8 ),
        .I13(n_0_time_out_2ms_reg),
        .I14(\n_0_FSM_sequential_rx_state[0]_i_2 ),
        .I2(n_0_reset_time_out_i_4),
        .I3(n_0_reset_time_out_i_5),
        .I4(n_0_reset_time_out_reg),
        .I5(n_0_time_out_1us_reg),
        .I6(n_0_rx_fsm_reset_done_int_i_2),
        .I7(n_0_time_out_100us_reg),
        .I8(\n_0_FSM_sequential_rx_state[3]_i_11 ),
        .I9(\n_0_FSM_sequential_rx_state[3]_i_13 ),
        .O1(n_0_sync_data_valid),
        .O2(n_1_sync_data_valid),
        .O3(n_2_sync_data_valid),
        .cplllock_sync(cplllock_sync),
        .data_in(gt0_rxresetdone_out_i),
        .data_out(data_out),
        .independent_clock_bufg(independent_clock_bufg),
        .out(rx_state),
        .rx_state16_out(rx_state16_out));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13 sync_mmcm_lock_reclocked
       (.I1(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(I3),
        .O1(n_0_sync_mmcm_lock_reclocked),
        .Q(mmcm_lock_count_reg__0[9:7]),
        .SR(n_1_sync_mmcm_lock_reclocked),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14 sync_run_phase_alignment_int
       (.I2(I2),
        .data_in(n_0_run_phase_alignment_int_reg),
        .data_out(run_phase_alignment_int_s2));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15 sync_rx_fsm_reset_done_int
       (.I2(I2),
        .data_in(gt0_rxresetdone_out_i),
        .data_out(rx_fsm_reset_done_int_s2));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16 sync_time_out_wait_bypass
       (.data_in(n_0_time_out_wait_bypass_reg),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
     time_out_100us_i_1
       (.I0(n_0_time_out_100us_i_2),
        .I1(n_0_time_out_100us_i_3),
        .I2(n_0_time_tlock_max_i_3),
        .I3(time_out_counter_reg[3]),
        .I4(\n_0_time_out_counter[0]_i_5 ),
        .I5(n_0_time_out_100us_reg),
        .O(n_0_time_out_100us_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
     time_out_100us_i_2
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[6]),
        .O(n_0_time_out_100us_i_2));
LUT4 #(
    .INIT(16'hFFFE)) 
     time_out_100us_i_3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[7]),
        .O(n_0_time_out_100us_i_3));
FDRE #(
    .INIT(1'b0)) 
     time_out_100us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_100us_i_1),
        .Q(n_0_time_out_100us_reg),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
     time_out_1us_i_1
       (.I0(n_0_time_out_1us_i_2),
        .I1(\n_0_time_out_counter[0]_i_5 ),
        .I2(time_out_counter_reg[8]),
        .I3(n_0_time_out_1us_i_3),
        .I4(n_0_time_tlock_max_i_3),
        .I5(n_0_time_out_1us_reg),
        .O(n_0_time_out_1us_i_1));
LUT6 #(
    .INIT(64'h0000000000040000)) 
     time_out_1us_i_2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[3]),
        .I5(time_out_counter_reg[9]),
        .O(n_0_time_out_1us_i_2));
LUT4 #(
    .INIT(16'h0002)) 
     time_out_1us_i_3
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[14]),
        .O(n_0_time_out_1us_i_3));
FDRE #(
    .INIT(1'b0)) 
     time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_1us_i_1),
        .Q(n_0_time_out_1us_reg),
        .R(n_0_reset_time_out_reg));
LUT5 #(
    .INIT(32'hFFFF0100)) 
     time_out_2ms_i_1
       (.I0(\n_0_time_out_counter[0]_i_4__0 ),
        .I1(n_0_time_out_2ms_i_2),
        .I2(\n_0_time_out_counter[0]_i_5 ),
        .I3(\n_0_time_out_counter[0]_i_3 ),
        .I4(n_0_time_out_2ms_reg),
        .O(n_0_time_out_2ms_i_1));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hBF)) 
     time_out_2ms_i_2
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[12]),
        .O(n_0_time_out_2ms_i_2));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_adapt_i_1),
        .Q(n_0_time_out_adapt_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
     \time_out_counter[0]_i_1 
       (.I0(\n_0_time_out_counter[0]_i_3 ),
        .I1(\n_0_time_out_counter[0]_i_4__0 ),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[15]),
        .I5(\n_0_time_out_counter[0]_i_5 ),
        .O(\n_0_time_out_counter[0]_i_1 ));
LUT4 #(
    .INIT(16'hFF7F)) 
     \time_out_counter[0]_i_10 
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[0]_i_10 ));
LUT5 #(
    .INIT(32'h00000004)) 
     \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[6]),
        .I4(\n_0_time_out_counter[0]_i_10 ),
        .O(\n_0_time_out_counter[0]_i_3 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[0]_i_4__0 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_8__0 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_8__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_9__0 
       (.I0(time_out_counter_reg[0]),
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
     \time_out_counter[16]_i_4__0 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_4__0 ));
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
       (.C(independent_clock_bufg),
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
        .S({\n_0_time_out_counter[0]_i_6__0 ,\n_0_time_out_counter[0]_i_7__0 ,\n_0_time_out_counter[0]_i_8__0 ,\n_0_time_out_counter[0]_i_9__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[10]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[11]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[13]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[14]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[15]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
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
        .S({1'b0,\n_0_time_out_counter[16]_i_2__0 ,\n_0_time_out_counter[16]_i_3__0 ,\n_0_time_out_counter[16]_i_4__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[17]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[18]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[1]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[2]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[3]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[5]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[6]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[7]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[9]),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFF00FF0100000000)) 
     time_out_wait_bypass_i_1__0
       (.I0(\n_0_wait_bypass_count[0]_i_4__0 ),
        .I1(wait_bypass_count_reg[3]),
        .I2(\n_0_wait_bypass_count[0]_i_5__0 ),
        .I3(n_0_time_out_wait_bypass_reg),
        .I4(rx_fsm_reset_done_int_s3),
        .I5(n_0_run_phase_alignment_int_s3_reg),
        .O(n_0_time_out_wait_bypass_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(I2),
        .CE(1'b1),
        .D(n_0_time_out_wait_bypass_i_1__0),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT4 #(
    .INIT(16'hFFD0)) 
     time_tlock_max_i_1
       (.I0(n_0_time_tlock_max_i_2),
        .I1(n_0_time_tlock_max_i_3),
        .I2(n_0_check_tlock_max_reg),
        .I3(time_tlock_max),
        .O(n_0_time_tlock_max_i_1));
LUT6 #(
    .INIT(64'h00011111FFFFFFFF)) 
     time_tlock_max_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(n_0_time_out_100us_i_3),
        .I2(\n_0_time_out_counter[0]_i_5 ),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[5]),
        .I5(n_0_time_tlock_max_i_4),
        .O(n_0_time_tlock_max_i_2));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     time_tlock_max_i_3
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[18]),
        .O(n_0_time_tlock_max_i_3));
LUT6 #(
    .INIT(64'hF0E0E0E0E0E0E0E0)) 
     time_tlock_max_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_counter_reg[11]),
        .O(n_0_time_tlock_max_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_tlock_max_i_1),
        .Q(time_tlock_max),
        .R(n_0_reset_time_out_reg));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1__0 
       (.I0(n_0_run_phase_alignment_int_s3_reg),
        .O(\n_0_wait_bypass_count[0]_i_1__0 ));
LUT4 #(
    .INIT(16'h00FE)) 
     \wait_bypass_count[0]_i_2__0 
       (.I0(\n_0_wait_bypass_count[0]_i_4__0 ),
        .I1(wait_bypass_count_reg[3]),
        .I2(\n_0_wait_bypass_count[0]_i_5__0 ),
        .I3(rx_fsm_reset_done_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_2__0 ));
LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[1]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[12]),
        .I5(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_4__0 ));
LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[10]),
        .I3(wait_bypass_count_reg[8]),
        .I4(wait_bypass_count_reg[6]),
        .I5(wait_bypass_count_reg[7]),
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[11] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[12] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[12]_i_1__0 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[2] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[3] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[4] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[6] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[7] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[8] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
LUT3 #(
    .INIT(8'h04)) 
     \wait_time_cnt[0]_i_1__0 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .O(\n_0_wait_time_cnt[0]_i_1__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
     \wait_time_cnt[0]_i_2__0 
       (.I0(wait_time_cnt_reg[9]),
        .I1(wait_time_cnt_reg[10]),
        .I2(\n_0_wait_time_cnt[0]_i_4__0 ),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[2]),
        .I5(\n_0_wait_time_cnt[0]_i_5__0 ),
        .O(\n_0_wait_time_cnt[0]_i_2__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[13]),
        .I3(wait_time_cnt_reg[12]),
        .I4(wait_time_cnt_reg[14]),
        .I5(wait_time_cnt_reg[15]),
        .O(\n_0_wait_time_cnt[0]_i_4__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[7]),
        .I3(wait_time_cnt_reg[6]),
        .I4(wait_time_cnt_reg[5]),
        .I5(wait_time_cnt_reg[4]),
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
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[12] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[4]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\n_0_wait_time_cnt_reg[0]_i_3__0 ),
        .CO({\n_0_wait_time_cnt_reg[4]_i_1__0 ,\n_1_wait_time_cnt_reg[4]_i_1__0 ,\n_2_wait_time_cnt_reg[4]_i_1__0 ,\n_3_wait_time_cnt_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[4]_i_1__0 ,\n_5_wait_time_cnt_reg[4]_i_1__0 ,\n_6_wait_time_cnt_reg[4]_i_1__0 ,\n_7_wait_time_cnt_reg[4]_i_1__0 }),
        .S({\n_0_wait_time_cnt[4]_i_2__0 ,\n_0_wait_time_cnt[4]_i_3__0 ,\n_0_wait_time_cnt[4]_i_4__0 ,\n_0_wait_time_cnt[4]_i_5__0 }));
FDRE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[5]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\n_0_wait_time_cnt_reg[4]_i_1__0 ),
        .CO({\n_0_wait_time_cnt_reg[8]_i_1__0 ,\n_1_wait_time_cnt_reg[8]_i_1__0 ,\n_2_wait_time_cnt_reg[8]_i_1__0 ,\n_3_wait_time_cnt_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[8]_i_1__0 ,\n_5_wait_time_cnt_reg[8]_i_1__0 ,\n_6_wait_time_cnt_reg[8]_i_1__0 ,\n_7_wait_time_cnt_reg[8]_i_1__0 }),
        .S({\n_0_wait_time_cnt[8]_i_2__0 ,\n_0_wait_time_cnt[8]_i_3__0 ,\n_0_wait_time_cnt[8]_i_4__0 ,\n_0_wait_time_cnt[8]_i_5__0 }));
FDSE \wait_time_cnt_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[9]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_TX_STARTUP_FSM" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
   (gt0_cpllreset_t,
    gt0_txuserrdy_t,
    O1,
    gt0_gttxreset_gt,
    reset_done,
    independent_clock_bufg,
    I2,
    AR,
    ack_flag,
    I7,
    gt0_rxresetdone_out_i,
    data_in,
    I1,
    I3);
  output gt0_cpllreset_t;
  output gt0_txuserrdy_t;
  output O1;
  output gt0_gttxreset_gt;
  output reset_done;
  input independent_clock_bufg;
  input I2;
  input [0:0]AR;
  input ack_flag;
  input I7;
  input gt0_rxresetdone_out_i;
  input data_in;
  input I1;
  input I3;

  wire [0:0]AR;
  wire I1;
  wire I2;
  wire I3;
  wire I7;
  wire O1;
  wire ack_flag;
  wire clear;
  wire data_in;
  wire gt0_cpllreset_t;
  wire gt0_gttxreset_gt;
  wire gt0_gttxreset_t;
  wire gt0_rxresetdone_out_i;
  wire gt0_txresetdone_out_i;
  wire gt0_txuserrdy_t;
  wire independent_clock_bufg;
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
  wire \n_0_FSM_sequential_tx_state[3]_i_2 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_5 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_6 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_9 ;
  wire n_0_TXUSERRDY_i_1;
  wire n_0_gttxreset_i_i_1;
  wire \n_0_init_wait_count[0]_i_1 ;
  wire \n_0_init_wait_count[7]_i_1 ;
  wire \n_0_init_wait_count[7]_i_3 ;
  wire \n_0_init_wait_count[7]_i_4 ;
  wire n_0_init_wait_done_i_1__0;
  wire n_0_init_wait_done_reg;
  wire \n_0_mmcm_lock_count[7]_i_1 ;
  wire \n_0_mmcm_lock_count[8]_i_2 ;
  wire \n_0_mmcm_lock_count[9]_i_2 ;
  wire \n_0_mmcm_lock_count[9]_i_3 ;
  wire \n_0_mmcm_lock_count[9]_i_4 ;
  wire n_0_pll_reset_asserted_i_1;
  wire n_0_pll_reset_asserted_reg;
  wire n_0_run_phase_alignment_int_i_1;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_sync_cplllock;
  wire n_0_sync_mmcm_lock_reclocked;
  wire n_0_time_out_2ms_i_1__0;
  wire n_0_time_out_2ms_i_2__0;
  wire n_0_time_out_2ms_i_3;
  wire n_0_time_out_2ms_reg;
  wire n_0_time_out_500us_i_1;
  wire n_0_time_out_500us_i_2;
  wire n_0_time_out_500us_i_3;
  wire n_0_time_out_500us_i_4;
  wire n_0_time_out_500us_i_5;
  wire n_0_time_out_500us_i_6;
  wire n_0_time_out_500us_reg;
  wire \n_0_time_out_counter[0]_i_1__0 ;
  wire \n_0_time_out_counter[0]_i_3__0 ;
  wire \n_0_time_out_counter[0]_i_4 ;
  wire \n_0_time_out_counter[0]_i_5__0 ;
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
  wire \n_0_time_out_counter[16]_i_4 ;
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
  wire n_0_time_out_wait_bypass_i_1;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1__0;
  wire n_0_time_tlock_max_i_2__0;
  wire n_0_time_tlock_max_i_3__0;
  wire n_0_time_tlock_max_i_4__0;
  wire n_0_time_tlock_max_reg;
  wire n_0_tx_fsm_reset_done_int_i_1;
  wire \n_0_wait_bypass_count[0]_i_1 ;
  wire \n_0_wait_bypass_count[0]_i_10 ;
  wire \n_0_wait_bypass_count[0]_i_2 ;
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
  wire \n_0_wait_time_cnt[0]_i_2 ;
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
  wire n_1_sync_cplllock;
  wire n_1_sync_mmcm_lock_reclocked;
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
  wire \n_2_time_out_counter_reg[0]_i_2 ;
  wire \n_2_time_out_counter_reg[12]_i_1 ;
  wire \n_2_time_out_counter_reg[16]_i_1 ;
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
  wire \n_5_time_out_counter_reg[16]_i_1 ;
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
  wire [7:1]p_0_in__1;
  wire [8:0]p_0_in__2;
  wire reset_done;
  wire reset_time_out;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
(* RTL_KEEP = "yes" *)   wire [3:0]tx_state;
  wire tx_state13_out;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire [16:0]wait_bypass_count_reg;
  wire [15:0]wait_time_cnt_reg;
  wire wait_time_done;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
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
        .I5(gt0_cpllreset_t),
        .O(n_0_CPLL_RESET_i_1));
FDRE #(
    .INIT(1'b0)) 
     CPLL_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_CPLL_RESET_i_1),
        .Q(gt0_cpllreset_t),
        .R(AR));
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
       (.I0(wait_time_cnt_reg[15]),
        .I1(wait_time_cnt_reg[6]),
        .I2(wait_time_cnt_reg[2]),
        .I3(wait_time_cnt_reg[14]),
        .I4(wait_time_cnt_reg[10]),
        .I5(wait_time_cnt_reg[13]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_10 ));
LUT5 #(
    .INIT(32'h00073000)) 
     \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(\n_0_FSM_sequential_tx_state[3]_i_6 ),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(tx_state[3]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_2 ));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     \FSM_sequential_tx_state[3]_i_4 
       (.I0(wait_time_cnt_reg[7]),
        .I1(wait_time_cnt_reg[9]),
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
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[5]),
        .I3(wait_time_cnt_reg[4]),
        .I4(wait_time_cnt_reg[11]),
        .I5(wait_time_cnt_reg[8]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_9 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_cplllock),
        .D(\n_0_FSM_sequential_tx_state[0]_i_1 ),
        .Q(tx_state[0]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_cplllock),
        .D(\n_0_FSM_sequential_tx_state[1]_i_1 ),
        .Q(tx_state[1]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_cplllock),
        .D(\n_0_FSM_sequential_tx_state[2]_i_1 ),
        .Q(tx_state[2]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_cplllock),
        .D(\n_0_FSM_sequential_tx_state[3]_i_2 ),
        .Q(tx_state[3]),
        .R(AR));
LUT5 #(
    .INIT(32'hFFFB4000)) 
     TXUSERRDY_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt0_txuserrdy_t),
        .O(n_0_TXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_TXUSERRDY_i_1),
        .Q(gt0_txuserrdy_t),
        .R(AR));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT2 #(
    .INIT(4'h8)) 
     data_sync1_i_1
       (.I0(gt0_txresetdone_out_i),
        .I1(gt0_rxresetdone_out_i),
        .O(reset_done));
LUT2 #(
    .INIT(4'h2)) 
     flag2_i_1
       (.I0(gt0_cpllreset_t),
        .I1(ack_flag),
        .O(O1));
LUT5 #(
    .INIT(32'hFEFF0010)) 
     gttxreset_i_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .I4(gt0_gttxreset_t),
        .O(n_0_gttxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_gttxreset_i_i_1),
        .Q(gt0_gttxreset_t),
        .R(AR));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'hEA)) 
     gtxe2_i_i_3
       (.I0(gt0_gttxreset_t),
        .I1(gt0_txresetdone_out_i),
        .I2(I7),
        .O(gt0_gttxreset_gt));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .O(p_0_in__1[1]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .O(p_0_in__1[2]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in__1[3]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in__1[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[0]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in__1[5]));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\n_0_init_wait_count[7]_i_4 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in__1[6]));
LUT3 #(
    .INIT(8'h7F)) 
     \init_wait_count[7]_i_1 
       (.I0(\n_0_init_wait_count[7]_i_3 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[6]),
        .O(\n_0_init_wait_count[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\n_0_init_wait_count[7]_i_4 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in__1[7]));
LUT6 #(
    .INIT(64'h0010000000000000)) 
     \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[7]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_count_reg__0[5]),
        .O(\n_0_init_wait_count[7]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[7]_i_4 ));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(AR),
        .D(\n_0_init_wait_count[0]_i_1 ),
        .Q(init_wait_count_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(AR),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(AR),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(AR),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(AR),
        .D(p_0_in__1[7]),
        .Q(init_wait_count_reg__0[7]));
LUT4 #(
    .INIT(16'hFF80)) 
     init_wait_done_i_1__0
       (.I0(\n_0_init_wait_count[7]_i_3 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[6]),
        .I3(n_0_init_wait_done_reg),
        .O(n_0_init_wait_done_i_1__0));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(AR),
        .D(n_0_init_wait_done_i_1__0),
        .Q(n_0_init_wait_done_reg));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__2[0]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[1]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[2]));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__2[3]));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__2[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__2[5]));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\n_0_mmcm_lock_count[8]_i_2 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__2[6]));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\n_0_mmcm_lock_count[8]_i_2 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(\n_0_mmcm_lock_count[7]_i_1 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(mmcm_lock_count_reg__0[4]),
        .I3(\n_0_mmcm_lock_count[8]_i_2 ),
        .I4(mmcm_lock_count_reg__0[5]),
        .I5(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__2[8]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \mmcm_lock_count[8]_i_2 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\n_0_mmcm_lock_count[8]_i_2 ));
LUT4 #(
    .INIT(16'hBFFF)) 
     \mmcm_lock_count[9]_i_2 
       (.I0(\n_0_mmcm_lock_count[9]_i_4 ),
        .I1(mmcm_lock_count_reg__0[8]),
        .I2(mmcm_lock_count_reg__0[7]),
        .I3(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2 ));
LUT4 #(
    .INIT(16'hAA6A)) 
     \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[8]),
        .I3(\n_0_mmcm_lock_count[9]_i_4 ),
        .O(\n_0_mmcm_lock_count[9]_i_3 ));
LUT4 #(
    .INIT(16'h7FFF)) 
     \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\n_0_mmcm_lock_count[8]_i_2 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(\n_0_mmcm_lock_count[9]_i_4 ));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(\n_0_mmcm_lock_count[7]_i_1 ),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(\n_0_mmcm_lock_count[9]_i_3 ),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_mmcm_lock_reclocked),
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
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_pll_reset_asserted_i_1),
        .Q(n_0_pll_reset_asserted_reg),
        .R(AR));
FDRE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_cplllock),
        .Q(reset_time_out),
        .R(AR));
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
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_run_phase_alignment_int_i_1),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(AR));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_s3_reg
       (.C(I2),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_4 sync_TXRESETDONE
       (.data_in(data_in),
        .data_out(txresetdone_s2),
        .independent_clock_bufg(independent_clock_bufg));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_5 sync_cplllock
       (.E(n_1_sync_cplllock),
        .I1(\n_0_FSM_sequential_tx_state[3]_i_5 ),
        .I2(n_0_init_wait_done_reg),
        .I3(n_0_time_out_500us_reg),
        .I4(n_0_time_out_2ms_reg),
        .I5(n_0_time_tlock_max_reg),
        .I6(n_0_pll_reset_asserted_reg),
        .I7(I3),
        .O1(n_0_sync_cplllock),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(tx_state),
        .reset_time_out(reset_time_out),
        .txresetdone_s3(txresetdone_s3),
        .wait_time_done(wait_time_done));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6 sync_mmcm_lock_reclocked
       (.I1(\n_0_mmcm_lock_count[9]_i_4 ),
        .I2(I1),
        .O1(n_0_sync_mmcm_lock_reclocked),
        .Q(mmcm_lock_count_reg__0[9:7]),
        .SR(n_1_sync_mmcm_lock_reclocked),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7 sync_run_phase_alignment_int
       (.I2(I2),
        .data_in(n_0_run_phase_alignment_int_reg),
        .data_out(run_phase_alignment_int_s2));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8 sync_time_out_wait_bypass
       (.data_in(n_0_time_out_wait_bypass_reg),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9 sync_tx_fsm_reset_done_int
       (.I2(I2),
        .data_out(tx_fsm_reset_done_int_s2),
        .gt0_txresetdone_out_i(gt0_txresetdone_out_i));
LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
     time_out_2ms_i_1__0
       (.I0(n_0_time_out_2ms_reg),
        .I1(\n_0_time_out_counter[0]_i_4 ),
        .I2(\n_0_time_out_counter[0]_i_3__0 ),
        .I3(n_0_time_out_2ms_i_2__0),
        .I4(n_0_time_out_2ms_i_3),
        .I5(reset_time_out),
        .O(n_0_time_out_2ms_i_1__0));
LUT4 #(
    .INIT(16'hFFFE)) 
     time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[15]),
        .O(n_0_time_out_2ms_i_2__0));
LUT5 #(
    .INIT(32'hFFFFFFF7)) 
     time_out_2ms_i_3
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[10]),
        .O(n_0_time_out_2ms_i_3));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_2ms_i_1__0),
        .Q(n_0_time_out_2ms_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000AABAAAAA)) 
     time_out_500us_i_1
       (.I0(n_0_time_out_500us_reg),
        .I1(n_0_time_out_500us_i_2),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[12]),
        .I4(n_0_time_out_500us_i_3),
        .I5(reset_time_out),
        .O(n_0_time_out_500us_i_1));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT2 #(
    .INIT(4'hB)) 
     time_out_500us_i_2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[5]),
        .O(n_0_time_out_500us_i_2));
LUT5 #(
    .INIT(32'h00010000)) 
     time_out_500us_i_3
       (.I0(n_0_time_out_500us_i_4),
        .I1(n_0_time_out_500us_i_5),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[6]),
        .I4(n_0_time_out_500us_i_6),
        .O(n_0_time_out_500us_i_3));
LUT4 #(
    .INIT(16'hFFFE)) 
     time_out_500us_i_4
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[2]),
        .O(n_0_time_out_500us_i_4));
LUT4 #(
    .INIT(16'hFFFE)) 
     time_out_500us_i_5
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[3]),
        .O(n_0_time_out_500us_i_5));
LUT5 #(
    .INIT(32'h00008000)) 
     time_out_500us_i_6
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[9]),
        .I4(time_out_counter_reg[11]),
        .O(n_0_time_out_500us_i_6));
FDRE #(
    .INIT(1'b0)) 
     time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_500us_i_1),
        .Q(n_0_time_out_500us_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
     \time_out_counter[0]_i_1__0 
       (.I0(\n_0_time_out_counter[0]_i_3__0 ),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[9]),
        .I4(\n_0_time_out_counter[0]_i_4 ),
        .I5(\n_0_time_out_counter[0]_i_5__0 ),
        .O(\n_0_time_out_counter[0]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT4 #(
    .INIT(16'hDFFF)) 
     \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[0]_i_3__0 ));
LUT6 #(
    .INIT(64'h0000000000010000)) 
     \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[14]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[6]),
        .O(\n_0_time_out_counter[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_8 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[0]),
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
       (.I0(time_out_counter_reg[18]),
        .O(\n_0_time_out_counter[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_3 
       (.I0(time_out_counter_reg[17]),
        .O(\n_0_time_out_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_4 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_4 ));
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
       (.C(independent_clock_bufg),
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
        .S({\n_0_time_out_counter[0]_i_6 ,\n_0_time_out_counter[0]_i_7 ,\n_0_time_out_counter[0]_i_8 ,\n_0_time_out_counter[0]_i_9 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\n_0_time_out_counter_reg[12]_i_1 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\n_2_time_out_counter_reg[16]_i_1 ,\n_3_time_out_counter_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\n_5_time_out_counter_reg[16]_i_1 ,\n_6_time_out_counter_reg[16]_i_1 ,\n_7_time_out_counter_reg[16]_i_1 }),
        .S({1'b0,\n_0_time_out_counter[16]_i_2 ,\n_0_time_out_counter[16]_i_3 ,\n_0_time_out_counter[16]_i_4 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
LUT6 #(
    .INIT(64'hFF00FF0100000000)) 
     time_out_wait_bypass_i_1
       (.I0(\n_0_wait_bypass_count[0]_i_4 ),
        .I1(\n_0_wait_bypass_count[0]_i_5 ),
        .I2(\n_0_wait_bypass_count[0]_i_6 ),
        .I3(n_0_time_out_wait_bypass_reg),
        .I4(tx_fsm_reset_done_int_s3),
        .I5(run_phase_alignment_int_s3),
        .O(n_0_time_out_wait_bypass_i_1));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(I2),
        .CE(1'b1),
        .D(n_0_time_out_wait_bypass_i_1),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000AAEAAAAA)) 
     time_tlock_max_i_1__0
       (.I0(n_0_time_tlock_max_reg),
        .I1(n_0_time_tlock_max_i_2__0),
        .I2(n_0_time_tlock_max_i_3__0),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[10]),
        .I5(reset_time_out),
        .O(n_0_time_tlock_max_i_1__0));
LUT6 #(
    .INIT(64'h0000000000000020)) 
     time_tlock_max_i_2__0
       (.I0(n_0_time_tlock_max_i_4__0),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[0]),
        .I4(time_out_counter_reg[2]),
        .I5(time_out_counter_reg[1]),
        .O(n_0_time_tlock_max_i_2__0));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[18]),
        .I4(time_out_counter_reg[8]),
        .I5(time_out_counter_reg[4]),
        .O(n_0_time_tlock_max_i_3__0));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[9]),
        .O(n_0_time_tlock_max_i_4__0));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(independent_clock_bufg),
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
        .I4(gt0_txresetdone_out_i),
        .O(n_0_tx_fsm_reset_done_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_tx_fsm_reset_done_int_i_1),
        .Q(gt0_txresetdone_out_i),
        .R(AR));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_s3_reg
       (.C(I2),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_10 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_10 ));
LUT4 #(
    .INIT(16'h00FE)) 
     \wait_bypass_count[0]_i_2 
       (.I0(\n_0_wait_bypass_count[0]_i_4 ),
        .I1(\n_0_wait_bypass_count[0]_i_5 ),
        .I2(\n_0_wait_bypass_count[0]_i_6 ),
        .I3(tx_fsm_reset_done_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_2 ));
LUT5 #(
    .INIT(32'hBFFFFFFF)) 
     \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[15]),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[2]),
        .I3(wait_bypass_count_reg[16]),
        .I4(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[10]),
        .I2(wait_bypass_count_reg[13]),
        .I3(wait_bypass_count_reg[14]),
        .I4(wait_bypass_count_reg[11]),
        .I5(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[0]_i_5 ));
LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[7]),
        .I4(wait_bypass_count_reg[5]),
        .I5(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_9__0 
       (.I0(wait_bypass_count_reg[1]),
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3 ,\n_1_wait_bypass_count_reg[0]_i_3 ,\n_2_wait_bypass_count_reg[0]_i_3 ,\n_3_wait_bypass_count_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_wait_bypass_count_reg[0]_i_3 ,\n_5_wait_bypass_count_reg[0]_i_3 ,\n_6_wait_bypass_count_reg[0]_i_3 ,\n_7_wait_bypass_count_reg[0]_i_3 }),
        .S({\n_0_wait_bypass_count[0]_i_7 ,\n_0_wait_bypass_count[0]_i_8 ,\n_0_wait_bypass_count[0]_i_9__0 ,\n_0_wait_bypass_count[0]_i_10 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[10] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[11] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[12] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[13]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[14] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[14]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[15] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[15]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[16] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[16]_i_1 ),
        .Q(wait_bypass_count_reg[16]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[2] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[3] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[4] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[6] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[7] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[8] 
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
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
       (.C(I2),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
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
        .O(\n_0_wait_time_cnt[0]_i_2 ));
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
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_5_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[10]),
        .S(clear));
FDRE \wait_time_cnt_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_4_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[11]),
        .R(clear));
FDRE \wait_time_cnt_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
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
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_6_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[13]),
        .R(clear));
FDRE \wait_time_cnt_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_5_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[14]),
        .R(clear));
FDRE \wait_time_cnt_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_4_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[15]),
        .R(clear));
FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_6_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[1]),
        .R(clear));
FDRE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_5_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[2]),
        .R(clear));
FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_4_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[3]),
        .R(clear));
FDSE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_7_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[4]),
        .S(clear));
CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\n_0_wait_time_cnt_reg[0]_i_3 ),
        .CO({\n_0_wait_time_cnt_reg[4]_i_1 ,\n_1_wait_time_cnt_reg[4]_i_1 ,\n_2_wait_time_cnt_reg[4]_i_1 ,\n_3_wait_time_cnt_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[4]_i_1 ,\n_5_wait_time_cnt_reg[4]_i_1 ,\n_6_wait_time_cnt_reg[4]_i_1 ,\n_7_wait_time_cnt_reg[4]_i_1 }),
        .S({\n_0_wait_time_cnt[4]_i_2 ,\n_0_wait_time_cnt[4]_i_3 ,\n_0_wait_time_cnt[4]_i_4 ,\n_0_wait_time_cnt[4]_i_5 }));
FDRE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_6_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[5]),
        .R(clear));
FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_5_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[6]),
        .S(clear));
FDSE \wait_time_cnt_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_4_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[7]),
        .S(clear));
FDSE \wait_time_cnt_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_7_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[8]),
        .S(clear));
CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\n_0_wait_time_cnt_reg[4]_i_1 ),
        .CO({\n_0_wait_time_cnt_reg[8]_i_1 ,\n_1_wait_time_cnt_reg[8]_i_1 ,\n_2_wait_time_cnt_reg[8]_i_1 ,\n_3_wait_time_cnt_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[8]_i_1 ,\n_5_wait_time_cnt_reg[8]_i_1 ,\n_6_wait_time_cnt_reg[8]_i_1 ,\n_7_wait_time_cnt_reg[8]_i_1 }),
        .S({\n_0_wait_time_cnt[8]_i_2 ,\n_0_wait_time_cnt[8]_i_3 ,\n_0_wait_time_cnt[8]_i_4 ,\n_0_wait_time_cnt[8]_i_5 }));
FDSE \wait_time_cnt_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[0]_i_2 ),
        .D(\n_6_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[9]),
        .S(clear));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block
   (gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    an_interrupt,
    status_vector,
    resetdone,
    txn,
    txp,
    txoutclk,
    rxuserclk2_out,
    AR,
    signal_detect,
    CLK,
    data_in,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    an_adv_config_vector,
    an_restart_config,
    configuration_vector,
    independent_clock_bufg,
    I1,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    I2);
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output an_interrupt;
  output [15:0]status_vector;
  output resetdone;
  output txn;
  output txp;
  output txoutclk;
  output rxuserclk2_out;
  input [0:0]AR;
  input signal_detect;
  input CLK;
  input data_in;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  input [4:0]configuration_vector;
  input independent_clock_bufg;
  input I1;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input I2;

  wire [0:0]AR;
  wire CLK;
  wire I1;
  wire I2;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire data_in;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire independent_clock_bufg;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire n_8_transceiver_inst;
  wire powerdown;
  wire reset_done;
  wire resetdone;
  wire rxchariscomma;
  wire rxcharisk;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxoutclk_bufmr;
  wire rxoutclk_i;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [15:0]status_vector;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txoutclk;
  wire txp;
  wire NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED;
  wire [8:0]NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED;

(* B_SHIFTER_ADDR = "8'b01001110" *) 
   (* C_1588 = "0" *) 
   (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_0" *) 
   (* C_DYNAMIC_SWITCHING = "FALSE" *) 
   (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_HAS_AN = "TRUE" *) 
   (* C_HAS_MDIO = "FALSE" *) 
   (* C_HAS_TEMAC = "TRUE" *) 
   (* C_IS_SGMII = "FALSE" *) 
   (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
   (* C_SGMII_PHY_MODE = "FALSE" *) 
   (* C_TRANSCEIVER_MODE = "A" *) 
   (* C_USE_LVDS = "FALSE" *) 
   (* C_USE_TBI = "FALSE" *) 
   (* C_USE_TRANSCEIVER = "TRUE" *) 
   (* DONT_TOUCH *) 
   (* GT_RX_BYTE_WIDTH = "1" *) 
   (* RX_GT_NOMINAL_LATENCY = "16'b0000000011001000" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v14_3 gig_ethernet_pcs_pma_0_core
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector(an_adv_config_vector),
        .an_enable(NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .basex_or_sgmii(1'b0),
        .configuration_valid(1'b0),
        .configuration_vector(configuration_vector),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(data_in),
        .drp_daddr(NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED[8:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED),
        .drp_di(NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .loc_ref(NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED),
        .mdc(1'b0),
        .mdio_in(1'b0),
        .mdio_out(NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED),
        .mdio_tri(NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(AR),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxbufstatus({n_8_transceiver_inst,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({1'b0,rxclkcorcnt}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(1'b0),
        .signal_detect(signal_detect),
        .speed_selection(NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector(status_vector),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(CLK),
        .userclk2(CLK));
(* box_type = "PRIMITIVE" *) 
   BUFMR rxrecclkbufmr
       (.I(rxoutclk_i),
        .O(rxoutclk_bufmr));
(* box_type = "PRIMITIVE" *) 
   BUFR #(
    .BUFR_DIVIDE("BYPASS"),
    .SIM_DEVICE("7SERIES")) 
     rxrecclkbufr
       (.CE(1'b1),
        .CLR(1'b0),
        .I(rxoutclk_bufmr),
        .O(rxuserclk2_out));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block sync_block_reset_done
       (.CLK(CLK),
        .data_in(reset_done),
        .resetdone(resetdone));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver transceiver_inst
       (.AR(AR),
        .CLK(CLK),
        .D(txchardispmode),
        .I1(I1),
        .I2(I2),
        .I3(mgt_rx_reset),
        .I4(txchardispval),
        .I5(txcharisk),
        .I6(txdata),
        .O1(rxdata),
        .Q(rxclkcorcnt),
        .SR(mgt_tx_reset),
        .data_in(data_in),
        .enablealign(enablealign),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .powerdown(powerdown),
        .reset_done(reset_done),
        .rxbufstatus(n_8_transceiver_inst),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk_i(rxoutclk_i),
        .rxp(rxp),
        .status_vector(status_vector[1]),
        .txbuferr(txbuferr),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_clocking" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clocking
   (AS,
    mmcm_locked,
    gtrefclk,
    userclk,
    userclk2,
    reset,
    gtrefclk_p,
    gtrefclk_n,
    txoutclk);
  output [0:0]AS;
  output mmcm_locked;
  output gtrefclk;
  output userclk;
  output userclk2;
  input reset;
  input gtrefclk_p;
  input gtrefclk_n;
  input txoutclk;

  wire [0:0]AS;
  wire clkfbout;
  wire clkout0;
  wire clkout1;
  wire gtrefclk;
  wire gtrefclk_n;
  wire gtrefclk_p;
  wire mmcm_locked;
  wire reset;
  wire txoutclk;
  wire txoutclk_bufg;
  wire userclk;
  wire userclk2;
  wire NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

(* box_type = "PRIMITIVE" *) 
   BUFG bufg_txoutclk
       (.I(txoutclk),
        .O(txoutclk_bufg));
(* box_type = "PRIMITIVE" *) 
   BUFG bufg_userclk
       (.I(clkout1),
        .O(userclk));
(* box_type = "PRIMITIVE" *) 
   BUFG bufg_userclk2
       (.I(clkout0),
        .O(userclk2));
(* box_type = "PRIMITIVE" *) 
   IBUFDS_GTE2 #(
    .CLKCM_CFG("TRUE"),
    .CLKRCV_TRST("TRUE"),
    .CLKSWING_CFG(2'b11)) 
     ibufds_gtrefclk
       (.CEB(1'b0),
        .I(gtrefclk_p),
        .IB(gtrefclk_n),
        .O(gtrefclk),
        .ODIV2(NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED));
(* box_type = "PRIMITIVE" *) 
   MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(16.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(16.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
     mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(txoutclk_bufg),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clkout1),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
LUT2 #(
    .INIT(4'hB)) 
     \pma_reset_pipe[3]_i_1 
       (.I0(reset),
        .I1(mmcm_locked),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_gt_common" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gt_common
   (gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    I1,
    independent_clock_bufg,
    AR);
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;
  input I1;
  input independent_clock_bufg;
  input [0:0]AR;

  wire [0:0]AR;
  wire I1;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire independent_clock_bufg;
  wire n_2_gtxe2_common_i;
  wire n_5_gtxe2_common_i;
  wire NLW_gtxe2_common_i_DRPRDY_UNCONNECTED;
  wire NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED;
  wire NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED;
  wire [15:0]NLW_gtxe2_common_i_DRPDO_UNCONNECTED;
  wire [7:0]NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED;

(* box_type = "PRIMITIVE" *) 
   GTXE2_COMMON #(
    .BIAS_CFG(64'h0000040000001000),
    .COMMON_CFG(32'h00000000),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_QPLLLOCKDETCLK_INVERTED(1'b0),
    .QPLL_CFG(27'h06801C1),
    .QPLL_CLKOUT_CFG(4'b0000),
    .QPLL_COARSE_FREQ_OVRD(6'b010000),
    .QPLL_COARSE_FREQ_OVRD_EN(1'b0),
    .QPLL_CP(10'b0000011111),
    .QPLL_CP_MONITOR_EN(1'b0),
    .QPLL_DMONITOR_SEL(1'b0),
    .QPLL_FBDIV(10'b0000100000),
    .QPLL_FBDIV_MONITOR_EN(1'b0),
    .QPLL_FBDIV_RATIO(1'b1),
    .QPLL_INIT_CFG(24'h000006),
    .QPLL_LOCK_CFG(16'h21E8),
    .QPLL_LPF(4'b1111),
    .QPLL_REFCLK_DIV(1),
    .SIM_QPLLREFCLK_SEL(3'b001),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_VERSION("4.0")) 
     gtxe2_common_i
       (.BGBYPASSB(1'b1),
        .BGMONITORENB(1'b1),
        .BGPDB(1'b1),
        .BGRCALOVRD({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(1'b0),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO(NLW_gtxe2_common_i_DRPDO_UNCONNECTED[15:0]),
        .DRPEN(1'b0),
        .DRPRDY(NLW_gtxe2_common_i_DRPRDY_UNCONNECTED),
        .DRPWE(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(I1),
        .GTREFCLK1(1'b0),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .PMARSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLDMONITOR(NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED[7:0]),
        .QPLLFBCLKLOST(NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED),
        .QPLLLOCK(n_2_gtxe2_common_i),
        .QPLLLOCKDETCLK(independent_clock_bufg),
        .QPLLLOCKEN(1'b1),
        .QPLLOUTCLK(gt0_qplloutclk_out),
        .QPLLOUTREFCLK(gt0_qplloutrefclk_out),
        .QPLLOUTRESET(1'b0),
        .QPLLPD(1'b1),
        .QPLLREFCLKLOST(n_5_gtxe2_common_i),
        .QPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .QPLLRESET(AR),
        .QPLLRSVD1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLRSVD2({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RCALENB(1'b1),
        .REFCLKOUTMONITOR(NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync
   (reset_out,
    I2,
    enablealign);
  output reset_out;
  input I2;
  input enablealign;

  wire I2;
  wire enablealign;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(I2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_stage1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(enablealign),
        .Q(reset_stage2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(enablealign),
        .Q(reset_stage3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(enablealign),
        .Q(reset_stage4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(enablealign),
        .Q(reset_stage5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_0
   (reset_out,
    I2,
    I3);
  output reset_out;
  input I2;
  input [0:0]I3;

  wire I2;
  wire [0:0]I3;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(I2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(I3),
        .Q(reset_stage1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(I3),
        .Q(reset_stage2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(I3),
        .Q(reset_stage3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(I3),
        .Q(reset_stage4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(I3),
        .Q(reset_stage5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1
   (reset_out,
    I2,
    SR);
  output reset_out;
  input I2;
  input [0:0]SR;

  wire I2;
  wire [0:0]SR;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(I2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_stage1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(SR),
        .Q(reset_stage2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(SR),
        .Q(reset_stage3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(SR),
        .Q(reset_stage4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(SR),
        .Q(reset_stage5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(I2),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_wtd_timer" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer
   (wtd_rxpcsreset_in,
    independent_clock_bufg,
    data_out);
  output wtd_rxpcsreset_in;
  input independent_clock_bufg;
  input data_out;

  wire [5:5]counter_stg1_reg__0;
  wire [4:0]counter_stg1_reg__1;
  wire counter_stg1_roll;
  wire [11:0]counter_stg2_reg;
  wire counter_stg30;
  wire [11:0]counter_stg3_reg;
  wire data_out;
  wire independent_clock_bufg;
  wire \n_0_counter_stg1[5]_i_1 ;
  wire \n_0_counter_stg2[0]_i_3 ;
  wire \n_0_counter_stg2[0]_i_4 ;
  wire \n_0_counter_stg2[0]_i_5 ;
  wire \n_0_counter_stg2[0]_i_6 ;
  wire \n_0_counter_stg2[4]_i_2 ;
  wire \n_0_counter_stg2[4]_i_3 ;
  wire \n_0_counter_stg2[4]_i_4 ;
  wire \n_0_counter_stg2[4]_i_5 ;
  wire \n_0_counter_stg2[8]_i_2 ;
  wire \n_0_counter_stg2[8]_i_3 ;
  wire \n_0_counter_stg2[8]_i_4 ;
  wire \n_0_counter_stg2[8]_i_5 ;
  wire \n_0_counter_stg2_reg[0]_i_2 ;
  wire \n_0_counter_stg2_reg[4]_i_1 ;
  wire \n_0_counter_stg3[0]_i_3 ;
  wire \n_0_counter_stg3[0]_i_4 ;
  wire \n_0_counter_stg3[0]_i_5 ;
  wire \n_0_counter_stg3[0]_i_6 ;
  wire \n_0_counter_stg3[0]_i_7 ;
  wire \n_0_counter_stg3[0]_i_8 ;
  wire \n_0_counter_stg3[4]_i_2 ;
  wire \n_0_counter_stg3[4]_i_3 ;
  wire \n_0_counter_stg3[4]_i_4 ;
  wire \n_0_counter_stg3[4]_i_5 ;
  wire \n_0_counter_stg3[8]_i_2 ;
  wire \n_0_counter_stg3[8]_i_3 ;
  wire \n_0_counter_stg3[8]_i_4 ;
  wire \n_0_counter_stg3[8]_i_5 ;
  wire \n_0_counter_stg3_reg[0]_i_2 ;
  wire \n_0_counter_stg3_reg[4]_i_1 ;
  wire n_0_reset_i_2;
  wire n_0_reset_i_3;
  wire n_0_reset_i_4;
  wire n_0_reset_i_5;
  wire \n_1_counter_stg2_reg[0]_i_2 ;
  wire \n_1_counter_stg2_reg[4]_i_1 ;
  wire \n_1_counter_stg2_reg[8]_i_1 ;
  wire \n_1_counter_stg3_reg[0]_i_2 ;
  wire \n_1_counter_stg3_reg[4]_i_1 ;
  wire \n_1_counter_stg3_reg[8]_i_1 ;
  wire \n_2_counter_stg2_reg[0]_i_2 ;
  wire \n_2_counter_stg2_reg[4]_i_1 ;
  wire \n_2_counter_stg2_reg[8]_i_1 ;
  wire \n_2_counter_stg3_reg[0]_i_2 ;
  wire \n_2_counter_stg3_reg[4]_i_1 ;
  wire \n_2_counter_stg3_reg[8]_i_1 ;
  wire \n_3_counter_stg2_reg[0]_i_2 ;
  wire \n_3_counter_stg2_reg[4]_i_1 ;
  wire \n_3_counter_stg2_reg[8]_i_1 ;
  wire \n_3_counter_stg3_reg[0]_i_2 ;
  wire \n_3_counter_stg3_reg[4]_i_1 ;
  wire \n_3_counter_stg3_reg[8]_i_1 ;
  wire \n_4_counter_stg2_reg[0]_i_2 ;
  wire \n_4_counter_stg2_reg[4]_i_1 ;
  wire \n_4_counter_stg2_reg[8]_i_1 ;
  wire \n_4_counter_stg3_reg[0]_i_2 ;
  wire \n_4_counter_stg3_reg[4]_i_1 ;
  wire \n_4_counter_stg3_reg[8]_i_1 ;
  wire \n_5_counter_stg2_reg[0]_i_2 ;
  wire \n_5_counter_stg2_reg[4]_i_1 ;
  wire \n_5_counter_stg2_reg[8]_i_1 ;
  wire \n_5_counter_stg3_reg[0]_i_2 ;
  wire \n_5_counter_stg3_reg[4]_i_1 ;
  wire \n_5_counter_stg3_reg[8]_i_1 ;
  wire \n_6_counter_stg2_reg[0]_i_2 ;
  wire \n_6_counter_stg2_reg[4]_i_1 ;
  wire \n_6_counter_stg2_reg[8]_i_1 ;
  wire \n_6_counter_stg3_reg[0]_i_2 ;
  wire \n_6_counter_stg3_reg[4]_i_1 ;
  wire \n_6_counter_stg3_reg[8]_i_1 ;
  wire \n_7_counter_stg2_reg[0]_i_2 ;
  wire \n_7_counter_stg2_reg[4]_i_1 ;
  wire \n_7_counter_stg2_reg[8]_i_1 ;
  wire \n_7_counter_stg3_reg[0]_i_2 ;
  wire \n_7_counter_stg3_reg[4]_i_1 ;
  wire \n_7_counter_stg3_reg[8]_i_1 ;
  wire [5:0]p_0_in__0;
  wire reset0;
  wire wtd_rxpcsreset_in;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

LUT1 #(
    .INIT(2'h1)) 
     \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__1[0]),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__1[0]),
        .I1(counter_stg1_reg__1[1]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__1[2]),
        .I1(counter_stg1_reg__1[0]),
        .I2(counter_stg1_reg__1[1]),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__1[1]),
        .I1(counter_stg1_reg__1[0]),
        .I2(counter_stg1_reg__1[2]),
        .I3(counter_stg1_reg__1[3]),
        .O(p_0_in__0[3]));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__1[4]),
        .I1(counter_stg1_reg__1[1]),
        .I2(counter_stg1_reg__1[0]),
        .I3(counter_stg1_reg__1[2]),
        .I4(counter_stg1_reg__1[3]),
        .O(p_0_in__0[4]));
LUT3 #(
    .INIT(8'hBA)) 
     \counter_stg1[5]_i_1 
       (.I0(data_out),
        .I1(n_0_reset_i_2),
        .I2(counter_stg1_roll),
        .O(\n_0_counter_stg1[5]_i_1 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg__0),
        .I1(counter_stg1_reg__1[3]),
        .I2(counter_stg1_reg__1[2]),
        .I3(counter_stg1_reg__1[0]),
        .I4(counter_stg1_reg__1[1]),
        .I5(counter_stg1_reg__1[4]),
        .O(p_0_in__0[5]));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(counter_stg1_reg__1[0]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(counter_stg1_reg__1[1]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(counter_stg1_reg__1[2]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(counter_stg1_reg__1[3]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(counter_stg1_reg__1[4]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(counter_stg1_reg__0),
        .R(\n_0_counter_stg1[5]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \counter_stg2[0]_i_1 
       (.I0(counter_stg1_reg__0),
        .I1(counter_stg1_reg__1[3]),
        .I2(counter_stg1_reg__1[2]),
        .I3(counter_stg1_reg__1[0]),
        .I4(counter_stg1_reg__1[1]),
        .I5(counter_stg1_reg__1[4]),
        .O(counter_stg1_roll));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[0]_i_3 
       (.I0(counter_stg2_reg[3]),
        .O(\n_0_counter_stg2[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[0]_i_4 
       (.I0(counter_stg2_reg[2]),
        .O(\n_0_counter_stg2[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[0]_i_5 
       (.I0(counter_stg2_reg[1]),
        .O(\n_0_counter_stg2[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \counter_stg2[0]_i_6 
       (.I0(counter_stg2_reg[0]),
        .O(\n_0_counter_stg2[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[4]_i_2 
       (.I0(counter_stg2_reg[7]),
        .O(\n_0_counter_stg2[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[4]_i_3 
       (.I0(counter_stg2_reg[6]),
        .O(\n_0_counter_stg2[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[4]_i_4 
       (.I0(counter_stg2_reg[5]),
        .O(\n_0_counter_stg2[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[4]_i_5 
       (.I0(counter_stg2_reg[4]),
        .O(\n_0_counter_stg2[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[8]_i_2 
       (.I0(counter_stg2_reg[11]),
        .O(\n_0_counter_stg2[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[8]_i_3 
       (.I0(counter_stg2_reg[10]),
        .O(\n_0_counter_stg2[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[8]_i_4 
       (.I0(counter_stg2_reg[9]),
        .O(\n_0_counter_stg2[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[8]_i_5 
       (.I0(counter_stg2_reg[8]),
        .O(\n_0_counter_stg2[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_7_counter_stg2_reg[0]_i_2 ),
        .Q(counter_stg2_reg[0]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_counter_stg2_reg[0]_i_2 ,\n_1_counter_stg2_reg[0]_i_2 ,\n_2_counter_stg2_reg[0]_i_2 ,\n_3_counter_stg2_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_counter_stg2_reg[0]_i_2 ,\n_5_counter_stg2_reg[0]_i_2 ,\n_6_counter_stg2_reg[0]_i_2 ,\n_7_counter_stg2_reg[0]_i_2 }),
        .S({\n_0_counter_stg2[0]_i_3 ,\n_0_counter_stg2[0]_i_4 ,\n_0_counter_stg2[0]_i_5 ,\n_0_counter_stg2[0]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_5_counter_stg2_reg[8]_i_1 ),
        .Q(counter_stg2_reg[10]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_4_counter_stg2_reg[8]_i_1 ),
        .Q(counter_stg2_reg[11]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_6_counter_stg2_reg[0]_i_2 ),
        .Q(counter_stg2_reg[1]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_5_counter_stg2_reg[0]_i_2 ),
        .Q(counter_stg2_reg[2]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_4_counter_stg2_reg[0]_i_2 ),
        .Q(counter_stg2_reg[3]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_7_counter_stg2_reg[4]_i_1 ),
        .Q(counter_stg2_reg[4]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg2_reg[4]_i_1 
       (.CI(\n_0_counter_stg2_reg[0]_i_2 ),
        .CO({\n_0_counter_stg2_reg[4]_i_1 ,\n_1_counter_stg2_reg[4]_i_1 ,\n_2_counter_stg2_reg[4]_i_1 ,\n_3_counter_stg2_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_stg2_reg[4]_i_1 ,\n_5_counter_stg2_reg[4]_i_1 ,\n_6_counter_stg2_reg[4]_i_1 ,\n_7_counter_stg2_reg[4]_i_1 }),
        .S({\n_0_counter_stg2[4]_i_2 ,\n_0_counter_stg2[4]_i_3 ,\n_0_counter_stg2[4]_i_4 ,\n_0_counter_stg2[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_6_counter_stg2_reg[4]_i_1 ),
        .Q(counter_stg2_reg[5]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_5_counter_stg2_reg[4]_i_1 ),
        .Q(counter_stg2_reg[6]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_4_counter_stg2_reg[4]_i_1 ),
        .Q(counter_stg2_reg[7]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_7_counter_stg2_reg[8]_i_1 ),
        .Q(counter_stg2_reg[8]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg2_reg[8]_i_1 
       (.CI(\n_0_counter_stg2_reg[4]_i_1 ),
        .CO({\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_counter_stg2_reg[8]_i_1 ,\n_2_counter_stg2_reg[8]_i_1 ,\n_3_counter_stg2_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_stg2_reg[8]_i_1 ,\n_5_counter_stg2_reg[8]_i_1 ,\n_6_counter_stg2_reg[8]_i_1 ,\n_7_counter_stg2_reg[8]_i_1 }),
        .S({\n_0_counter_stg2[8]_i_2 ,\n_0_counter_stg2[8]_i_3 ,\n_0_counter_stg2[8]_i_4 ,\n_0_counter_stg2[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg1_roll),
        .D(\n_6_counter_stg2_reg[8]_i_1 ),
        .Q(counter_stg2_reg[9]),
        .R(\n_0_counter_stg1[5]_i_1 ));
LUT5 #(
    .INIT(32'h40000000)) 
     \counter_stg3[0]_i_1 
       (.I0(\n_0_counter_stg3[0]_i_3 ),
        .I1(counter_stg1_roll),
        .I2(\n_0_counter_stg3[0]_i_4 ),
        .I3(counter_stg2_reg[2]),
        .I4(counter_stg2_reg[0]),
        .O(counter_stg30));
LUT4 #(
    .INIT(16'h7FFF)) 
     \counter_stg3[0]_i_3 
       (.I0(counter_stg2_reg[4]),
        .I1(counter_stg2_reg[3]),
        .I2(counter_stg2_reg[11]),
        .I3(counter_stg2_reg[8]),
        .O(\n_0_counter_stg3[0]_i_3 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \counter_stg3[0]_i_4 
       (.I0(counter_stg2_reg[7]),
        .I1(counter_stg2_reg[5]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[10]),
        .I4(counter_stg2_reg[6]),
        .I5(counter_stg2_reg[9]),
        .O(\n_0_counter_stg3[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[0]_i_5 
       (.I0(counter_stg3_reg[3]),
        .O(\n_0_counter_stg3[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[0]_i_6 
       (.I0(counter_stg3_reg[2]),
        .O(\n_0_counter_stg3[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[0]_i_7 
       (.I0(counter_stg3_reg[1]),
        .O(\n_0_counter_stg3[0]_i_7 ));
LUT1 #(
    .INIT(2'h1)) 
     \counter_stg3[0]_i_8 
       (.I0(counter_stg3_reg[0]),
        .O(\n_0_counter_stg3[0]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[4]_i_2 
       (.I0(counter_stg3_reg[7]),
        .O(\n_0_counter_stg3[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[4]_i_3 
       (.I0(counter_stg3_reg[6]),
        .O(\n_0_counter_stg3[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[4]_i_4 
       (.I0(counter_stg3_reg[5]),
        .O(\n_0_counter_stg3[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[4]_i_5 
       (.I0(counter_stg3_reg[4]),
        .O(\n_0_counter_stg3[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[8]_i_2 
       (.I0(counter_stg3_reg[11]),
        .O(\n_0_counter_stg3[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[8]_i_3 
       (.I0(counter_stg3_reg[10]),
        .O(\n_0_counter_stg3[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[8]_i_4 
       (.I0(counter_stg3_reg[9]),
        .O(\n_0_counter_stg3[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[8]_i_5 
       (.I0(counter_stg3_reg[8]),
        .O(\n_0_counter_stg3[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_7_counter_stg3_reg[0]_i_2 ),
        .Q(counter_stg3_reg[0]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_counter_stg3_reg[0]_i_2 ,\n_1_counter_stg3_reg[0]_i_2 ,\n_2_counter_stg3_reg[0]_i_2 ,\n_3_counter_stg3_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_counter_stg3_reg[0]_i_2 ,\n_5_counter_stg3_reg[0]_i_2 ,\n_6_counter_stg3_reg[0]_i_2 ,\n_7_counter_stg3_reg[0]_i_2 }),
        .S({\n_0_counter_stg3[0]_i_5 ,\n_0_counter_stg3[0]_i_6 ,\n_0_counter_stg3[0]_i_7 ,\n_0_counter_stg3[0]_i_8 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_5_counter_stg3_reg[8]_i_1 ),
        .Q(counter_stg3_reg[10]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_4_counter_stg3_reg[8]_i_1 ),
        .Q(counter_stg3_reg[11]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_6_counter_stg3_reg[0]_i_2 ),
        .Q(counter_stg3_reg[1]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_5_counter_stg3_reg[0]_i_2 ),
        .Q(counter_stg3_reg[2]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_4_counter_stg3_reg[0]_i_2 ),
        .Q(counter_stg3_reg[3]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_7_counter_stg3_reg[4]_i_1 ),
        .Q(counter_stg3_reg[4]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg3_reg[4]_i_1 
       (.CI(\n_0_counter_stg3_reg[0]_i_2 ),
        .CO({\n_0_counter_stg3_reg[4]_i_1 ,\n_1_counter_stg3_reg[4]_i_1 ,\n_2_counter_stg3_reg[4]_i_1 ,\n_3_counter_stg3_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_stg3_reg[4]_i_1 ,\n_5_counter_stg3_reg[4]_i_1 ,\n_6_counter_stg3_reg[4]_i_1 ,\n_7_counter_stg3_reg[4]_i_1 }),
        .S({\n_0_counter_stg3[4]_i_2 ,\n_0_counter_stg3[4]_i_3 ,\n_0_counter_stg3[4]_i_4 ,\n_0_counter_stg3[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_6_counter_stg3_reg[4]_i_1 ),
        .Q(counter_stg3_reg[5]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_5_counter_stg3_reg[4]_i_1 ),
        .Q(counter_stg3_reg[6]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_4_counter_stg3_reg[4]_i_1 ),
        .Q(counter_stg3_reg[7]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_7_counter_stg3_reg[8]_i_1 ),
        .Q(counter_stg3_reg[8]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg3_reg[8]_i_1 
       (.CI(\n_0_counter_stg3_reg[4]_i_1 ),
        .CO({\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_counter_stg3_reg[8]_i_1 ,\n_2_counter_stg3_reg[8]_i_1 ,\n_3_counter_stg3_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_stg3_reg[8]_i_1 ,\n_5_counter_stg3_reg[8]_i_1 ,\n_6_counter_stg3_reg[8]_i_1 ,\n_7_counter_stg3_reg[8]_i_1 }),
        .S({\n_0_counter_stg3[8]_i_2 ,\n_0_counter_stg3[8]_i_3 ,\n_0_counter_stg3[8]_i_4 ,\n_0_counter_stg3[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_6_counter_stg3_reg[8]_i_1 ),
        .Q(counter_stg3_reg[9]),
        .R(\n_0_counter_stg1[5]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     reset_i_1
       (.I0(counter_stg1_reg__0),
        .I1(n_0_reset_i_2),
        .O(reset0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     reset_i_2
       (.I0(\n_0_counter_stg3[0]_i_3 ),
        .I1(n_0_reset_i_3),
        .I2(n_0_reset_i_4),
        .I3(counter_stg2_reg[2]),
        .I4(counter_stg2_reg[0]),
        .I5(n_0_reset_i_5),
        .O(n_0_reset_i_2));
LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
     reset_i_3
       (.I0(counter_stg3_reg[3]),
        .I1(counter_stg3_reg[10]),
        .I2(counter_stg2_reg[6]),
        .I3(counter_stg3_reg[7]),
        .I4(counter_stg2_reg[7]),
        .I5(counter_stg3_reg[6]),
        .O(n_0_reset_i_3));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
     reset_i_4
       (.I0(counter_stg3_reg[9]),
        .I1(counter_stg2_reg[9]),
        .I2(counter_stg2_reg[10]),
        .I3(counter_stg3_reg[5]),
        .I4(counter_stg3_reg[8]),
        .I5(counter_stg3_reg[1]),
        .O(n_0_reset_i_4));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
     reset_i_5
       (.I0(counter_stg3_reg[11]),
        .I1(counter_stg3_reg[4]),
        .I2(counter_stg2_reg[5]),
        .I3(counter_stg3_reg[0]),
        .I4(counter_stg3_reg[2]),
        .I5(counter_stg2_reg[1]),
        .O(n_0_reset_i_5));
FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(wtd_rxpcsreset_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_resets" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_resets
   (AR,
    independent_clock_bufg,
    AS,
    reset);
  output [0:0]AR;
  input independent_clock_bufg;
  input [0:0]AS;
  input reset;

  wire [0:0]AS;
  wire independent_clock_bufg;
  wire [3:0]pma_reset_pipe;
  wire reset;

  assign AR[0] = pma_reset_pipe[3];
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDPE \pma_reset_pipe_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset),
        .PRE(AS),
        .Q(pma_reset_pipe[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDPE \pma_reset_pipe_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[0]),
        .PRE(AS),
        .Q(pma_reset_pipe[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDPE \pma_reset_pipe_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[1]),
        .PRE(AS),
        .Q(pma_reset_pipe[2]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDPE \pma_reset_pipe_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[2]),
        .PRE(AS),
        .Q(pma_reset_pipe[3]));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_support" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support
   (mmcm_locked_out,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    an_interrupt,
    status_vector,
    pma_reset_out,
    userclk2_out,
    resetdone,
    userclk_out,
    txn,
    txp,
    gtrefclk_out,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    rxuserclk2_out,
    reset,
    signal_detect,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    an_adv_config_vector,
    an_restart_config,
    configuration_vector,
    independent_clock_bufg,
    rxn,
    rxp,
    gtrefclk_p,
    gtrefclk_n);
  output mmcm_locked_out;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output an_interrupt;
  output [15:0]status_vector;
  output pma_reset_out;
  output userclk2_out;
  output resetdone;
  output userclk_out;
  output txn;
  output txp;
  output gtrefclk_out;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;
  output rxuserclk2_out;
  input reset;
  input signal_detect;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  input [4:0]configuration_vector;
  input independent_clock_bufg;
  input rxn;
  input rxp;
  input gtrefclk_p;
  input gtrefclk_n;

  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire n_0_core_clocking_i;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [15:0]status_vector;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clocking core_clocking_i
       (.AS(n_0_core_clocking_i),
        .gtrefclk(gtrefclk_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_p(gtrefclk_p),
        .mmcm_locked(mmcm_locked_out),
        .reset(reset),
        .txoutclk(txoutclk),
        .userclk(userclk_out),
        .userclk2(userclk2_out));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gt_common core_gt_common_i
       (.AR(pma_reset_out),
        .I1(gtrefclk_out),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .independent_clock_bufg(independent_clock_bufg));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_resets core_resets_i
       (.AR(pma_reset_out),
        .AS(n_0_core_clocking_i),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block pcs_pma_block_i
       (.AR(pma_reset_out),
        .CLK(userclk2_out),
        .I1(gtrefclk_out),
        .I2(userclk_out),
        .an_adv_config_vector(an_adv_config_vector),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_vector(configuration_vector),
        .data_in(mmcm_locked_out),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .signal_detect(signal_detect),
        .status_vector(status_vector),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block
   (resetdone,
    data_in,
    CLK);
  output resetdone;
  input data_in;
  input CLK;

  wire CLK;
  wire data_in;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(CLK),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync5),
        .Q(resetdone),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10
   (data_out,
    I1,
    independent_clock_bufg);
  output data_out;
  input I1;
  input independent_clock_bufg;

  wire I1;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(I1),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11
   (O1,
    data_out,
    E,
    out,
    recclk_mon_count_reset,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    independent_clock_bufg);
  output O1;
  output data_out;
  output [0:0]E;
  input [3:0]out;
  input recclk_mon_count_reset;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input independent_clock_bufg;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire O1;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire \n_0_FSM_sequential_rx_state[3]_i_3 ;
  wire [3:0]out;
  wire recclk_mon_count_reset;

LUT6 #(
    .INIT(64'hFFFFFFFF44545555)) 
     \FSM_sequential_rx_state[3]_i_1 
       (.I0(out[3]),
        .I1(\n_0_FSM_sequential_rx_state[3]_i_3 ),
        .I2(I1),
        .I3(I2),
        .I4(I3),
        .I5(I4),
        .O(E));
LUT6 #(
    .INIT(64'h00002222FFF30000)) 
     \FSM_sequential_rx_state[3]_i_3 
       (.I0(I5),
        .I1(out[1]),
        .I2(I6),
        .I3(data_out),
        .I4(out[0]),
        .I5(out[2]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFBFFF00000404)) 
     adapt_count_reset_i_1
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(data_out),
        .I4(out[3]),
        .I5(recclk_mon_count_reset),
        .O(O1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(I7),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12
   (O1,
    O2,
    O3,
    D,
    out,
    cplllock_sync,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    data_in,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    rx_state16_out,
    data_out,
    independent_clock_bufg);
  output O1;
  output O2;
  output O3;
  output [2:0]D;
  input [3:0]out;
  input cplllock_sync;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input data_in;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input rx_state16_out;
  input data_out;
  input independent_clock_bufg;

  wire [2:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O2;
  wire O3;
  wire cplllock_sync;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire independent_clock_bufg;
  wire \n_0_FSM_sequential_rx_state[0]_i_3 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_10 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_12 ;
  wire n_0_reset_time_out_i_2__0;
  wire n_0_rx_fsm_reset_done_int_i_3;
  wire n_0_rx_fsm_reset_done_int_i_4;
  wire [3:0]out;
  wire rx_state1;
  wire rx_state16_out;

LUT6 #(
    .INIT(64'hFFFFFFFF0F080000)) 
     \FSM_sequential_rx_state[0]_i_1 
       (.I0(I13),
        .I1(out[1]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(I14),
        .I5(\n_0_FSM_sequential_rx_state[0]_i_3 ),
        .O(D[0]));
LUT5 #(
    .INIT(32'h005D0055)) 
     \FSM_sequential_rx_state[0]_i_3 
       (.I0(out[0]),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(rx_state1),
        .O(\n_0_FSM_sequential_rx_state[0]_i_3 ));
LUT6 #(
    .INIT(64'h000F000F00705070)) 
     \FSM_sequential_rx_state[1]_i_1 
       (.I0(out[2]),
        .I1(rx_state16_out),
        .I2(out[0]),
        .I3(out[3]),
        .I4(rx_state1),
        .I5(out[1]),
        .O(D[1]));
LUT6 #(
    .INIT(64'h000000000000F200)) 
     \FSM_sequential_rx_state[3]_i_10 
       (.I0(I7),
        .I1(I4),
        .I2(data_valid_sync),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hEA)) 
     \FSM_sequential_rx_state[3]_i_12 
       (.I0(out[0]),
        .I1(data_valid_sync),
        .I2(out[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_12 ));
LUT6 #(
    .INIT(64'h4444888844448A88)) 
     \FSM_sequential_rx_state[3]_i_2 
       (.I0(out[3]),
        .I1(I12),
        .I2(rx_state1),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[1]),
        .O(D[2]));
LUT6 #(
    .INIT(64'hFFFFAEFFAEAEAEAE)) 
     \FSM_sequential_rx_state[3]_i_7 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_10 ),
        .I1(I8),
        .I2(\n_0_FSM_sequential_rx_state[3]_i_12 ),
        .I3(I9),
        .I4(I10),
        .I5(I11),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \FSM_sequential_rx_state[3]_i_9 
       (.I0(I4),
        .I1(I7),
        .I2(data_valid_sync),
        .O(rx_state1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_out),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFEFFFE00)) 
     reset_time_out_i_1__0
       (.I0(n_0_reset_time_out_i_2__0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .O(O1));
LUT6 #(
    .INIT(64'h0404550515155515)) 
     reset_time_out_i_2__0
       (.I0(out[2]),
        .I1(data_valid_sync),
        .I2(out[1]),
        .I3(cplllock_sync),
        .I4(out[3]),
        .I5(out[0]),
        .O(n_0_reset_time_out_i_2__0));
LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
     rx_fsm_reset_done_int_i_1
       (.I0(data_valid_sync),
        .I1(I5),
        .I2(I4),
        .I3(I6),
        .I4(n_0_rx_fsm_reset_done_int_i_3),
        .I5(data_in),
        .O(O2));
LUT5 #(
    .INIT(32'h08080800)) 
     rx_fsm_reset_done_int_i_3
       (.I0(n_0_rx_fsm_reset_done_int_i_4),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[0]),
        .O(n_0_rx_fsm_reset_done_int_i_3));
LUT6 #(
    .INIT(64'h555F55550F4F0F4F)) 
     rx_fsm_reset_done_int_i_4
       (.I0(out[1]),
        .I1(I7),
        .I2(out[0]),
        .I3(I4),
        .I4(I5),
        .I5(data_valid_sync),
        .O(n_0_rx_fsm_reset_done_int_i_4));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13
   (O1,
    SR,
    mmcm_lock_reclocked,
    Q,
    I1,
    I3,
    independent_clock_bufg);
  output O1;
  output [0:0]SR;
  input mmcm_lock_reclocked;
  input [2:0]Q;
  input I1;
  input I3;
  input independent_clock_bufg;

  wire I1;
  wire I3;
  wire O1;
  wire [2:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(I3),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1__0 
       (.I0(mmcm_lock_i),
        .O(SR));
LUT6 #(
    .INIT(64'hAAAAEAAA00000000)) 
     mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(I1),
        .I5(mmcm_lock_i),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14
   (data_out,
    data_in,
    I2);
  output data_out;
  input data_in;
  input I2;

  wire I2;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(I2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(I2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(I2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(I2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(I2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(I2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15
   (data_out,
    data_in,
    I2);
  output data_out;
  input data_in;
  input I2;

  wire I2;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(I2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(I2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(I2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(I2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(I2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(I2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_2
   (data_out,
    status_vector,
    independent_clock_bufg);
  output data_out;
  input [0:0]status_vector;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire [0:0]status_vector;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(status_vector),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_4
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_5
   (O1,
    E,
    out,
    reset_time_out,
    mmcm_lock_reclocked,
    txresetdone_s3,
    wait_time_done,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    independent_clock_bufg);
  output O1;
  output [0:0]E;
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
  input I6;
  input I7;
  input independent_clock_bufg;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire O1;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_tx_state[3]_i_7 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_8 ;
  wire \n_0_FSM_sequential_tx_state_reg[3]_i_3 ;
  wire n_0_reset_time_out_i_3;
  wire [3:0]out;
  wire reset_time_out;
  wire reset_time_out_0;
  wire txresetdone_s3;
  wire wait_time_done;

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
        .I2(I5),
        .I3(out[2]),
        .I4(I6),
        .I5(cplllock_sync),
        .O(\n_0_FSM_sequential_tx_state[3]_i_7 ));
LUT6 #(
    .INIT(64'hBAFFBAFFBAFFBA00)) 
     \FSM_sequential_tx_state[3]_i_8 
       (.I0(txresetdone_s3),
        .I1(reset_time_out),
        .I2(I3),
        .I3(out[2]),
        .I4(I4),
        .I5(cplllock_sync),
        .O(\n_0_FSM_sequential_tx_state[3]_i_8 ));
MUXF7 \FSM_sequential_tx_state_reg[3]_i_3 
       (.I0(\n_0_FSM_sequential_tx_state[3]_i_7 ),
        .I1(\n_0_FSM_sequential_tx_state[3]_i_8 ),
        .O(\n_0_FSM_sequential_tx_state_reg[3]_i_3 ),
        .S(out[1]));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(I7),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
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
        .I1(cplllock_sync),
        .I2(out[2]),
        .I3(out[1]),
        .I4(txresetdone_s3),
        .O(n_0_reset_time_out_i_3));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6
   (O1,
    SR,
    mmcm_lock_reclocked,
    Q,
    I1,
    I2,
    independent_clock_bufg);
  output O1;
  output [0:0]SR;
  input mmcm_lock_reclocked;
  input [2:0]Q;
  input I1;
  input I2;
  input independent_clock_bufg;

  wire I1;
  wire I2;
  wire O1;
  wire [2:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(I2),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1 
       (.I0(mmcm_lock_i),
        .O(SR));
LUT6 #(
    .INIT(64'hAAAAEAAA00000000)) 
     mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(I1),
        .I5(mmcm_lock_i),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7
   (data_out,
    data_in,
    I2);
  output data_out;
  input data_in;
  input I2;

  wire I2;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(I2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(I2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(I2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(I2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(I2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(I2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9
   (data_out,
    gt0_txresetdone_out_i,
    I2);
  output data_out;
  input gt0_txresetdone_out_i;
  input I2;

  wire I2;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_txresetdone_out_i;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(I2),
        .CE(1'b1),
        .D(gt0_txresetdone_out_i),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(I2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(I2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(I2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(I2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(I2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_transceiver" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver
   (txn,
    txp,
    rxoutclk_i,
    txoutclk,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxbufstatus,
    txbuferr,
    Q,
    O1,
    reset_done,
    independent_clock_bufg,
    CLK,
    I1,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    I2,
    SR,
    I3,
    powerdown,
    D,
    I4,
    I5,
    AR,
    status_vector,
    enablealign,
    data_in,
    I6);
  output txn;
  output txp;
  output rxoutclk_i;
  output txoutclk;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [0:0]rxbufstatus;
  output txbuferr;
  output [1:0]Q;
  output [7:0]O1;
  output reset_done;
  input independent_clock_bufg;
  input CLK;
  input I1;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input I2;
  input [0:0]SR;
  input [0:0]I3;
  input powerdown;
  input [0:0]D;
  input [0:0]I4;
  input [0:0]I5;
  input [0:0]AR;
  input [0:0]status_vector;
  input enablealign;
  input data_in;
  input [7:0]I6;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [0:0]I4;
  wire [0:0]I5;
  wire [7:0]I6;
  wire [7:0]O1;
  wire [1:0]Q;
  wire [0:0]SR;
  wire data_in;
  wire data_valid_reg2;
  wire enablealign;
  wire encommaalign_int;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire independent_clock_bufg;
  wire n_0_rxchariscomma_i_1;
  wire n_0_rxcharisk_i_1;
  wire \n_0_rxdata[0]_i_1 ;
  wire \n_0_rxdata[1]_i_1 ;
  wire \n_0_rxdata[2]_i_1 ;
  wire \n_0_rxdata[3]_i_1 ;
  wire \n_0_rxdata[4]_i_1 ;
  wire \n_0_rxdata[5]_i_1 ;
  wire \n_0_rxdata[6]_i_1 ;
  wire \n_0_rxdata[7]_i_1 ;
  wire n_0_rxdisperr_i_1;
  wire n_0_rxnotintable_i_1;
  wire n_0_toggle_i_1;
  wire \n_0_txbufstatus_reg_reg[1] ;
  wire n_6_gtwizard_inst;
  wire n_7_gtwizard_inst;
  wire p_0_in;
  wire powerdown;
  wire reset_done;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire [1:0]rxchariscomma_int;
  wire [1:0]rxchariscomma_reg__0;
  wire [0:0]rxcharisk;
  wire [1:0]rxcharisk_double;
  wire [1:0]rxcharisk_int;
  wire [1:0]rxcharisk_reg__0;
  wire [1:0]rxclkcorcnt_int;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_int;
  wire [15:0]rxdata_reg;
  wire [0:0]rxdisperr;
  wire [1:0]rxdisperr_double;
  wire [1:0]rxdisperr_int;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire [0:0]rxnotintable;
  wire [1:0]rxnotintable_double;
  wire [1:0]rxnotintable_int;
  wire [1:0]rxnotintable_reg__0;
  wire rxoutclk_i;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire rxreset_int;
  wire [0:0]status_vector;
  wire toggle;
  wire txbuferr;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire txchardispmode_reg;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire txreset_int;
  wire wtd_rxpcsreset_in;

gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD gtwizard_inst
       (.AR(AR),
        .CLK(CLK),
        .D(rxclkcorcnt_int),
        .I1(I1),
        .I2(I2),
        .I3(txchardispmode_int),
        .I4(txchardispval_int),
        .I5(txcharisk_int),
        .I6(rxreset_int),
        .I7(txreset_int),
        .O1(rxdata_int),
        .O2(rxchariscomma_int),
        .O3(rxcharisk_int),
        .O4(rxdisperr_int),
        .O5(rxnotintable_int),
        .Q(txdata_int),
        .RXBUFSTATUS(n_7_gtwizard_inst),
        .RXPD(rxpowerdown),
        .TXBUFSTATUS(n_6_gtwizard_inst),
        .TXPD(txpowerdown),
        .data_in(data_in),
        .data_out(data_valid_reg2),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_done(reset_done),
        .reset_out(encommaalign_int),
        .rxn(rxn),
        .rxoutclk_i(rxoutclk_i),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync reclock_encommaalign
       (.I2(I2),
        .enablealign(enablealign),
        .reset_out(encommaalign_int));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_0 reclock_rxreset
       (.I2(I2),
        .I3(I3),
        .reset_out(rxreset_int));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1 reclock_txreset
       (.I2(I2),
        .SR(SR),
        .reset_out(txreset_int));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer reset_wtd_timer
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .wtd_rxpcsreset_in(wtd_rxpcsreset_in));
FDRE rxbuferr_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rxbufstatus),
        .R(1'b0));
FDRE \rxbufstatus_reg_reg[2] 
       (.C(I2),
        .CE(1'b1),
        .D(n_7_gtwizard_inst),
        .Q(p_0_in),
        .R(1'b0));
FDRE \rxchariscomma_double_reg[0] 
       (.C(CLK),
        .CE(toggle),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(I3));
FDRE \rxchariscomma_double_reg[1] 
       (.C(CLK),
        .CE(toggle),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(I3));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle),
        .I2(rxchariscomma_double[0]),
        .O(n_0_rxchariscomma_i_1));
FDRE rxchariscomma_reg
       (.C(CLK),
        .CE(1'b1),
        .D(n_0_rxchariscomma_i_1),
        .Q(rxchariscomma),
        .R(I3));
FDRE \rxchariscomma_reg_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(rxchariscomma_int[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
FDRE \rxchariscomma_reg_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(rxchariscomma_int[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(1'b0));
FDRE \rxcharisk_double_reg[0] 
       (.C(CLK),
        .CE(toggle),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(I3));
FDRE \rxcharisk_double_reg[1] 
       (.C(CLK),
        .CE(toggle),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(I3));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle),
        .I2(rxcharisk_double[0]),
        .O(n_0_rxcharisk_i_1));
FDRE rxcharisk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(n_0_rxcharisk_i_1),
        .Q(rxcharisk),
        .R(I3));
FDRE \rxcharisk_reg_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(rxcharisk_int[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
FDRE \rxcharisk_reg_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(rxcharisk_int[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(1'b0));
FDRE \rxclkcorcnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxclkcorcnt_int[0]),
        .Q(Q[0]),
        .R(1'b0));
FDRE \rxclkcorcnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxclkcorcnt_int[1]),
        .Q(Q[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(rxdata_double[0]),
        .I2(toggle),
        .O(\n_0_rxdata[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(rxdata_double[1]),
        .I2(toggle),
        .O(\n_0_rxdata[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(rxdata_double[2]),
        .I2(toggle),
        .O(\n_0_rxdata[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(rxdata_double[3]),
        .I2(toggle),
        .O(\n_0_rxdata[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(rxdata_double[4]),
        .I2(toggle),
        .O(\n_0_rxdata[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(rxdata_double[5]),
        .I2(toggle),
        .O(\n_0_rxdata[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(rxdata_double[6]),
        .I2(toggle),
        .O(\n_0_rxdata[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(rxdata_double[7]),
        .I2(toggle),
        .O(\n_0_rxdata[7]_i_1 ));
FDRE \rxdata_double_reg[0] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(I3));
FDRE \rxdata_double_reg[10] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(I3));
FDRE \rxdata_double_reg[11] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(I3));
FDRE \rxdata_double_reg[12] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(I3));
FDRE \rxdata_double_reg[13] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(I3));
FDRE \rxdata_double_reg[14] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(I3));
FDRE \rxdata_double_reg[15] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(I3));
FDRE \rxdata_double_reg[1] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(I3));
FDRE \rxdata_double_reg[2] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(I3));
FDRE \rxdata_double_reg[3] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(I3));
FDRE \rxdata_double_reg[4] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(I3));
FDRE \rxdata_double_reg[5] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(I3));
FDRE \rxdata_double_reg[6] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(I3));
FDRE \rxdata_double_reg[7] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(I3));
FDRE \rxdata_double_reg[8] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(I3));
FDRE \rxdata_double_reg[9] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(I3));
FDRE \rxdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_rxdata[0]_i_1 ),
        .Q(O1[0]),
        .R(I3));
FDRE \rxdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_rxdata[1]_i_1 ),
        .Q(O1[1]),
        .R(I3));
FDRE \rxdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_rxdata[2]_i_1 ),
        .Q(O1[2]),
        .R(I3));
FDRE \rxdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_rxdata[3]_i_1 ),
        .Q(O1[3]),
        .R(I3));
FDRE \rxdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_rxdata[4]_i_1 ),
        .Q(O1[4]),
        .R(I3));
FDRE \rxdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_rxdata[5]_i_1 ),
        .Q(O1[5]),
        .R(I3));
FDRE \rxdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_rxdata[6]_i_1 ),
        .Q(O1[6]),
        .R(I3));
FDRE \rxdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_rxdata[7]_i_1 ),
        .Q(O1[7]),
        .R(I3));
FDRE \rxdata_reg_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
FDRE \rxdata_reg_reg[10] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
FDRE \rxdata_reg_reg[11] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
FDRE \rxdata_reg_reg[12] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
FDRE \rxdata_reg_reg[13] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
FDRE \rxdata_reg_reg[14] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
FDRE \rxdata_reg_reg[15] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
FDRE \rxdata_reg_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
FDRE \rxdata_reg_reg[2] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
FDRE \rxdata_reg_reg[3] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
FDRE \rxdata_reg_reg[4] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
FDRE \rxdata_reg_reg[5] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
FDRE \rxdata_reg_reg[6] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
FDRE \rxdata_reg_reg[7] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
FDRE \rxdata_reg_reg[8] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
FDRE \rxdata_reg_reg[9] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_reg[9]),
        .R(1'b0));
FDRE \rxdisperr_double_reg[0] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(I3));
FDRE \rxdisperr_double_reg[1] 
       (.C(CLK),
        .CE(toggle),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(I3));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle),
        .I2(rxdisperr_double[0]),
        .O(n_0_rxdisperr_i_1));
FDRE rxdisperr_reg
       (.C(CLK),
        .CE(1'b1),
        .D(n_0_rxdisperr_i_1),
        .Q(rxdisperr),
        .R(I3));
FDRE \rxdisperr_reg_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdisperr_int[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
FDRE \rxdisperr_reg_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(rxdisperr_int[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(1'b0));
FDRE \rxnotintable_double_reg[0] 
       (.C(CLK),
        .CE(toggle),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(I3));
FDRE \rxnotintable_double_reg[1] 
       (.C(CLK),
        .CE(toggle),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(I3));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle),
        .I2(rxnotintable_double[0]),
        .O(n_0_rxnotintable_i_1));
FDRE rxnotintable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(n_0_rxnotintable_i_1),
        .Q(rxnotintable),
        .R(I3));
FDRE \rxnotintable_reg_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(rxnotintable_int[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
FDRE \rxnotintable_reg_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(rxnotintable_int[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_double_reg
       (.C(CLK),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_double),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_reg
       (.C(I2),
        .CE(1'b1),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rxpowerdown_double),
        .Q(rxpowerdown_reg__0),
        .R(I3));
gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_2 sync_block_data_valid
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .status_vector(status_vector));
LUT1 #(
    .INIT(2'h1)) 
     toggle_i_1
       (.I0(toggle),
        .O(n_0_toggle_i_1));
FDRE toggle_reg
       (.C(CLK),
        .CE(1'b1),
        .D(n_0_toggle_i_1),
        .Q(toggle),
        .R(SR));
FDRE txbuferr_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\n_0_txbufstatus_reg_reg[1] ),
        .Q(txbuferr),
        .R(1'b0));
FDRE \txbufstatus_reg_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(n_6_gtwizard_inst),
        .Q(\n_0_txbufstatus_reg_reg[1] ),
        .R(1'b0));
FDRE \txchardispmode_double_reg[0] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txchardispmode_reg),
        .Q(txchardispmode_double[0]),
        .R(SR));
FDRE \txchardispmode_double_reg[1] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(D),
        .Q(txchardispmode_double[1]),
        .R(SR));
FDRE \txchardispmode_int_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
FDRE \txchardispmode_int_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
FDRE txchardispmode_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(txchardispmode_reg),
        .R(SR));
FDRE \txchardispval_double_reg[0] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(SR));
FDRE \txchardispval_double_reg[1] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I4),
        .Q(txchardispval_double[1]),
        .R(SR));
FDRE \txchardispval_int_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
FDRE \txchardispval_int_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
FDRE txchardispval_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(I4),
        .Q(txchardispval_reg),
        .R(SR));
FDRE \txcharisk_double_reg[0] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(SR));
FDRE \txcharisk_double_reg[1] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I5),
        .Q(txcharisk_double[1]),
        .R(SR));
FDRE \txcharisk_int_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
FDRE \txcharisk_int_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
FDRE txcharisk_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(I5),
        .Q(txcharisk_reg),
        .R(SR));
FDRE \txdata_double_reg[0] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(SR));
FDRE \txdata_double_reg[10] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I6[2]),
        .Q(txdata_double[10]),
        .R(SR));
FDRE \txdata_double_reg[11] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I6[3]),
        .Q(txdata_double[11]),
        .R(SR));
FDRE \txdata_double_reg[12] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I6[4]),
        .Q(txdata_double[12]),
        .R(SR));
FDRE \txdata_double_reg[13] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I6[5]),
        .Q(txdata_double[13]),
        .R(SR));
FDRE \txdata_double_reg[14] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I6[6]),
        .Q(txdata_double[14]),
        .R(SR));
FDRE \txdata_double_reg[15] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I6[7]),
        .Q(txdata_double[15]),
        .R(SR));
FDRE \txdata_double_reg[1] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(SR));
FDRE \txdata_double_reg[2] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(SR));
FDRE \txdata_double_reg[3] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(SR));
FDRE \txdata_double_reg[4] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(SR));
FDRE \txdata_double_reg[5] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(SR));
FDRE \txdata_double_reg[6] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(SR));
FDRE \txdata_double_reg[7] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(SR));
FDRE \txdata_double_reg[8] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I6[0]),
        .Q(txdata_double[8]),
        .R(SR));
FDRE \txdata_double_reg[9] 
       (.C(CLK),
        .CE(n_0_toggle_i_1),
        .D(I6[1]),
        .Q(txdata_double[9]),
        .R(SR));
FDRE \txdata_int_reg[0] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
FDRE \txdata_int_reg[10] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
FDRE \txdata_int_reg[11] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
FDRE \txdata_int_reg[12] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
FDRE \txdata_int_reg[13] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
FDRE \txdata_int_reg[14] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
FDRE \txdata_int_reg[15] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
FDRE \txdata_int_reg[1] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
FDRE \txdata_int_reg[2] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
FDRE \txdata_int_reg[3] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
FDRE \txdata_int_reg[4] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
FDRE \txdata_int_reg[5] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
FDRE \txdata_int_reg[6] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
FDRE \txdata_int_reg[7] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
FDRE \txdata_int_reg[8] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
FDRE \txdata_int_reg[9] 
       (.C(I2),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
FDRE \txdata_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(I6[0]),
        .Q(txdata_reg[0]),
        .R(SR));
FDRE \txdata_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(I6[1]),
        .Q(txdata_reg[1]),
        .R(SR));
FDRE \txdata_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(I6[2]),
        .Q(txdata_reg[2]),
        .R(SR));
FDRE \txdata_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(I6[3]),
        .Q(txdata_reg[3]),
        .R(SR));
FDRE \txdata_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(I6[4]),
        .Q(txdata_reg[4]),
        .R(SR));
FDRE \txdata_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(I6[5]),
        .Q(txdata_reg[5]),
        .R(SR));
FDRE \txdata_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(I6[6]),
        .Q(txdata_reg[6]),
        .R(SR));
FDRE \txdata_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(I6[7]),
        .Q(txdata_reg[7]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_double_reg
       (.C(CLK),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_reg
       (.C(I2),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(SR));
endmodule

(* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_0" *) (* C_FAMILY = "virtex7" *) 
(* C_IS_SGMII = "FALSE" *) (* C_USE_TRANSCEIVER = "TRUE" *) (* C_HAS_TEMAC = "TRUE" *) 
(* C_USE_TBI = "FALSE" *) (* C_USE_LVDS = "FALSE" *) (* C_HAS_AN = "TRUE" *) 
(* C_HAS_MDIO = "FALSE" *) (* C_SGMII_PHY_MODE = "FALSE" *) (* C_DYNAMIC_SWITCHING = "FALSE" *) 
(* C_TRANSCEIVER_MODE = "A" *) (* C_SGMII_FABRIC_BUFFER = "TRUE" *) (* C_1588 = "0" *) 
(* B_SHIFTER_ADDR = "8'b01001110" *) (* RX_GT_NOMINAL_LATENCY = "16'b0000000011001000" *) (* GT_RX_BYTE_WIDTH = "1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "gig_ethernet_pcs_pma_v14_3" *) 
module gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v14_3
   (reset,
    signal_detect,
    link_timer_value,
    link_timer_basex,
    link_timer_sgmii,
    mgt_rx_reset,
    mgt_tx_reset,
    userclk,
    userclk2,
    dcm_locked,
    rxbufstatus,
    rxchariscomma,
    rxcharisk,
    rxclkcorcnt,
    rxdata,
    rxdisperr,
    rxnotintable,
    rxrundisp,
    txbuferr,
    powerdown,
    txchardispmode,
    txchardispval,
    txcharisk,
    txdata,
    enablealign,
    gtx_clk,
    tx_code_group,
    loc_ref,
    ewrap,
    rx_code_group0,
    rx_code_group1,
    pma_rx_clk0,
    pma_rx_clk1,
    en_cdet,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    an_interrupt,
    an_enable,
    speed_selection,
    phyad,
    mdc,
    mdio_in,
    mdio_out,
    mdio_tri,
    an_adv_config_vector,
    an_adv_config_val,
    an_restart_config,
    configuration_vector,
    configuration_valid,
    status_vector,
    basex_or_sgmii,
    drp_dclk,
    drp_req,
    drp_gnt,
    drp_den,
    drp_dwe,
    drp_drdy,
    drp_daddr,
    drp_di,
    drp_do,
    systemtimer_s_field,
    systemtimer_ns_field,
    correction_timer,
    rxrecclk,
    rxphy_s_field,
    rxphy_ns_field,
    rxphy_correction_timer,
    reset_done);
  input reset;
  input signal_detect;
  input [8:0]link_timer_value;
  input [8:0]link_timer_basex;
  input [8:0]link_timer_sgmii;
  output mgt_rx_reset;
  output mgt_tx_reset;
  input userclk;
  input userclk2;
  input dcm_locked;
  input [1:0]rxbufstatus;
  input [0:0]rxchariscomma;
  input [0:0]rxcharisk;
  input [2:0]rxclkcorcnt;
  input [7:0]rxdata;
  input [0:0]rxdisperr;
  input [0:0]rxnotintable;
  input [0:0]rxrundisp;
  input txbuferr;
  output powerdown;
  output txchardispmode;
  output txchardispval;
  output txcharisk;
  output [7:0]txdata;
  output enablealign;
  input gtx_clk;
  output [9:0]tx_code_group;
  output loc_ref;
  output ewrap;
  input [9:0]rx_code_group0;
  input [9:0]rx_code_group1;
  input pma_rx_clk0;
  input pma_rx_clk1;
  output en_cdet;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output an_interrupt;
  output an_enable;
  output [1:0]speed_selection;
  input [4:0]phyad;
  input mdc;
  input mdio_in;
  output mdio_out;
  output mdio_tri;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  input [4:0]configuration_vector;
  input configuration_valid;
  output [15:0]status_vector;
  input basex_or_sgmii;
  input drp_dclk;
  output drp_req;
  input drp_gnt;
  output drp_den;
  output drp_dwe;
  input drp_drdy;
  output [8:0]drp_daddr;
  output [15:0]drp_di;
  input [15:0]drp_do;
  input [47:0]systemtimer_s_field;
  input [31:0]systemtimer_ns_field;
  input [63:0]correction_timer;
  input rxrecclk;
  output [47:0]rxphy_s_field;
  output [31:0]rxphy_ns_field;
  output [63:0]rxphy_correction_timer;
  input reset_done;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]an_adv_config_vector;
  wire an_interrupt;
  wire an_restart_config;
  wire [4:0]configuration_vector;
  wire dcm_locked;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire [8:0]link_timer_value;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire powerdown;
  wire reset;
  wire reset_done;
  wire [1:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [0:0]rxcharisk;
  wire [2:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire [0:0]rxdisperr;
  wire [0:0]rxnotintable;
  wire [0:0]rxrundisp;
  wire signal_detect;
  wire [15:0]\^status_vector ;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire userclk;
  wire userclk2;

  assign an_enable = \<const0> ;
  assign drp_daddr[8] = \<const0> ;
  assign drp_daddr[7] = \<const0> ;
  assign drp_daddr[6] = \<const0> ;
  assign drp_daddr[5] = \<const0> ;
  assign drp_daddr[4] = \<const0> ;
  assign drp_daddr[3] = \<const0> ;
  assign drp_daddr[2] = \<const0> ;
  assign drp_daddr[1] = \<const0> ;
  assign drp_daddr[0] = \<const0> ;
  assign drp_den = \<const0> ;
  assign drp_di[15] = \<const0> ;
  assign drp_di[14] = \<const0> ;
  assign drp_di[13] = \<const0> ;
  assign drp_di[12] = \<const0> ;
  assign drp_di[11] = \<const0> ;
  assign drp_di[10] = \<const0> ;
  assign drp_di[9] = \<const0> ;
  assign drp_di[8] = \<const0> ;
  assign drp_di[7] = \<const0> ;
  assign drp_di[6] = \<const0> ;
  assign drp_di[5] = \<const0> ;
  assign drp_di[4] = \<const0> ;
  assign drp_di[3] = \<const0> ;
  assign drp_di[2] = \<const0> ;
  assign drp_di[1] = \<const0> ;
  assign drp_di[0] = \<const0> ;
  assign drp_dwe = \<const0> ;
  assign drp_req = \<const0> ;
  assign en_cdet = \<const0> ;
  assign ewrap = \<const0> ;
  assign loc_ref = \<const0> ;
  assign mdio_out = \<const1> ;
  assign mdio_tri = \<const1> ;
  assign rxphy_correction_timer[63] = \<const0> ;
  assign rxphy_correction_timer[62] = \<const0> ;
  assign rxphy_correction_timer[61] = \<const0> ;
  assign rxphy_correction_timer[60] = \<const0> ;
  assign rxphy_correction_timer[59] = \<const0> ;
  assign rxphy_correction_timer[58] = \<const0> ;
  assign rxphy_correction_timer[57] = \<const0> ;
  assign rxphy_correction_timer[56] = \<const0> ;
  assign rxphy_correction_timer[55] = \<const0> ;
  assign rxphy_correction_timer[54] = \<const0> ;
  assign rxphy_correction_timer[53] = \<const0> ;
  assign rxphy_correction_timer[52] = \<const0> ;
  assign rxphy_correction_timer[51] = \<const0> ;
  assign rxphy_correction_timer[50] = \<const0> ;
  assign rxphy_correction_timer[49] = \<const0> ;
  assign rxphy_correction_timer[48] = \<const0> ;
  assign rxphy_correction_timer[47] = \<const0> ;
  assign rxphy_correction_timer[46] = \<const0> ;
  assign rxphy_correction_timer[45] = \<const0> ;
  assign rxphy_correction_timer[44] = \<const0> ;
  assign rxphy_correction_timer[43] = \<const0> ;
  assign rxphy_correction_timer[42] = \<const0> ;
  assign rxphy_correction_timer[41] = \<const0> ;
  assign rxphy_correction_timer[40] = \<const0> ;
  assign rxphy_correction_timer[39] = \<const0> ;
  assign rxphy_correction_timer[38] = \<const0> ;
  assign rxphy_correction_timer[37] = \<const0> ;
  assign rxphy_correction_timer[36] = \<const0> ;
  assign rxphy_correction_timer[35] = \<const0> ;
  assign rxphy_correction_timer[34] = \<const0> ;
  assign rxphy_correction_timer[33] = \<const0> ;
  assign rxphy_correction_timer[32] = \<const0> ;
  assign rxphy_correction_timer[31] = \<const0> ;
  assign rxphy_correction_timer[30] = \<const0> ;
  assign rxphy_correction_timer[29] = \<const0> ;
  assign rxphy_correction_timer[28] = \<const0> ;
  assign rxphy_correction_timer[27] = \<const0> ;
  assign rxphy_correction_timer[26] = \<const0> ;
  assign rxphy_correction_timer[25] = \<const0> ;
  assign rxphy_correction_timer[24] = \<const0> ;
  assign rxphy_correction_timer[23] = \<const0> ;
  assign rxphy_correction_timer[22] = \<const0> ;
  assign rxphy_correction_timer[21] = \<const0> ;
  assign rxphy_correction_timer[20] = \<const0> ;
  assign rxphy_correction_timer[19] = \<const0> ;
  assign rxphy_correction_timer[18] = \<const0> ;
  assign rxphy_correction_timer[17] = \<const0> ;
  assign rxphy_correction_timer[16] = \<const0> ;
  assign rxphy_correction_timer[15] = \<const0> ;
  assign rxphy_correction_timer[14] = \<const0> ;
  assign rxphy_correction_timer[13] = \<const0> ;
  assign rxphy_correction_timer[12] = \<const0> ;
  assign rxphy_correction_timer[11] = \<const0> ;
  assign rxphy_correction_timer[10] = \<const0> ;
  assign rxphy_correction_timer[9] = \<const0> ;
  assign rxphy_correction_timer[8] = \<const0> ;
  assign rxphy_correction_timer[7] = \<const0> ;
  assign rxphy_correction_timer[6] = \<const0> ;
  assign rxphy_correction_timer[5] = \<const0> ;
  assign rxphy_correction_timer[4] = \<const0> ;
  assign rxphy_correction_timer[3] = \<const0> ;
  assign rxphy_correction_timer[2] = \<const0> ;
  assign rxphy_correction_timer[1] = \<const0> ;
  assign rxphy_correction_timer[0] = \<const0> ;
  assign rxphy_ns_field[31] = \<const0> ;
  assign rxphy_ns_field[30] = \<const0> ;
  assign rxphy_ns_field[29] = \<const0> ;
  assign rxphy_ns_field[28] = \<const0> ;
  assign rxphy_ns_field[27] = \<const0> ;
  assign rxphy_ns_field[26] = \<const0> ;
  assign rxphy_ns_field[25] = \<const0> ;
  assign rxphy_ns_field[24] = \<const0> ;
  assign rxphy_ns_field[23] = \<const0> ;
  assign rxphy_ns_field[22] = \<const0> ;
  assign rxphy_ns_field[21] = \<const0> ;
  assign rxphy_ns_field[20] = \<const0> ;
  assign rxphy_ns_field[19] = \<const0> ;
  assign rxphy_ns_field[18] = \<const0> ;
  assign rxphy_ns_field[17] = \<const0> ;
  assign rxphy_ns_field[16] = \<const0> ;
  assign rxphy_ns_field[15] = \<const0> ;
  assign rxphy_ns_field[14] = \<const0> ;
  assign rxphy_ns_field[13] = \<const0> ;
  assign rxphy_ns_field[12] = \<const0> ;
  assign rxphy_ns_field[11] = \<const0> ;
  assign rxphy_ns_field[10] = \<const0> ;
  assign rxphy_ns_field[9] = \<const0> ;
  assign rxphy_ns_field[8] = \<const0> ;
  assign rxphy_ns_field[7] = \<const0> ;
  assign rxphy_ns_field[6] = \<const0> ;
  assign rxphy_ns_field[5] = \<const0> ;
  assign rxphy_ns_field[4] = \<const0> ;
  assign rxphy_ns_field[3] = \<const0> ;
  assign rxphy_ns_field[2] = \<const0> ;
  assign rxphy_ns_field[1] = \<const0> ;
  assign rxphy_ns_field[0] = \<const0> ;
  assign rxphy_s_field[47] = \<const0> ;
  assign rxphy_s_field[46] = \<const0> ;
  assign rxphy_s_field[45] = \<const0> ;
  assign rxphy_s_field[44] = \<const0> ;
  assign rxphy_s_field[43] = \<const0> ;
  assign rxphy_s_field[42] = \<const0> ;
  assign rxphy_s_field[41] = \<const0> ;
  assign rxphy_s_field[40] = \<const0> ;
  assign rxphy_s_field[39] = \<const0> ;
  assign rxphy_s_field[38] = \<const0> ;
  assign rxphy_s_field[37] = \<const0> ;
  assign rxphy_s_field[36] = \<const0> ;
  assign rxphy_s_field[35] = \<const0> ;
  assign rxphy_s_field[34] = \<const0> ;
  assign rxphy_s_field[33] = \<const0> ;
  assign rxphy_s_field[32] = \<const0> ;
  assign rxphy_s_field[31] = \<const0> ;
  assign rxphy_s_field[30] = \<const0> ;
  assign rxphy_s_field[29] = \<const0> ;
  assign rxphy_s_field[28] = \<const0> ;
  assign rxphy_s_field[27] = \<const0> ;
  assign rxphy_s_field[26] = \<const0> ;
  assign rxphy_s_field[25] = \<const0> ;
  assign rxphy_s_field[24] = \<const0> ;
  assign rxphy_s_field[23] = \<const0> ;
  assign rxphy_s_field[22] = \<const0> ;
  assign rxphy_s_field[21] = \<const0> ;
  assign rxphy_s_field[20] = \<const0> ;
  assign rxphy_s_field[19] = \<const0> ;
  assign rxphy_s_field[18] = \<const0> ;
  assign rxphy_s_field[17] = \<const0> ;
  assign rxphy_s_field[16] = \<const0> ;
  assign rxphy_s_field[15] = \<const0> ;
  assign rxphy_s_field[14] = \<const0> ;
  assign rxphy_s_field[13] = \<const0> ;
  assign rxphy_s_field[12] = \<const0> ;
  assign rxphy_s_field[11] = \<const0> ;
  assign rxphy_s_field[10] = \<const0> ;
  assign rxphy_s_field[9] = \<const0> ;
  assign rxphy_s_field[8] = \<const0> ;
  assign rxphy_s_field[7] = \<const0> ;
  assign rxphy_s_field[6] = \<const0> ;
  assign rxphy_s_field[5] = \<const0> ;
  assign rxphy_s_field[4] = \<const0> ;
  assign rxphy_s_field[3] = \<const0> ;
  assign rxphy_s_field[2] = \<const0> ;
  assign rxphy_s_field[1] = \<const0> ;
  assign rxphy_s_field[0] = \<const0> ;
  assign speed_selection[1] = \<const1> ;
  assign speed_selection[0] = \<const0> ;
  assign status_vector[15:12] = \^status_vector [15:12];
  assign status_vector[11] = \<const1> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9:8] = \^status_vector [9:8];
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  assign tx_code_group[9] = \<const0> ;
  assign tx_code_group[8] = \<const0> ;
  assign tx_code_group[7] = \<const0> ;
  assign tx_code_group[6] = \<const0> ;
  assign tx_code_group[5] = \<const0> ;
  assign tx_code_group[4] = \<const0> ;
  assign tx_code_group[3] = \<const0> ;
  assign tx_code_group[2] = \<const0> ;
  assign tx_code_group[1] = \<const0> ;
  assign tx_code_group[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
gig_ethernet_pcs_pma_0_GPCS_PMA_GEN gpcs_pma_inst
       (.MGT_RX_RESET(mgt_rx_reset),
        .MGT_TX_RESET(mgt_tx_reset),
        .Q({gmii_isolate,powerdown}),
        .an_adv_config_vector({an_adv_config_vector[15],an_adv_config_vector[13:11],an_adv_config_vector[8:7],an_adv_config_vector[5]}),
        .an_interrupt(an_interrupt),
        .an_restart_config(an_restart_config),
        .configuration_vector(configuration_vector),
        .dcm_locked(dcm_locked),
        .enablealign(enablealign),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_timer_value(link_timer_value),
        .reset(reset),
        .reset_done(reset_done),
        .rxbufstatus(rxbufstatus[1]),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt(rxclkcorcnt),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .signal_detect(signal_detect),
        .status_vector({\^status_vector [15:12],\^status_vector [9:8],\^status_vector [6:0]}),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "sync_block" *) 
module gig_ethernet_pcs_pma_0_sync_block__parameterized0
   (MASK_RUDI_BUFERR_TIMER0,
    data_out,
    SIGNAL_DETECT_MOD,
    p_0_in,
    Q,
    signal_detect,
    userclk2);
  output MASK_RUDI_BUFERR_TIMER0;
  output data_out;
  output SIGNAL_DETECT_MOD;
  input p_0_in;
  input [0:0]Q;
  input signal_detect;
  input userclk2;

  wire MASK_RUDI_BUFERR_TIMER0;
  wire [0:0]Q;
  wire SIGNAL_DETECT_MOD;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire p_0_in;
  wire signal_detect;
  wire userclk2;

(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'h20)) 
     \MASK_RUDI_BUFERR_TIMER[8]_i_3 
       (.I0(p_0_in),
        .I1(Q),
        .I2(data_out),
        .O(MASK_RUDI_BUFERR_TIMER0));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT2 #(
    .INIT(4'h2)) 
     SIGNAL_DETECT_REG_i_1
       (.I0(data_out),
        .I1(Q),
        .O(SIGNAL_DETECT_MOD));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(signal_detect),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
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
