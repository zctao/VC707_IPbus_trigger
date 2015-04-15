-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Mon Apr 13 14:01:09 2015
-- Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/ZhengchengTao/Documents/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_1/aurora_8b10b_1_funcsim.vhdl
-- Design      : aurora_8b10b_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_AXI_TO_LL is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_AXI_TO_LL : entity is "aurora_8b10b_1_AXI_TO_LL";
end aurora_8b10b_1_aurora_8b10b_1_AXI_TO_LL;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_AXI_TO_LL is
  signal \^o1\ : STD_LOGIC;
  signal new_pkt_r : STD_LOGIC;
begin
  O1 <= \^o1\;
new_pkt_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202000302020"
    )
    port map (
      I0 => \^o1\,
      I1 => SR(0),
      I2 => I1,
      I3 => s_axi_tx_tlast,
      I4 => s_axi_tx_tvalid,
      I5 => tx_dst_rdy,
      O => new_pkt_r
    );
new_pkt_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => new_pkt_r,
      Q => \^o1\,
      R => '0'
    );
sof_data_eof_1_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => tx_dst_rdy,
      O => O2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_CHANNEL_ERR_DETECT is
  port (
    \^hard_err\ : out STD_LOGIC;
    reset_channel_i : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    wait_for_lane_up_r0 : out STD_LOGIC;
    HARD_ERR : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    I2 : in STD_LOGIC;
    power_down : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_CHANNEL_ERR_DETECT : entity is "aurora_8b10b_1_CHANNEL_ERR_DETECT";
end aurora_8b10b_1_aurora_8b10b_1_CHANNEL_ERR_DETECT;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_CHANNEL_ERR_DETECT is
  signal hard_err_r : STD_LOGIC;
  signal lane_up_r : STD_LOGIC;
  signal n_0_RESET_CHANNEL_i_1 : STD_LOGIC;
  signal n_0_soft_err_r_reg_srl3 : STD_LOGIC;
  signal \^reset_channel_i\ : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of soft_err_r_reg_srl3 : label is "\inst/global_logic_i/channel_err_detect_i/soft_err_r_reg_srl3 ";
begin
  reset_channel_i <= \^reset_channel_i\;
CHANNEL_HARD_ERR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => hard_err_r,
      Q => \^hard_err\,
      R => '0'
    );
CHANNEL_SOFT_ERR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_soft_err_r_reg_srl3,
      Q => soft_err,
      R => '0'
    );
RESET_CHANNEL_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => power_down,
      I1 => lane_up_r,
      O => n_0_RESET_CHANNEL_i_1
    );
RESET_CHANNEL_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_RESET_CHANNEL_i_1,
      Q => \^reset_channel_i\,
      R => '0'
    );
hard_err_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => HARD_ERR,
      Q => hard_err_r,
      R => '0'
    );
lane_up_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => lane_up,
      Q => lane_up_r,
      R => '0'
    );
ready_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^reset_channel_i\,
      I1 => I1(0),
      O => wait_for_lane_up_r0
    );
soft_err_r_reg_srl3: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => I2,
      Q => n_0_soft_err_r_reg_srl3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_CHANNEL_INIT_SM is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    gen_ver_i : out STD_LOGIC;
    gtrxreset_i_0 : out STD_LOGIC;
    START_RX : out STD_LOGIC;
    reset_i : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    wait_for_lane_up_r0 : in STD_LOGIC;
    GOT_V : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txver_count_r0 : in STD_LOGIC;
    reset_channel_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_CHANNEL_INIT_SM : entity is "aurora_8b10b_1_CHANNEL_INIT_SM";
end aurora_8b10b_1_aurora_8b10b_1_CHANNEL_INIT_SM;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_CHANNEL_INIT_SM is
  signal \^o1\ : STD_LOGIC;
  signal START_RX0 : STD_LOGIC;
  signal all_lanes_v_r : STD_LOGIC;
  signal bad_v_r : STD_LOGIC;
  signal bad_v_r0 : STD_LOGIC;
  signal free_count_r_reg : STD_LOGIC_VECTOR ( 0 to 13 );
  signal \^gen_ver_i\ : STD_LOGIC;
  signal got_first_v_r : STD_LOGIC;
  signal gtrxreset_extend_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gtrxreset_nxt : STD_LOGIC;
  signal n_0_GTRXRESET_OUT_i_1 : STD_LOGIC;
  signal n_0_GTRXRESET_OUT_i_2 : STD_LOGIC;
  signal \n_0_free_count_r[13]_i_2\ : STD_LOGIC;
  signal \n_0_free_count_r[13]_i_3\ : STD_LOGIC;
  signal \n_0_free_count_r[13]_i_4\ : STD_LOGIC;
  signal \n_0_free_count_r[13]_i_5\ : STD_LOGIC;
  signal \n_0_free_count_r[1]_i_2\ : STD_LOGIC;
  signal \n_0_free_count_r[1]_i_3\ : STD_LOGIC;
  signal \n_0_free_count_r[5]_i_2\ : STD_LOGIC;
  signal \n_0_free_count_r[5]_i_3\ : STD_LOGIC;
  signal \n_0_free_count_r[5]_i_4\ : STD_LOGIC;
  signal \n_0_free_count_r[5]_i_5\ : STD_LOGIC;
  signal \n_0_free_count_r[9]_i_2\ : STD_LOGIC;
  signal \n_0_free_count_r[9]_i_3\ : STD_LOGIC;
  signal \n_0_free_count_r[9]_i_4\ : STD_LOGIC;
  signal \n_0_free_count_r[9]_i_5\ : STD_LOGIC;
  signal \n_0_free_count_r_reg[13]_i_1\ : STD_LOGIC;
  signal \n_0_free_count_r_reg[5]_i_1\ : STD_LOGIC;
  signal \n_0_free_count_r_reg[9]_i_1\ : STD_LOGIC;
  signal n_0_got_first_v_r_i_1 : STD_LOGIC;
  signal \n_0_rxver_count_r_reg[1]_srl2\ : STD_LOGIC;
  signal \n_0_rxver_count_r_reg[1]_srl2_i_1\ : STD_LOGIC;
  signal \n_0_rxver_count_r_reg[2]\ : STD_LOGIC;
  signal \n_0_txver_count_r_reg[6]_srl7\ : STD_LOGIC;
  signal \n_0_txver_count_r_reg[7]\ : STD_LOGIC;
  signal \n_0_v_count_r_reg[30]_srl31\ : STD_LOGIC;
  signal \n_0_v_count_r_reg[31]\ : STD_LOGIC;
  signal \n_0_verify_watchdog_r_reg[14]_srl15\ : STD_LOGIC;
  signal \n_0_verify_watchdog_r_reg[14]_srl15_i_1\ : STD_LOGIC;
  signal \n_0_verify_watchdog_r_reg[14]_srl15_i_2\ : STD_LOGIC;
  signal \n_0_verify_watchdog_r_reg[14]_srl15_i_3\ : STD_LOGIC;
  signal \n_0_verify_watchdog_r_reg[15]\ : STD_LOGIC;
  signal \n_1_free_count_r_reg[13]_i_1\ : STD_LOGIC;
  signal \n_1_free_count_r_reg[5]_i_1\ : STD_LOGIC;
  signal \n_1_free_count_r_reg[9]_i_1\ : STD_LOGIC;
  signal \n_2_free_count_r_reg[13]_i_1\ : STD_LOGIC;
  signal \n_2_free_count_r_reg[5]_i_1\ : STD_LOGIC;
  signal \n_2_free_count_r_reg[9]_i_1\ : STD_LOGIC;
  signal \n_3_free_count_r_reg[13]_i_1\ : STD_LOGIC;
  signal \n_3_free_count_r_reg[1]_i_1\ : STD_LOGIC;
  signal \n_3_free_count_r_reg[5]_i_1\ : STD_LOGIC;
  signal \n_3_free_count_r_reg[9]_i_1\ : STD_LOGIC;
  signal \n_4_free_count_r_reg[13]_i_1\ : STD_LOGIC;
  signal \n_4_free_count_r_reg[5]_i_1\ : STD_LOGIC;
  signal \n_4_free_count_r_reg[9]_i_1\ : STD_LOGIC;
  signal \n_5_free_count_r_reg[13]_i_1\ : STD_LOGIC;
  signal \n_5_free_count_r_reg[5]_i_1\ : STD_LOGIC;
  signal \n_5_free_count_r_reg[9]_i_1\ : STD_LOGIC;
  signal \n_6_free_count_r_reg[13]_i_1\ : STD_LOGIC;
  signal \n_6_free_count_r_reg[1]_i_1\ : STD_LOGIC;
  signal \n_6_free_count_r_reg[5]_i_1\ : STD_LOGIC;
  signal \n_6_free_count_r_reg[9]_i_1\ : STD_LOGIC;
  signal \n_7_free_count_r_reg[13]_i_1\ : STD_LOGIC;
  signal \n_7_free_count_r_reg[1]_i_1\ : STD_LOGIC;
  signal \n_7_free_count_r_reg[5]_i_1\ : STD_LOGIC;
  signal \n_7_free_count_r_reg[9]_i_1\ : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_verify_c : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 31 to 31 );
  signal p_3_in : STD_LOGIC;
  signal ready_r : STD_LOGIC;
  signal ready_r2 : STD_LOGIC;
  signal reset_lanes_c : STD_LOGIC;
  signal wait_for_lane_up_r : STD_LOGIC;
  signal \NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtreset_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gtreset_flop_0_i : label is "FD";
  attribute BOX_TYPE of reset_lanes_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of reset_lanes_flop_i : label is "FD";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rxver_count_r_reg[1]_srl2\ : label is "\inst/global_logic_i/channel_init_sm_i/rxver_count_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \rxver_count_r_reg[1]_srl2\ : label is "\inst/global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 ";
  attribute srl_bus_name of \txver_count_r_reg[6]_srl7\ : label is "\inst/global_logic_i/channel_init_sm_i/txver_count_r_reg ";
  attribute srl_name of \txver_count_r_reg[6]_srl7\ : label is "\inst/global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 ";
  attribute srl_bus_name of \v_count_r_reg[30]_srl31\ : label is "\inst/global_logic_i/channel_init_sm_i/v_count_r_reg ";
  attribute srl_name of \v_count_r_reg[30]_srl31\ : label is "\inst/global_logic_i/channel_init_sm_i/v_count_r_reg[30]_srl31 ";
  attribute srl_bus_name of \verify_watchdog_r_reg[14]_srl15\ : label is "\inst/global_logic_i/channel_init_sm_i/verify_watchdog_r_reg ";
  attribute srl_name of \verify_watchdog_r_reg[14]_srl15\ : label is "\inst/global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 ";
begin
  O1 <= \^o1\;
  gen_ver_i <= \^gen_ver_i\;
CHANNEL_UP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => ready_r2,
      Q => \^o1\,
      R => '0'
    );
GTRXRESET_OUT_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => gtrxreset_extend_r(2),
      I1 => n_0_GTRXRESET_OUT_i_2,
      I2 => gtrxreset_extend_r(3),
      O => n_0_GTRXRESET_OUT_i_1
    );
GTRXRESET_OUT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => gtrxreset_extend_r(1),
      I1 => gtrxreset_extend_r(0),
      I2 => gtrxreset_extend_r(6),
      I3 => gtrxreset_extend_r(7),
      I4 => gtrxreset_extend_r(5),
      I5 => gtrxreset_extend_r(4),
      O => n_0_GTRXRESET_OUT_i_2
    );
GTRXRESET_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_GTRXRESET_OUT_i_1,
      Q => gtrxreset_i_0,
      R => '0'
    );
START_RX_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_for_lane_up_r,
      O => START_RX0
    );
START_RX_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => START_RX0,
      Q => START_RX,
      R => I1(0)
    );
all_lanes_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => GOT_V,
      Q => all_lanes_v_r,
      R => '0'
    );
bad_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => got_first_v_r,
      I1 => \n_0_v_count_r_reg[31]\,
      I2 => all_lanes_v_r,
      O => bad_v_r0
    );
bad_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => bad_v_r0,
      Q => bad_v_r,
      R => '0'
    );
\free_count_r[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(10),
      O => \n_0_free_count_r[13]_i_2\
    );
\free_count_r[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(11),
      O => \n_0_free_count_r[13]_i_3\
    );
\free_count_r[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(12),
      O => \n_0_free_count_r[13]_i_4\
    );
\free_count_r[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(13),
      O => \n_0_free_count_r[13]_i_5\
    );
\free_count_r[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(0),
      O => \n_0_free_count_r[1]_i_2\
    );
\free_count_r[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(1),
      O => \n_0_free_count_r[1]_i_3\
    );
\free_count_r[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(2),
      O => \n_0_free_count_r[5]_i_2\
    );
\free_count_r[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(3),
      O => \n_0_free_count_r[5]_i_3\
    );
\free_count_r[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(4),
      O => \n_0_free_count_r[5]_i_4\
    );
\free_count_r[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(5),
      O => \n_0_free_count_r[5]_i_5\
    );
\free_count_r[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(6),
      O => \n_0_free_count_r[9]_i_2\
    );
\free_count_r[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(7),
      O => \n_0_free_count_r[9]_i_3\
    );
\free_count_r[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(8),
      O => \n_0_free_count_r[9]_i_4\
    );
\free_count_r[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => free_count_r_reg(9),
      O => \n_0_free_count_r[9]_i_5\
    );
\free_count_r_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_6_free_count_r_reg[1]_i_1\,
      Q => free_count_r_reg(0),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[10]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_4_free_count_r_reg[13]_i_1\,
      Q => free_count_r_reg(10),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[11]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_5_free_count_r_reg[13]_i_1\,
      Q => free_count_r_reg(11),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[12]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_6_free_count_r_reg[13]_i_1\,
      Q => free_count_r_reg(12),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_7_free_count_r_reg[13]_i_1\,
      Q => free_count_r_reg(13),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_free_count_r_reg[13]_i_1\,
      CO(2) => \n_1_free_count_r_reg[13]_i_1\,
      CO(1) => \n_2_free_count_r_reg[13]_i_1\,
      CO(0) => \n_3_free_count_r_reg[13]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_free_count_r_reg[13]_i_1\,
      O(2) => \n_5_free_count_r_reg[13]_i_1\,
      O(1) => \n_6_free_count_r_reg[13]_i_1\,
      O(0) => \n_7_free_count_r_reg[13]_i_1\,
      S(3) => \n_0_free_count_r[13]_i_2\,
      S(2) => \n_0_free_count_r[13]_i_3\,
      S(1) => \n_0_free_count_r[13]_i_4\,
      S(0) => \n_0_free_count_r[13]_i_5\
    );
\free_count_r_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_7_free_count_r_reg[1]_i_1\,
      Q => free_count_r_reg(1),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[1]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_free_count_r_reg[5]_i_1\,
      CO(3 downto 1) => \NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_free_count_r_reg[1]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3 downto 2) => \NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_free_count_r_reg[1]_i_1\,
      O(0) => \n_7_free_count_r_reg[1]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_free_count_r[1]_i_2\,
      S(0) => \n_0_free_count_r[1]_i_3\
    );
\free_count_r_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_4_free_count_r_reg[5]_i_1\,
      Q => free_count_r_reg(2),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_5_free_count_r_reg[5]_i_1\,
      Q => free_count_r_reg(3),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_6_free_count_r_reg[5]_i_1\,
      Q => free_count_r_reg(4),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_7_free_count_r_reg[5]_i_1\,
      Q => free_count_r_reg(5),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_free_count_r_reg[9]_i_1\,
      CO(3) => \n_0_free_count_r_reg[5]_i_1\,
      CO(2) => \n_1_free_count_r_reg[5]_i_1\,
      CO(1) => \n_2_free_count_r_reg[5]_i_1\,
      CO(0) => \n_3_free_count_r_reg[5]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_free_count_r_reg[5]_i_1\,
      O(2) => \n_5_free_count_r_reg[5]_i_1\,
      O(1) => \n_6_free_count_r_reg[5]_i_1\,
      O(0) => \n_7_free_count_r_reg[5]_i_1\,
      S(3) => \n_0_free_count_r[5]_i_2\,
      S(2) => \n_0_free_count_r[5]_i_3\,
      S(1) => \n_0_free_count_r[5]_i_4\,
      S(0) => \n_0_free_count_r[5]_i_5\
    );
\free_count_r_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_4_free_count_r_reg[9]_i_1\,
      Q => free_count_r_reg(6),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_5_free_count_r_reg[9]_i_1\,
      Q => free_count_r_reg(7),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[8]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_6_free_count_r_reg[9]_i_1\,
      Q => free_count_r_reg(8),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_7_free_count_r_reg[9]_i_1\,
      Q => free_count_r_reg(9),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_free_count_r_reg[13]_i_1\,
      CO(3) => \n_0_free_count_r_reg[9]_i_1\,
      CO(2) => \n_1_free_count_r_reg[9]_i_1\,
      CO(1) => \n_2_free_count_r_reg[9]_i_1\,
      CO(0) => \n_3_free_count_r_reg[9]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_free_count_r_reg[9]_i_1\,
      O(2) => \n_5_free_count_r_reg[9]_i_1\,
      O(1) => \n_6_free_count_r_reg[9]_i_1\,
      O(0) => \n_7_free_count_r_reg[9]_i_1\,
      S(3) => \n_0_free_count_r[9]_i_2\,
      S(2) => \n_0_free_count_r[9]_i_3\,
      S(1) => \n_0_free_count_r[9]_i_4\,
      S(0) => \n_0_free_count_r[9]_i_5\
    );
gen_cc_flop_0_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o1\,
      O => reset_i
    );
got_first_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => \^gen_ver_i\,
      I1 => got_first_v_r,
      I2 => all_lanes_v_r,
      O => n_0_got_first_v_r_i_1
    );
got_first_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_got_first_v_r_i_1,
      Q => got_first_v_r,
      R => '0'
    );
gtreset_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => p_3_in,
      Q => gtrxreset_nxt,
      R => '0'
    );
gtreset_flop_0_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
    port map (
      I0 => \^gen_ver_i\,
      I1 => \n_0_verify_watchdog_r_reg[15]\,
      I2 => \n_0_rxver_count_r_reg[2]\,
      I3 => bad_v_r,
      O => p_3_in
    );
\gtrxreset_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(1),
      Q => gtrxreset_extend_r(0),
      R => I1(0)
    );
\gtrxreset_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(2),
      Q => gtrxreset_extend_r(1),
      R => I1(0)
    );
\gtrxreset_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(3),
      Q => gtrxreset_extend_r(2),
      R => I1(0)
    );
\gtrxreset_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(4),
      Q => gtrxreset_extend_r(3),
      R => I1(0)
    );
\gtrxreset_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(5),
      Q => gtrxreset_extend_r(4),
      R => I1(0)
    );
\gtrxreset_extend_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(6),
      Q => gtrxreset_extend_r(5),
      R => I1(0)
    );
\gtrxreset_extend_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_extend_r(7),
      Q => gtrxreset_extend_r(6),
      R => I1(0)
    );
\gtrxreset_extend_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gtrxreset_nxt,
      Q => gtrxreset_extend_r(7),
      R => I1(0)
    );
ready_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => ready_r,
      Q => ready_r2,
      R => '0'
    );
ready_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => ready_r,
      I1 => \n_0_rxver_count_r_reg[2]\,
      I2 => \n_0_txver_count_r_reg[7]\,
      I3 => \^gen_ver_i\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => next_ready_c,
      Q => ready_r,
      R => wait_for_lane_up_r0
    );
reset_lanes_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => reset_lanes_c,
      Q => SR(0),
      R => '0'
    );
reset_lanes_flop_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => p_3_in,
      I1 => reset_channel_i,
      I2 => wait_for_lane_up_r,
      I3 => I1(0),
      O => reset_lanes_c
    );
\rxver_count_r_reg[1]_srl2\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => \n_0_rxver_count_r_reg[1]_srl2_i_1\,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \n_0_rxver_count_r_reg[1]_srl2\
    );
\rxver_count_r_reg[1]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => \n_0_v_count_r_reg[31]\,
      I1 => all_lanes_v_r,
      I2 => \^gen_ver_i\,
      O => \n_0_rxver_count_r_reg[1]_srl2_i_1\
    );
\rxver_count_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_rxver_count_r_reg[1]_srl2_i_1\,
      D => \n_0_rxver_count_r_reg[1]_srl2\,
      Q => \n_0_rxver_count_r_reg[2]\,
      R => '0'
    );
\txver_count_r_reg[6]_srl7\: unisim.vcomponents.SRL16E
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => txver_count_r0,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \n_0_txver_count_r_reg[6]_srl7\
    );
\txver_count_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => txver_count_r0,
      D => \n_0_txver_count_r_reg[6]_srl7\,
      Q => \n_0_txver_count_r_reg[7]\,
      R => '0'
    );
\v_count_r_reg[30]_srl31\: unisim.vcomponents.SRLC32E
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '0',
      CE => '1',
      CLK => user_clk,
      D => p_2_out(31),
      Q => \n_0_v_count_r_reg[30]_srl31\,
      Q31 => \NLW_v_count_r_reg[30]_srl31_Q31_UNCONNECTED\
    );
\v_count_r_reg[30]_srl31_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => \n_0_v_count_r_reg[31]\,
      I1 => \^gen_ver_i\,
      I2 => got_first_v_r,
      I3 => all_lanes_v_r,
      O => p_2_out(31)
    );
\v_count_r_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_v_count_r_reg[30]_srl31\,
      Q => \n_0_v_count_r_reg[31]\,
      R => '0'
    );
verify_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEEE"
    )
    port map (
      I0 => wait_for_lane_up_r,
      I1 => \^gen_ver_i\,
      I2 => \n_0_rxver_count_r_reg[2]\,
      I3 => \n_0_txver_count_r_reg[7]\,
      O => next_verify_c
    );
verify_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => next_verify_c,
      Q => \^gen_ver_i\,
      R => wait_for_lane_up_r0
    );
\verify_watchdog_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => \n_0_verify_watchdog_r_reg[14]_srl15_i_1\,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \n_0_verify_watchdog_r_reg[14]_srl15\
    );
\verify_watchdog_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008FFFF"
    )
    port map (
      I0 => \n_0_verify_watchdog_r_reg[14]_srl15_i_2\,
      I1 => \n_0_verify_watchdog_r_reg[14]_srl15_i_3\,
      I2 => free_count_r_reg(12),
      I3 => free_count_r_reg(8),
      I4 => \^gen_ver_i\,
      O => \n_0_verify_watchdog_r_reg[14]_srl15_i_1\
    );
\verify_watchdog_r_reg[14]_srl15_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => free_count_r_reg(10),
      I1 => free_count_r_reg(11),
      I2 => free_count_r_reg(9),
      I3 => free_count_r_reg(6),
      I4 => free_count_r_reg(4),
      I5 => free_count_r_reg(2),
      O => \n_0_verify_watchdog_r_reg[14]_srl15_i_2\
    );
\verify_watchdog_r_reg[14]_srl15_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => free_count_r_reg(1),
      I1 => free_count_r_reg(5),
      I2 => free_count_r_reg(7),
      I3 => free_count_r_reg(13),
      I4 => free_count_r_reg(3),
      I5 => free_count_r_reg(0),
      O => \n_0_verify_watchdog_r_reg[14]_srl15_i_3\
    );
\verify_watchdog_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_verify_watchdog_r_reg[14]_srl15_i_1\,
      D => \n_0_verify_watchdog_r_reg[14]_srl15\,
      Q => \n_0_verify_watchdog_r_reg[15]\,
      R => '0'
    );
wait_for_lane_up_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => wait_for_lane_up_r0,
      Q => wait_for_lane_up_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_ERR_DETECT is
  port (
    bucket_full_r : out STD_LOGIC;
    HARD_ERR : out STD_LOGIC;
    ready_r0 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    hard_err_flop_r0 : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I11 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_ERR_DETECT : entity is "aurora_8b10b_1_ERR_DETECT";
end aurora_8b10b_1_aurora_8b10b_1_ERR_DETECT;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_ERR_DETECT is
  signal hard_err_reset_i : STD_LOGIC;
  signal n_0_bucket_full_r_i_1 : STD_LOGIC;
  signal \n_0_count_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_count_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_good_count_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_good_count_r[1]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
HARD_ERR_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => hard_err_reset_i,
      Q => HARD_ERR,
      R => SR(0)
    );
align_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => hard_err_reset_i,
      I1 => I1(0),
      O => ready_r0
    );
bucket_full_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA888808880000"
    )
    port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(4),
      I5 => p_0_in(5),
      O => n_0_bucket_full_r_i_1
    );
bucket_full_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_bucket_full_r_i_1,
      Q => bucket_full_r,
      R => SR(0)
    );
\count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAFFF2FAA0A0"
    )
    port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(5),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => p_0_in(1),
      O => \n_0_count_r[0]_i_1\
    );
\count_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFCC0CFC5CFFCF0"
    )
    port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(5),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => p_0_in(0),
      O => \n_0_count_r[1]_i_1\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_count_r[0]_i_1\,
      Q => p_0_in(1),
      R => SR(0)
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_count_r[1]_i_1\,
      Q => p_0_in(0),
      R => SR(0)
    );
\good_count_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => p_0_in(4),
      I1 => p_0_in(3),
      I2 => p_0_in(5),
      O => \n_0_good_count_r[0]_i_1\
    );
\good_count_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      O => \n_0_good_count_r[1]_i_1\
    );
\good_count_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_good_count_r[0]_i_1\,
      Q => p_0_in(3),
      R => SR(0)
    );
\good_count_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_good_count_r[1]_i_1\,
      Q => p_0_in(2),
      R => SR(0)
    );
hard_err_flop_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => hard_err_flop_r0,
      Q => hard_err_reset_i,
      R => SR(0)
    );
\soft_err_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I11(1),
      Q => p_0_in(5),
      R => SR(0)
    );
\soft_err_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I11(0),
      Q => p_0_in(4),
      R => SR(0)
    );
soft_err_r_reg_srl3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      O => O6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_IDLE_AND_VER_GEN is
  port (
    I6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_a_i : out STD_LOGIC;
    I8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txver_count_r0 : out STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    gen_ver_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_IDLE_AND_VER_GEN : entity is "aurora_8b10b_1_IDLE_AND_VER_GEN";
end aurora_8b10b_1_aurora_8b10b_1_IDLE_AND_VER_GEN;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_IDLE_AND_VER_GEN is
  signal D0 : STD_LOGIC;
  signal D00_out : STD_LOGIC;
  signal did_ver_i : STD_LOGIC;
  signal gen_a_flop_c : STD_LOGIC;
  signal gen_r_r : STD_LOGIC_VECTOR ( 1 to 1 );
  signal gen_ver_word_1_r : STD_LOGIC;
  signal insert_ver_c : STD_LOGIC;
  signal lfsr_last_flop_r : STD_LOGIC;
  signal lfsr_shift_register_r : STD_LOGIC_VECTOR ( 3 to 3 );
  signal lfsr_taps_r : STD_LOGIC;
  signal \n_0_downcounter_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_downcounter_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_downcounter_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_downcounter_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_downcounter_r_reg[0]\ : STD_LOGIC;
  signal \n_0_downcounter_r_reg[1]\ : STD_LOGIC;
  signal \n_0_downcounter_r_reg[2]\ : STD_LOGIC;
  signal \n_0_downcounter_r_reg[3]\ : STD_LOGIC;
  signal n_0_gen_v_flop_1_i_i_1 : STD_LOGIC;
  signal \n_0_lfsr_shift_register_r_reg[2]_srl3\ : STD_LOGIC;
  signal n_0_lfsr_taps_i_i_1 : STD_LOGIC;
  signal n_0_ver_counter_0_i : STD_LOGIC;
  signal prev_cycle_gen_ver_r : STD_LOGIC;
  signal recycle_gen_ver_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \downcounter_r[1]_i_1\ : label is "soft_lutpair13";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_a_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_a_flop_0_i : label is "FD";
  attribute SOFT_HLUTNM of gen_a_flop_0_i_i_1 : label is "soft_lutpair14";
  attribute BOX_TYPE of gen_k_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_0_i : label is "FD";
  attribute SOFT_HLUTNM of gen_k_flop_0_i_i_1 : label is "soft_lutpair14";
  attribute BOX_TYPE of gen_k_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_0_i : label is "FD";
  attribute SOFT_HLUTNM of gen_r_flop_0_i_i_1 : label is "soft_lutpair13";
  attribute BOX_TYPE of gen_r_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_v_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_v_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_1_i : label is "FD";
  attribute BOX_TYPE of lfsr_last_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of lfsr_last_flop_i : label is "FDR";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \lfsr_shift_register_r_reg[2]_srl3\ : label is "\inst/global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \lfsr_shift_register_r_reg[2]_srl3\ : label is "\inst/global_logic_i/idle_and_ver_gen_i/lfsr_shift_register_r_reg[2]_srl3 ";
  attribute BOX_TYPE of lfsr_taps_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of lfsr_taps_i : label is "FDR";
  attribute BOX_TYPE of ver_counter_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ver_counter_0_i : label is "SRL16";
  attribute srl_name of ver_counter_0_i : label is "\inst/global_logic_i/idle_and_ver_gen_i/ver_counter_0_i ";
  attribute BOX_TYPE of ver_counter_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ver_counter_1_i : label is "SRL16";
  attribute srl_name of ver_counter_1_i : label is "\inst/global_logic_i/idle_and_ver_gen_i/ver_counter_1_i ";
begin
\downcounter_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55540001"
    )
    port map (
      I0 => I1(0),
      I1 => \n_0_downcounter_r_reg[1]\,
      I2 => \n_0_downcounter_r_reg[3]\,
      I3 => \n_0_downcounter_r_reg[2]\,
      I4 => \n_0_downcounter_r_reg[0]\,
      O => \n_0_downcounter_r[0]_i_1\
    );
\downcounter_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5401540154015400"
    )
    port map (
      I0 => I1(0),
      I1 => \n_0_downcounter_r_reg[2]\,
      I2 => \n_0_downcounter_r_reg[3]\,
      I3 => \n_0_downcounter_r_reg[1]\,
      I4 => \n_0_downcounter_r_reg[0]\,
      I5 => lfsr_taps_r,
      O => \n_0_downcounter_r[1]_i_1\
    );
\downcounter_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0000FE"
    )
    port map (
      I0 => \n_0_downcounter_r_reg[0]\,
      I1 => \n_0_downcounter_r_reg[1]\,
      I2 => lfsr_shift_register_r(3),
      I3 => \n_0_downcounter_r_reg[2]\,
      I4 => \n_0_downcounter_r_reg[3]\,
      I5 => I1(0),
      O => \n_0_downcounter_r[2]_i_1\
    );
\downcounter_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
    port map (
      I0 => \n_0_downcounter_r_reg[0]\,
      I1 => \n_0_downcounter_r_reg[2]\,
      I2 => \n_0_downcounter_r_reg[1]\,
      I3 => lfsr_last_flop_r,
      I4 => \n_0_downcounter_r_reg[3]\,
      I5 => I1(0),
      O => \n_0_downcounter_r[3]_i_1\
    );
\downcounter_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_downcounter_r[0]_i_1\,
      Q => \n_0_downcounter_r_reg[0]\,
      R => '0'
    );
\downcounter_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_downcounter_r[1]_i_1\,
      Q => \n_0_downcounter_r_reg[1]\,
      R => '0'
    );
\downcounter_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_downcounter_r[2]_i_1\,
      Q => \n_0_downcounter_r_reg[2]\,
      R => '0'
    );
\downcounter_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_downcounter_r[3]_i_1\,
      Q => \n_0_downcounter_r_reg[3]\,
      R => '0'
    );
gen_a_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gen_a_flop_c,
      Q => gen_a_i,
      R => '0'
    );
gen_a_flop_0_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => gen_ver_word_1_r,
      I1 => \n_0_downcounter_r_reg[1]\,
      I2 => \n_0_downcounter_r_reg[3]\,
      I3 => \n_0_downcounter_r_reg[2]\,
      I4 => \n_0_downcounter_r_reg[0]\,
      O => gen_a_flop_c
    );
gen_k_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => D0,
      Q => I8(1),
      R => '0'
    );
gen_k_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
    port map (
      I0 => gen_ver_word_1_r,
      I1 => lfsr_taps_r,
      I2 => \n_0_downcounter_r_reg[0]\,
      I3 => \n_0_downcounter_r_reg[2]\,
      I4 => \n_0_downcounter_r_reg[3]\,
      I5 => \n_0_downcounter_r_reg[1]\,
      O => D0
    );
gen_k_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => lfsr_shift_register_r(3),
      Q => I8(0),
      R => '0'
    );
gen_r_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => D00_out,
      Q => I7(1),
      R => '0'
    );
gen_r_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
    port map (
      I0 => lfsr_taps_r,
      I1 => \n_0_downcounter_r_reg[0]\,
      I2 => \n_0_downcounter_r_reg[2]\,
      I3 => \n_0_downcounter_r_reg[3]\,
      I4 => \n_0_downcounter_r_reg[1]\,
      I5 => gen_ver_word_1_r,
      O => D00_out
    );
gen_r_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => gen_r_r(1),
      Q => I7(0),
      R => '0'
    );
gen_r_flop_1_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => lfsr_shift_register_r(3),
      O => gen_r_r(1)
    );
gen_v_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => recycle_gen_ver_c,
      Q => I6(1),
      R => '0'
    );
gen_v_flop_0_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => did_ver_i,
      I1 => gen_ver_i,
      O => recycle_gen_ver_c
    );
gen_v_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_gen_v_flop_1_i_i_1,
      Q => I6(0),
      R => '0'
    );
gen_v_flop_1_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => gen_ver_i,
      I1 => gen_ver_word_1_r,
      I2 => did_ver_i,
      O => n_0_gen_v_flop_1_i_i_1
    );
gen_ver_word_2_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => gen_ver_word_1_r,
      Q => did_ver_i,
      R => '0'
    );
lfsr_last_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => lfsr_shift_register_r(3),
      Q => lfsr_last_flop_r,
      R => I1(0)
    );
\lfsr_shift_register_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => lfsr_taps_r,
      Q => \n_0_lfsr_shift_register_r_reg[2]_srl3\
    );
\lfsr_shift_register_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_lfsr_shift_register_r_reg[2]_srl3\,
      Q => lfsr_shift_register_r(3),
      R => '0'
    );
lfsr_taps_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_lfsr_taps_i_i_1,
      Q => lfsr_taps_r,
      R => I1(0)
    );
lfsr_taps_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => lfsr_last_flop_r,
      I1 => lfsr_shift_register_r(3),
      O => n_0_lfsr_taps_i_i_1
    );
prev_cycle_gen_ver_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => gen_ver_i,
      Q => prev_cycle_gen_ver_r,
      R => '0'
    );
\txver_count_r_reg[6]_srl7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => did_ver_i,
      I1 => gen_ver_i,
      O => txver_count_r0
    );
ver_counter_0_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => insert_ver_c,
      Q => n_0_ver_counter_0_i
    );
ver_counter_0_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => gen_ver_i,
      I1 => did_ver_i,
      I2 => prev_cycle_gen_ver_r,
      O => insert_ver_c
    );
ver_counter_1_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => n_0_ver_counter_0_i,
      Q => gen_ver_word_1_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_LANE_INIT_SM is
  port (
    lane_up : out STD_LOGIC;
    ready_r : out STD_LOGIC;
    O1 : out STD_LOGIC;
    ack_r : out STD_LOGIC;
    polarity_r : out STD_LOGIC;
    comma_over_two_cycles_r : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_polarity_i : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_spa_data_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    gen_k_i : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    ready_r0 : in STD_LOGIC;
    counter4_r0 : in STD_LOGIC;
    counter3_r0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC;
    first_v_received_r : in STD_LOGIC;
    I2 : in STD_LOGIC;
    RX_NEG : in STD_LOGIC;
    I5 : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    I4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_LANE_INIT_SM : entity is "aurora_8b10b_1_LANE_INIT_SM";
end aurora_8b10b_1_aurora_8b10b_1_LANE_INIT_SM;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_LANE_INIT_SM is
  signal ENABLE_ERR_DETECT0 : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal RX_CHAR_IS_COMMA_R : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ack_r\ : STD_LOGIC;
  signal begin_r : STD_LOGIC;
  signal comma_over_two_cycles_r0 : STD_LOGIC;
  signal count_128d_done_r : STD_LOGIC;
  signal count_32d_done_r : STD_LOGIC;
  signal count_8d_done_r : STD_LOGIC;
  signal counter1_r0 : STD_LOGIC;
  signal counter5_r0 : STD_LOGIC;
  signal do_watchdog_count_r : STD_LOGIC;
  signal do_watchdog_count_r0 : STD_LOGIC;
  signal inc_count_c : STD_LOGIC;
  signal inc_count_c1 : STD_LOGIC;
  signal n_0_begin_r_i_2 : STD_LOGIC;
  signal \n_0_counter1_r[0]_i_4\ : STD_LOGIC;
  signal \n_0_counter1_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[1]\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[3]\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[5]\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[6]\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[7]\ : STD_LOGIC;
  signal \n_0_counter2_r_reg[14]_srl14\ : STD_LOGIC;
  signal \n_0_counter2_r_reg[15]\ : STD_LOGIC;
  signal \n_0_counter3_r_reg[2]_srl3\ : STD_LOGIC;
  signal \n_0_counter3_r_reg[3]\ : STD_LOGIC;
  signal \n_0_counter4_r_reg[14]_srl15\ : STD_LOGIC;
  signal \n_0_counter4_r_reg[15]\ : STD_LOGIC;
  signal \n_0_counter5_r_reg[14]_srl15\ : STD_LOGIC;
  signal \n_0_counter5_r_reg[15]\ : STD_LOGIC;
  signal n_0_rx_polarity_r_i_1 : STD_LOGIC;
  signal next_ack_c : STD_LOGIC;
  signal next_ack_c16_in : STD_LOGIC;
  signal next_align_c : STD_LOGIC;
  signal next_begin_c : STD_LOGIC;
  signal next_polarity_c : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_realign_c : STD_LOGIC;
  signal next_rst_c : STD_LOGIC;
  signal odd_word_r : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^polarity_r\ : STD_LOGIC;
  signal prev_char_was_comma_r : STD_LOGIC;
  signal prev_count_128d_done_r : STD_LOGIC;
  signal \^ready_r\ : STD_LOGIC;
  signal realign_r : STD_LOGIC;
  signal reset_count_r : STD_LOGIC;
  signal reset_count_r0 : STD_LOGIC;
  signal \^rx_polarity_i\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter1_r[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter1_r[4]_i_1\ : label is "soft_lutpair0";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \counter2_r_reg[14]_srl14\ : label is "\inst/aurora_lane_0_i/lane_init_sm_i/counter2_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \counter2_r_reg[14]_srl14\ : label is "\inst/aurora_lane_0_i/lane_init_sm_i/counter2_r_reg[14]_srl14 ";
  attribute srl_bus_name of \counter3_r_reg[2]_srl3\ : label is "\inst/aurora_lane_0_i/lane_init_sm_i/counter3_r_reg ";
  attribute srl_name of \counter3_r_reg[2]_srl3\ : label is "\inst/aurora_lane_0_i/lane_init_sm_i/counter3_r_reg[2]_srl3 ";
  attribute srl_bus_name of \counter4_r_reg[14]_srl15\ : label is "\inst/aurora_lane_0_i/lane_init_sm_i/counter4_r_reg ";
  attribute srl_name of \counter4_r_reg[14]_srl15\ : label is "\inst/aurora_lane_0_i/lane_init_sm_i/counter4_r_reg[14]_srl15 ";
  attribute srl_bus_name of \counter5_r_reg[14]_srl15\ : label is "\inst/aurora_lane_0_i/lane_init_sm_i/counter5_r_reg ";
  attribute srl_name of \counter5_r_reg[14]_srl15\ : label is "\inst/aurora_lane_0_i/lane_init_sm_i/counter5_r_reg[14]_srl15 ";
  attribute SOFT_HLUTNM of gen_k_fsm_r_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_sp_data_r[0]_i_1\ : label is "soft_lutpair1";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of lane_up_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lane_up_flop_i : label is "FDR";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  ack_r <= \^ack_r\;
  polarity_r <= \^polarity_r\;
  ready_r <= \^ready_r\;
  rx_polarity_i <= \^rx_polarity_i\;
ENABLE_ERR_DETECT_inv_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^ack_r\,
      I1 => \^ready_r\,
      O => ENABLE_ERR_DETECT0
    );
ENABLE_ERR_DETECT_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => ENABLE_ERR_DETECT0,
      Q => O3(0),
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => D(0),
      Q => RX_CHAR_IS_COMMA_R(0),
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => D(1),
      Q => RX_CHAR_IS_COMMA_R(1),
      R => '0'
    );
ack_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044404440444FFFF"
    )
    port map (
      I0 => \n_0_counter5_r_reg[15]\,
      I1 => \^ack_r\,
      I2 => \n_0_counter3_r_reg[3]\,
      I3 => \n_0_counter2_r_reg[15]\,
      I4 => I4,
      I5 => odd_word_r,
      O => next_ack_c
    );
ack_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => next_ack_c,
      Q => \^ack_r\,
      R => ready_r0
    );
align_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
    port map (
      I0 => count_128d_done_r,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => count_8d_done_r,
      O => next_align_c
    );
align_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => next_align_c,
      Q => \^o1\,
      R => ready_r0
    );
begin_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => \^ack_r\,
      I1 => \n_0_counter5_r_reg[15]\,
      I2 => realign_r,
      I3 => rx_realign_i,
      I4 => n_0_begin_r_i_2,
      O => next_begin_c
    );
begin_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => RX_NEG,
      I1 => \^polarity_r\,
      I2 => \n_0_counter4_r_reg[15]\,
      I3 => \^ready_r\,
      O => n_0_begin_r_i_2
    );
begin_r_reg: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => next_begin_c,
      Q => begin_r,
      S => ready_r0
    );
comma_over_two_cycles_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FD"
    )
    port map (
      I0 => \^o1\,
      I1 => RX_CHAR_IS_COMMA_R(1),
      I2 => RX_CHAR_IS_COMMA_R(0),
      I3 => prev_char_was_comma_r,
      O => comma_over_two_cycles_r0
    );
comma_over_two_cycles_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => comma_over_two_cycles_r0,
      Q => comma_over_two_cycles_r,
      R => '0'
    );
\counter1_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^ready_r\,
      I1 => reset_count_r,
      O => counter1_r0
    );
\counter1_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => \^o1\,
      I1 => RX_CHAR_IS_COMMA_R(0),
      I2 => RX_CHAR_IS_COMMA_R(1),
      O => inc_count_c
    );
\counter1_r[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => count_128d_done_r,
      I1 => count_32d_done_r,
      I2 => count_8d_done_r,
      I3 => \n_0_counter1_r[0]_i_4\,
      I4 => \n_0_counter1_r_reg[3]\,
      I5 => \n_0_counter1_r_reg[1]\,
      O => \p_0_in__3\(7)
    );
\counter1_r[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \n_0_counter1_r_reg[5]\,
      I1 => \n_0_counter1_r_reg[6]\,
      I2 => \n_0_counter1_r_reg[7]\,
      O => \n_0_counter1_r[0]_i_4\
    );
\counter1_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \n_0_counter1_r_reg[1]\,
      I1 => \n_0_counter1_r_reg[3]\,
      I2 => \n_0_counter1_r[0]_i_4\,
      I3 => count_8d_done_r,
      I4 => count_32d_done_r,
      O => \p_0_in__3\(6)
    );
\counter1_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => count_32d_done_r,
      I1 => count_8d_done_r,
      I2 => \n_0_counter1_r_reg[7]\,
      I3 => \n_0_counter1_r_reg[6]\,
      I4 => \n_0_counter1_r_reg[5]\,
      I5 => \n_0_counter1_r_reg[3]\,
      O => \n_0_counter1_r[2]_i_1\
    );
\counter1_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \n_0_counter1_r_reg[3]\,
      I1 => \n_0_counter1_r_reg[5]\,
      I2 => \n_0_counter1_r_reg[6]\,
      I3 => \n_0_counter1_r_reg[7]\,
      I4 => count_8d_done_r,
      O => \p_0_in__3\(4)
    );
\counter1_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => count_8d_done_r,
      I1 => \n_0_counter1_r_reg[7]\,
      I2 => \n_0_counter1_r_reg[6]\,
      I3 => \n_0_counter1_r_reg[5]\,
      O => \p_0_in__3\(3)
    );
\counter1_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_counter1_r_reg[7]\,
      I1 => \n_0_counter1_r_reg[6]\,
      I2 => \n_0_counter1_r_reg[5]\,
      O => \p_0_in__3\(2)
    );
\counter1_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_counter1_r_reg[7]\,
      I1 => \n_0_counter1_r_reg[6]\,
      O => \p_0_in__3\(1)
    );
\counter1_r[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_counter1_r_reg[7]\,
      O => \p_0_in__3\(0)
    );
\counter1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \p_0_in__3\(7),
      Q => count_128d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \p_0_in__3\(6),
      Q => \n_0_counter1_r_reg[1]\,
      R => counter1_r0
    );
\counter1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \n_0_counter1_r[2]_i_1\,
      Q => count_32d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \p_0_in__3\(4),
      Q => \n_0_counter1_r_reg[3]\,
      R => counter1_r0
    );
\counter1_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \p_0_in__3\(3),
      Q => count_8d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \p_0_in__3\(2),
      Q => \n_0_counter1_r_reg[5]\,
      R => counter1_r0
    );
\counter1_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \p_0_in__3\(1),
      Q => \n_0_counter1_r_reg[6]\,
      R => counter1_r0
    );
\counter1_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \p_0_in__3\(0),
      Q => \n_0_counter1_r_reg[7]\,
      S => counter1_r0
    );
\counter2_r_reg[14]_srl14\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => user_clk,
      D => I1,
      Q => \n_0_counter2_r_reg[14]_srl14\
    );
\counter2_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_counter2_r_reg[14]_srl14\,
      Q => \n_0_counter2_r_reg[15]\,
      R => '0'
    );
\counter3_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => counter3_r0,
      CLK => user_clk,
      D => \^ack_r\,
      Q => \n_0_counter3_r_reg[2]_srl3\
    );
\counter3_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => counter3_r0,
      D => \n_0_counter3_r_reg[2]_srl3\,
      Q => \n_0_counter3_r_reg[3]\,
      R => '0'
    );
\counter4_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => counter4_r0,
      CLK => user_clk,
      D => \^ready_r\,
      Q => \n_0_counter4_r_reg[14]_srl15\
    );
\counter4_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => counter4_r0,
      D => \n_0_counter4_r_reg[14]_srl15\,
      Q => \n_0_counter4_r_reg[15]\,
      R => '0'
    );
\counter5_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => counter5_r0,
      CLK => user_clk,
      D => \^ack_r\,
      Q => \n_0_counter5_r_reg[14]_srl15\
    );
\counter5_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => do_watchdog_count_r,
      I1 => \^ack_r\,
      O => counter5_r0
    );
\counter5_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => counter5_r0,
      D => \n_0_counter5_r_reg[14]_srl15\,
      Q => \n_0_counter5_r_reg[15]\,
      R => '0'
    );
do_watchdog_count_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_128d_done_r,
      I1 => prev_count_128d_done_r,
      O => do_watchdog_count_r0
    );
do_watchdog_count_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => do_watchdog_count_r0,
      Q => do_watchdog_count_r,
      R => '0'
    );
gen_k_fsm_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => odd_word_r,
      I1 => \^ack_r\,
      I2 => \^ready_r\,
      O => gen_k_i
    );
\gen_sp_data_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \^ack_r\,
      I1 => \^ready_r\,
      I2 => odd_word_r,
      O => O5(1)
    );
\gen_sp_data_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^ready_r\,
      I1 => \^ack_r\,
      O => O5(0)
    );
\gen_spa_data_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^ack_r\,
      I1 => odd_word_r,
      O => gen_spa_data_i(0)
    );
lane_up_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \^ready_r\,
      Q => lane_up,
      R => SR(0)
    );
left_aligned_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBBF00008880"
    )
    port map (
      I0 => D(0),
      I1 => I3,
      I2 => \^ready_r\,
      I3 => \^o1\,
      I4 => first_v_received_r,
      I5 => I2,
      O => O4
    );
odd_word_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => odd_word_r,
      O => next_ack_c16_in
    );
odd_word_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => next_ack_c16_in,
      Q => odd_word_r,
      R => '0'
    );
polarity_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404040404040"
    )
    port map (
      I0 => RX_NEG,
      I1 => \^polarity_r\,
      I2 => odd_word_r,
      I3 => rx_realign_i,
      I4 => realign_r,
      I5 => count_32d_done_r,
      O => next_polarity_c
    );
polarity_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => next_polarity_c,
      Q => \^polarity_r\,
      R => ready_r0
    );
prev_char_was_comma_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RX_CHAR_IS_COMMA_R(0),
      I1 => RX_CHAR_IS_COMMA_R(1),
      O => inc_count_c1
    );
prev_char_was_comma_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => inc_count_c1,
      Q => prev_char_was_comma_r,
      R => '0'
    );
prev_count_128d_done_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => count_128d_done_r,
      Q => prev_count_128d_done_r,
      R => '0'
    );
\ready_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
    port map (
      I0 => \n_0_counter5_r_reg[15]\,
      I1 => \^ack_r\,
      I2 => \n_0_counter3_r_reg[3]\,
      I3 => \n_0_counter2_r_reg[15]\,
      I4 => \n_0_counter4_r_reg[15]\,
      I5 => \^ready_r\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => next_ready_c,
      Q => \^ready_r\,
      R => ready_r0
    );
realign_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF040404"
    )
    port map (
      I0 => rx_realign_i,
      I1 => realign_r,
      I2 => count_32d_done_r,
      I3 => count_128d_done_r,
      I4 => \^o1\,
      O => next_realign_c
    );
realign_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => next_realign_c,
      Q => realign_r,
      R => ready_r0
    );
reset_count_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF04F5"
    )
    port map (
      I0 => I5,
      I1 => count_8d_done_r,
      I2 => begin_r,
      I3 => \^o2\,
      I4 => SR(0),
      O => reset_count_r0
    );
reset_count_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => reset_count_r0,
      Q => reset_count_r,
      R => '0'
    );
rst_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => \^o2\,
      I1 => count_8d_done_r,
      I2 => begin_r,
      O => next_rst_c
    );
rst_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => next_rst_c,
      Q => \^o2\,
      R => ready_r0
    );
rx_polarity_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => RX_NEG,
      I1 => \^polarity_r\,
      I2 => \^rx_polarity_i\,
      O => n_0_rx_polarity_r_i_1
    );
rx_polarity_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_rx_polarity_r_i_1,
      Q => \^rx_polarity_i\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_RX_LL_PDU_DATAPATH is
  port (
    frame_err : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    O1 : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    storage_v_r : out STD_LOGIC;
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rx_tlast : out STD_LOGIC;
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    RX_PAD : in STD_LOGIC;
    FRAME_ERR0 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    rx_pe_data_v_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_ecp_i : in STD_LOGIC;
    START_RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_RX_LL_PDU_DATAPATH : entity is "aurora_8b10b_1_RX_LL_PDU_DATAPATH";
end aurora_8b10b_1_aurora_8b10b_1_RX_LL_PDU_DATAPATH;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_RX_LL_PDU_DATAPATH is
  signal \^o1\ : STD_LOGIC;
  signal \n_0_RX_REM[0]_i_1\ : STD_LOGIC;
  signal \n_0_storage_r_reg[0]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[10]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[11]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[12]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[13]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[14]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[15]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[1]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[2]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[3]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[4]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[5]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[6]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[7]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[8]\ : STD_LOGIC;
  signal \n_0_storage_r_reg[9]\ : STD_LOGIC;
  signal n_0_storage_v_r_i_1 : STD_LOGIC;
  signal pad_in_storage_r : STD_LOGIC;
  signal rx_eof : STD_LOGIC;
  signal rx_rem_int : STD_LOGIC;
  signal storage_ce_c : STD_LOGIC;
  signal \^storage_v_r\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_rx_tkeep[1]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of m_axi_rx_tlast_INST_0 : label is "soft_lutpair62";
begin
  O1 <= \^o1\;
  storage_v_r <= \^storage_v_r\;
FRAME_ERR_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => FRAME_ERR0,
      Q => frame_err,
      R => '0'
    );
\RX_D_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[0]\,
      Q => m_axi_rx_tdata(0),
      R => '0'
    );
\RX_D_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[10]\,
      Q => m_axi_rx_tdata(10),
      R => '0'
    );
\RX_D_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[11]\,
      Q => m_axi_rx_tdata(11),
      R => '0'
    );
\RX_D_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[12]\,
      Q => m_axi_rx_tdata(12),
      R => '0'
    );
\RX_D_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[13]\,
      Q => m_axi_rx_tdata(13),
      R => '0'
    );
\RX_D_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[14]\,
      Q => m_axi_rx_tdata(14),
      R => '0'
    );
\RX_D_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[15]\,
      Q => m_axi_rx_tdata(15),
      R => '0'
    );
\RX_D_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[1]\,
      Q => m_axi_rx_tdata(1),
      R => '0'
    );
\RX_D_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[2]\,
      Q => m_axi_rx_tdata(2),
      R => '0'
    );
\RX_D_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[3]\,
      Q => m_axi_rx_tdata(3),
      R => '0'
    );
\RX_D_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[4]\,
      Q => m_axi_rx_tdata(4),
      R => '0'
    );
\RX_D_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[5]\,
      Q => m_axi_rx_tdata(5),
      R => '0'
    );
\RX_D_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[6]\,
      Q => m_axi_rx_tdata(6),
      R => '0'
    );
\RX_D_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[7]\,
      Q => m_axi_rx_tdata(7),
      R => '0'
    );
\RX_D_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[8]\,
      Q => m_axi_rx_tdata(8),
      R => '0'
    );
\RX_D_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_storage_r_reg[9]\,
      Q => m_axi_rx_tdata(9),
      R => '0'
    );
RX_EOF_N_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I1,
      Q => rx_eof,
      R => '0'
    );
\RX_REM[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => pad_in_storage_r,
      O => \n_0_RX_REM[0]_i_1\
    );
\RX_REM_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_RX_REM[0]_i_1\,
      Q => rx_rem_int,
      R => '0'
    );
RX_SRC_RDY_N_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => I2,
      Q => m_axi_rx_tvalid,
      R => '0'
    );
in_frame_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I3,
      Q => \^o1\,
      R => '0'
    );
\m_axi_rx_tkeep[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rx_eof,
      I1 => rx_rem_int,
      O => m_axi_rx_tkeep(0)
    );
m_axi_rx_tlast_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rx_eof,
      O => m_axi_rx_tlast
    );
pad_in_storage_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => RX_PAD,
      Q => pad_in_storage_r,
      R => '0'
    );
\storage_r[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o1\,
      I1 => rx_pe_data_v_i,
      O => storage_ce_c
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(15),
      Q => \n_0_storage_r_reg[0]\,
      R => '0'
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(5),
      Q => \n_0_storage_r_reg[10]\,
      R => '0'
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(4),
      Q => \n_0_storage_r_reg[11]\,
      R => '0'
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(3),
      Q => \n_0_storage_r_reg[12]\,
      R => '0'
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(2),
      Q => \n_0_storage_r_reg[13]\,
      R => '0'
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(1),
      Q => \n_0_storage_r_reg[14]\,
      R => '0'
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(0),
      Q => \n_0_storage_r_reg[15]\,
      R => '0'
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(14),
      Q => \n_0_storage_r_reg[1]\,
      R => '0'
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(13),
      Q => \n_0_storage_r_reg[2]\,
      R => '0'
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(12),
      Q => \n_0_storage_r_reg[3]\,
      R => '0'
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(11),
      Q => \n_0_storage_r_reg[4]\,
      R => '0'
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(10),
      Q => \n_0_storage_r_reg[5]\,
      R => '0'
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(9),
      Q => \n_0_storage_r_reg[6]\,
      R => '0'
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(8),
      Q => \n_0_storage_r_reg[7]\,
      R => '0'
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(7),
      Q => \n_0_storage_r_reg[8]\,
      R => '0'
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => storage_ce_c,
      D => D(6),
      Q => \n_0_storage_r_reg[9]\,
      R => '0'
    );
storage_v_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F80000"
    )
    port map (
      I0 => \^o1\,
      I1 => rx_pe_data_v_i,
      I2 => \^storage_v_r\,
      I3 => rx_ecp_i,
      I4 => START_RX,
      O => n_0_storage_v_r_i_1
    );
storage_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_storage_v_r_i_1,
      Q => \^storage_v_r\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_SYM_DEC is
  port (
    RX_NEG : out STD_LOGIC;
    O1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    GOT_V : out STD_LOGIC;
    RX_PAD : out STD_LOGIC;
    O2 : out STD_LOGIC;
    first_v_received_r : out STD_LOGIC;
    rx_pe_data_v_i : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    FRAME_ERR0 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    counter3_r0 : out STD_LOGIC;
    counter4_r0 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    user_clk : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC;
    START_RX : in STD_LOGIC;
    I4 : in STD_LOGIC;
    storage_v_r : in STD_LOGIC;
    ack_r : in STD_LOGIC;
    ready_r : in STD_LOGIC;
    polarity_r : in STD_LOGIC;
    I9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I10 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_SYM_DEC : entity is "aurora_8b10b_1_SYM_DEC";
end aurora_8b10b_1_aurora_8b10b_1_SYM_DEC;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_SYM_DEC is
  signal \^o1\ : STD_LOGIC;
  signal RX_CC0 : STD_LOGIC;
  signal \^rx_neg\ : STD_LOGIC;
  signal RX_NEG0 : STD_LOGIC;
  signal RX_PAD0 : STD_LOGIC;
  signal RX_SPA0 : STD_LOGIC;
  signal \^first_v_received_r\ : STD_LOGIC;
  signal got_v_c : STD_LOGIC;
  signal n_0_RX_ECP_i_1 : STD_LOGIC;
  signal n_0_RX_PE_DATA_V_i_1 : STD_LOGIC;
  signal n_0_RX_SCP_i_1 : STD_LOGIC;
  signal n_0_first_v_received_r_i_1 : STD_LOGIC;
  signal \n_0_rx_cc_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_rx_ecp_d_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_rx_ecp_d_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_rx_ecp_d_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_rx_pad_d_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_rx_pe_control_r_reg[1]\ : STD_LOGIC;
  signal \n_0_rx_scp_d_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_rx_scp_d_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_rx_spa_neg_d_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_rx_v_d_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_rx_v_d_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[0]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[10]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[11]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[12]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[13]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[14]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[15]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[1]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[2]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[3]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[4]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[5]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[6]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[7]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[8]\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r_reg[9]\ : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_5_out : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal prev_beat_sp_d_r0 : STD_LOGIC;
  signal prev_beat_sp_d_r05_out : STD_LOGIC;
  signal prev_beat_sp_d_r08_out : STD_LOGIC;
  signal prev_beat_sp_d_r1 : STD_LOGIC;
  signal prev_beat_sp_d_r16_in : STD_LOGIC;
  signal prev_beat_sp_r : STD_LOGIC;
  signal prev_beat_sp_r0 : STD_LOGIC;
  signal prev_beat_spa_d_r0 : STD_LOGIC;
  signal prev_beat_spa_r : STD_LOGIC;
  signal prev_beat_spa_r0 : STD_LOGIC;
  signal prev_beat_v_d_r : STD_LOGIC_VECTOR ( 0 to 0 );
  signal prev_beat_v_d_r0 : STD_LOGIC;
  signal prev_beat_v_r : STD_LOGIC;
  signal prev_beat_v_r0 : STD_LOGIC;
  signal rx_cc_r : STD_LOGIC_VECTOR ( 1 to 3 );
  signal rx_cc_r0 : STD_LOGIC;
  signal rx_ecp_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rx_ecp_d_r0 : STD_LOGIC;
  signal rx_pad_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_pad_d_r0 : STD_LOGIC;
  signal rx_pe_data_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal \^rx_pe_data_v_i\ : STD_LOGIC;
  signal rx_scp_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rx_scp_d_r0 : STD_LOGIC;
  signal rx_scp_i : STD_LOGIC;
  signal rx_sp_c : STD_LOGIC;
  signal rx_sp_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rx_sp_i : STD_LOGIC;
  signal rx_sp_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_spa_d_r : STD_LOGIC_VECTOR ( 0 to 2 );
  signal rx_spa_d_r0 : STD_LOGIC;
  signal rx_spa_i : STD_LOGIC;
  signal rx_spa_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_spa_neg_d_r0 : STD_LOGIC;
  signal rx_v_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rx_v_d_r0 : STD_LOGIC;
  signal word_aligned_control_bits_r : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FRAME_ERR_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \in_frame_r_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \prev_beat_v_d_r[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rx_cc_r[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rx_cc_r[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rx_ecp_d_r[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_ecp_d_r[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rx_ecp_d_r[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rx_pad_d_r[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rx_pad_d_r[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rx_scp_d_r[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rx_scp_d_r[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rx_scp_d_r[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rx_sp_neg_d_r[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rx_sp_neg_d_r[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rx_spa_d_r[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rx_spa_d_r[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rx_spa_neg_d_r[1]_i_1\ : label is "soft_lutpair9";
begin
  O1 <= \^o1\;
  RX_NEG <= \^rx_neg\;
  first_v_received_r <= \^first_v_received_r\;
  rx_pe_data_v_i <= \^rx_pe_data_v_i\;
FRAME_ERR_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAF0"
    )
    port map (
      I0 => rx_scp_i,
      I1 => storage_v_r,
      I2 => \^o1\,
      I3 => I4,
      O => FRAME_ERR0
    );
GOT_V_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_v_d_r(0),
      I1 => rx_v_d_r(1),
      I2 => p_0_in5_in,
      I3 => prev_beat_v_r,
      I4 => rx_v_d_r(2),
      I5 => rx_v_d_r(3),
      O => got_v_c
    );
GOT_V_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => got_v_c,
      Q => GOT_V,
      R => '0'
    );
RX_CC_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_cc_r(1),
      I1 => rx_cc_r(3),
      I2 => p_2_in,
      I3 => \n_0_rx_pe_control_r_reg[1]\,
      I4 => rx_ecp_d_r(0),
      I5 => rx_ecp_d_r(2),
      O => RX_CC0
    );
RX_CC_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => RX_CC0,
      Q => D(0),
      R => '0'
    );
RX_ECP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_ecp_d_r(0),
      I1 => p_2_in,
      I2 => \n_0_rx_pe_control_r_reg[1]\,
      I3 => rx_ecp_d_r(1),
      I4 => rx_ecp_d_r(3),
      I5 => rx_ecp_d_r(2),
      O => n_0_RX_ECP_i_1
    );
RX_ECP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_RX_ECP_i_1,
      Q => \^o1\,
      R => '0'
    );
RX_EOF_N_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o1\,
      O => O5
    );
RX_NEG_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55404040"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[1]\,
      I1 => rx_spa_neg_d_r(1),
      I2 => rx_spa_neg_d_r(0),
      I3 => rx_sp_neg_d_r(1),
      I4 => rx_sp_neg_d_r(0),
      O => RX_NEG0
    );
RX_NEG_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => RX_NEG0,
      Q => \^rx_neg\,
      R => '0'
    );
RX_PAD_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => rx_pad_d_r(0),
      I1 => rx_pad_d_r(1),
      I2 => \n_0_rx_pe_control_r_reg[1]\,
      I3 => p_2_in,
      O => RX_PAD0
    );
RX_PAD_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => RX_PAD0,
      Q => RX_PAD,
      R => '0'
    );
RX_PE_DATA_V_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => got_v_c,
      I1 => rx_sp_c,
      I2 => p_2_in,
      O => n_0_RX_PE_DATA_V_i_1
    );
RX_PE_DATA_V_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_RX_PE_DATA_V_i_1,
      Q => \^rx_pe_data_v_i\,
      R => '0'
    );
\RX_PE_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(0),
      Q => O7(15),
      R => '0'
    );
\RX_PE_DATA_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(10),
      Q => O7(5),
      R => '0'
    );
\RX_PE_DATA_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(11),
      Q => O7(4),
      R => '0'
    );
\RX_PE_DATA_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(12),
      Q => O7(3),
      R => '0'
    );
\RX_PE_DATA_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(13),
      Q => O7(2),
      R => '0'
    );
\RX_PE_DATA_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(14),
      Q => O7(1),
      R => '0'
    );
\RX_PE_DATA_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(15),
      Q => O7(0),
      R => '0'
    );
\RX_PE_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(1),
      Q => O7(14),
      R => '0'
    );
\RX_PE_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(2),
      Q => O7(13),
      R => '0'
    );
\RX_PE_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(3),
      Q => O7(12),
      R => '0'
    );
\RX_PE_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(4),
      Q => O7(11),
      R => '0'
    );
\RX_PE_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(5),
      Q => O7(10),
      R => '0'
    );
\RX_PE_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(6),
      Q => O7(9),
      R => '0'
    );
\RX_PE_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(7),
      Q => O7(8),
      R => '0'
    );
\RX_PE_DATA_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(8),
      Q => O7(7),
      R => '0'
    );
\RX_PE_DATA_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pe_data_r(9),
      Q => O7(6),
      R => '0'
    );
RX_SCP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_scp_d_r(0),
      I1 => p_2_in,
      I2 => \n_0_rx_pe_control_r_reg[1]\,
      I3 => rx_scp_d_r(1),
      I4 => rx_scp_d_r(3),
      I5 => rx_ecp_d_r(2),
      O => n_0_RX_SCP_i_1
    );
RX_SCP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_RX_SCP_i_1,
      Q => rx_scp_i,
      R => '0'
    );
RX_SPA_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_spa_d_r(0),
      I1 => rx_scp_d_r(1),
      I2 => p_0_in5_in,
      I3 => prev_beat_spa_r,
      I4 => rx_spa_d_r(2),
      I5 => rx_pad_d_r(1),
      O => RX_SPA0
    );
RX_SPA_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => RX_SPA0,
      Q => rx_spa_i,
      R => '0'
    );
RX_SP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_sp_d_r(0),
      I1 => rx_sp_d_r(1),
      I2 => p_0_in5_in,
      I3 => prev_beat_sp_r,
      I4 => rx_sp_d_r(2),
      I5 => rx_sp_d_r(3),
      O => rx_sp_c
    );
RX_SP_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[1]\,
      I1 => p_2_in,
      O => p_0_in5_in
    );
RX_SP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_sp_c,
      Q => rx_sp_i,
      R => '0'
    );
RX_SRC_RDY_N_inv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000000"
    )
    port map (
      I0 => \^rx_pe_data_v_i\,
      I1 => I4,
      I2 => \^o1\,
      I3 => storage_v_r,
      I4 => START_RX,
      O => O4
    );
ack_r_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^rx_neg\,
      I1 => polarity_r,
      O => O6
    );
\counter3_r_reg[2]_srl3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_spa_i,
      I1 => ack_r,
      O => counter3_r0
    );
\counter4_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_sp_i,
      I1 => ready_r,
      O => counter4_r0
    );
first_v_received_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => got_v_c,
      I1 => \^first_v_received_r\,
      O => n_0_first_v_received_r_i_1
    );
first_v_received_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_first_v_received_r_i_1,
      Q => \^first_v_received_r\,
      R => SR(0)
    );
\in_frame_r_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
    port map (
      I0 => rx_scp_i,
      I1 => START_RX,
      I2 => \^o1\,
      I3 => I4,
      O => O3
    );
left_aligned_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I3,
      Q => O2,
      R => SR(0)
    );
prev_beat_sp_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
    port map (
      I0 => rx_scp_d_r(1),
      I1 => rx_sp_d_r(3),
      I2 => \n_0_rx_pe_control_r_reg[1]\,
      I3 => p_2_in,
      I4 => prev_beat_v_d_r(0),
      I5 => rx_sp_d_r(2),
      O => prev_beat_sp_r0
    );
prev_beat_sp_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_sp_r0,
      Q => prev_beat_sp_r,
      R => '0'
    );
prev_beat_spa_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
    port map (
      I0 => rx_scp_d_r(1),
      I1 => rx_pad_d_r(1),
      I2 => \n_0_rx_pe_control_r_reg[1]\,
      I3 => p_2_in,
      I4 => prev_beat_v_d_r(0),
      I5 => rx_spa_d_r(2),
      O => prev_beat_spa_r0
    );
prev_beat_spa_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_spa_r0,
      Q => prev_beat_spa_r,
      R => '0'
    );
\prev_beat_v_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[1]\,
      I1 => \n_0_word_aligned_data_r_reg[0]\,
      I2 => \n_0_word_aligned_data_r_reg[2]\,
      I3 => \n_0_word_aligned_data_r_reg[3]\,
      O => prev_beat_sp_d_r0
    );
\prev_beat_v_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_sp_d_r0,
      Q => prev_beat_v_d_r(0),
      R => '0'
    );
prev_beat_v_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
    port map (
      I0 => rx_scp_d_r(1),
      I1 => rx_v_d_r(3),
      I2 => \n_0_rx_pe_control_r_reg[1]\,
      I3 => p_2_in,
      I4 => prev_beat_v_d_r(0),
      I5 => rx_v_d_r(2),
      O => prev_beat_v_r0
    );
prev_beat_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_v_r0,
      Q => prev_beat_v_r,
      R => '0'
    );
\rx_cc_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[4]\,
      I1 => \n_0_word_aligned_data_r_reg[5]\,
      I2 => \n_0_word_aligned_data_r_reg[6]\,
      I3 => \n_0_word_aligned_data_r_reg[7]\,
      O => rx_cc_r0
    );
\rx_cc_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[12]\,
      I1 => \n_0_word_aligned_data_r_reg[13]\,
      I2 => \n_0_word_aligned_data_r_reg[14]\,
      I3 => \n_0_word_aligned_data_r_reg[15]\,
      O => \n_0_rx_cc_r[3]_i_1\
    );
\rx_cc_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_r0,
      Q => rx_cc_r(1),
      R => '0'
    );
\rx_cc_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_cc_r[3]_i_1\,
      Q => rx_cc_r(3),
      R => '0'
    );
\rx_ecp_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[2]\,
      I1 => \n_0_word_aligned_data_r_reg[3]\,
      I2 => \n_0_word_aligned_data_r_reg[1]\,
      I3 => \n_0_word_aligned_data_r_reg[0]\,
      O => rx_ecp_d_r0
    );
\rx_ecp_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[6]\,
      I1 => \n_0_word_aligned_data_r_reg[5]\,
      I2 => \n_0_word_aligned_data_r_reg[4]\,
      I3 => \n_0_word_aligned_data_r_reg[7]\,
      O => \n_0_rx_ecp_d_r[1]_i_1\
    );
\rx_ecp_d_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[10]\,
      I1 => \n_0_word_aligned_data_r_reg[11]\,
      I2 => \n_0_word_aligned_data_r_reg[9]\,
      I3 => \n_0_word_aligned_data_r_reg[8]\,
      O => \n_0_rx_ecp_d_r[2]_i_1\
    );
\rx_ecp_d_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[15]\,
      I1 => \n_0_word_aligned_data_r_reg[13]\,
      I2 => \n_0_word_aligned_data_r_reg[12]\,
      I3 => \n_0_word_aligned_data_r_reg[14]\,
      O => \n_0_rx_ecp_d_r[3]_i_1\
    );
\rx_ecp_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_ecp_d_r0,
      Q => rx_ecp_d_r(0),
      R => '0'
    );
\rx_ecp_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_ecp_d_r[1]_i_1\,
      Q => rx_ecp_d_r(1),
      R => '0'
    );
\rx_ecp_d_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_ecp_d_r[2]_i_1\,
      Q => rx_ecp_d_r(2),
      R => '0'
    );
\rx_ecp_d_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_ecp_d_r[3]_i_1\,
      Q => rx_ecp_d_r(3),
      R => '0'
    );
\rx_pad_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[9]\,
      I1 => \n_0_word_aligned_data_r_reg[10]\,
      I2 => \n_0_word_aligned_data_r_reg[8]\,
      I3 => \n_0_word_aligned_data_r_reg[11]\,
      O => rx_pad_d_r0
    );
\rx_pad_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[14]\,
      I1 => \n_0_word_aligned_data_r_reg[15]\,
      I2 => \n_0_word_aligned_data_r_reg[13]\,
      I3 => \n_0_word_aligned_data_r_reg[12]\,
      O => \n_0_rx_pad_d_r[1]_i_1\
    );
\rx_pad_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_pad_d_r0,
      Q => rx_pad_d_r(0),
      R => '0'
    );
\rx_pad_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_pad_d_r[1]_i_1\,
      Q => rx_pad_d_r(1),
      R => '0'
    );
\rx_pe_control_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => word_aligned_control_bits_r(0),
      Q => p_2_in,
      R => '0'
    );
\rx_pe_control_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => word_aligned_control_bits_r(1),
      Q => \n_0_rx_pe_control_r_reg[1]\,
      R => '0'
    );
\rx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[0]\,
      Q => rx_pe_data_r(0),
      R => '0'
    );
\rx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[10]\,
      Q => rx_pe_data_r(10),
      R => '0'
    );
\rx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[11]\,
      Q => rx_pe_data_r(11),
      R => '0'
    );
\rx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[12]\,
      Q => rx_pe_data_r(12),
      R => '0'
    );
\rx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[13]\,
      Q => rx_pe_data_r(13),
      R => '0'
    );
\rx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[14]\,
      Q => rx_pe_data_r(14),
      R => '0'
    );
\rx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[15]\,
      Q => rx_pe_data_r(15),
      R => '0'
    );
\rx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[1]\,
      Q => rx_pe_data_r(1),
      R => '0'
    );
\rx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[2]\,
      Q => rx_pe_data_r(2),
      R => '0'
    );
\rx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[3]\,
      Q => rx_pe_data_r(3),
      R => '0'
    );
\rx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[4]\,
      Q => rx_pe_data_r(4),
      R => '0'
    );
\rx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[5]\,
      Q => rx_pe_data_r(5),
      R => '0'
    );
\rx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[6]\,
      Q => rx_pe_data_r(6),
      R => '0'
    );
\rx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[7]\,
      Q => rx_pe_data_r(7),
      R => '0'
    );
\rx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[8]\,
      Q => rx_pe_data_r(8),
      R => '0'
    );
\rx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_word_aligned_data_r_reg[9]\,
      Q => rx_pe_data_r(9),
      R => '0'
    );
\rx_scp_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[0]\,
      I1 => \n_0_word_aligned_data_r_reg[2]\,
      I2 => \n_0_word_aligned_data_r_reg[1]\,
      I3 => \n_0_word_aligned_data_r_reg[3]\,
      O => \n_0_rx_scp_d_r[0]_i_1\
    );
\rx_scp_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[6]\,
      I1 => \n_0_word_aligned_data_r_reg[7]\,
      I2 => \n_0_word_aligned_data_r_reg[5]\,
      I3 => \n_0_word_aligned_data_r_reg[4]\,
      O => rx_scp_d_r0
    );
\rx_scp_d_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[13]\,
      I1 => \n_0_word_aligned_data_r_reg[12]\,
      I2 => \n_0_word_aligned_data_r_reg[14]\,
      I3 => \n_0_word_aligned_data_r_reg[15]\,
      O => \n_0_rx_scp_d_r[3]_i_1\
    );
\rx_scp_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_scp_d_r[0]_i_1\,
      Q => rx_scp_d_r(0),
      R => '0'
    );
\rx_scp_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_scp_d_r0,
      Q => rx_scp_d_r(1),
      R => '0'
    );
\rx_scp_d_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_scp_d_r[3]_i_1\,
      Q => rx_scp_d_r(3),
      R => '0'
    );
\rx_sp_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[2]\,
      I1 => \n_0_word_aligned_data_r_reg[1]\,
      I2 => \n_0_word_aligned_data_r_reg[3]\,
      I3 => \n_0_word_aligned_data_r_reg[0]\,
      O => p_5_out(3)
    );
\rx_sp_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0420"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[4]\,
      I1 => \n_0_word_aligned_data_r_reg[5]\,
      I2 => \n_0_word_aligned_data_r_reg[6]\,
      I3 => \n_0_word_aligned_data_r_reg[7]\,
      O => p_5_out(2)
    );
\rx_sp_d_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[10]\,
      I1 => \n_0_word_aligned_data_r_reg[9]\,
      I2 => \n_0_word_aligned_data_r_reg[11]\,
      I3 => \n_0_word_aligned_data_r_reg[8]\,
      O => prev_beat_sp_d_r08_out
    );
\rx_sp_d_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[12]\,
      I1 => \n_0_word_aligned_data_r_reg[14]\,
      I2 => \n_0_word_aligned_data_r_reg[13]\,
      I3 => \n_0_word_aligned_data_r_reg[15]\,
      O => prev_beat_sp_d_r05_out
    );
\rx_sp_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_5_out(3),
      Q => rx_sp_d_r(0),
      R => '0'
    );
\rx_sp_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_5_out(2),
      Q => rx_sp_d_r(1),
      R => '0'
    );
\rx_sp_d_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_sp_d_r08_out,
      Q => rx_sp_d_r(2),
      R => '0'
    );
\rx_sp_d_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_sp_d_r05_out,
      Q => rx_sp_d_r(3),
      R => '0'
    );
\rx_sp_neg_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[9]\,
      I1 => \n_0_word_aligned_data_r_reg[8]\,
      I2 => \n_0_word_aligned_data_r_reg[10]\,
      I3 => \n_0_word_aligned_data_r_reg[11]\,
      O => prev_beat_sp_d_r16_in
    );
\rx_sp_neg_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[12]\,
      I1 => \n_0_word_aligned_data_r_reg[14]\,
      I2 => \n_0_word_aligned_data_r_reg[13]\,
      I3 => \n_0_word_aligned_data_r_reg[15]\,
      O => prev_beat_sp_d_r1
    );
\rx_sp_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_sp_d_r16_in,
      Q => rx_sp_neg_d_r(0),
      R => '0'
    );
\rx_sp_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_sp_d_r1,
      Q => rx_sp_neg_d_r(1),
      R => '0'
    );
\rx_spa_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[1]\,
      I1 => \n_0_word_aligned_data_r_reg[0]\,
      I2 => \n_0_word_aligned_data_r_reg[2]\,
      I3 => \n_0_word_aligned_data_r_reg[3]\,
      O => rx_spa_d_r0
    );
\rx_spa_d_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[9]\,
      I1 => \n_0_word_aligned_data_r_reg[8]\,
      I2 => \n_0_word_aligned_data_r_reg[10]\,
      I3 => \n_0_word_aligned_data_r_reg[11]\,
      O => prev_beat_spa_d_r0
    );
\rx_spa_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_spa_d_r0,
      Q => rx_spa_d_r(0),
      R => '0'
    );
\rx_spa_d_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_spa_d_r0,
      Q => rx_spa_d_r(2),
      R => '0'
    );
\rx_spa_neg_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[10]\,
      I1 => \n_0_word_aligned_data_r_reg[9]\,
      I2 => \n_0_word_aligned_data_r_reg[8]\,
      I3 => \n_0_word_aligned_data_r_reg[11]\,
      O => rx_spa_neg_d_r0
    );
\rx_spa_neg_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[13]\,
      I1 => \n_0_word_aligned_data_r_reg[12]\,
      I2 => \n_0_word_aligned_data_r_reg[14]\,
      I3 => \n_0_word_aligned_data_r_reg[15]\,
      O => \n_0_rx_spa_neg_d_r[1]_i_1\
    );
\rx_spa_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_spa_neg_d_r0,
      Q => rx_spa_neg_d_r(0),
      R => '0'
    );
\rx_spa_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_spa_neg_d_r[1]_i_1\,
      Q => rx_spa_neg_d_r(1),
      R => '0'
    );
\rx_v_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[3]\,
      I1 => \n_0_word_aligned_data_r_reg[1]\,
      I2 => \n_0_word_aligned_data_r_reg[0]\,
      I3 => \n_0_word_aligned_data_r_reg[2]\,
      O => rx_v_d_r0
    );
\rx_v_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[5]\,
      I1 => \n_0_word_aligned_data_r_reg[6]\,
      I2 => \n_0_word_aligned_data_r_reg[4]\,
      I3 => \n_0_word_aligned_data_r_reg[7]\,
      O => \n_0_rx_v_d_r[1]_i_1\
    );
\rx_v_d_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[11]\,
      I1 => \n_0_word_aligned_data_r_reg[9]\,
      I2 => \n_0_word_aligned_data_r_reg[8]\,
      I3 => \n_0_word_aligned_data_r_reg[10]\,
      O => prev_beat_v_d_r0
    );
\rx_v_d_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \n_0_word_aligned_data_r_reg[13]\,
      I1 => \n_0_word_aligned_data_r_reg[14]\,
      I2 => \n_0_word_aligned_data_r_reg[12]\,
      I3 => \n_0_word_aligned_data_r_reg[15]\,
      O => \n_0_rx_v_d_r[3]_i_1\
    );
\rx_v_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rx_v_d_r0,
      Q => rx_v_d_r(0),
      R => '0'
    );
\rx_v_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_v_d_r[1]_i_1\,
      Q => rx_v_d_r(1),
      R => '0'
    );
\rx_v_d_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => prev_beat_v_d_r0,
      Q => rx_v_d_r(2),
      R => '0'
    );
\rx_v_d_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_rx_v_d_r[3]_i_1\,
      Q => rx_v_d_r(3),
      R => '0'
    );
\word_aligned_control_bits_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I2,
      Q => word_aligned_control_bits_r(0),
      R => '0'
    );
\word_aligned_control_bits_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I1,
      Q => word_aligned_control_bits_r(1),
      R => '0'
    );
\word_aligned_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I10(7),
      Q => \n_0_word_aligned_data_r_reg[0]\,
      R => '0'
    );
\word_aligned_data_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I9(5),
      Q => \n_0_word_aligned_data_r_reg[10]\,
      R => '0'
    );
\word_aligned_data_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I9(4),
      Q => \n_0_word_aligned_data_r_reg[11]\,
      R => '0'
    );
\word_aligned_data_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I9(3),
      Q => \n_0_word_aligned_data_r_reg[12]\,
      R => '0'
    );
\word_aligned_data_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I9(2),
      Q => \n_0_word_aligned_data_r_reg[13]\,
      R => '0'
    );
\word_aligned_data_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I9(1),
      Q => \n_0_word_aligned_data_r_reg[14]\,
      R => '0'
    );
\word_aligned_data_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I9(0),
      Q => \n_0_word_aligned_data_r_reg[15]\,
      R => '0'
    );
\word_aligned_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I10(6),
      Q => \n_0_word_aligned_data_r_reg[1]\,
      R => '0'
    );
\word_aligned_data_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I10(5),
      Q => \n_0_word_aligned_data_r_reg[2]\,
      R => '0'
    );
\word_aligned_data_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I10(4),
      Q => \n_0_word_aligned_data_r_reg[3]\,
      R => '0'
    );
\word_aligned_data_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I10(3),
      Q => \n_0_word_aligned_data_r_reg[4]\,
      R => '0'
    );
\word_aligned_data_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I10(2),
      Q => \n_0_word_aligned_data_r_reg[5]\,
      R => '0'
    );
\word_aligned_data_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I10(1),
      Q => \n_0_word_aligned_data_r_reg[6]\,
      R => '0'
    );
\word_aligned_data_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I10(0),
      Q => \n_0_word_aligned_data_r_reg[7]\,
      R => '0'
    );
\word_aligned_data_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I9(7),
      Q => \n_0_word_aligned_data_r_reg[8]\,
      R => '0'
    );
\word_aligned_data_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I9(6),
      Q => \n_0_word_aligned_data_r_reg[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_SYM_GEN is
  port (
    TXCHARISK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    TXDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    GEN_PAD : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    gen_spa_data_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    TX_PE_DATA_V : in STD_LOGIC;
    gen_k_i : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    GEN_ECP : in STD_LOGIC;
    GEN_SCP : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    ack_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_SYM_GEN : entity is "aurora_8b10b_1_SYM_GEN";
end aurora_8b10b_1_aurora_8b10b_1_SYM_GEN;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_SYM_GEN is
  signal \^o1\ : STD_LOGIC;
  signal gen_a_r : STD_LOGIC;
  signal gen_cc_r : STD_LOGIC;
  signal gen_ecp_r : STD_LOGIC;
  signal gen_k_fsm_r : STD_LOGIC;
  signal gen_pad_r : STD_LOGIC;
  signal gen_scp_r : STD_LOGIC;
  signal \n_0_TX_CHAR_IS_K[0]_i_1\ : STD_LOGIC;
  signal \n_0_TX_CHAR_IS_K[1]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[0]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[10]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[10]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[11]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[12]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[12]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[13]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[13]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[13]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[13]_i_4\ : STD_LOGIC;
  signal \n_0_TX_DATA[14]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[14]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[14]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_4\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_5\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_6\ : STD_LOGIC;
  signal \n_0_TX_DATA[1]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[2]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[2]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[3]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[4]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[4]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[5]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[5]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[6]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[6]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[6]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[7]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[7]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[7]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[7]_i_4\ : STD_LOGIC;
  signal \n_0_TX_DATA[8]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[9]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[9]_i_2\ : STD_LOGIC;
  signal \n_0_gen_k_r_reg[1]\ : STD_LOGIC;
  signal \n_0_gen_r_r_reg[1]\ : STD_LOGIC;
  signal \n_0_gen_sp_data_r_reg[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal tx_pe_data_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal tx_pe_data_v_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TX_DATA[12]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \TX_DATA[14]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \TX_DATA[15]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \TX_DATA[6]_i_2\ : label is "soft_lutpair11";
begin
  O1 <= \^o1\;
\TX_CHAR_IS_K[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000023"
    )
    port map (
      I0 => gen_pad_r,
      I1 => \n_0_gen_sp_data_r_reg[1]\,
      I2 => tx_pe_data_v_r,
      I3 => \^o1\,
      I4 => p_3_in,
      O => \n_0_TX_CHAR_IS_K[0]_i_1\
    );
\TX_CHAR_IS_K[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => p_0_in1_in,
      I1 => tx_pe_data_v_r,
      I2 => p_1_in,
      I3 => p_2_in,
      O => \n_0_TX_CHAR_IS_K[1]_i_1\
    );
\TX_CHAR_IS_K_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_TX_CHAR_IS_K[0]_i_1\,
      Q => TXCHARISK(1),
      R => '0'
    );
\TX_CHAR_IS_K_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_TX_CHAR_IS_K[1]_i_1\,
      Q => TXCHARISK(0),
      R => '0'
    );
\TX_DATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEFEAEAE"
    )
    port map (
      I0 => gen_scp_r,
      I1 => gen_cc_r,
      I2 => tx_pe_data_v_r,
      I3 => gen_pad_r,
      I4 => tx_pe_data_r(15),
      I5 => gen_ecp_r,
      O => \n_0_TX_DATA[0]_i_1\
    );
\TX_DATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8B88"
    )
    port map (
      I0 => tx_pe_data_r(5),
      I1 => tx_pe_data_v_r,
      I2 => p_0_in1_in,
      I3 => p_1_in,
      I4 => \n_0_TX_DATA[10]_i_2\,
      I5 => \n_0_TX_DATA[15]_i_3\,
      O => \n_0_TX_DATA[10]_i_1\
    );
\TX_DATA[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010100"
    )
    port map (
      I0 => p_2_in,
      I1 => p_0_in1_in,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in,
      I4 => gen_a_r,
      I5 => p_0_in6_in,
      O => \n_0_TX_DATA[10]_i_2\
    );
\TX_DATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFEEEFFEEFF"
    )
    port map (
      I0 => gen_ecp_r,
      I1 => gen_scp_r,
      I2 => tx_pe_data_r(4),
      I3 => gen_cc_r,
      I4 => gen_k_fsm_r,
      I5 => tx_pe_data_v_r,
      O => \n_0_TX_DATA[11]_i_1\
    );
\TX_DATA[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEAEA"
    )
    port map (
      I0 => \n_0_TX_DATA[15]_i_3\,
      I1 => tx_pe_data_r(3),
      I2 => tx_pe_data_v_r,
      I3 => \n_0_TX_DATA[15]_i_4\,
      I4 => \n_0_TX_DATA[12]_i_2\,
      O => \n_0_TX_DATA[12]_i_1\
    );
\TX_DATA[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => p_0_in6_in,
      I1 => gen_a_r,
      I2 => p_0_in,
      O => \n_0_TX_DATA[12]_i_2\
    );
\TX_DATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFEFFAAAA"
    )
    port map (
      I0 => \n_0_TX_DATA[13]_i_2\,
      I1 => p_1_in,
      I2 => p_2_in,
      I3 => p_0_in,
      I4 => \n_0_TX_DATA[13]_i_3\,
      I5 => \n_0_TX_DATA[13]_i_4\,
      O => \n_0_TX_DATA[13]_i_1\
    );
\TX_DATA[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FE00FE00FE"
    )
    port map (
      I0 => gen_cc_r,
      I1 => gen_k_fsm_r,
      I2 => gen_ecp_r,
      I3 => gen_scp_r,
      I4 => tx_pe_data_r(2),
      I5 => tx_pe_data_v_r,
      O => \n_0_TX_DATA[13]_i_2\
    );
\TX_DATA[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => tx_pe_data_v_r,
      I1 => p_0_in1_in,
      I2 => gen_scp_r,
      O => \n_0_TX_DATA[13]_i_3\
    );
\TX_DATA[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => gen_a_r,
      I1 => p_0_in6_in,
      O => \n_0_TX_DATA[13]_i_4\
    );
\TX_DATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFBAAFAAAABAAAA"
    )
    port map (
      I0 => \n_0_TX_DATA[14]_i_2\,
      I1 => p_1_in,
      I2 => tx_pe_data_v_r,
      I3 => gen_k_fsm_r,
      I4 => \n_0_TX_DATA[14]_i_3\,
      I5 => tx_pe_data_r(1),
      O => \n_0_TX_DATA[14]_i_1\
    );
\TX_DATA[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABAA"
    )
    port map (
      I0 => gen_cc_r,
      I1 => gen_k_fsm_r,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in1_in,
      I4 => gen_scp_r,
      I5 => gen_ecp_r,
      O => \n_0_TX_DATA[14]_i_2\
    );
\TX_DATA[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => p_0_in,
      I1 => p_0_in6_in,
      I2 => p_2_in,
      I3 => gen_a_r,
      O => \n_0_TX_DATA[14]_i_3\
    );
\TX_DATA[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \n_0_TX_DATA[15]_i_3\,
      I1 => \n_0_TX_DATA[15]_i_4\,
      I2 => p_0_in,
      I3 => gen_a_r,
      I4 => p_0_in6_in,
      O => \n_0_TX_DATA[15]_i_1\
    );
\TX_DATA[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEEEEE"
    )
    port map (
      I0 => \n_0_TX_DATA[15]_i_5\,
      I1 => \n_0_TX_DATA[15]_i_6\,
      I2 => gen_scp_r,
      I3 => tx_pe_data_v_r,
      I4 => tx_pe_data_r(0),
      O => \n_0_TX_DATA[15]_i_2\
    );
\TX_DATA[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => gen_cc_r,
      I1 => gen_k_fsm_r,
      I2 => gen_scp_r,
      I3 => gen_ecp_r,
      O => \n_0_TX_DATA[15]_i_3\
    );
\TX_DATA[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => p_2_in,
      I1 => p_1_in,
      I2 => tx_pe_data_v_r,
      I3 => p_0_in1_in,
      O => \n_0_TX_DATA[15]_i_4\
    );
\TX_DATA[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => gen_ecp_r,
      I1 => gen_k_fsm_r,
      I2 => gen_cc_r,
      I3 => gen_scp_r,
      O => \n_0_TX_DATA[15]_i_5\
    );
\TX_DATA[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404044444044"
    )
    port map (
      I0 => p_1_in,
      I1 => \n_0_TX_DATA[13]_i_3\,
      I2 => p_2_in,
      I3 => p_0_in,
      I4 => p_0_in6_in,
      I5 => gen_a_r,
      O => \n_0_TX_DATA[15]_i_6\
    );
\TX_DATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2F2FFFFF2F20"
    )
    port map (
      I0 => tx_pe_data_r(14),
      I1 => gen_pad_r,
      I2 => tx_pe_data_v_r,
      I3 => gen_cc_r,
      I4 => \n_0_TX_DATA[9]_i_2\,
      I5 => \n_0_gen_sp_data_r_reg[1]\,
      O => \n_0_TX_DATA[1]_i_1\
    );
\TX_DATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAEAEAE"
    )
    port map (
      I0 => \n_0_TX_DATA[2]_i_2\,
      I1 => gen_ecp_r,
      I2 => gen_scp_r,
      I3 => gen_pad_r,
      I4 => tx_pe_data_v_r,
      O => \n_0_TX_DATA[2]_i_1\
    );
\TX_DATA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCAACCFA"
    )
    port map (
      I0 => gen_cc_r,
      I1 => tx_pe_data_r(13),
      I2 => \n_0_TX_DATA[6]_i_3\,
      I3 => tx_pe_data_v_r,
      I4 => \n_0_gen_sp_data_r_reg[1]\,
      I5 => gen_scp_r,
      O => \n_0_TX_DATA[2]_i_2\
    );
\TX_DATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFFF5FFF5"
    )
    port map (
      I0 => gen_cc_r,
      I1 => tx_pe_data_r(12),
      I2 => gen_ecp_r,
      I3 => gen_scp_r,
      I4 => gen_pad_r,
      I5 => tx_pe_data_v_r,
      O => \n_0_TX_DATA[3]_i_1\
    );
\TX_DATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF2FF22FF22"
    )
    port map (
      I0 => \n_0_TX_DATA[4]_i_2\,
      I1 => \n_0_TX_DATA[7]_i_3\,
      I2 => tx_pe_data_r(11),
      I3 => \n_0_TX_DATA[6]_i_2\,
      I4 => gen_pad_r,
      I5 => tx_pe_data_v_r,
      O => \n_0_TX_DATA[4]_i_1\
    );
\TX_DATA[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_gen_k_r_reg[1]\,
      I1 => \n_0_gen_r_r_reg[1]\,
      O => \n_0_TX_DATA[4]_i_2\
    );
\TX_DATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEFFEF"
    )
    port map (
      I0 => \n_0_TX_DATA[5]_i_2\,
      I1 => \n_0_TX_DATA[6]_i_2\,
      I2 => \n_0_gen_r_r_reg[1]\,
      I3 => \n_0_gen_k_r_reg[1]\,
      I4 => tx_pe_data_v_r,
      I5 => \n_0_gen_sp_data_r_reg[1]\,
      O => \n_0_TX_DATA[5]_i_1\
    );
\TX_DATA[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"220F220F220F2200"
    )
    port map (
      I0 => tx_pe_data_r(10),
      I1 => gen_pad_r,
      I2 => \n_0_gen_sp_data_r_reg[1]\,
      I3 => tx_pe_data_v_r,
      I4 => \^o1\,
      I5 => p_3_in,
      O => \n_0_TX_DATA[5]_i_2\
    );
\TX_DATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCCEEEECFCCFFFF"
    )
    port map (
      I0 => \n_0_gen_sp_data_r_reg[1]\,
      I1 => \n_0_TX_DATA[6]_i_2\,
      I2 => gen_pad_r,
      I3 => tx_pe_data_r(9),
      I4 => tx_pe_data_v_r,
      I5 => \n_0_TX_DATA[6]_i_3\,
      O => \n_0_TX_DATA[6]_i_1\
    );
\TX_DATA[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
    port map (
      I0 => tx_pe_data_v_r,
      I1 => gen_cc_r,
      I2 => gen_scp_r,
      I3 => gen_ecp_r,
      O => \n_0_TX_DATA[6]_i_2\
    );
\TX_DATA[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFE"
    )
    port map (
      I0 => \^o1\,
      I1 => \n_0_gen_k_r_reg[1]\,
      I2 => \n_0_gen_r_r_reg[1]\,
      I3 => p_3_in,
      O => \n_0_TX_DATA[6]_i_3\
    );
\TX_DATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_TX_DATA[7]_i_3\,
      I1 => \n_0_gen_k_r_reg[1]\,
      I2 => \n_0_gen_r_r_reg[1]\,
      I3 => gen_ecp_r,
      I4 => gen_scp_r,
      I5 => gen_cc_r,
      O => \n_0_TX_DATA[7]_i_1\
    );
\TX_DATA[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFAFEFEFFFA"
    )
    port map (
      I0 => \n_0_TX_DATA[7]_i_4\,
      I1 => tx_pe_data_r(8),
      I2 => \n_0_TX_DATA[9]_i_2\,
      I3 => gen_cc_r,
      I4 => tx_pe_data_v_r,
      I5 => gen_pad_r,
      O => \n_0_TX_DATA[7]_i_2\
    );
\TX_DATA[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => p_3_in,
      I1 => \^o1\,
      I2 => tx_pe_data_v_r,
      I3 => \n_0_gen_sp_data_r_reg[1]\,
      O => \n_0_TX_DATA[7]_i_3\
    );
\TX_DATA[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010001010101"
    )
    port map (
      I0 => \^o1\,
      I1 => \n_0_gen_sp_data_r_reg[1]\,
      I2 => tx_pe_data_v_r,
      I3 => p_3_in,
      I4 => \n_0_gen_k_r_reg[1]\,
      I5 => \n_0_gen_r_r_reg[1]\,
      O => \n_0_TX_DATA[7]_i_4\
    );
\TX_DATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEEEEEE"
    )
    port map (
      I0 => gen_ecp_r,
      I1 => gen_cc_r,
      I2 => gen_k_fsm_r,
      I3 => tx_pe_data_v_r,
      I4 => tx_pe_data_r(7),
      I5 => gen_scp_r,
      O => \n_0_TX_DATA[8]_i_1\
    );
\TX_DATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333300002230"
    )
    port map (
      I0 => tx_pe_data_r(6),
      I1 => \n_0_TX_DATA[9]_i_2\,
      I2 => p_0_in1_in,
      I3 => tx_pe_data_v_r,
      I4 => gen_k_fsm_r,
      I5 => gen_cc_r,
      O => \n_0_TX_DATA[9]_i_1\
    );
\TX_DATA[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => gen_ecp_r,
      I1 => gen_scp_r,
      O => \n_0_TX_DATA[9]_i_2\
    );
\TX_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[0]_i_1\,
      Q => TXDATA(8),
      R => '0'
    );
\TX_DATA_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[10]_i_1\,
      Q => TXDATA(2),
      R => '0'
    );
\TX_DATA_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[11]_i_1\,
      Q => TXDATA(3),
      R => '0'
    );
\TX_DATA_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[12]_i_1\,
      Q => TXDATA(4),
      R => '0'
    );
\TX_DATA_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[13]_i_1\,
      Q => TXDATA(5),
      R => '0'
    );
\TX_DATA_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[14]_i_1\,
      Q => TXDATA(6),
      R => '0'
    );
\TX_DATA_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[15]_i_2\,
      Q => TXDATA(7),
      R => '0'
    );
\TX_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[1]_i_1\,
      Q => TXDATA(9),
      R => '0'
    );
\TX_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[2]_i_1\,
      Q => TXDATA(10),
      R => '0'
    );
\TX_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[3]_i_1\,
      Q => TXDATA(11),
      R => '0'
    );
\TX_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[4]_i_1\,
      Q => TXDATA(12),
      R => '0'
    );
\TX_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[5]_i_1\,
      Q => TXDATA(13),
      R => '0'
    );
\TX_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[6]_i_1\,
      Q => TXDATA(14),
      R => '0'
    );
\TX_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[7]_i_2\,
      Q => TXDATA(15),
      R => '0'
    );
\TX_DATA_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[8]_i_1\,
      Q => TXDATA(0),
      R => '0'
    );
\TX_DATA_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[9]_i_1\,
      Q => TXDATA(1),
      R => '0'
    );
gen_a_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => gen_a_i,
      Q => gen_a_r,
      R => '0'
    );
gen_cc_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => gen_cc_i,
      Q => gen_cc_r,
      R => '0'
    );
gen_ecp_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => GEN_ECP,
      Q => gen_ecp_r,
      R => '0'
    );
gen_k_fsm_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => gen_k_i,
      Q => gen_k_fsm_r,
      R => '0'
    );
\gen_k_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I8(1),
      Q => p_0_in6_in,
      R => '0'
    );
\gen_k_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I8(0),
      Q => \n_0_gen_k_r_reg[1]\,
      R => '0'
    );
gen_pad_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => GEN_PAD,
      Q => gen_pad_r,
      R => '0'
    );
\gen_r_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I7(1),
      Q => p_0_in,
      R => '0'
    );
\gen_r_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I7(0),
      Q => \n_0_gen_r_r_reg[1]\,
      R => '0'
    );
gen_scp_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => GEN_SCP,
      Q => gen_scp_r,
      R => '0'
    );
\gen_sp_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => D(1),
      Q => p_0_in1_in,
      R => '0'
    );
\gen_sp_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => D(0),
      Q => \n_0_gen_sp_data_r_reg[1]\,
      R => '0'
    );
\gen_spa_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => gen_spa_data_i(0),
      Q => p_1_in,
      R => '0'
    );
\gen_spa_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => ack_r,
      Q => \^o1\,
      R => '0'
    );
\gen_v_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I6(1),
      Q => p_2_in,
      R => '0'
    );
\gen_v_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I6(0),
      Q => p_3_in,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(15),
      Q => tx_pe_data_r(0),
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(5),
      Q => tx_pe_data_r(10),
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(4),
      Q => tx_pe_data_r(11),
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(3),
      Q => tx_pe_data_r(12),
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(2),
      Q => tx_pe_data_r(13),
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(1),
      Q => tx_pe_data_r(14),
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(0),
      Q => tx_pe_data_r(15),
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(14),
      Q => tx_pe_data_r(1),
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(13),
      Q => tx_pe_data_r(2),
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(12),
      Q => tx_pe_data_r(3),
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(11),
      Q => tx_pe_data_r(4),
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(10),
      Q => tx_pe_data_r(5),
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(9),
      Q => tx_pe_data_r(6),
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(8),
      Q => tx_pe_data_r(7),
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(7),
      Q => tx_pe_data_r(8),
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => Q(6),
      Q => tx_pe_data_r(9),
      R => '0'
    );
tx_pe_data_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => TX_PE_DATA_V,
      Q => tx_pe_data_v_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_TX_LL_CONTROL is
  port (
    gen_cc_i : out STD_LOGIC;
    do_cc_r : out STD_LOGIC;
    GEN_ECP : out STD_LOGIC;
    GEN_SCP : out STD_LOGIC;
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    storage_pad_r0 : out STD_LOGIC;
    reset_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    do_cc : in STD_LOGIC;
    O127 : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 );
    I3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_TX_LL_CONTROL : entity is "aurora_8b10b_1_TX_LL_CONTROL";
end aurora_8b10b_1_aurora_8b10b_1_TX_LL_CONTROL;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_TX_LL_CONTROL is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GEN_ECP0 : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal data_eof_1_r : STD_LOGIC;
  signal data_eof_2_r : STD_LOGIC;
  signal data_eof_3_r : STD_LOGIC;
  signal data_r : STD_LOGIC;
  signal \^do_cc_r\ : STD_LOGIC;
  signal idle_r : STD_LOGIC;
  signal n_0_GEN_SCP_i_1 : STD_LOGIC;
  signal n_0_TX_DST_RDY_N_i_2 : STD_LOGIC;
  signal n_0_TX_DST_RDY_N_i_3 : STD_LOGIC;
  signal n_0_storage_pad_r_i_2 : STD_LOGIC;
  signal next_data_c : STD_LOGIC;
  signal next_data_eof_1_c : STD_LOGIC;
  signal next_idle_c : STD_LOGIC;
  signal next_sof_c : STD_LOGIC;
  signal next_sof_data_eof_1_c : STD_LOGIC;
  signal sof_data_eof_1_r : STD_LOGIC;
  signal sof_data_eof_2_r : STD_LOGIC;
  signal sof_data_eof_3_r : STD_LOGIC;
  signal sof_r : STD_LOGIC;
  signal tx_dst_rdy_n_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of TX_DST_RDY_N_i_2 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of data_r_i_1 : label is "soft_lutpair63";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_cc_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_cc_flop_0_i : label is "FDR";
  attribute SOFT_HLUTNM of sof_data_eof_1_r_i_1 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of sof_r_i_1 : label is "soft_lutpair64";
begin
  E(0) <= \^e\(0);
  O1 <= \^o1\;
  do_cc_r <= \^do_cc_r\;
GEN_ECP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => sof_data_eof_3_r,
      I1 => data_eof_3_r,
      I2 => \^do_cc_r\,
      O => GEN_ECP0
    );
GEN_ECP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => GEN_ECP0,
      Q => GEN_ECP,
      R => reset_i
    );
GEN_SCP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => \^do_cc_r\,
      I1 => sof_data_eof_1_r,
      I2 => sof_r,
      O => n_0_GEN_SCP_i_1
    );
GEN_SCP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_GEN_SCP_i_1,
      Q => GEN_SCP,
      R => reset_i
    );
TX_DST_RDY_N_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FEAA"
    )
    port map (
      I0 => next_sof_data_eof_1_c,
      I1 => data_r,
      I2 => sof_r,
      I3 => n_0_TX_DST_RDY_N_i_2,
      I4 => \^do_cc_r\,
      I5 => n_0_TX_DST_RDY_N_i_3,
      O => tx_dst_rdy_n_c
    );
TX_DST_RDY_N_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => s_axi_tx_tlast,
      I1 => s_axi_tx_tvalid,
      I2 => \^o1\,
      O => n_0_TX_DST_RDY_N_i_2
    );
TX_DST_RDY_N_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
    port map (
      I0 => data_eof_1_r,
      I1 => sof_data_eof_1_r,
      I2 => do_cc,
      I3 => data_eof_2_r,
      I4 => sof_data_eof_2_r,
      I5 => \^do_cc_r\,
      O => n_0_TX_DST_RDY_N_i_3
    );
TX_DST_RDY_N_reg: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => '1',
      D => tx_dst_rdy_n_c,
      Q => \^o1\,
      S => reset_i
    );
data_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => s_axi_tx_tlast,
      I3 => sof_r,
      I4 => data_r,
      O => next_data_eof_1_c
    );
data_eof_1_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => next_data_eof_1_c,
      Q => data_eof_1_r,
      R => reset_i
    );
data_eof_2_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => data_eof_1_r,
      Q => data_eof_2_r,
      R => reset_i
    );
data_eof_3_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => data_eof_2_r,
      Q => data_eof_3_r,
      R => reset_i
    );
data_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF00"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => s_axi_tx_tlast,
      I3 => sof_r,
      I4 => data_r,
      O => next_data_c
    );
data_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => next_data_c,
      Q => data_r,
      R => reset_i
    );
do_cc_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => do_cc,
      Q => \^do_cc_r\,
      R => '0'
    );
gen_cc_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => \^do_cc_r\,
      Q => gen_cc_i,
      R => reset_i
    );
idle_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFB00"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => I1,
      I3 => data_eof_3_r,
      I4 => sof_data_eof_3_r,
      I5 => idle_r,
      O => next_idle_c
    );
idle_r_reg: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => next_idle_c,
      Q => idle_r,
      S => reset_i
    );
in_frame_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAA2AA00000200"
    )
    port map (
      I0 => O127,
      I1 => s_axi_tx_tlast,
      I2 => \^o1\,
      I3 => s_axi_tx_tvalid,
      I4 => I1,
      I5 => I2,
      O => O2
    );
s_axi_tx_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o1\,
      O => s_axi_tx_tready
    );
sof_data_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
    port map (
      I0 => s_axi_tx_tlast,
      I1 => idle_r,
      I2 => sof_data_eof_3_r,
      I3 => data_eof_3_r,
      I4 => I3,
      O => next_sof_data_eof_1_c
    );
sof_data_eof_1_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => next_sof_data_eof_1_c,
      Q => sof_data_eof_1_r,
      R => reset_i
    );
sof_data_eof_2_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => sof_data_eof_1_r,
      Q => sof_data_eof_2_r,
      R => reset_i
    );
sof_data_eof_3_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => sof_data_eof_2_r,
      Q => sof_data_eof_3_r,
      R => reset_i
    );
sof_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005554"
    )
    port map (
      I0 => s_axi_tx_tlast,
      I1 => idle_r,
      I2 => sof_data_eof_3_r,
      I3 => data_eof_3_r,
      I4 => I3,
      O => next_sof_c
    );
sof_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^e\(0),
      D => next_sof_c,
      Q => sof_r,
      R => reset_i
    );
storage_pad_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045000000"
    )
    port map (
      I0 => n_0_storage_pad_r_i_2,
      I1 => I2,
      I2 => I1,
      I3 => s_axi_tx_tlast,
      I4 => s_axi_tx_tkeep(0),
      I5 => s_axi_tx_tkeep(1),
      O => storage_pad_r0
    );
storage_pad_r_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      O => n_0_storage_pad_r_i_2
    );
\storage_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^do_cc_r\,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_TX_LL_DATAPATH is
  port (
    GEN_PAD : out STD_LOGIC;
    TX_PE_DATA_V : out STD_LOGIC;
    O1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    user_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    storage_pad_r0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    do_cc_r : in STD_LOGIC;
    I2 : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_TX_LL_DATAPATH : entity is "aurora_8b10b_1_TX_LL_DATAPATH";
end aurora_8b10b_1_aurora_8b10b_1_TX_LL_DATAPATH;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_TX_LL_DATAPATH is
  signal GEN_PAD0 : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal TX_PE_DATA_V0 : STD_LOGIC;
  signal gen_pad_r : STD_LOGIC;
  signal in_frame_c : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[0]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[10]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[11]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[12]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[13]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[14]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[15]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[1]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[2]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[3]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[4]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[5]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[6]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[7]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[8]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_r_reg[9]\ : STD_LOGIC;
  signal storage_pad_r : STD_LOGIC;
  signal storage_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal storage_v_r : STD_LOGIC;
  signal tx_pe_data_v_r : STD_LOGIC;
begin
  O1 <= \^o1\;
GEN_PAD_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gen_pad_r,
      I1 => do_cc_r,
      O => GEN_PAD0
    );
GEN_PAD_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => GEN_PAD0,
      Q => GEN_PAD,
      R => '0'
    );
TX_PE_DATA_V_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => tx_pe_data_v_r,
      I1 => do_cc_r,
      O => TX_PE_DATA_V0
    );
TX_PE_DATA_V_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => TX_PE_DATA_V0,
      Q => TX_PE_DATA_V,
      R => '0'
    );
\TX_PE_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[0]\,
      Q => Q(15),
      R => '0'
    );
\TX_PE_DATA_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[10]\,
      Q => Q(5),
      R => '0'
    );
\TX_PE_DATA_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[11]\,
      Q => Q(4),
      R => '0'
    );
\TX_PE_DATA_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[12]\,
      Q => Q(3),
      R => '0'
    );
\TX_PE_DATA_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[13]\,
      Q => Q(2),
      R => '0'
    );
\TX_PE_DATA_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[14]\,
      Q => Q(1),
      R => '0'
    );
\TX_PE_DATA_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[15]\,
      Q => Q(0),
      R => '0'
    );
\TX_PE_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[1]\,
      Q => Q(14),
      R => '0'
    );
\TX_PE_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[2]\,
      Q => Q(13),
      R => '0'
    );
\TX_PE_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[3]\,
      Q => Q(12),
      R => '0'
    );
\TX_PE_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[4]\,
      Q => Q(11),
      R => '0'
    );
\TX_PE_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[5]\,
      Q => Q(10),
      R => '0'
    );
\TX_PE_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[6]\,
      Q => Q(9),
      R => '0'
    );
\TX_PE_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[7]\,
      Q => Q(8),
      R => '0'
    );
\TX_PE_DATA_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[8]\,
      Q => Q(7),
      R => '0'
    );
\TX_PE_DATA_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => \n_0_tx_pe_data_r_reg[9]\,
      Q => Q(6),
      R => '0'
    );
gen_pad_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_pad_r,
      Q => gen_pad_r,
      R => '0'
    );
in_frame_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => I1,
      Q => \^o1\,
      R => '0'
    );
storage_pad_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_pad_r0,
      Q => storage_pad_r,
      R => '0'
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(0),
      Q => storage_r(0),
      R => '0'
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(10),
      Q => storage_r(10),
      R => '0'
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(11),
      Q => storage_r(11),
      R => '0'
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(12),
      Q => storage_r(12),
      R => '0'
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(13),
      Q => storage_r(13),
      R => '0'
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(14),
      Q => storage_r(14),
      R => '0'
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(15),
      Q => storage_r(15),
      R => '0'
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(1),
      Q => storage_r(1),
      R => '0'
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(2),
      Q => storage_r(2),
      R => '0'
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(3),
      Q => storage_r(3),
      R => '0'
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(4),
      Q => storage_r(4),
      R => '0'
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(5),
      Q => storage_r(5),
      R => '0'
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(6),
      Q => storage_r(6),
      R => '0'
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(7),
      Q => storage_r(7),
      R => '0'
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(8),
      Q => storage_r(8),
      R => '0'
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => s_axi_tx_tdata(9),
      Q => storage_r(9),
      R => '0'
    );
storage_v_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D00"
    )
    port map (
      I0 => I2,
      I1 => \^o1\,
      I2 => tx_dst_rdy,
      I3 => s_axi_tx_tvalid,
      O => in_frame_c
    );
storage_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => in_frame_c,
      Q => storage_v_r,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(0),
      Q => \n_0_tx_pe_data_r_reg[0]\,
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(10),
      Q => \n_0_tx_pe_data_r_reg[10]\,
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(11),
      Q => \n_0_tx_pe_data_r_reg[11]\,
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(12),
      Q => \n_0_tx_pe_data_r_reg[12]\,
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(13),
      Q => \n_0_tx_pe_data_r_reg[13]\,
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(14),
      Q => \n_0_tx_pe_data_r_reg[14]\,
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(15),
      Q => \n_0_tx_pe_data_r_reg[15]\,
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(1),
      Q => \n_0_tx_pe_data_r_reg[1]\,
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(2),
      Q => \n_0_tx_pe_data_r_reg[2]\,
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(3),
      Q => \n_0_tx_pe_data_r_reg[3]\,
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(4),
      Q => \n_0_tx_pe_data_r_reg[4]\,
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(5),
      Q => \n_0_tx_pe_data_r_reg[5]\,
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(6),
      Q => \n_0_tx_pe_data_r_reg[6]\,
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(7),
      Q => \n_0_tx_pe_data_r_reg[7]\,
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(8),
      Q => \n_0_tx_pe_data_r_reg[8]\,
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_r(9),
      Q => \n_0_tx_pe_data_r_reg[9]\,
      R => '0'
    );
tx_pe_data_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => E(0),
      D => storage_v_r,
      Q => tx_pe_data_v_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync is
  port (
    s_out_d1_cdc_to_14 : out STD_LOGIC;
    s_out_d2_15 : out STD_LOGIC;
    s_out_d3_16 : out STD_LOGIC;
    s_out_d4_17 : out STD_LOGIC;
    s_out_d5_18 : out STD_LOGIC;
    s_out_d6_19 : out STD_LOGIC;
    s_out_d7_20 : out STD_LOGIC;
    O18 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O19 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O20 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O21 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O22 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O23 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= reset;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_14
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_15
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O19(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O20(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O20(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O21(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O21(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O22(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O22(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O23(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O23(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_16
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_17
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_18
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_19
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_20
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O18(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O18(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O19(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_0 is
  port (
    O1 : out STD_LOGIC;
    s_out_d1_cdc_to_28 : out STD_LOGIC;
    s_out_d2_29 : out STD_LOGIC;
    s_out_d3_30 : out STD_LOGIC;
    s_out_d4_31 : out STD_LOGIC;
    s_out_d5_32 : out STD_LOGIC;
    s_out_d6_33 : out STD_LOGIC;
    s_out_d7_34 : out STD_LOGIC;
    O30 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O31 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O32 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O33 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O34 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O35 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrxreset_i_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_0 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_0;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_0 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  O1 <= s_level_out_d4;
  p_level_in_int <= gtrxreset_i_0;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_28
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_29
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O31(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O32(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O32(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O33(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O33(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O34(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O34(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O35(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O35(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_30
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_31
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_32
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_33
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_34
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O30(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O30(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O31(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_1 is
  port (
    txresetdone_s3 : out STD_LOGIC;
    s_out_d1_cdc_to_56 : out STD_LOGIC;
    s_out_d2_57 : out STD_LOGIC;
    s_out_d3_58 : out STD_LOGIC;
    s_out_d4_59 : out STD_LOGIC;
    s_out_d5_60 : out STD_LOGIC;
    s_out_d6_61 : out STD_LOGIC;
    s_out_d7_62 : out STD_LOGIC;
    O54 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O55 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O56 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O57 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O58 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O59 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    I1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    cplllock_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_1 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_1;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_1 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= txfsm_txresetdone_r;
  txresetdone_s3 <= s_level_out_d4;
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFBAFFBAFFBA00"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => reset_time_out,
      I2 => I1,
      I3 => \out\(0),
      I4 => I2,
      I5 => cplllock_sync,
      O => O1
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_56
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_57
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O55(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O56(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O56(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O57(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O57(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O58(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O58(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O59(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O59(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_58
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_59
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_60
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_61
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_62
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O54(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O54(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O55(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_10 is
  port (
    data_valid_sync : out STD_LOGIC;
    s_out_d1_cdc_to_119 : out STD_LOGIC;
    s_out_d2_120 : out STD_LOGIC;
    s_out_d3_121 : out STD_LOGIC;
    s_out_d4_122 : out STD_LOGIC;
    s_out_d5_123 : out STD_LOGIC;
    s_out_d6_124 : out STD_LOGIC;
    s_out_d7_125 : out STD_LOGIC;
    O108 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O109 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O110 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O111 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O112 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O113 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O3 : out STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    time_out_wait_bypass_s3 : in STD_LOGIC;
    rx_state16_out : in STD_LOGIC;
    I8 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_10 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_10;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_10 is
  signal \n_0_FSM_sequential_rx_state[0]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_6\ : STD_LOGIC;
  signal \n_0_reset_time_out_i_2__0\ : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_3 : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_4 : STD_LOGIC;
  signal p_level_in_int : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  data_valid_sync <= s_level_out_d3;
  p_level_in_int <= gt_rxuserrdy_i;
\FSM_sequential_rx_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000010FFFF"
    )
    port map (
      I0 => \out\(1),
      I1 => s_level_out_d3,
      I2 => I6,
      I3 => I3,
      I4 => \out\(0),
      I5 => \out\(2),
      O => \n_0_FSM_sequential_rx_state[0]_i_3\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888833338BBB0000"
    )
    port map (
      I0 => \n_0_FSM_sequential_rx_state[1]_i_2\,
      I1 => \out\(3),
      I2 => rx_state16_out,
      I3 => \out\(2),
      I4 => \out\(0),
      I5 => \out\(1),
      O => D(1)
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111011"
    )
    port map (
      I0 => \out\(2),
      I1 => \out\(1),
      I2 => s_level_out_d3,
      I3 => I6,
      I4 => I3,
      O => \n_0_FSM_sequential_rx_state[1]_i_2\
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000FFF4F"
    )
    port map (
      I0 => I3,
      I1 => I6,
      I2 => \out\(0),
      I3 => s_level_out_d3,
      I4 => \out\(1),
      I5 => \out\(2),
      O => O3
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B8BB"
    )
    port map (
      I0 => \n_0_FSM_sequential_rx_state[1]_i_2\,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => time_out_wait_bypass_s3,
      I4 => \out\(2),
      O => \n_0_FSM_sequential_rx_state[3]_i_6\
    );
\FSM_sequential_rx_state_reg[0]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => I5,
      I1 => \n_0_FSM_sequential_rx_state[0]_i_3\,
      O => D(0),
      S => \out\(3)
    );
\FSM_sequential_rx_state_reg[3]_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => I7,
      I1 => \n_0_FSM_sequential_rx_state[3]_i_6\,
      O => D(2),
      S => \out\(3)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_119
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_120
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O109(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O110(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O110(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O111(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O111(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O112(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O112(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O113(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O113(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_121
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_122
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_123
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_124
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_125
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O108(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O108(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O109(1)
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
    port map (
      I0 => \n_0_reset_time_out_i_2__0\,
      I1 => \out\(3),
      I2 => I1,
      I3 => I2,
      I4 => I3,
      O => O1
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001D"
    )
    port map (
      I0 => \out\(0),
      I1 => s_level_out_d3,
      I2 => \out\(1),
      I3 => \out\(2),
      O => \n_0_reset_time_out_i_2__0\
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFA8080000"
    )
    port map (
      I0 => rx_fsm_reset_done_int,
      I1 => n_0_rx_fsm_reset_done_int_i_3,
      I2 => \out\(0),
      I3 => n_0_rx_fsm_reset_done_int_i_4,
      I4 => \out\(3),
      I5 => I4,
      O => O2
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
    port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => s_level_out_d3,
      I3 => I8,
      I4 => I3,
      O => rx_fsm_reset_done_int
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000020AA"
    )
    port map (
      I0 => \out\(1),
      I1 => I3,
      I2 => I8,
      I3 => s_level_out_d3,
      I4 => \out\(2),
      O => n_0_rx_fsm_reset_done_int_i_3
    );
rx_fsm_reset_done_int_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004544"
    )
    port map (
      I0 => \out\(1),
      I1 => s_level_out_d3,
      I2 => I3,
      I3 => I6,
      I4 => \out\(2),
      O => n_0_rx_fsm_reset_done_int_i_4
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_11 is
  port (
    s_out_d1_cdc_to_112 : out STD_LOGIC;
    s_out_d2_113 : out STD_LOGIC;
    s_out_d3_114 : out STD_LOGIC;
    s_out_d4_115 : out STD_LOGIC;
    s_out_d5_116 : out STD_LOGIC;
    s_out_d6_117 : out STD_LOGIC;
    s_out_d7_118 : out STD_LOGIC;
    O102 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O103 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O104 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O105 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O106 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O107 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_11 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_11;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_11 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_112
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O103(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O103(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O104(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O104(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O105(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O105(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O106(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O106(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O107(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O107(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_113
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_114
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_115
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_116
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_117
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_118
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O102(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O102(0)
    );
\mmcm_lock_count[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d3,
      O => SR(0)
    );
\mmcm_lock_reclocked_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => I1,
      I3 => Q(0),
      I4 => s_level_out_d3,
      O => O1
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_12 is
  port (
    s_out_d1_cdc_to_133 : out STD_LOGIC;
    s_out_d2_134 : out STD_LOGIC;
    s_out_d3_135 : out STD_LOGIC;
    s_out_d4_136 : out STD_LOGIC;
    s_out_d5_137 : out STD_LOGIC;
    s_out_d6_138 : out STD_LOGIC;
    s_out_d7_139 : out STD_LOGIC;
    O120 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O121 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O122 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O123 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O124 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O125 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_12 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_12;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_12 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_133
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O121(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O121(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O122(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O122(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O123(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O123(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O124(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O124(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O125(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O125(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_134
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_135
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_136
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_137
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_138
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_139
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O120(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O120(0)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_13 is
  port (
    O1 : out STD_LOGIC;
    s_out_d1_cdc_to_84 : out STD_LOGIC;
    s_out_d2_85 : out STD_LOGIC;
    s_out_d3_86 : out STD_LOGIC;
    s_out_d4_87 : out STD_LOGIC;
    s_out_d5_88 : out STD_LOGIC;
    s_out_d6_89 : out STD_LOGIC;
    s_out_d7_90 : out STD_LOGIC;
    O78 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O79 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O80 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O81 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O82 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O83 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_13 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_13;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_13 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  O1 <= s_level_out_d4;
  p_level_in_int <= I1;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_84
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_85
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O79(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O80(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O80(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O81(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O81(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O82(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O82(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O83(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O83(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_86
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_87
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_88
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_89
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_90
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O78(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O78(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O79(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d4,
      O => O2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_14 is
  port (
    s_out_d1_cdc_to_91 : out STD_LOGIC;
    s_out_d2_92 : out STD_LOGIC;
    s_out_d3_93 : out STD_LOGIC;
    s_out_d4_94 : out STD_LOGIC;
    s_out_d5_95 : out STD_LOGIC;
    s_out_d6_96 : out STD_LOGIC;
    s_out_d7_97 : out STD_LOGIC;
    O84 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O85 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O86 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O87 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O88 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O89 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    wait_bypass_count_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_14 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_14;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_14 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= I1;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_91
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_92
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O85(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O86(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O86(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O87(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O87(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O88(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O88(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O89(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O89(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_93
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_94
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_95
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_96
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_97
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O84(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O84(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O85(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
\time_out_wait_bypass_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0400000000"
    )
    port map (
      I0 => I2,
      I1 => wait_bypass_count_reg(0),
      I2 => I3,
      I3 => I4,
      I4 => s_level_out_d4,
      I5 => I5,
      O => O1
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
    port map (
      I0 => I2,
      I1 => wait_bypass_count_reg(0),
      I2 => I3,
      I3 => s_level_out_d4,
      O => O2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_15 is
  port (
    time_out_wait_bypass_s3 : out STD_LOGIC;
    s_out_d1_cdc_to_98 : out STD_LOGIC;
    s_out_d2_99 : out STD_LOGIC;
    s_out_d3_100 : out STD_LOGIC;
    s_out_d4_101 : out STD_LOGIC;
    s_out_d5_102 : out STD_LOGIC;
    s_out_d6_103 : out STD_LOGIC;
    s_out_d7_104 : out STD_LOGIC;
    O90 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O91 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O92 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O93 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O94 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O95 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_15 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_15;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_15 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= I1;
  time_out_wait_bypass_s3 <= s_level_out_d4;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_98
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_99
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O91(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O92(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O92(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O93(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O93(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O94(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O94(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O95(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O95(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_100
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_101
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_102
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_103
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_104
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O90(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O90(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O91(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_16 is
  port (
    s_out_d1_cdc_to_0 : out STD_LOGIC;
    s_out_d2_1 : out STD_LOGIC;
    s_out_d3_2 : out STD_LOGIC;
    s_out_d4_3 : out STD_LOGIC;
    s_out_d5_4 : out STD_LOGIC;
    s_out_d6_5 : out STD_LOGIC;
    s_out_d7_6 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    link_reset_comb_r : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    tx_lock_sync : in STD_LOGIC;
    gt_rxresetdone_r3 : in STD_LOGIC;
    gt_txresetdone_r3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_16 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_16;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_16 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= link_reset_comb_r;
SYSTEM_RESET_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
    port map (
      I0 => reset,
      I1 => s_level_out_d3,
      I2 => tx_lock_sync,
      I3 => gt_rxresetdone_r3,
      I4 => gt_txresetdone_r3,
      O => O1
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_0
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_1
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O7(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O8(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O8(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O9(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O9(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O10(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O10(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O11(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O11(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O6(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O6(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O7(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_17 is
  port (
    tx_lock_sync : out STD_LOGIC;
    s_out_d1_cdc_to_7 : out STD_LOGIC;
    s_out_d2_8 : out STD_LOGIC;
    s_out_d3_9 : out STD_LOGIC;
    s_out_d4_10 : out STD_LOGIC;
    s_out_d5_11 : out STD_LOGIC;
    s_out_d6_12 : out STD_LOGIC;
    s_out_d7_13 : out STD_LOGIC;
    O12 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O13 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O15 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O16 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O17 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_lock_comb_r : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_17 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_17;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_17 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= tx_lock_comb_r;
  tx_lock_sync <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_7
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_8
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O13(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O14(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O14(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O15(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O15(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O16(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O16(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O17(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O17(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_9
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_10
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_11
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_12
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_13
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O12(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O12(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O13(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_18 is
  port (
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_18 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_18;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_18 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= I1;
gt_txresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d3,
      O => O6
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O1(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O5(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => \out\(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => \out\(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O1(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_19 is
  port (
    cc_sync : out STD_LOGIC;
    s_out_d1_cdc_to_21 : out STD_LOGIC;
    s_out_d2_22 : out STD_LOGIC;
    s_out_d3_23 : out STD_LOGIC;
    s_out_d4_24 : out STD_LOGIC;
    s_out_d5_25 : out STD_LOGIC;
    s_out_d6_26 : out STD_LOGIC;
    s_out_d7_27 : out STD_LOGIC;
    O24 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O25 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O26 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O27 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O28 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O29 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_cc_extend_r2 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_19 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_19;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_19 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  cc_sync <= s_level_out_d3;
  p_level_in_int <= rx_cc_extend_r2;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_21
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_22
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O25(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O26(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O26(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O27(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O27(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O28(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O28(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O29(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O29(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_23
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_24
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_25
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_26
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_27
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O24(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O24(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O25(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_2 is
  port (
    cplllock_sync : out STD_LOGIC;
    s_out_d1_cdc_to_70 : out STD_LOGIC;
    s_out_d2_71 : out STD_LOGIC;
    s_out_d3_72 : out STD_LOGIC;
    s_out_d4_73 : out STD_LOGIC;
    s_out_d5_74 : out STD_LOGIC;
    s_out_d6_75 : out STD_LOGIC;
    s_out_d7_76 : out STD_LOGIC;
    O66 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O67 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O68 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O69 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O70 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O71 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_time_out : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    wait_time_done : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_2 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_2;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_2 is
  signal \n_0_FSM_sequential_tx_state[3]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state_reg[3]_i_3\ : STD_LOGIC;
  signal n_0_reset_time_out_i_3 : STD_LOGIC;
  signal p_level_in_int : STD_LOGIC;
  signal reset_time_out_0 : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  cplllock_sync <= s_level_out_d3;
  p_level_in_int <= O2;
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA0FCF0FC0"
    )
    port map (
      I0 => \n_0_FSM_sequential_tx_state_reg[3]_i_3\,
      I1 => wait_time_done,
      I2 => I1,
      I3 => \out\(3),
      I4 => I2,
      I5 => \out\(0),
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA00BA00BAFFBA00"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => reset_time_out,
      I2 => I4,
      I3 => \out\(2),
      I4 => I5,
      I5 => s_level_out_d3,
      O => \n_0_FSM_sequential_tx_state[3]_i_7\
    );
\FSM_sequential_tx_state_reg[3]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_FSM_sequential_tx_state[3]_i_7\,
      I1 => I3,
      O => \n_0_FSM_sequential_tx_state_reg[3]_i_3\,
      S => \out\(1)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_70
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_71
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O67(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O68(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O68(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O69(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O69(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O70(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O70(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O71(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O71(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_72
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_73
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_74
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_75
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_76
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O66(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O66(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O67(1)
    );
reset_time_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFAA202020AA"
    )
    port map (
      I0 => reset_time_out_0,
      I1 => \out\(3),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => reset_time_out,
      O => O1
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C554C555F554F55"
    )
    port map (
      I0 => \out\(3),
      I1 => n_0_reset_time_out_i_3,
      I2 => \out\(2),
      I3 => \out\(0),
      I4 => mmcm_lock_reclocked,
      I5 => \out\(1),
      O => reset_time_out_0
    );
reset_time_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4040404"
    )
    port map (
      I0 => \out\(3),
      I1 => s_level_out_d3,
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => txresetdone_s3,
      O => n_0_reset_time_out_i_3
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_3 is
  port (
    s_out_d1_cdc_to_63 : out STD_LOGIC;
    s_out_d2_64 : out STD_LOGIC;
    s_out_d3_65 : out STD_LOGIC;
    s_out_d4_66 : out STD_LOGIC;
    s_out_d5_67 : out STD_LOGIC;
    s_out_d6_68 : out STD_LOGIC;
    s_out_d7_69 : out STD_LOGIC;
    O60 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O61 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O62 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O63 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O64 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O65 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk_in : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_3 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_3;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_3 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_63
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O61(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O61(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O62(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O62(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O63(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O63(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O64(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O64(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O65(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O65(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_64
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_65
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_66
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_67
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_68
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_69
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O60(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O60(0)
    );
\mmcm_lock_count[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d3,
      O => SR(0)
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => I1,
      I3 => Q(0),
      I4 => s_level_out_d3,
      O => O1
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_4 is
  port (
    s_out_d1_cdc_to_77 : out STD_LOGIC;
    s_out_d2_78 : out STD_LOGIC;
    s_out_d3_79 : out STD_LOGIC;
    s_out_d4_80 : out STD_LOGIC;
    s_out_d5_81 : out STD_LOGIC;
    s_out_d6_82 : out STD_LOGIC;
    s_out_d7_83 : out STD_LOGIC;
    O72 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O73 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O74 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O75 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O76 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O77 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_4 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_4;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_4 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_77
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O73(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O73(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O74(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O74(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O75(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O75(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O76(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O76(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O77(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O77(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_78
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_79
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_80
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_81
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_82
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_83
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O72(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O72(0)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_5 is
  port (
    O1 : out STD_LOGIC;
    s_out_d1_cdc_to_35 : out STD_LOGIC;
    s_out_d2_36 : out STD_LOGIC;
    s_out_d3_37 : out STD_LOGIC;
    s_out_d4_38 : out STD_LOGIC;
    s_out_d5_39 : out STD_LOGIC;
    s_out_d6_40 : out STD_LOGIC;
    s_out_d7_41 : out STD_LOGIC;
    O36 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O37 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O38 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O39 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O40 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O41 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_5 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_5;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_5 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  O1 <= s_level_out_d4;
  p_level_in_int <= I1;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_35
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_36
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O37(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O38(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O38(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O39(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O39(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O40(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O40(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O41(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O41(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_37
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_38
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_39
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_40
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_41
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O36(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O36(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O37(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d4,
      O => O2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_6 is
  port (
    s_out_d1_cdc_to_49 : out STD_LOGIC;
    s_out_d2_50 : out STD_LOGIC;
    s_out_d3_51 : out STD_LOGIC;
    s_out_d4_52 : out STD_LOGIC;
    s_out_d5_53 : out STD_LOGIC;
    s_out_d6_54 : out STD_LOGIC;
    s_out_d7_55 : out STD_LOGIC;
    O48 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O49 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O50 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O51 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O52 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O53 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    I2 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_6 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_6;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_6 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= I1;
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00073000"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => I2,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \out\(2),
      O => D(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_49
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_50
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O49(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O50(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O50(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O51(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O51(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O52(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O52(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O53(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O53(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_51
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_52
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_53
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_54
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_55
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O48(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O48(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O49(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_7 is
  port (
    s_out_d1_cdc_to_42 : out STD_LOGIC;
    s_out_d2_43 : out STD_LOGIC;
    s_out_d3_44 : out STD_LOGIC;
    s_out_d4_45 : out STD_LOGIC;
    s_out_d5_46 : out STD_LOGIC;
    s_out_d6_47 : out STD_LOGIC;
    s_out_d7_48 : out STD_LOGIC;
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O44 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O45 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O46 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O47 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    wait_bypass_count_reg : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_7 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_7;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_7 is
  signal n_0_time_out_wait_bypass_i_2 : STD_LOGIC;
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= O1;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_42
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_43
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O43(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O44(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O44(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O45(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O45(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O46(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O46(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O47(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O47(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_44
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_45
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_46
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_47
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_48
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O42(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O42(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O43(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAE00000000"
    )
    port map (
      I0 => I1,
      I1 => I2,
      I2 => I3,
      I3 => I4,
      I4 => n_0_time_out_wait_bypass_i_2,
      I5 => I5,
      O => O2
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => wait_bypass_count_reg(3),
      I2 => wait_bypass_count_reg(2),
      I3 => wait_bypass_count_reg(0),
      I4 => wait_bypass_count_reg(1),
      O => n_0_time_out_wait_bypass_i_2
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFD"
    )
    port map (
      I0 => I2,
      I1 => I3,
      I2 => I4,
      I3 => I6,
      I4 => s_level_out_d4,
      O => O3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_8 is
  port (
    s_out_d1_cdc_to_105 : out STD_LOGIC;
    s_out_d2_106 : out STD_LOGIC;
    s_out_d3_107 : out STD_LOGIC;
    s_out_d4_108 : out STD_LOGIC;
    s_out_d5_109 : out STD_LOGIC;
    s_out_d6_110 : out STD_LOGIC;
    s_out_d7_111 : out STD_LOGIC;
    O96 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O97 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O98 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O99 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O100 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O101 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    cplllock_sync : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    I5 : in STD_LOGIC;
    time_tlock_max : in STD_LOGIC;
    I6 : in STD_LOGIC;
    data_valid_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_8 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_8;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_8 is
  signal \n_0_FSM_sequential_rx_state[3]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_7\ : STD_LOGIC;
  signal n_0_reset_time_out_i_5 : STD_LOGIC;
  signal n_0_reset_time_out_i_6 : STD_LOGIC;
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  p_level_in_int <= rxfsm_rxresetdone_r;
\FSM_sequential_rx_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0EFEFAFA0EFE0"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => I4,
      I2 => \out\(1),
      I3 => mmcm_lock_reclocked,
      I4 => I5,
      I5 => time_tlock_max,
      O => \n_0_FSM_sequential_rx_state[3]_i_10\
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
    port map (
      I0 => \n_0_FSM_sequential_rx_state[3]_i_7\,
      I1 => \out\(0),
      I2 => I2,
      I3 => \out\(2),
      I4 => I3,
      O => \n_0_FSM_sequential_rx_state[3]_i_3\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8BBBB"
    )
    port map (
      I0 => \n_0_FSM_sequential_rx_state[3]_i_10\,
      I1 => \out\(2),
      I2 => I4,
      I3 => cplllock_sync,
      I4 => \out\(1),
      O => \n_0_FSM_sequential_rx_state[3]_i_7\
    );
\FSM_sequential_rx_state_reg[3]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_FSM_sequential_rx_state[3]_i_3\,
      I1 => I1,
      O => E(0),
      S => \out\(3)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_105
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_106
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O97(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O98(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O98(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O99(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O99(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O100(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O100(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O101(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O101(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_107
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_108
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_109
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_110
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_111
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O96(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O96(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O97(1)
    );
reset_time_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFCFA0CFAFCFAFCF"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => I6,
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => cplllock_sync,
      I5 => data_valid_sync,
      O => n_0_reset_time_out_i_5
    );
reset_time_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => mmcm_lock_reclocked,
      I2 => \out\(2),
      I3 => cplllock_sync,
      I4 => \out\(1),
      O => n_0_reset_time_out_i_6
    );
reset_time_out_reg_i_3: unisim.vcomponents.MUXF7
    port map (
      I0 => n_0_reset_time_out_i_5,
      I1 => n_0_reset_time_out_i_6,
      O => O1,
      S => \out\(0)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_cdc_sync_9 is
  port (
    cplllock_sync : out STD_LOGIC;
    s_out_d1_cdc_to_126 : out STD_LOGIC;
    s_out_d2_127 : out STD_LOGIC;
    s_out_d3_128 : out STD_LOGIC;
    s_out_d4_129 : out STD_LOGIC;
    s_out_d5_130 : out STD_LOGIC;
    s_out_d6_131 : out STD_LOGIC;
    s_out_d7_132 : out STD_LOGIC;
    O114 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O115 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O116 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O117 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O118 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O119 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    O2 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    recclk_mon_count_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_9 : entity is "aurora_8b10b_1_cdc_sync";
end aurora_8b10b_1_aurora_8b10b_1_cdc_sync_9;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_cdc_sync_9 is
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  cplllock_sync <= s_level_out_d3;
  p_level_in_int <= O2;
adapt_count_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000022"
    )
    port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => s_level_out_d3,
      I3 => \out\(2),
      I4 => \out\(3),
      I5 => recclk_mon_count_reset,
      O => O1
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d1_cdc_to_126
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d2_127
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O115(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O116(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O116(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O117(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O117(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O118(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O118(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O119(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O119(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d3_128
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d4_129
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d5_130
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d6_131
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => s_out_d7_132
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O114(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O114(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => '0',
      O => O115(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_gt is
  port (
    O2 : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    O1 : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    O3 : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ack_flag : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    I11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC;
    hard_err_flop_r0 : out STD_LOGIC;
    I9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I10 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_tx_reset_i : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad6_in : in STD_LOGIC;
    gt_qpllrefclk_quad6_in : in STD_LOGIC;
    gt_rxdfelfhold_i : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    power_down : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I1 : in STD_LOGIC;
    cpll_reset_i : in STD_LOGIC;
    I2 : in STD_LOGIC;
    tx_reset_i : in STD_LOGIC;
    comma_over_two_cycles_r : in STD_LOGIC;
    bucket_full_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_gt : entity is "aurora_8b10b_1_gt";
end aurora_8b10b_1_aurora_8b10b_1_gt;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_gt is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ack_flag\ : STD_LOGIC;
  signal ack_sync1 : STD_LOGIC;
  signal ack_sync2 : STD_LOGIC;
  signal ack_sync3 : STD_LOGIC;
  signal ack_sync4 : STD_LOGIC;
  signal ack_sync5 : STD_LOGIC;
  signal ack_sync6 : STD_LOGIC;
  signal cpll_pd_i : STD_LOGIC;
  signal cpll_reset_i_0 : STD_LOGIC;
  signal cpllreset_ovrd_i : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal data_sync6 : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag2 : STD_LOGIC;
  signal gt0_pllrefclklost_i : STD_LOGIC;
  signal n_0_ack_flag_i_1 : STD_LOGIC;
  signal \n_0_cpllpd_wait_reg[94]_srl31\ : STD_LOGIC;
  signal \n_0_cpllreset_wait_reg[126]_srl31\ : STD_LOGIC;
  signal n_0_flag_i_1 : STD_LOGIC;
  signal n_0_gtxe2_i : STD_LOGIC;
  signal n_11_gtxe2_i : STD_LOGIC;
  signal n_16_gtxe2_i : STD_LOGIC;
  signal n_170_gtxe2_i : STD_LOGIC;
  signal n_171_gtxe2_i : STD_LOGIC;
  signal n_172_gtxe2_i : STD_LOGIC;
  signal n_173_gtxe2_i : STD_LOGIC;
  signal n_174_gtxe2_i : STD_LOGIC;
  signal n_175_gtxe2_i : STD_LOGIC;
  signal n_176_gtxe2_i : STD_LOGIC;
  signal n_177_gtxe2_i : STD_LOGIC;
  signal n_178_gtxe2_i : STD_LOGIC;
  signal n_179_gtxe2_i : STD_LOGIC;
  signal n_180_gtxe2_i : STD_LOGIC;
  signal n_181_gtxe2_i : STD_LOGIC;
  signal n_182_gtxe2_i : STD_LOGIC;
  signal n_183_gtxe2_i : STD_LOGIC;
  signal n_184_gtxe2_i : STD_LOGIC;
  signal \n_1_cpllpd_wait_reg[31]_srl32\ : STD_LOGIC;
  signal \n_1_cpllpd_wait_reg[63]_srl32\ : STD_LOGIC;
  signal \n_1_cpllreset_wait_reg[31]_srl32\ : STD_LOGIC;
  signal \n_1_cpllreset_wait_reg[63]_srl32\ : STD_LOGIC;
  signal \n_1_cpllreset_wait_reg[95]_srl32\ : STD_LOGIC;
  signal n_23_gtxe2_i : STD_LOGIC;
  signal n_27_gtxe2_i : STD_LOGIC;
  signal n_38_gtxe2_i : STD_LOGIC;
  signal n_39_gtxe2_i : STD_LOGIC;
  signal n_4_gtxe2_i : STD_LOGIC;
  signal n_78_gtxe2_i : STD_LOGIC;
  signal n_79_gtxe2_i : STD_LOGIC;
  signal n_81_gtxe2_i : STD_LOGIC;
  signal n_83_gtxe2_i : STD_LOGIC;
  signal n_84_gtxe2_i : STD_LOGIC;
  signal n_9_gtxe2_i : STD_LOGIC;
  signal rx_buf_err_i : STD_LOGIC;
  signal rx_char_is_k_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_data_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rx_disp_err_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_not_in_table_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rx_realign_i\ : STD_LOGIC;
  signal tx_buf_err_i : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ack_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ack_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of ack_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ack_sync_reg1 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg2 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg3 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg4 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg5 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg6 : label is "FD";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cpllpd_wait_reg[31]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllpd_wait_reg ";
  attribute srl_name : string;
  attribute srl_name of \cpllpd_wait_reg[31]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllpd_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[63]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[63]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllpd_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[94]_srl31\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[94]_srl31\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllpd_wait_reg[94]_srl31 ";
  attribute srl_bus_name of \cpllreset_wait_reg[126]_srl31\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[126]_srl31\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllreset_wait_reg[126]_srl31 ";
  attribute srl_bus_name of \cpllreset_wait_reg[31]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[31]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllreset_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[63]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[63]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllreset_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[95]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[95]_srl32\ : label is "\inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/cpllreset_wait_reg[95]_srl32 ";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute BOX_TYPE of gtxe2_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \word_aligned_control_bits_r[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \word_aligned_control_bits_r[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \word_aligned_data_r[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \word_aligned_data_r[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \word_aligned_data_r[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \word_aligned_data_r[12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \word_aligned_data_r[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \word_aligned_data_r[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \word_aligned_data_r[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \word_aligned_data_r[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \word_aligned_data_r[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \word_aligned_data_r[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \word_aligned_data_r[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \word_aligned_data_r[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \word_aligned_data_r[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \word_aligned_data_r[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \word_aligned_data_r[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \word_aligned_data_r[9]_i_1\ : label is "soft_lutpair19";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  ack_flag <= \^ack_flag\;
  rx_realign_i <= \^rx_realign_i\;
ack_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF90"
    )
    port map (
      I0 => ack_sync5,
      I1 => ack_sync6,
      I2 => \^ack_flag\,
      I3 => flag2,
      O => n_0_ack_flag_i_1
    );
ack_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_ack_flag_i_1,
      Q => \^ack_flag\,
      R => '0'
    );
ack_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => data_sync6,
      Q => ack_sync1,
      R => '0'
    );
ack_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync1,
      Q => ack_sync2,
      R => '0'
    );
ack_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync2,
      Q => ack_sync3,
      R => '0'
    );
ack_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync3,
      Q => ack_sync4,
      R => '0'
    );
ack_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync4,
      Q => ack_sync5,
      R => '0'
    );
ack_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync5,
      Q => ack_sync6,
      R => '0'
    );
\cpllpd_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => gt_refclk1,
      D => '0',
      Q => \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllpd_wait_reg[31]_srl32\
    );
\cpllpd_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => gt_refclk1,
      D => \n_1_cpllpd_wait_reg[31]_srl32\,
      Q => \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllpd_wait_reg[63]_srl32\
    );
\cpllpd_wait_reg[94]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '0',
      CE => '1',
      CLK => gt_refclk1,
      D => \n_1_cpllpd_wait_reg[63]_srl32\,
      Q => \n_0_cpllpd_wait_reg[94]_srl31\,
      Q31 => \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\
    );
\cpllpd_wait_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => gt_refclk1,
      CE => '1',
      D => \n_0_cpllpd_wait_reg[94]_srl31\,
      Q => cpll_pd_i,
      R => '0'
    );
\cpllreset_wait_reg[126]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '0',
      CE => '1',
      CLK => gt_refclk1,
      D => \n_1_cpllreset_wait_reg[95]_srl32\,
      Q => \n_0_cpllreset_wait_reg[126]_srl31\,
      Q31 => \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\
    );
\cpllreset_wait_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => gt_refclk1,
      CE => '1',
      D => \n_0_cpllreset_wait_reg[126]_srl31\,
      Q => cpllreset_ovrd_i,
      R => '0'
    );
\cpllreset_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"000000FF"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => gt_refclk1,
      D => '0',
      Q => \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllreset_wait_reg[31]_srl32\
    );
\cpllreset_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => gt_refclk1,
      D => \n_1_cpllreset_wait_reg[31]_srl32\,
      Q => \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllreset_wait_reg[63]_srl32\
    );
\cpllreset_wait_reg[95]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => gt_refclk1,
      D => \n_1_cpllreset_wait_reg[63]_srl32\,
      Q => \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllreset_wait_reg[95]_srl32\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => gt_refclk1,
      CE => '1',
      D => flag,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync5,
      Q => data_sync6,
      R => '0'
    );
flag2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => I1,
      Q => flag2,
      R => '0'
    );
flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
    port map (
      I0 => \^ack_flag\,
      I1 => cpll_reset_i,
      I2 => flag,
      O => n_0_flag_i_1
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_flag_i_1,
      Q => flag,
      R => '0'
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"0001",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"0000",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 17,
      CLK_COR_MIN_LAT => 12,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0111110111",
      CLK_COR_SEQ_1_2 => B"0111110111",
      CLK_COR_SEQ_1_3 => B"0100000000",
      CLK_COR_SEQ_1_4 => B"0100000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 2,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 5,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 2,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF20400020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 10,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0954",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 0,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 10,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 0,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
    port map (
      CFGRESET => '0',
      CLKRSVD(3) => '0',
      CLKRSVD(2) => '0',
      CLKRSVD(1) => '0',
      CLKRSVD(0) => '0',
      CPLLFBCLKLOST => n_0_gtxe2_i,
      CPLLLOCK => O2,
      CPLLLOCKDETCLK => init_clk_in,
      CPLLLOCKEN => '1',
      CPLLPD => cpll_pd_i,
      CPLLREFCLKLOST => gt0_pllrefclklost_i,
      CPLLREFCLKSEL(2) => '0',
      CPLLREFCLKSEL(1) => '0',
      CPLLREFCLKSEL(0) => '1',
      CPLLRESET => cpll_reset_i_0,
      DMONITOROUT(7) => n_177_gtxe2_i,
      DMONITOROUT(6) => n_178_gtxe2_i,
      DMONITOROUT(5) => n_179_gtxe2_i,
      DMONITOROUT(4) => n_180_gtxe2_i,
      DMONITOROUT(3) => n_181_gtxe2_i,
      DMONITOROUT(2) => n_182_gtxe2_i,
      DMONITOROUT(1) => n_183_gtxe2_i,
      DMONITOROUT(0) => n_184_gtxe2_i,
      DRPADDR(8 downto 0) => drpaddr_in(8 downto 0),
      DRPCLK => drpclk_in,
      DRPDI(15 downto 0) => drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_out(15 downto 0),
      DRPEN => drpen_in,
      DRPRDY => drprdy_out,
      DRPWE => drpwe_in,
      EYESCANDATAERROR => n_4_gtxe2_i,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => gt_refclk1,
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15) => '0',
      GTRSVD(14) => '0',
      GTRSVD(13) => '0',
      GTRSVD(12) => '0',
      GTRSVD(11) => '0',
      GTRSVD(10) => '0',
      GTRSVD(9) => '0',
      GTRSVD(8) => '0',
      GTRSVD(7) => '0',
      GTRSVD(6) => '0',
      GTRSVD(5) => '0',
      GTRSVD(4) => '0',
      GTRSVD(3) => '0',
      GTRSVD(2) => '0',
      GTRSVD(1) => '0',
      GTRSVD(0) => '0',
      GTRXRESET => SR(0),
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => gt_tx_reset_i,
      GTXRXN => rxn,
      GTXRXP => rxp,
      GTXTXN => txn,
      GTXTXP => txp,
      LOOPBACK(2 downto 0) => loopback(2 downto 0),
      PCSRSVDIN(15) => '0',
      PCSRSVDIN(14) => '0',
      PCSRSVDIN(13) => '0',
      PCSRSVDIN(12) => '0',
      PCSRSVDIN(11) => '0',
      PCSRSVDIN(10) => '0',
      PCSRSVDIN(9) => '0',
      PCSRSVDIN(8) => '0',
      PCSRSVDIN(7) => '0',
      PCSRSVDIN(6) => '0',
      PCSRSVDIN(5) => '0',
      PCSRSVDIN(4) => '0',
      PCSRSVDIN(3) => '0',
      PCSRSVDIN(2) => '0',
      PCSRSVDIN(1) => '0',
      PCSRSVDIN(0) => '0',
      PCSRSVDIN2(4) => '0',
      PCSRSVDIN2(3) => '0',
      PCSRSVDIN2(2) => '0',
      PCSRSVDIN2(1) => '0',
      PCSRSVDIN2(0) => '0',
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4) => '0',
      PMARSVDIN(3) => '0',
      PMARSVDIN(2) => '0',
      PMARSVDIN(1) => '0',
      PMARSVDIN(0) => '0',
      PMARSVDIN2(4) => '0',
      PMARSVDIN2(3) => '0',
      PMARSVDIN2(2) => '0',
      PMARSVDIN2(1) => '0',
      PMARSVDIN2(0) => '0',
      QPLLCLK => gt_qpllclk_quad6_in,
      QPLLREFCLK => gt_qpllrefclk_quad6_in,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => rx_buf_err_i,
      RXBUFSTATUS(1) => n_83_gtxe2_i,
      RXBUFSTATUS(0) => n_84_gtxe2_i,
      RXBYTEISALIGNED => n_9_gtxe2_i,
      RXBYTEREALIGN => \^rx_realign_i\,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => n_11_gtxe2_i,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 2) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 2),
      RXCHARISCOMMA(1 downto 0) => \^d\(1 downto 0),
      RXCHARISK(7 downto 2) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 2),
      RXCHARISK(1 downto 0) => rx_char_is_k_i(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(4) => '0',
      RXCHBONDI(3) => '0',
      RXCHBONDI(2) => '0',
      RXCHBONDI(1) => '0',
      RXCHBONDI(0) => '0',
      RXCHBONDLEVEL(2) => '0',
      RXCHBONDLEVEL(1) => '0',
      RXCHBONDLEVEL(0) => '0',
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1) => n_78_gtxe2_i,
      RXCLKCORCNT(0) => n_79_gtxe2_i,
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => n_16_gtxe2_i,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 16) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 16),
      RXDATA(15 downto 0) => rx_data_i(15 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => gt_rxdfelfhold_i,
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => gt_rxdfelfhold_i,
      RXDFELFOVRDEN => '1',
      RXDFELPMRESET => '0',
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 2) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 2),
      RXDISPERR(1 downto 0) => rx_disp_err_i(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1) => '1',
      RXELECIDLEMODE(0) => '1',
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => '0',
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => ena_comma_align_i,
      RXMONITOROUT(6) => n_170_gtxe2_i,
      RXMONITOROUT(5) => n_171_gtxe2_i,
      RXMONITOROUT(4) => n_172_gtxe2_i,
      RXMONITOROUT(3) => n_173_gtxe2_i,
      RXMONITOROUT(2) => n_174_gtxe2_i,
      RXMONITOROUT(1) => n_175_gtxe2_i,
      RXMONITOROUT(0) => n_176_gtxe2_i,
      RXMONITORSEL(1) => '0',
      RXMONITORSEL(0) => '0',
      RXNOTINTABLE(7 downto 2) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 2),
      RXNOTINTABLE(1 downto 0) => rx_not_in_table_i(1 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => n_23_gtxe2_i,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2) => '0',
      RXOUTCLKSEL(1) => '1',
      RXOUTCLKSEL(0) => '0',
      RXPCOMMAALIGNEN => ena_comma_align_i,
      RXPCSRESET => '0',
      RXPD(1) => power_down,
      RXPD(0) => power_down,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPOLARITY => rx_polarity_i,
      RXPRBSCNTRESET => '0',
      RXPRBSERR => n_27_gtxe2_i,
      RXPRBSSEL(2) => '0',
      RXPRBSSEL(1) => '0',
      RXPRBSSEL(0) => '0',
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2) => '0',
      RXRATE(1) => '0',
      RXRATE(0) => '0',
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => O1,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1) => '0',
      RXSYSCLKSEL(0) => '0',
      RXUSERRDY => gt_rxuserrdy_i,
      RXUSRCLK => sync_clk,
      RXUSRCLK2 => user_clk,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19) => '1',
      TSTIN(18) => '1',
      TSTIN(17) => '1',
      TSTIN(16) => '1',
      TSTIN(15) => '1',
      TSTIN(14) => '1',
      TSTIN(13) => '1',
      TSTIN(12) => '1',
      TSTIN(11) => '1',
      TSTIN(10) => '1',
      TSTIN(9) => '1',
      TSTIN(8) => '1',
      TSTIN(7) => '1',
      TSTIN(6) => '1',
      TSTIN(5) => '1',
      TSTIN(4) => '1',
      TSTIN(3) => '1',
      TSTIN(2) => '1',
      TSTIN(1) => '1',
      TSTIN(0) => '1',
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7) => '0',
      TX8B10BBYPASS(6) => '0',
      TX8B10BBYPASS(5) => '0',
      TX8B10BBYPASS(4) => '0',
      TX8B10BBYPASS(3) => '0',
      TX8B10BBYPASS(2) => '0',
      TX8B10BBYPASS(1) => '0',
      TX8B10BBYPASS(0) => '0',
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2) => '1',
      TXBUFDIFFCTRL(1) => '0',
      TXBUFDIFFCTRL(0) => '0',
      TXBUFSTATUS(1) => tx_buf_err_i,
      TXBUFSTATUS(0) => n_81_gtxe2_i,
      TXCHARDISPMODE(7) => '0',
      TXCHARDISPMODE(6) => '0',
      TXCHARDISPMODE(5) => '0',
      TXCHARDISPMODE(4) => '0',
      TXCHARDISPMODE(3) => '0',
      TXCHARDISPMODE(2) => '0',
      TXCHARDISPMODE(1) => '0',
      TXCHARDISPMODE(0) => '0',
      TXCHARDISPVAL(7) => '0',
      TXCHARDISPVAL(6) => '0',
      TXCHARDISPVAL(5) => '0',
      TXCHARDISPVAL(4) => '0',
      TXCHARDISPVAL(3) => '0',
      TXCHARDISPVAL(2) => '0',
      TXCHARDISPVAL(1) => '0',
      TXCHARDISPVAL(0) => '0',
      TXCHARISK(7) => '0',
      TXCHARISK(6) => '0',
      TXCHARISK(5) => '0',
      TXCHARISK(4) => '0',
      TXCHARISK(3) => '0',
      TXCHARISK(2) => '0',
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63) => '0',
      TXDATA(62) => '0',
      TXDATA(61) => '0',
      TXDATA(60) => '0',
      TXDATA(59) => '0',
      TXDATA(58) => '0',
      TXDATA(57) => '0',
      TXDATA(56) => '0',
      TXDATA(55) => '0',
      TXDATA(54) => '0',
      TXDATA(53) => '0',
      TXDATA(52) => '0',
      TXDATA(51) => '0',
      TXDATA(50) => '0',
      TXDATA(49) => '0',
      TXDATA(48) => '0',
      TXDATA(47) => '0',
      TXDATA(46) => '0',
      TXDATA(45) => '0',
      TXDATA(44) => '0',
      TXDATA(43) => '0',
      TXDATA(42) => '0',
      TXDATA(41) => '0',
      TXDATA(40) => '0',
      TXDATA(39) => '0',
      TXDATA(38) => '0',
      TXDATA(37) => '0',
      TXDATA(36) => '0',
      TXDATA(35) => '0',
      TXDATA(34) => '0',
      TXDATA(33) => '0',
      TXDATA(32) => '0',
      TXDATA(31) => '0',
      TXDATA(30) => '0',
      TXDATA(29) => '0',
      TXDATA(28) => '0',
      TXDATA(27) => '0',
      TXDATA(26) => '0',
      TXDATA(25) => '0',
      TXDATA(24) => '0',
      TXDATA(23) => '0',
      TXDATA(22) => '0',
      TXDATA(21) => '0',
      TXDATA(20) => '0',
      TXDATA(19) => '0',
      TXDATA(18) => '0',
      TXDATA(17) => '0',
      TXDATA(16) => '0',
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3) => '1',
      TXDIFFCTRL(2) => '0',
      TXDIFFCTRL(1) => '0',
      TXDIFFCTRL(0) => '0',
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => power_down,
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2) => '0',
      TXHEADER(1) => '0',
      TXHEADER(0) => '0',
      TXINHIBIT => '0',
      TXMAINCURSOR(6) => '0',
      TXMAINCURSOR(5) => '0',
      TXMAINCURSOR(4) => '0',
      TXMAINCURSOR(3) => '0',
      TXMAINCURSOR(2) => '0',
      TXMAINCURSOR(1) => '0',
      TXMAINCURSOR(0) => '0',
      TXMARGIN(2) => '0',
      TXMARGIN(1) => '0',
      TXMARGIN(0) => '0',
      TXOUTCLK => tx_out_clk,
      TXOUTCLKFABRIC => n_38_gtxe2_i,
      TXOUTCLKPCS => n_39_gtxe2_i,
      TXOUTCLKSEL(2) => '0',
      TXOUTCLKSEL(1) => '1',
      TXOUTCLKSEL(0) => '0',
      TXPCSRESET => '0',
      TXPD(1) => power_down,
      TXPD(0) => power_down,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPOLARITY => '0',
      TXPOSTCURSOR(4) => '0',
      TXPOSTCURSOR(3) => '0',
      TXPOSTCURSOR(2) => '0',
      TXPOSTCURSOR(1) => '0',
      TXPOSTCURSOR(0) => '0',
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2) => '0',
      TXPRBSSEL(1) => '0',
      TXPRBSSEL(0) => '0',
      TXPRECURSOR(4) => '0',
      TXPRECURSOR(3) => '0',
      TXPRECURSOR(2) => '0',
      TXPRECURSOR(1) => '0',
      TXPRECURSOR(0) => '0',
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2) => '0',
      TXRATE(1) => '0',
      TXRATE(0) => '0',
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => O3,
      TXSEQUENCE(6) => '0',
      TXSEQUENCE(5) => '0',
      TXSEQUENCE(4) => '0',
      TXSEQUENCE(3) => '0',
      TXSEQUENCE(2) => '0',
      TXSEQUENCE(1) => '0',
      TXSEQUENCE(0) => '0',
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1) => '0',
      TXSYSCLKSEL(0) => '0',
      TXUSERRDY => gt_txuserrdy_i,
      TXUSRCLK => sync_clk,
      TXUSRCLK2 => user_clk
    );
gtxe2_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
    port map (
      I0 => cpllreset_ovrd_i,
      I1 => data_sync6,
      I2 => data_sync5,
      O => cpll_reset_i_0
    );
hard_err_flop_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => tx_buf_err_i,
      I1 => \^rx_realign_i\,
      I2 => bucket_full_r,
      I3 => rx_buf_err_i,
      O => hard_err_flop_r0
    );
left_aligned_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
    port map (
      I0 => \^d\(0),
      I1 => rx_char_is_k_i(0),
      I2 => \^d\(1),
      I3 => rx_char_is_k_i(1),
      O => O7
    );
reset_count_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => rx_disp_err_i(1),
      I1 => rx_not_in_table_i(1),
      I2 => tx_reset_i,
      I3 => comma_over_two_cycles_r,
      I4 => rx_disp_err_i(0),
      I5 => rx_not_in_table_i(0),
      O => O6
    );
\soft_err_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rx_disp_err_i(0),
      I1 => rx_not_in_table_i(0),
      O => I11(1)
    );
\soft_err_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rx_disp_err_i(1),
      I1 => rx_not_in_table_i(1),
      O => I11(0)
    );
\word_aligned_control_bits_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_char_is_k_i(0),
      I1 => I2,
      I2 => rx_char_is_k_i(1),
      O => O5
    );
\word_aligned_control_bits_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_char_is_k_i(1),
      I1 => I2,
      I2 => rx_char_is_k_i(0),
      O => O4
    );
\word_aligned_data_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(7),
      I1 => I2,
      I2 => rx_data_i(15),
      O => I10(7)
    );
\word_aligned_data_r[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(13),
      I1 => I2,
      I2 => rx_data_i(5),
      O => I9(5)
    );
\word_aligned_data_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(12),
      I1 => I2,
      I2 => rx_data_i(4),
      O => I9(4)
    );
\word_aligned_data_r[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(11),
      I1 => I2,
      I2 => rx_data_i(3),
      O => I9(3)
    );
\word_aligned_data_r[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(10),
      I1 => I2,
      I2 => rx_data_i(2),
      O => I9(2)
    );
\word_aligned_data_r[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(9),
      I1 => I2,
      I2 => rx_data_i(1),
      O => I9(1)
    );
\word_aligned_data_r[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(8),
      I1 => I2,
      I2 => rx_data_i(0),
      O => I9(0)
    );
\word_aligned_data_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(6),
      I1 => I2,
      I2 => rx_data_i(14),
      O => I10(6)
    );
\word_aligned_data_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(5),
      I1 => I2,
      I2 => rx_data_i(13),
      O => I10(5)
    );
\word_aligned_data_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(4),
      I1 => I2,
      I2 => rx_data_i(12),
      O => I10(4)
    );
\word_aligned_data_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(3),
      I1 => I2,
      I2 => rx_data_i(11),
      O => I10(3)
    );
\word_aligned_data_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(2),
      I1 => I2,
      I2 => rx_data_i(10),
      O => I10(2)
    );
\word_aligned_data_r[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(1),
      I1 => I2,
      I2 => rx_data_i(9),
      O => I10(1)
    );
\word_aligned_data_r[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(0),
      I1 => I2,
      I2 => rx_data_i(8),
      O => I10(0)
    );
\word_aligned_data_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(15),
      I1 => I2,
      I2 => rx_data_i(7),
      O => I9(7)
    );
\word_aligned_data_r[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rx_data_i(14),
      I1 => I2,
      I2 => rx_data_i(6),
      O => I9(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_GLOBAL_LOGIC is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    I6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_a_i : out STD_LOGIC;
    I8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    gtrxreset_i_0 : out STD_LOGIC;
    \^hard_err\ : out STD_LOGIC;
    START_RX : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    reset_i : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    GOT_V : in STD_LOGIC;
    HARD_ERR : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    I2 : in STD_LOGIC;
    power_down : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_GLOBAL_LOGIC : entity is "aurora_8b10b_1_GLOBAL_LOGIC";
end aurora_8b10b_1_aurora_8b10b_1_GLOBAL_LOGIC;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_GLOBAL_LOGIC is
  signal gen_ver_i : STD_LOGIC;
  signal reset_channel_i : STD_LOGIC;
  signal txver_count_r0 : STD_LOGIC;
  signal wait_for_lane_up_r0 : STD_LOGIC;
begin
channel_err_detect_i: entity work.aurora_8b10b_1_aurora_8b10b_1_CHANNEL_ERR_DETECT
    port map (
      HARD_ERR => HARD_ERR,
      I1(0) => I1(0),
      I2 => I2,
      \^hard_err\ => \^hard_err\,
      lane_up => lane_up,
      power_down => power_down,
      reset_channel_i => reset_channel_i,
      soft_err => soft_err,
      user_clk => user_clk,
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
channel_init_sm_i: entity work.aurora_8b10b_1_aurora_8b10b_1_CHANNEL_INIT_SM
    port map (
      GOT_V => GOT_V,
      I1(0) => I1(0),
      O1 => O1,
      SR(0) => SR(0),
      START_RX => START_RX,
      gen_ver_i => gen_ver_i,
      gtrxreset_i_0 => gtrxreset_i_0,
      reset_channel_i => reset_channel_i,
      reset_i => reset_i,
      txver_count_r0 => txver_count_r0,
      user_clk => user_clk,
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
idle_and_ver_gen_i: entity work.aurora_8b10b_1_aurora_8b10b_1_IDLE_AND_VER_GEN
    port map (
      I1(0) => I1(0),
      I6(1 downto 0) => I6(1 downto 0),
      I7(1 downto 0) => I7(1 downto 0),
      I8(1 downto 0) => I8(1 downto 0),
      gen_a_i => gen_a_i,
      gen_ver_i => gen_ver_i,
      txver_count_r0 => txver_count_r0,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_RESET_LOGIC is
  port (
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    link_reset_comb_r : out STD_LOGIC;
    s_out_d1_cdc_to_0 : out STD_LOGIC;
    s_out_d2_1 : out STD_LOGIC;
    s_out_d3_2 : out STD_LOGIC;
    s_out_d4_3 : out STD_LOGIC;
    s_out_d5_4 : out STD_LOGIC;
    s_out_d6_5 : out STD_LOGIC;
    s_out_d7_6 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_7 : out STD_LOGIC;
    s_out_d2_8 : out STD_LOGIC;
    s_out_d3_9 : out STD_LOGIC;
    s_out_d4_10 : out STD_LOGIC;
    s_out_d5_11 : out STD_LOGIC;
    s_out_d6_12 : out STD_LOGIC;
    s_out_d7_13 : out STD_LOGIC;
    O12 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O13 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O15 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O16 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O17 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    link_reset_out : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_RESET_LOGIC : entity is "aurora_8b10b_1_RESET_LOGIC";
end aurora_8b10b_1_aurora_8b10b_1_RESET_LOGIC;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_RESET_LOGIC is
  signal gt_rxresetdone_r : STD_LOGIC;
  signal gt_rxresetdone_r2 : STD_LOGIC;
  signal gt_rxresetdone_r3 : STD_LOGIC;
  signal gt_txresetdone_r : STD_LOGIC;
  signal gt_txresetdone_r2 : STD_LOGIC;
  signal gt_txresetdone_r3 : STD_LOGIC;
  signal \^link_reset_comb_r\ : STD_LOGIC;
  signal n_19_link_reset_cdc_sync : STD_LOGIC;
  signal n_19_tx_resetdone_cdc_sync : STD_LOGIC;
  signal tx_lock_comb_r : STD_LOGIC;
  signal tx_lock_sync : STD_LOGIC;
begin
  link_reset_comb_r <= \^link_reset_comb_r\;
SYSTEM_RESET_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_19_link_reset_cdc_sync,
      Q => SR(0),
      R => '0'
    );
gt_rxresetdone_r2_reg: unisim.vcomponents.FDCE
    port map (
      C => user_clk,
      CE => '1',
      CLR => I2,
      D => gt_rxresetdone_r,
      Q => gt_rxresetdone_r2
    );
gt_rxresetdone_r3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => gt_rxresetdone_r2,
      Q => gt_rxresetdone_r3,
      R => '0'
    );
gt_rxresetdone_r_reg: unisim.vcomponents.FDCE
    port map (
      C => user_clk,
      CE => '1',
      CLR => I2,
      D => '1',
      Q => gt_rxresetdone_r
    );
gt_txresetdone_r2_reg: unisim.vcomponents.FDCE
    port map (
      C => user_clk,
      CE => '1',
      CLR => n_19_tx_resetdone_cdc_sync,
      D => gt_txresetdone_r,
      Q => gt_txresetdone_r2
    );
gt_txresetdone_r3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => gt_txresetdone_r2,
      Q => gt_txresetdone_r3,
      R => '0'
    );
gt_txresetdone_r_reg: unisim.vcomponents.FDCE
    port map (
      C => user_clk,
      CE => '1',
      CLR => n_19_tx_resetdone_cdc_sync,
      D => '1',
      Q => gt_txresetdone_r
    );
link_reset_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_16
    port map (
      O1 => n_19_link_reset_cdc_sync,
      O10(1 downto 0) => O10(1 downto 0),
      O11(1 downto 0) => O11(1 downto 0),
      O6(1 downto 0) => O6(1 downto 0),
      O7(1 downto 0) => O7(1 downto 0),
      O8(1 downto 0) => O8(1 downto 0),
      O9(1 downto 0) => O9(1 downto 0),
      gt_rxresetdone_r3 => gt_rxresetdone_r3,
      gt_txresetdone_r3 => gt_txresetdone_r3,
      link_reset_comb_r => \^link_reset_comb_r\,
      reset => reset,
      s_out_d1_cdc_to_0 => s_out_d1_cdc_to_0,
      s_out_d2_1 => s_out_d2_1,
      s_out_d3_2 => s_out_d3_2,
      s_out_d4_3 => s_out_d4_3,
      s_out_d5_4 => s_out_d5_4,
      s_out_d6_5 => s_out_d6_5,
      s_out_d7_6 => s_out_d7_6,
      tx_lock_sync => tx_lock_sync,
      user_clk => user_clk
    );
link_reset_comb_r_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_out,
      Q => \^link_reset_comb_r\,
      R => '0'
    );
tx_lock_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_17
    port map (
      O12(1 downto 0) => O12(1 downto 0),
      O13(1 downto 0) => O13(1 downto 0),
      O14(1 downto 0) => O14(1 downto 0),
      O15(1 downto 0) => O15(1 downto 0),
      O16(1 downto 0) => O16(1 downto 0),
      O17(1 downto 0) => O17(1 downto 0),
      s_out_d1_cdc_to_7 => s_out_d1_cdc_to_7,
      s_out_d2_8 => s_out_d2_8,
      s_out_d3_9 => s_out_d3_9,
      s_out_d4_10 => s_out_d4_10,
      s_out_d5_11 => s_out_d5_11,
      s_out_d6_12 => s_out_d6_12,
      s_out_d7_13 => s_out_d7_13,
      tx_lock_comb_r => tx_lock_comb_r,
      tx_lock_sync => tx_lock_sync,
      user_clk => user_clk
    );
tx_lock_comb_r_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => I3,
      Q => tx_lock_comb_r,
      R => '0'
    );
tx_resetdone_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_18
    port map (
      I1 => I1,
      O1(1 downto 0) => O1(1 downto 0),
      O2(1 downto 0) => O2(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6 => n_19_tx_resetdone_cdc_sync,
      \out\(1 downto 0) => \out\(1 downto 0),
      s_out_d1_cdc_to => s_out_d1_cdc_to,
      s_out_d2 => s_out_d2,
      s_out_d3 => s_out_d3,
      s_out_d4 => s_out_d4,
      s_out_d5 => s_out_d5,
      s_out_d6 => s_out_d6,
      s_out_d7 => s_out_d7,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_RX_LL is
  port (
    frame_err : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    O1 : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    storage_v_r : out STD_LOGIC;
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rx_tlast : out STD_LOGIC;
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    RX_PAD : in STD_LOGIC;
    FRAME_ERR0 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    rx_pe_data_v_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_ecp_i : in STD_LOGIC;
    START_RX : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_RX_LL : entity is "aurora_8b10b_1_RX_LL";
end aurora_8b10b_1_aurora_8b10b_1_RX_LL;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_RX_LL is
begin
rx_ll_pdu_datapath_i: entity work.aurora_8b10b_1_aurora_8b10b_1_RX_LL_PDU_DATAPATH
    port map (
      D(15 downto 0) => D(15 downto 0),
      FRAME_ERR0 => FRAME_ERR0,
      I1 => I1,
      I2 => I2,
      I3 => I3,
      O1 => O1,
      RX_PAD => RX_PAD,
      START_RX => START_RX,
      frame_err => frame_err,
      m_axi_rx_tdata(0 to 15) => m_axi_rx_tdata(0 to 15),
      m_axi_rx_tkeep(0) => m_axi_rx_tkeep(0),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      rx_ecp_i => rx_ecp_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      storage_v_r => storage_v_r,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_TX_LL is
  port (
    gen_cc_i : out STD_LOGIC;
    GEN_PAD : out STD_LOGIC;
    TX_PE_DATA_V : out STD_LOGIC;
    GEN_ECP : out STD_LOGIC;
    GEN_SCP : out STD_LOGIC;
    tx_dst_rdy : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    do_cc : in STD_LOGIC;
    O127 : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 );
    I2 : in STD_LOGIC;
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_TX_LL : entity is "aurora_8b10b_1_TX_LL";
end aurora_8b10b_1_aurora_8b10b_1_TX_LL;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_TX_LL is
  signal do_cc_r : STD_LOGIC;
  signal n_2_tx_ll_datapath_i : STD_LOGIC;
  signal n_6_tx_ll_control_i : STD_LOGIC;
  signal pdu_ok_c : STD_LOGIC;
  signal storage_pad_r0 : STD_LOGIC;
  signal \^tx_dst_rdy\ : STD_LOGIC;
begin
  tx_dst_rdy <= \^tx_dst_rdy\;
tx_ll_control_i: entity work.aurora_8b10b_1_aurora_8b10b_1_TX_LL_CONTROL
    port map (
      E(0) => pdu_ok_c,
      GEN_ECP => GEN_ECP,
      GEN_SCP => GEN_SCP,
      I1 => I1,
      I2 => n_2_tx_ll_datapath_i,
      I3 => I2,
      O1 => \^tx_dst_rdy\,
      O127 => O127,
      O2 => n_6_tx_ll_control_i,
      do_cc => do_cc,
      do_cc_r => do_cc_r,
      gen_cc_i => gen_cc_i,
      reset_i => reset_i,
      s_axi_tx_tkeep(0 to 1) => s_axi_tx_tkeep(0 to 1),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      storage_pad_r0 => storage_pad_r0,
      user_clk => user_clk
    );
tx_ll_datapath_i: entity work.aurora_8b10b_1_aurora_8b10b_1_TX_LL_DATAPATH
    port map (
      E(0) => pdu_ok_c,
      GEN_PAD => GEN_PAD,
      I1 => n_6_tx_ll_control_i,
      I2 => I1,
      O1 => n_2_tx_ll_datapath_i,
      Q(15 downto 0) => Q(15 downto 0),
      TX_PE_DATA_V => TX_PE_DATA_V,
      do_cc_r => do_cc_r,
      s_axi_tx_tdata(0 to 15) => s_axi_tx_tdata(0 to 15),
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      storage_pad_r0 => storage_pad_r0,
      tx_dst_rdy => \^tx_dst_rdy\,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_hotplug is
  port (
    s_out_d1_cdc_to_21 : out STD_LOGIC;
    s_out_d2_22 : out STD_LOGIC;
    s_out_d3_23 : out STD_LOGIC;
    s_out_d4_24 : out STD_LOGIC;
    s_out_d5_25 : out STD_LOGIC;
    s_out_d6_26 : out STD_LOGIC;
    s_out_d7_27 : out STD_LOGIC;
    O24 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O25 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O26 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O27 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O28 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O29 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    link_reset_out : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_hotplug : entity is "aurora_8b10b_1_hotplug";
end aurora_8b10b_1_aurora_8b10b_1_hotplug;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_hotplug is
  signal cc_sync : STD_LOGIC;
  signal count_for_reset_r_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal link_reset_0 : STD_LOGIC;
  signal \n_0_count_for_reset_r[0]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[0]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[0]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[0]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[12]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[12]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[12]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[12]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[16]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[16]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[16]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[16]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[20]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[20]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[20]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[20]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[24]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[24]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[4]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[4]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[4]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[4]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[8]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[8]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[8]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[8]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_link_reset_0_i_1 : STD_LOGIC;
  signal n_0_link_reset_0_i_2 : STD_LOGIC;
  signal n_0_link_reset_0_i_3 : STD_LOGIC;
  signal n_0_link_reset_0_i_4 : STD_LOGIC;
  signal n_0_link_reset_0_i_5 : STD_LOGIC;
  signal n_0_rx_cc_extend_r2_i_1 : STD_LOGIC;
  signal n_0_rx_cc_extend_r2_i_2 : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[24]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[24]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[24]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal rx_cc_extend_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_cc_extend_r2 : STD_LOGIC;
  signal \NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\count_for_reset_r[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(3),
      O => \n_0_count_for_reset_r[0]_i_2\
    );
\count_for_reset_r[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(2),
      O => \n_0_count_for_reset_r[0]_i_3\
    );
\count_for_reset_r[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(1),
      O => \n_0_count_for_reset_r[0]_i_4\
    );
\count_for_reset_r[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => count_for_reset_r_reg(0),
      O => \n_0_count_for_reset_r[0]_i_5\
    );
\count_for_reset_r[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(15),
      O => \n_0_count_for_reset_r[12]_i_2\
    );
\count_for_reset_r[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(14),
      O => \n_0_count_for_reset_r[12]_i_3\
    );
\count_for_reset_r[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(13),
      O => \n_0_count_for_reset_r[12]_i_4\
    );
\count_for_reset_r[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(12),
      O => \n_0_count_for_reset_r[12]_i_5\
    );
\count_for_reset_r[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(19),
      O => \n_0_count_for_reset_r[16]_i_2\
    );
\count_for_reset_r[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(18),
      O => \n_0_count_for_reset_r[16]_i_3\
    );
\count_for_reset_r[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(17),
      O => \n_0_count_for_reset_r[16]_i_4\
    );
\count_for_reset_r[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(16),
      O => \n_0_count_for_reset_r[16]_i_5\
    );
\count_for_reset_r[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(23),
      O => \n_0_count_for_reset_r[20]_i_2\
    );
\count_for_reset_r[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(22),
      O => \n_0_count_for_reset_r[20]_i_3\
    );
\count_for_reset_r[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(21),
      O => \n_0_count_for_reset_r[20]_i_4\
    );
\count_for_reset_r[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(20),
      O => \n_0_count_for_reset_r[20]_i_5\
    );
\count_for_reset_r[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(25),
      O => \n_0_count_for_reset_r[24]_i_2\
    );
\count_for_reset_r[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(24),
      O => \n_0_count_for_reset_r[24]_i_3\
    );
\count_for_reset_r[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(7),
      O => \n_0_count_for_reset_r[4]_i_2\
    );
\count_for_reset_r[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(6),
      O => \n_0_count_for_reset_r[4]_i_3\
    );
\count_for_reset_r[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(5),
      O => \n_0_count_for_reset_r[4]_i_4\
    );
\count_for_reset_r[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(4),
      O => \n_0_count_for_reset_r[4]_i_5\
    );
\count_for_reset_r[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(11),
      O => \n_0_count_for_reset_r[8]_i_2\
    );
\count_for_reset_r[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(10),
      O => \n_0_count_for_reset_r[8]_i_3\
    );
\count_for_reset_r[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(9),
      O => \n_0_count_for_reset_r[8]_i_4\
    );
\count_for_reset_r[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(8),
      O => \n_0_count_for_reset_r[8]_i_5\
    );
\count_for_reset_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_7_count_for_reset_r_reg[0]_i_1\,
      Q => count_for_reset_r_reg(0),
      R => cc_sync
    );
\count_for_reset_r_reg[0]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_count_for_reset_r_reg[0]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[0]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[0]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[0]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_count_for_reset_r_reg[0]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[0]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[0]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[0]_i_1\,
      S(3) => \n_0_count_for_reset_r[0]_i_2\,
      S(2) => \n_0_count_for_reset_r[0]_i_3\,
      S(1) => \n_0_count_for_reset_r[0]_i_4\,
      S(0) => \n_0_count_for_reset_r[0]_i_5\
    );
\count_for_reset_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_5_count_for_reset_r_reg[8]_i_1\,
      Q => count_for_reset_r_reg(10),
      R => cc_sync
    );
\count_for_reset_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_4_count_for_reset_r_reg[8]_i_1\,
      Q => count_for_reset_r_reg(11),
      R => cc_sync
    );
\count_for_reset_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_7_count_for_reset_r_reg[12]_i_1\,
      Q => count_for_reset_r_reg(12),
      R => cc_sync
    );
\count_for_reset_r_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[8]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[12]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[12]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[12]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_count_for_reset_r_reg[12]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[12]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[12]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[12]_i_1\,
      S(3) => \n_0_count_for_reset_r[12]_i_2\,
      S(2) => \n_0_count_for_reset_r[12]_i_3\,
      S(1) => \n_0_count_for_reset_r[12]_i_4\,
      S(0) => \n_0_count_for_reset_r[12]_i_5\
    );
\count_for_reset_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_6_count_for_reset_r_reg[12]_i_1\,
      Q => count_for_reset_r_reg(13),
      R => cc_sync
    );
\count_for_reset_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_5_count_for_reset_r_reg[12]_i_1\,
      Q => count_for_reset_r_reg(14),
      R => cc_sync
    );
\count_for_reset_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_4_count_for_reset_r_reg[12]_i_1\,
      Q => count_for_reset_r_reg(15),
      R => cc_sync
    );
\count_for_reset_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_7_count_for_reset_r_reg[16]_i_1\,
      Q => count_for_reset_r_reg(16),
      R => cc_sync
    );
\count_for_reset_r_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[12]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[16]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[16]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[16]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[16]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_count_for_reset_r_reg[16]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[16]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[16]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[16]_i_1\,
      S(3) => \n_0_count_for_reset_r[16]_i_2\,
      S(2) => \n_0_count_for_reset_r[16]_i_3\,
      S(1) => \n_0_count_for_reset_r[16]_i_4\,
      S(0) => \n_0_count_for_reset_r[16]_i_5\
    );
\count_for_reset_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_6_count_for_reset_r_reg[16]_i_1\,
      Q => count_for_reset_r_reg(17),
      R => cc_sync
    );
\count_for_reset_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_5_count_for_reset_r_reg[16]_i_1\,
      Q => count_for_reset_r_reg(18),
      R => cc_sync
    );
\count_for_reset_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_4_count_for_reset_r_reg[16]_i_1\,
      Q => count_for_reset_r_reg(19),
      R => cc_sync
    );
\count_for_reset_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_6_count_for_reset_r_reg[0]_i_1\,
      Q => count_for_reset_r_reg(1),
      R => cc_sync
    );
\count_for_reset_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_7_count_for_reset_r_reg[20]_i_1\,
      Q => count_for_reset_r_reg(20),
      R => cc_sync
    );
\count_for_reset_r_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[16]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[20]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[20]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[20]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[20]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_count_for_reset_r_reg[20]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[20]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[20]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[20]_i_1\,
      S(3) => \n_0_count_for_reset_r[20]_i_2\,
      S(2) => \n_0_count_for_reset_r[20]_i_3\,
      S(1) => \n_0_count_for_reset_r[20]_i_4\,
      S(0) => \n_0_count_for_reset_r[20]_i_5\
    );
\count_for_reset_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_6_count_for_reset_r_reg[20]_i_1\,
      Q => count_for_reset_r_reg(21),
      R => cc_sync
    );
\count_for_reset_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_5_count_for_reset_r_reg[20]_i_1\,
      Q => count_for_reset_r_reg(22),
      R => cc_sync
    );
\count_for_reset_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_4_count_for_reset_r_reg[20]_i_1\,
      Q => count_for_reset_r_reg(23),
      R => cc_sync
    );
\count_for_reset_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_7_count_for_reset_r_reg[24]_i_1\,
      Q => count_for_reset_r_reg(24),
      R => cc_sync
    );
\count_for_reset_r_reg[24]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[20]_i_1\,
      CO(3 downto 1) => \NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_count_for_reset_r_reg[24]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_count_for_reset_r_reg[24]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[24]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_count_for_reset_r[24]_i_2\,
      S(0) => \n_0_count_for_reset_r[24]_i_3\
    );
\count_for_reset_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_6_count_for_reset_r_reg[24]_i_1\,
      Q => count_for_reset_r_reg(25),
      R => cc_sync
    );
\count_for_reset_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_5_count_for_reset_r_reg[0]_i_1\,
      Q => count_for_reset_r_reg(2),
      R => cc_sync
    );
\count_for_reset_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_4_count_for_reset_r_reg[0]_i_1\,
      Q => count_for_reset_r_reg(3),
      R => cc_sync
    );
\count_for_reset_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_7_count_for_reset_r_reg[4]_i_1\,
      Q => count_for_reset_r_reg(4),
      R => cc_sync
    );
\count_for_reset_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[0]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[4]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[4]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[4]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_count_for_reset_r_reg[4]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[4]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[4]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[4]_i_1\,
      S(3) => \n_0_count_for_reset_r[4]_i_2\,
      S(2) => \n_0_count_for_reset_r[4]_i_3\,
      S(1) => \n_0_count_for_reset_r[4]_i_4\,
      S(0) => \n_0_count_for_reset_r[4]_i_5\
    );
\count_for_reset_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_6_count_for_reset_r_reg[4]_i_1\,
      Q => count_for_reset_r_reg(5),
      R => cc_sync
    );
\count_for_reset_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_5_count_for_reset_r_reg[4]_i_1\,
      Q => count_for_reset_r_reg(6),
      R => cc_sync
    );
\count_for_reset_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_4_count_for_reset_r_reg[4]_i_1\,
      Q => count_for_reset_r_reg(7),
      R => cc_sync
    );
\count_for_reset_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_7_count_for_reset_r_reg[8]_i_1\,
      Q => count_for_reset_r_reg(8),
      R => cc_sync
    );
\count_for_reset_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[4]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[8]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[8]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[8]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_count_for_reset_r_reg[8]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[8]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[8]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[8]_i_1\,
      S(3) => \n_0_count_for_reset_r[8]_i_2\,
      S(2) => \n_0_count_for_reset_r[8]_i_3\,
      S(1) => \n_0_count_for_reset_r[8]_i_4\,
      S(0) => \n_0_count_for_reset_r[8]_i_5\
    );
\count_for_reset_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_6_count_for_reset_r_reg[8]_i_1\,
      Q => count_for_reset_r_reg(9),
      R => cc_sync
    );
link_reset_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF888800000000"
    )
    port map (
      I0 => count_for_reset_r_reg(3),
      I1 => count_for_reset_r_reg(2),
      I2 => count_for_reset_r_reg(0),
      I3 => count_for_reset_r_reg(1),
      I4 => count_for_reset_r_reg(4),
      I5 => n_0_link_reset_0_i_2,
      O => n_0_link_reset_0_i_1
    );
link_reset_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => n_0_link_reset_0_i_3,
      I1 => count_for_reset_r_reg(17),
      I2 => count_for_reset_r_reg(14),
      I3 => count_for_reset_r_reg(11),
      I4 => n_0_link_reset_0_i_4,
      I5 => n_0_link_reset_0_i_5,
      O => n_0_link_reset_0_i_2
    );
link_reset_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => count_for_reset_r_reg(21),
      I1 => count_for_reset_r_reg(6),
      I2 => count_for_reset_r_reg(7),
      I3 => count_for_reset_r_reg(23),
      I4 => count_for_reset_r_reg(25),
      I5 => count_for_reset_r_reg(18),
      O => n_0_link_reset_0_i_3
    );
link_reset_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => count_for_reset_r_reg(8),
      I1 => count_for_reset_r_reg(9),
      I2 => count_for_reset_r_reg(13),
      I3 => count_for_reset_r_reg(19),
      I4 => count_for_reset_r_reg(16),
      I5 => count_for_reset_r_reg(22),
      O => n_0_link_reset_0_i_4
    );
link_reset_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => count_for_reset_r_reg(15),
      I1 => count_for_reset_r_reg(12),
      I2 => count_for_reset_r_reg(10),
      I3 => count_for_reset_r_reg(20),
      I4 => count_for_reset_r_reg(5),
      I5 => count_for_reset_r_reg(24),
      O => n_0_link_reset_0_i_5
    );
link_reset_0_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_link_reset_0_i_1,
      Q => link_reset_0,
      R => '0'
    );
\link_reset_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_0,
      Q => link_reset_out,
      R => '0'
    );
rx_cc_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_19
    port map (
      O24(1 downto 0) => O24(1 downto 0),
      O25(1 downto 0) => O25(1 downto 0),
      O26(1 downto 0) => O26(1 downto 0),
      O27(1 downto 0) => O27(1 downto 0),
      O28(1 downto 0) => O28(1 downto 0),
      O29(1 downto 0) => O29(1 downto 0),
      cc_sync => cc_sync,
      init_clk_in => init_clk_in,
      rx_cc_extend_r2 => rx_cc_extend_r2,
      s_out_d1_cdc_to_21 => s_out_d1_cdc_to_21,
      s_out_d2_22 => s_out_d2_22,
      s_out_d3_23 => s_out_d3_23,
      s_out_d4_24 => s_out_d4_24,
      s_out_d5_25 => s_out_d5_25,
      s_out_d6_26 => s_out_d6_26,
      s_out_d7_27 => s_out_d7_27
    );
rx_cc_extend_r2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rx_cc_extend_r(2),
      I1 => n_0_rx_cc_extend_r2_i_2,
      I2 => rx_cc_extend_r(3),
      O => n_0_rx_cc_extend_r2_i_1
    );
rx_cc_extend_r2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => rx_cc_extend_r(1),
      I1 => rx_cc_extend_r(0),
      I2 => rx_cc_extend_r(6),
      I3 => rx_cc_extend_r(7),
      I4 => rx_cc_extend_r(5),
      I5 => rx_cc_extend_r(4),
      O => n_0_rx_cc_extend_r2_i_2
    );
rx_cc_extend_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_rx_cc_extend_r2_i_1,
      Q => rx_cc_extend_r2,
      R => '0'
    );
\rx_cc_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(1),
      Q => rx_cc_extend_r(0),
      R => SR(0)
    );
\rx_cc_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(2),
      Q => rx_cc_extend_r(1),
      R => SR(0)
    );
\rx_cc_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(3),
      Q => rx_cc_extend_r(2),
      R => SR(0)
    );
\rx_cc_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(4),
      Q => rx_cc_extend_r(3),
      R => SR(0)
    );
\rx_cc_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(5),
      Q => rx_cc_extend_r(4),
      R => SR(0)
    );
\rx_cc_extend_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(6),
      Q => rx_cc_extend_r(5),
      R => SR(0)
    );
\rx_cc_extend_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => rx_cc_extend_r(7),
      Q => rx_cc_extend_r(6),
      R => SR(0)
    );
\rx_cc_extend_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => D(0),
      Q => rx_cc_extend_r(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_multi_gt is
  port (
    O2 : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    O1 : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    O3 : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ack_flag : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    I11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC;
    hard_err_flop_r0 : out STD_LOGIC;
    I9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I10 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_tx_reset_i : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad6_in : in STD_LOGIC;
    gt_qpllrefclk_quad6_in : in STD_LOGIC;
    gt_rxdfelfhold_i : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    power_down : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I1 : in STD_LOGIC;
    cpll_reset_i : in STD_LOGIC;
    I2 : in STD_LOGIC;
    tx_reset_i : in STD_LOGIC;
    comma_over_two_cycles_r : in STD_LOGIC;
    bucket_full_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_multi_gt : entity is "aurora_8b10b_1_multi_gt";
end aurora_8b10b_1_aurora_8b10b_1_multi_gt;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_multi_gt is
begin
gt0_aurora_8b10b_1_i: entity work.aurora_8b10b_1_aurora_8b10b_1_gt
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1 => I1,
      I10(7 downto 0) => I10(7 downto 0),
      I11(1 downto 0) => I11(1 downto 0),
      I2 => I2,
      I9(7 downto 0) => I9(7 downto 0),
      O1 => O1,
      O2 => O2,
      O3 => O3,
      O4 => O4,
      O5 => O5,
      O6 => O6,
      O7 => O7,
      SR(0) => SR(0),
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      ack_flag => ack_flag,
      bucket_full_r => bucket_full_r,
      comma_over_two_cycles_r => comma_over_two_cycles_r,
      cpll_reset_i => cpll_reset_i,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      gt_qpllclk_quad6_in => gt_qpllclk_quad6_in,
      gt_qpllrefclk_quad6_in => gt_qpllrefclk_quad6_in,
      gt_refclk1 => gt_refclk1,
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      hard_err_flop_r0 => hard_err_flop_r0,
      init_clk_in => init_clk_in,
      loopback(2 downto 0) => loopback(2 downto 0),
      power_down => power_down,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxn => rxn,
      rxp => rxp,
      sync_clk => sync_clk,
      tx_out_clk => tx_out_clk,
      tx_reset_i => tx_reset_i,
      txn => txn,
      txp => txp,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_rx_startup_fsm is
  port (
    s_out_d1_cdc_to_84 : out STD_LOGIC;
    s_out_d2_85 : out STD_LOGIC;
    s_out_d3_86 : out STD_LOGIC;
    s_out_d4_87 : out STD_LOGIC;
    s_out_d5_88 : out STD_LOGIC;
    s_out_d6_89 : out STD_LOGIC;
    s_out_d7_90 : out STD_LOGIC;
    O78 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O79 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O80 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O81 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O82 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O83 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_91 : out STD_LOGIC;
    s_out_d2_92 : out STD_LOGIC;
    s_out_d3_93 : out STD_LOGIC;
    s_out_d4_94 : out STD_LOGIC;
    s_out_d5_95 : out STD_LOGIC;
    s_out_d6_96 : out STD_LOGIC;
    s_out_d7_97 : out STD_LOGIC;
    O84 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O85 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O86 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O87 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O88 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O89 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_98 : out STD_LOGIC;
    s_out_d2_99 : out STD_LOGIC;
    s_out_d3_100 : out STD_LOGIC;
    s_out_d4_101 : out STD_LOGIC;
    s_out_d5_102 : out STD_LOGIC;
    s_out_d6_103 : out STD_LOGIC;
    s_out_d7_104 : out STD_LOGIC;
    O90 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O91 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O92 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O93 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O94 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O95 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_105 : out STD_LOGIC;
    s_out_d2_106 : out STD_LOGIC;
    s_out_d3_107 : out STD_LOGIC;
    s_out_d4_108 : out STD_LOGIC;
    s_out_d5_109 : out STD_LOGIC;
    s_out_d6_110 : out STD_LOGIC;
    s_out_d7_111 : out STD_LOGIC;
    O96 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O97 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O98 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O99 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O100 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O101 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_112 : out STD_LOGIC;
    s_out_d2_113 : out STD_LOGIC;
    s_out_d3_114 : out STD_LOGIC;
    s_out_d4_115 : out STD_LOGIC;
    s_out_d5_116 : out STD_LOGIC;
    s_out_d6_117 : out STD_LOGIC;
    s_out_d7_118 : out STD_LOGIC;
    O102 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O103 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O104 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O105 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O106 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O107 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt_rxuserrdy_i : out STD_LOGIC;
    s_out_d1_cdc_to_119 : out STD_LOGIC;
    s_out_d2_120 : out STD_LOGIC;
    s_out_d3_121 : out STD_LOGIC;
    s_out_d4_122 : out STD_LOGIC;
    s_out_d5_123 : out STD_LOGIC;
    s_out_d6_124 : out STD_LOGIC;
    s_out_d7_125 : out STD_LOGIC;
    O108 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O109 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O110 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O111 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O112 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O113 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_126 : out STD_LOGIC;
    s_out_d2_127 : out STD_LOGIC;
    s_out_d3_128 : out STD_LOGIC;
    s_out_d4_129 : out STD_LOGIC;
    s_out_d5_130 : out STD_LOGIC;
    s_out_d6_131 : out STD_LOGIC;
    s_out_d7_132 : out STD_LOGIC;
    O114 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O115 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O116 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O117 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O118 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O119 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_133 : out STD_LOGIC;
    s_out_d2_134 : out STD_LOGIC;
    s_out_d3_135 : out STD_LOGIC;
    s_out_d4_136 : out STD_LOGIC;
    s_out_d5_137 : out STD_LOGIC;
    s_out_d6_138 : out STD_LOGIC;
    s_out_d7_139 : out STD_LOGIC;
    O120 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O121 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O122 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O123 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O124 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O125 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt_rxdfelfhold_i : out STD_LOGIC;
    gtrxreset_i : out STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    O2 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_txuserrdy_i : in STD_LOGIC;
    I1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_rx_startup_fsm : entity is "aurora_8b10b_1_rx_startup_fsm";
end aurora_8b10b_1_aurora_8b10b_1_rx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_rx_startup_fsm is
  signal adapt_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cplllock_sync : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal \^gt_rxdfelfhold_i\ : STD_LOGIC;
  signal \^gt_rxuserrdy_i\ : STD_LOGIC;
  signal \^gtrxreset_i\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_9\ : STD_LOGIC;
  signal n_0_RXDFEAGCHOLD_i_1 : STD_LOGIC;
  signal n_0_RXUSERRDY_i_1 : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_10\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_11\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_12\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_13\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_6\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_7\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_8\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_9\ : STD_LOGIC;
  signal \n_0_adapt_count[12]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[12]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[12]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[12]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[16]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[16]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[16]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[16]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[20]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[20]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[20]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[20]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[24]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[24]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[24]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[24]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[28]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[28]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[28]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[28]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[4]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[4]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[4]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[4]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[8]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[8]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[8]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[8]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_check_tlock_max_i_1 : STD_LOGIC;
  signal n_0_check_tlock_max_reg : STD_LOGIC;
  signal n_0_gtrxreset_i_i_1 : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_1__0\ : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_3__0\ : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_4__0\ : STD_LOGIC;
  signal \n_0_init_wait_done_i_1__0\ : STD_LOGIC;
  signal n_0_init_wait_done_reg : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_2__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_4__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_reclocked_i_2__0\ : STD_LOGIC;
  signal n_0_reset_time_out_i_4 : STD_LOGIC;
  signal n_0_reset_time_out_reg : STD_LOGIC;
  signal \n_0_run_phase_alignment_int_i_1__0\ : STD_LOGIC;
  signal n_0_run_phase_alignment_int_reg : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_reg : STD_LOGIC;
  signal n_0_sync_run_phase_alignment_int_cdc_sync : STD_LOGIC;
  signal n_0_time_out_100us_i_1 : STD_LOGIC;
  signal n_0_time_out_100us_i_2 : STD_LOGIC;
  signal n_0_time_out_100us_i_3 : STD_LOGIC;
  signal n_0_time_out_100us_i_4 : STD_LOGIC;
  signal n_0_time_out_100us_reg : STD_LOGIC;
  signal n_0_time_out_1us_i_1 : STD_LOGIC;
  signal n_0_time_out_1us_i_2 : STD_LOGIC;
  signal n_0_time_out_1us_i_3 : STD_LOGIC;
  signal n_0_time_out_1us_i_4 : STD_LOGIC;
  signal n_0_time_out_1us_reg : STD_LOGIC;
  signal n_0_time_out_2ms_i_1 : STD_LOGIC;
  signal n_0_time_out_2ms_i_2 : STD_LOGIC;
  signal n_0_time_out_2ms_reg : STD_LOGIC;
  signal n_0_time_out_adapt_i_1 : STD_LOGIC;
  signal n_0_time_out_adapt_reg : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_7__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_8__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_9__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_0_time_out_wait_bypass_reg : STD_LOGIC;
  signal n_0_time_tlock_max_i_1 : STD_LOGIC;
  signal n_0_time_tlock_max_i_2 : STD_LOGIC;
  signal n_0_time_tlock_max_i_3 : STD_LOGIC;
  signal n_0_time_tlock_max_i_4 : STD_LOGIC;
  signal n_0_time_tlock_max_i_5 : STD_LOGIC;
  signal n_0_time_tlock_max_i_6 : STD_LOGIC;
  signal n_0_time_tlock_max_i_7 : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_7__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_8__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_9\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_7__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_8\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_9\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[12]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[12]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[12]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[12]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[8]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[8]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[8]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[8]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_19_sync_RXRESETDONE_cdc_sync : STD_LOGIC;
  signal n_19_sync_mmcm_lock_reclocked_cdc_sync : STD_LOGIC;
  signal n_19_sync_rx_fsm_reset_done_int_cdc_sync : STD_LOGIC;
  signal \n_1_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_time_cnt_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_1_wait_time_cnt_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_time_cnt_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_time_cnt_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_20_sync_RXRESETDONE_cdc_sync : STD_LOGIC;
  signal n_20_sync_cplllock_cdc_sync : STD_LOGIC;
  signal n_20_sync_data_valid_cdc_sync : STD_LOGIC;
  signal n_20_sync_mmcm_lock_reclocked_cdc_sync : STD_LOGIC;
  signal n_20_sync_run_phase_alignment_int_cdc_sync : STD_LOGIC;
  signal n_20_sync_rx_fsm_reset_done_int_cdc_sync : STD_LOGIC;
  signal n_21_sync_data_valid_cdc_sync : STD_LOGIC;
  signal n_22_sync_data_valid_cdc_sync : STD_LOGIC;
  signal n_23_sync_data_valid_cdc_sync : STD_LOGIC;
  signal n_24_sync_data_valid_cdc_sync : STD_LOGIC;
  signal n_25_sync_data_valid_cdc_sync : STD_LOGIC;
  signal \n_2_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_time_cnt_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_2_wait_time_cnt_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_time_cnt_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_time_cnt_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_time_cnt_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_3_wait_time_cnt_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_time_cnt_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_time_cnt_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_time_cnt_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_4_wait_time_cnt_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_time_cnt_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_time_cnt_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_time_cnt_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_5_wait_time_cnt_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_time_cnt_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_time_cnt_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_time_cnt_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_6_wait_time_cnt_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_time_cnt_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_time_cnt_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_time_cnt_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_7_wait_time_cnt_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_time_cnt_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_time_cnt_reg[8]_i_1__0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal recclk_mon_count_reset : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_state16_out : STD_LOGIC;
  signal time_out_adapt : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rx_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_2__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mmcm_lock_reclocked_i_2__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of time_out_100us_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of time_out_100us_i_4 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of time_out_1us_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of time_tlock_max_i_5 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of time_tlock_max_i_7 : label is "soft_lutpair28";
begin
  gt_rxdfelfhold_i <= \^gt_rxdfelfhold_i\;
  gt_rxuserrdy_i <= \^gt_rxuserrdy_i\;
  gtrxreset_i <= \^gtrxreset_i\;
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08B80888FFFFFFFF"
    )
    port map (
      I0 => n_0_time_out_2ms_reg,
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => n_0_reset_time_out_reg,
      I4 => time_tlock_max,
      I5 => rx_state(0),
      O => \n_0_FSM_sequential_rx_state[0]_i_2\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000262226AA"
    )
    port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => n_0_time_out_2ms_reg,
      I3 => rx_state(1),
      I4 => rx_state16_out,
      I5 => rx_state(3),
      O => \n_0_FSM_sequential_rx_state[2]_i_1\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_tlock_max,
      I1 => n_0_reset_time_out_reg,
      O => rx_state16_out
    );
\FSM_sequential_rx_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => wait_time_cnt_reg(15),
      I1 => wait_time_cnt_reg(13),
      I2 => wait_time_cnt_reg(11),
      I3 => wait_time_cnt_reg(6),
      O => \n_0_FSM_sequential_rx_state[3]_i_11\
    );
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80880000"
    )
    port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => n_0_reset_time_out_reg,
      I3 => n_0_time_out_2ms_reg,
      I4 => rx_state(0),
      O => \n_0_FSM_sequential_rx_state[3]_i_5\
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
    port map (
      I0 => \n_0_FSM_sequential_rx_state[3]_i_11\,
      I1 => \n_0_wait_time_cnt[0]_i_4__0\,
      I2 => \n_0_wait_time_cnt[0]_i_5__0\,
      I3 => rx_state(1),
      I4 => I1,
      O => \n_0_FSM_sequential_rx_state[3]_i_8\
    );
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
    port map (
      I0 => \n_0_FSM_sequential_rx_state[3]_i_11\,
      I1 => \n_0_wait_time_cnt[0]_i_4__0\,
      I2 => \n_0_wait_time_cnt[0]_i_5__0\,
      I3 => rx_state(1),
      I4 => n_0_init_wait_done_reg,
      O => \n_0_FSM_sequential_rx_state[3]_i_9\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => n_19_sync_RXRESETDONE_cdc_sync,
      D => n_24_sync_data_valid_cdc_sync,
      Q => rx_state(0),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => n_19_sync_RXRESETDONE_cdc_sync,
      D => n_23_sync_data_valid_cdc_sync,
      Q => rx_state(1),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => n_19_sync_RXRESETDONE_cdc_sync,
      D => \n_0_FSM_sequential_rx_state[2]_i_1\,
      Q => rx_state(2),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => n_19_sync_RXRESETDONE_cdc_sync,
      D => n_22_sync_data_valid_cdc_sync,
      Q => rx_state(3),
      R => AR(0)
    );
RXDFEAGCHOLD_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
    port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => n_0_time_out_adapt_reg,
      I5 => \^gt_rxdfelfhold_i\,
      O => n_0_RXDFEAGCHOLD_i_1
    );
RXDFEAGCHOLD_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_RXDFEAGCHOLD_i_1,
      Q => \^gt_rxdfelfhold_i\,
      R => AR(0)
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF500008000"
    )
    port map (
      I0 => rx_state(0),
      I1 => gt_txuserrdy_i,
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => rx_state(3),
      I5 => \^gt_rxuserrdy_i\,
      O => n_0_RXUSERRDY_i_1
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_RXUSERRDY_i_1,
      Q => \^gt_rxuserrdy_i\,
      R => AR(0)
    );
\adapt_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_adapt,
      O => \n_0_adapt_count[0]_i_1\
    );
\adapt_count[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => adapt_count_reg(10),
      I1 => adapt_count_reg(14),
      I2 => adapt_count_reg(16),
      I3 => adapt_count_reg(1),
      I4 => adapt_count_reg(18),
      I5 => adapt_count_reg(20),
      O => \n_0_adapt_count[0]_i_10\
    );
\adapt_count[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => adapt_count_reg(24),
      I1 => adapt_count_reg(19),
      I2 => adapt_count_reg(17),
      I3 => adapt_count_reg(2),
      I4 => adapt_count_reg(5),
      I5 => adapt_count_reg(29),
      O => \n_0_adapt_count[0]_i_11\
    );
\adapt_count[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => adapt_count_reg(31),
      I1 => adapt_count_reg(27),
      I2 => adapt_count_reg(9),
      I3 => adapt_count_reg(12),
      I4 => adapt_count_reg(6),
      I5 => adapt_count_reg(8),
      O => \n_0_adapt_count[0]_i_12\
    );
\adapt_count[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => adapt_count_reg(3),
      I1 => adapt_count_reg(4),
      I2 => adapt_count_reg(26),
      I3 => adapt_count_reg(23),
      I4 => adapt_count_reg(7),
      I5 => adapt_count_reg(22),
      O => \n_0_adapt_count[0]_i_13\
    );
\adapt_count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \n_0_adapt_count[0]_i_8\,
      I1 => \n_0_adapt_count[0]_i_9\,
      I2 => \n_0_adapt_count[0]_i_10\,
      I3 => \n_0_adapt_count[0]_i_11\,
      I4 => \n_0_adapt_count[0]_i_12\,
      I5 => \n_0_adapt_count[0]_i_13\,
      O => time_out_adapt
    );
\adapt_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(3),
      O => \n_0_adapt_count[0]_i_4\
    );
\adapt_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(2),
      O => \n_0_adapt_count[0]_i_5\
    );
\adapt_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(1),
      O => \n_0_adapt_count[0]_i_6\
    );
\adapt_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => adapt_count_reg(0),
      O => \n_0_adapt_count[0]_i_7\
    );
\adapt_count[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => adapt_count_reg(15),
      I1 => adapt_count_reg(30),
      I2 => adapt_count_reg(11),
      I3 => adapt_count_reg(0),
      I4 => adapt_count_reg(25),
      I5 => adapt_count_reg(28),
      O => \n_0_adapt_count[0]_i_8\
    );
\adapt_count[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => adapt_count_reg(13),
      I1 => adapt_count_reg(21),
      O => \n_0_adapt_count[0]_i_9\
    );
\adapt_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(15),
      O => \n_0_adapt_count[12]_i_2\
    );
\adapt_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(14),
      O => \n_0_adapt_count[12]_i_3\
    );
\adapt_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(13),
      O => \n_0_adapt_count[12]_i_4\
    );
\adapt_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(12),
      O => \n_0_adapt_count[12]_i_5\
    );
\adapt_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(19),
      O => \n_0_adapt_count[16]_i_2\
    );
\adapt_count[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(18),
      O => \n_0_adapt_count[16]_i_3\
    );
\adapt_count[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(17),
      O => \n_0_adapt_count[16]_i_4\
    );
\adapt_count[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(16),
      O => \n_0_adapt_count[16]_i_5\
    );
\adapt_count[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(23),
      O => \n_0_adapt_count[20]_i_2\
    );
\adapt_count[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(22),
      O => \n_0_adapt_count[20]_i_3\
    );
\adapt_count[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(21),
      O => \n_0_adapt_count[20]_i_4\
    );
\adapt_count[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(20),
      O => \n_0_adapt_count[20]_i_5\
    );
\adapt_count[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(27),
      O => \n_0_adapt_count[24]_i_2\
    );
\adapt_count[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(26),
      O => \n_0_adapt_count[24]_i_3\
    );
\adapt_count[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(25),
      O => \n_0_adapt_count[24]_i_4\
    );
\adapt_count[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(24),
      O => \n_0_adapt_count[24]_i_5\
    );
\adapt_count[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(31),
      O => \n_0_adapt_count[28]_i_2\
    );
\adapt_count[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(30),
      O => \n_0_adapt_count[28]_i_3\
    );
\adapt_count[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(29),
      O => \n_0_adapt_count[28]_i_4\
    );
\adapt_count[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(28),
      O => \n_0_adapt_count[28]_i_5\
    );
\adapt_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(7),
      O => \n_0_adapt_count[4]_i_2\
    );
\adapt_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(6),
      O => \n_0_adapt_count[4]_i_3\
    );
\adapt_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(5),
      O => \n_0_adapt_count[4]_i_4\
    );
\adapt_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(4),
      O => \n_0_adapt_count[4]_i_5\
    );
\adapt_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(11),
      O => \n_0_adapt_count[8]_i_2\
    );
\adapt_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(10),
      O => \n_0_adapt_count[8]_i_3\
    );
\adapt_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(9),
      O => \n_0_adapt_count[8]_i_4\
    );
\adapt_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(8),
      O => \n_0_adapt_count[8]_i_5\
    );
\adapt_count_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[0]_i_2\,
      Q => adapt_count_reg(0),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_adapt_count_reg[0]_i_2\,
      CO(2) => \n_1_adapt_count_reg[0]_i_2\,
      CO(1) => \n_2_adapt_count_reg[0]_i_2\,
      CO(0) => \n_3_adapt_count_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_adapt_count_reg[0]_i_2\,
      O(2) => \n_5_adapt_count_reg[0]_i_2\,
      O(1) => \n_6_adapt_count_reg[0]_i_2\,
      O(0) => \n_7_adapt_count_reg[0]_i_2\,
      S(3) => \n_0_adapt_count[0]_i_4\,
      S(2) => \n_0_adapt_count[0]_i_5\,
      S(1) => \n_0_adapt_count[0]_i_6\,
      S(0) => \n_0_adapt_count[0]_i_7\
    );
\adapt_count_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[8]_i_1\,
      Q => adapt_count_reg(10),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[8]_i_1\,
      Q => adapt_count_reg(11),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[12]_i_1\,
      Q => adapt_count_reg(12),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[8]_i_1\,
      CO(3) => \n_0_adapt_count_reg[12]_i_1\,
      CO(2) => \n_1_adapt_count_reg[12]_i_1\,
      CO(1) => \n_2_adapt_count_reg[12]_i_1\,
      CO(0) => \n_3_adapt_count_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_count_reg[12]_i_1\,
      O(2) => \n_5_adapt_count_reg[12]_i_1\,
      O(1) => \n_6_adapt_count_reg[12]_i_1\,
      O(0) => \n_7_adapt_count_reg[12]_i_1\,
      S(3) => \n_0_adapt_count[12]_i_2\,
      S(2) => \n_0_adapt_count[12]_i_3\,
      S(1) => \n_0_adapt_count[12]_i_4\,
      S(0) => \n_0_adapt_count[12]_i_5\
    );
\adapt_count_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[12]_i_1\,
      Q => adapt_count_reg(13),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[12]_i_1\,
      Q => adapt_count_reg(14),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[12]_i_1\,
      Q => adapt_count_reg(15),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[16]_i_1\,
      Q => adapt_count_reg(16),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[12]_i_1\,
      CO(3) => \n_0_adapt_count_reg[16]_i_1\,
      CO(2) => \n_1_adapt_count_reg[16]_i_1\,
      CO(1) => \n_2_adapt_count_reg[16]_i_1\,
      CO(0) => \n_3_adapt_count_reg[16]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_count_reg[16]_i_1\,
      O(2) => \n_5_adapt_count_reg[16]_i_1\,
      O(1) => \n_6_adapt_count_reg[16]_i_1\,
      O(0) => \n_7_adapt_count_reg[16]_i_1\,
      S(3) => \n_0_adapt_count[16]_i_2\,
      S(2) => \n_0_adapt_count[16]_i_3\,
      S(1) => \n_0_adapt_count[16]_i_4\,
      S(0) => \n_0_adapt_count[16]_i_5\
    );
\adapt_count_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[16]_i_1\,
      Q => adapt_count_reg(17),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[16]_i_1\,
      Q => adapt_count_reg(18),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[16]_i_1\,
      Q => adapt_count_reg(19),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[0]_i_2\,
      Q => adapt_count_reg(1),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[20]_i_1\,
      Q => adapt_count_reg(20),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[16]_i_1\,
      CO(3) => \n_0_adapt_count_reg[20]_i_1\,
      CO(2) => \n_1_adapt_count_reg[20]_i_1\,
      CO(1) => \n_2_adapt_count_reg[20]_i_1\,
      CO(0) => \n_3_adapt_count_reg[20]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_count_reg[20]_i_1\,
      O(2) => \n_5_adapt_count_reg[20]_i_1\,
      O(1) => \n_6_adapt_count_reg[20]_i_1\,
      O(0) => \n_7_adapt_count_reg[20]_i_1\,
      S(3) => \n_0_adapt_count[20]_i_2\,
      S(2) => \n_0_adapt_count[20]_i_3\,
      S(1) => \n_0_adapt_count[20]_i_4\,
      S(0) => \n_0_adapt_count[20]_i_5\
    );
\adapt_count_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[20]_i_1\,
      Q => adapt_count_reg(21),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[20]_i_1\,
      Q => adapt_count_reg(22),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[20]_i_1\,
      Q => adapt_count_reg(23),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[24]_i_1\,
      Q => adapt_count_reg(24),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[20]_i_1\,
      CO(3) => \n_0_adapt_count_reg[24]_i_1\,
      CO(2) => \n_1_adapt_count_reg[24]_i_1\,
      CO(1) => \n_2_adapt_count_reg[24]_i_1\,
      CO(0) => \n_3_adapt_count_reg[24]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_count_reg[24]_i_1\,
      O(2) => \n_5_adapt_count_reg[24]_i_1\,
      O(1) => \n_6_adapt_count_reg[24]_i_1\,
      O(0) => \n_7_adapt_count_reg[24]_i_1\,
      S(3) => \n_0_adapt_count[24]_i_2\,
      S(2) => \n_0_adapt_count[24]_i_3\,
      S(1) => \n_0_adapt_count[24]_i_4\,
      S(0) => \n_0_adapt_count[24]_i_5\
    );
\adapt_count_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[24]_i_1\,
      Q => adapt_count_reg(25),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[24]_i_1\,
      Q => adapt_count_reg(26),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[24]_i_1\,
      Q => adapt_count_reg(27),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[28]_i_1\,
      Q => adapt_count_reg(28),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[24]_i_1\,
      CO(3) => \NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_adapt_count_reg[28]_i_1\,
      CO(1) => \n_2_adapt_count_reg[28]_i_1\,
      CO(0) => \n_3_adapt_count_reg[28]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_count_reg[28]_i_1\,
      O(2) => \n_5_adapt_count_reg[28]_i_1\,
      O(1) => \n_6_adapt_count_reg[28]_i_1\,
      O(0) => \n_7_adapt_count_reg[28]_i_1\,
      S(3) => \n_0_adapt_count[28]_i_2\,
      S(2) => \n_0_adapt_count[28]_i_3\,
      S(1) => \n_0_adapt_count[28]_i_4\,
      S(0) => \n_0_adapt_count[28]_i_5\
    );
\adapt_count_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[28]_i_1\,
      Q => adapt_count_reg(29),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[0]_i_2\,
      Q => adapt_count_reg(2),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[28]_i_1\,
      Q => adapt_count_reg(30),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[28]_i_1\,
      Q => adapt_count_reg(31),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[0]_i_2\,
      Q => adapt_count_reg(3),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[4]_i_1\,
      Q => adapt_count_reg(4),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[0]_i_2\,
      CO(3) => \n_0_adapt_count_reg[4]_i_1\,
      CO(2) => \n_1_adapt_count_reg[4]_i_1\,
      CO(1) => \n_2_adapt_count_reg[4]_i_1\,
      CO(0) => \n_3_adapt_count_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_count_reg[4]_i_1\,
      O(2) => \n_5_adapt_count_reg[4]_i_1\,
      O(1) => \n_6_adapt_count_reg[4]_i_1\,
      O(0) => \n_7_adapt_count_reg[4]_i_1\,
      S(3) => \n_0_adapt_count[4]_i_2\,
      S(2) => \n_0_adapt_count[4]_i_3\,
      S(1) => \n_0_adapt_count[4]_i_4\,
      S(0) => \n_0_adapt_count[4]_i_5\
    );
\adapt_count_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[4]_i_1\,
      Q => adapt_count_reg(5),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[4]_i_1\,
      Q => adapt_count_reg(6),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[4]_i_1\,
      Q => adapt_count_reg(7),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[8]_i_1\,
      Q => adapt_count_reg(8),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[4]_i_1\,
      CO(3) => \n_0_adapt_count_reg[8]_i_1\,
      CO(2) => \n_1_adapt_count_reg[8]_i_1\,
      CO(1) => \n_2_adapt_count_reg[8]_i_1\,
      CO(0) => \n_3_adapt_count_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_count_reg[8]_i_1\,
      O(2) => \n_5_adapt_count_reg[8]_i_1\,
      O(1) => \n_6_adapt_count_reg[8]_i_1\,
      O(0) => \n_7_adapt_count_reg[8]_i_1\,
      S(3) => \n_0_adapt_count[8]_i_2\,
      S(2) => \n_0_adapt_count[8]_i_3\,
      S(1) => \n_0_adapt_count[8]_i_4\,
      S(0) => \n_0_adapt_count[8]_i_5\
    );
\adapt_count_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[8]_i_1\,
      Q => adapt_count_reg(9),
      R => recclk_mon_count_reset
    );
adapt_count_reset_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_20_sync_cplllock_cdc_sync,
      Q => recclk_mon_count_reset,
      S => AR(0)
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
    port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => rx_state(3),
      I4 => n_0_check_tlock_max_reg,
      O => n_0_check_tlock_max_i_1
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_check_tlock_max_i_1,
      Q => n_0_check_tlock_max_reg,
      R => AR(0)
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0010"
    )
    port map (
      I0 => rx_state(1),
      I1 => rx_state(2),
      I2 => rx_state(0),
      I3 => rx_state(3),
      I4 => \^gtrxreset_i\,
      O => n_0_gtrxreset_i_i_1
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_gtrxreset_i_i_1,
      Q => \^gtrxreset_i\,
      R => AR(0)
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      O => \p_0_in__1\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(2),
      O => \p_0_in__1\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(3),
      I4 => \init_wait_count_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      I5 => \init_wait_count_reg__0\(4),
      O => \p_0_in__1\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \n_0_init_wait_count[7]_i_4__0\,
      I2 => \init_wait_count_reg__0\(5),
      O => \p_0_in__1\(6)
    );
\init_wait_count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => \n_0_init_wait_count[7]_i_3__0\,
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      O => \n_0_init_wait_count[7]_i_1__0\
    );
\init_wait_count[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(7),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \n_0_init_wait_count[7]_i_4__0\,
      I3 => \init_wait_count_reg__0\(6),
      O => \p_0_in__1\(7)
    );
\init_wait_count[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(6),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(5),
      I5 => \init_wait_count_reg__0\(7),
      O => \n_0_init_wait_count[7]_i_3__0\
    );
\init_wait_count[7]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      O => \n_0_init_wait_count[7]_i_4__0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      CLR => AR(0),
      D => \p_0_in__1\(0),
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      CLR => AR(0),
      D => \p_0_in__1\(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      CLR => AR(0),
      D => \p_0_in__1\(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      CLR => AR(0),
      D => \p_0_in__1\(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      CLR => AR(0),
      D => \p_0_in__1\(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      CLR => AR(0),
      D => \p_0_in__1\(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      CLR => AR(0),
      D => \p_0_in__1\(6),
      Q => \init_wait_count_reg__0\(6)
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      CLR => AR(0),
      D => \p_0_in__1\(7),
      Q => \init_wait_count_reg__0\(7)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => \n_0_init_wait_count[7]_i_3__0\,
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => n_0_init_wait_done_reg,
      O => \n_0_init_wait_done_i_1__0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      CLR => AR(0),
      D => \n_0_init_wait_done_i_1__0\,
      Q => n_0_init_wait_done_reg
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__2\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__2\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__2\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__2\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I2 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__2\(6)
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I3 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__2\(7)
    );
\mmcm_lock_count[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__2\(8)
    );
\mmcm_lock_count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \n_0_mmcm_lock_count[9]_i_2__0\
    );
\mmcm_lock_count[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I4 => \mmcm_lock_count_reg__0\(6),
      I5 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__2\(9)
    );
\mmcm_lock_count[9]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \n_0_mmcm_lock_count[9]_i_4__0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I3 => \mmcm_lock_count_reg__0\(6),
      O => \n_0_mmcm_lock_reclocked_i_2__0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_19_sync_mmcm_lock_reclocked_cdc_sync,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55772262"
    )
    port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => I1,
      I3 => rx_state(1),
      I4 => rx_state(0),
      O => n_0_reset_time_out_i_4
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_20_sync_data_valid_cdc_sync,
      Q => n_0_reset_time_out_reg,
      S => AR(0)
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0002"
    )
    port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => n_0_run_phase_alignment_int_reg,
      O => \n_0_run_phase_alignment_int_i_1__0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_0_run_phase_alignment_int_i_1__0\,
      Q => n_0_run_phase_alignment_int_reg,
      R => AR(0)
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_21_sync_data_valid_cdc_sync,
      Q => n_0_rx_fsm_reset_done_int_reg,
      R => AR(0)
    );
sync_RXRESETDONE_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_8
    port map (
      E(0) => n_19_sync_RXRESETDONE_cdc_sync,
      I1 => n_25_sync_data_valid_cdc_sync,
      I2 => \n_0_FSM_sequential_rx_state[3]_i_8\,
      I3 => \n_0_FSM_sequential_rx_state[3]_i_9\,
      I4 => n_0_time_out_2ms_reg,
      I5 => n_0_reset_time_out_reg,
      I6 => I1,
      O1 => n_20_sync_RXRESETDONE_cdc_sync,
      O100(1 downto 0) => O100(1 downto 0),
      O101(1 downto 0) => O101(1 downto 0),
      O96(1 downto 0) => O96(1 downto 0),
      O97(1 downto 0) => O97(1 downto 0),
      O98(1 downto 0) => O98(1 downto 0),
      O99(1 downto 0) => O99(1 downto 0),
      cplllock_sync => cplllock_sync,
      data_valid_sync => data_valid_sync,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      \out\(3 downto 0) => rx_state(3 downto 0),
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r,
      s_out_d1_cdc_to_105 => s_out_d1_cdc_to_105,
      s_out_d2_106 => s_out_d2_106,
      s_out_d3_107 => s_out_d3_107,
      s_out_d4_108 => s_out_d4_108,
      s_out_d5_109 => s_out_d5_109,
      s_out_d6_110 => s_out_d6_110,
      s_out_d7_111 => s_out_d7_111,
      time_tlock_max => time_tlock_max
    );
sync_cplllock_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_9
    port map (
      O1 => n_20_sync_cplllock_cdc_sync,
      O114(1 downto 0) => O114(1 downto 0),
      O115(1 downto 0) => O115(1 downto 0),
      O116(1 downto 0) => O116(1 downto 0),
      O117(1 downto 0) => O117(1 downto 0),
      O118(1 downto 0) => O118(1 downto 0),
      O119(1 downto 0) => O119(1 downto 0),
      O2 => O2,
      cplllock_sync => cplllock_sync,
      init_clk_in => init_clk_in,
      \out\(3 downto 0) => rx_state(3 downto 0),
      recclk_mon_count_reset => recclk_mon_count_reset,
      s_out_d1_cdc_to_126 => s_out_d1_cdc_to_126,
      s_out_d2_127 => s_out_d2_127,
      s_out_d3_128 => s_out_d3_128,
      s_out_d4_129 => s_out_d4_129,
      s_out_d5_130 => s_out_d5_130,
      s_out_d6_131 => s_out_d6_131,
      s_out_d7_132 => s_out_d7_132
    );
sync_data_valid_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_10
    port map (
      D(2) => n_22_sync_data_valid_cdc_sync,
      D(1) => n_23_sync_data_valid_cdc_sync,
      D(0) => n_24_sync_data_valid_cdc_sync,
      I1 => n_20_sync_RXRESETDONE_cdc_sync,
      I2 => n_0_reset_time_out_i_4,
      I3 => n_0_reset_time_out_reg,
      I4 => n_0_rx_fsm_reset_done_int_reg,
      I5 => \n_0_FSM_sequential_rx_state[0]_i_2\,
      I6 => n_0_time_out_100us_reg,
      I7 => \n_0_FSM_sequential_rx_state[3]_i_5\,
      I8 => n_0_time_out_1us_reg,
      O1 => n_20_sync_data_valid_cdc_sync,
      O108(1 downto 0) => O108(1 downto 0),
      O109(1 downto 0) => O109(1 downto 0),
      O110(1 downto 0) => O110(1 downto 0),
      O111(1 downto 0) => O111(1 downto 0),
      O112(1 downto 0) => O112(1 downto 0),
      O113(1 downto 0) => O113(1 downto 0),
      O2 => n_21_sync_data_valid_cdc_sync,
      O3 => n_25_sync_data_valid_cdc_sync,
      data_valid_sync => data_valid_sync,
      gt_rxuserrdy_i => \^gt_rxuserrdy_i\,
      init_clk_in => init_clk_in,
      \out\(3 downto 0) => rx_state(3 downto 0),
      rx_state16_out => rx_state16_out,
      s_out_d1_cdc_to_119 => s_out_d1_cdc_to_119,
      s_out_d2_120 => s_out_d2_120,
      s_out_d3_121 => s_out_d3_121,
      s_out_d4_122 => s_out_d4_122,
      s_out_d5_123 => s_out_d5_123,
      s_out_d6_124 => s_out_d6_124,
      s_out_d7_125 => s_out_d7_125,
      time_out_wait_bypass_s3 => time_out_wait_bypass_s3
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_11
    port map (
      I1 => \n_0_mmcm_lock_reclocked_i_2__0\,
      O1 => n_19_sync_mmcm_lock_reclocked_cdc_sync,
      O102(1 downto 0) => O102(1 downto 0),
      O103(1 downto 0) => O103(1 downto 0),
      O104(1 downto 0) => O104(1 downto 0),
      O105(1 downto 0) => O105(1 downto 0),
      O106(1 downto 0) => O106(1 downto 0),
      O107(1 downto 0) => O107(1 downto 0),
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(9 downto 8),
      SR(0) => n_20_sync_mmcm_lock_reclocked_cdc_sync,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      s_out_d1_cdc_to_112 => s_out_d1_cdc_to_112,
      s_out_d2_113 => s_out_d2_113,
      s_out_d3_114 => s_out_d3_114,
      s_out_d4_115 => s_out_d4_115,
      s_out_d5_116 => s_out_d5_116,
      s_out_d6_117 => s_out_d6_117,
      s_out_d7_118 => s_out_d7_118
    );
sync_qplllock_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_12
    port map (
      O120(1 downto 0) => O120(1 downto 0),
      O121(1 downto 0) => O121(1 downto 0),
      O122(1 downto 0) => O122(1 downto 0),
      O123(1 downto 0) => O123(1 downto 0),
      O124(1 downto 0) => O124(1 downto 0),
      O125(1 downto 0) => O125(1 downto 0),
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_133 => s_out_d1_cdc_to_133,
      s_out_d2_134 => s_out_d2_134,
      s_out_d3_135 => s_out_d3_135,
      s_out_d4_136 => s_out_d4_136,
      s_out_d5_137 => s_out_d5_137,
      s_out_d6_138 => s_out_d6_138,
      s_out_d7_139 => s_out_d7_139
    );
sync_run_phase_alignment_int_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_13
    port map (
      I1 => n_0_run_phase_alignment_int_reg,
      O1 => n_0_sync_run_phase_alignment_int_cdc_sync,
      O2 => n_20_sync_run_phase_alignment_int_cdc_sync,
      O78(1 downto 0) => O78(1 downto 0),
      O79(1 downto 0) => O79(1 downto 0),
      O80(1 downto 0) => O80(1 downto 0),
      O81(1 downto 0) => O81(1 downto 0),
      O82(1 downto 0) => O82(1 downto 0),
      O83(1 downto 0) => O83(1 downto 0),
      s_out_d1_cdc_to_84 => s_out_d1_cdc_to_84,
      s_out_d2_85 => s_out_d2_85,
      s_out_d3_86 => s_out_d3_86,
      s_out_d4_87 => s_out_d4_87,
      s_out_d5_88 => s_out_d5_88,
      s_out_d6_89 => s_out_d6_89,
      s_out_d7_90 => s_out_d7_90,
      user_clk => user_clk
    );
sync_rx_fsm_reset_done_int_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_14
    port map (
      I1 => n_0_rx_fsm_reset_done_int_reg,
      I2 => \n_0_wait_bypass_count[0]_i_4__0\,
      I3 => \n_0_wait_bypass_count[0]_i_5__0\,
      I4 => n_0_time_out_wait_bypass_reg,
      I5 => n_0_sync_run_phase_alignment_int_cdc_sync,
      O1 => n_19_sync_rx_fsm_reset_done_int_cdc_sync,
      O2 => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      O84(1 downto 0) => O84(1 downto 0),
      O85(1 downto 0) => O85(1 downto 0),
      O86(1 downto 0) => O86(1 downto 0),
      O87(1 downto 0) => O87(1 downto 0),
      O88(1 downto 0) => O88(1 downto 0),
      O89(1 downto 0) => O89(1 downto 0),
      s_out_d1_cdc_to_91 => s_out_d1_cdc_to_91,
      s_out_d2_92 => s_out_d2_92,
      s_out_d3_93 => s_out_d3_93,
      s_out_d4_94 => s_out_d4_94,
      s_out_d5_95 => s_out_d5_95,
      s_out_d6_96 => s_out_d6_96,
      s_out_d7_97 => s_out_d7_97,
      user_clk => user_clk,
      wait_bypass_count_reg(0) => wait_bypass_count_reg(8)
    );
sync_time_out_wait_bypass_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_15
    port map (
      I1 => n_0_time_out_wait_bypass_reg,
      O90(1 downto 0) => O90(1 downto 0),
      O91(1 downto 0) => O91(1 downto 0),
      O92(1 downto 0) => O92(1 downto 0),
      O93(1 downto 0) => O93(1 downto 0),
      O94(1 downto 0) => O94(1 downto 0),
      O95(1 downto 0) => O95(1 downto 0),
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_98 => s_out_d1_cdc_to_98,
      s_out_d2_99 => s_out_d2_99,
      s_out_d3_100 => s_out_d3_100,
      s_out_d4_101 => s_out_d4_101,
      s_out_d5_102 => s_out_d5_102,
      s_out_d6_103 => s_out_d6_103,
      s_out_d7_104 => s_out_d7_104,
      time_out_wait_bypass_s3 => time_out_wait_bypass_s3
    );
time_out_100us_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0800"
    )
    port map (
      I0 => n_0_time_out_100us_i_2,
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(11),
      I3 => n_0_time_out_100us_i_3,
      I4 => n_0_time_out_100us_reg,
      O => n_0_time_out_100us_i_1
    );
time_out_100us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => n_0_time_out_2ms_i_2,
      I1 => n_0_time_out_1us_i_3,
      I2 => n_0_time_tlock_max_i_6,
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(0),
      I5 => time_out_counter_reg(5),
      O => n_0_time_out_100us_i_2
    );
time_out_100us_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => n_0_time_out_100us_i_4,
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(4),
      O => n_0_time_out_100us_i_3
    );
time_out_100us_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(18),
      I3 => time_out_counter_reg(16),
      O => n_0_time_out_100us_i_4
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_time_out_100us_i_1,
      Q => n_0_time_out_100us_reg,
      R => n_0_reset_time_out_reg
    );
time_out_1us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04000000"
    )
    port map (
      I0 => n_0_time_out_1us_i_2,
      I1 => time_out_counter_reg(5),
      I2 => n_0_time_out_1us_i_3,
      I3 => n_0_time_out_1us_i_4,
      I4 => n_0_time_out_100us_i_3,
      I5 => n_0_time_out_1us_reg,
      O => n_0_time_out_1us_i_1
    );
time_out_1us_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(2),
      O => n_0_time_out_1us_i_2
    );
time_out_1us_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(9),
      O => n_0_time_out_1us_i_3
    );
time_out_1us_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(0),
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(6),
      I5 => time_out_counter_reg(7),
      O => n_0_time_out_1us_i_4
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_time_out_1us_i_1,
      Q => n_0_time_out_1us_reg,
      R => n_0_reset_time_out_reg
    );
time_out_2ms_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_3\,
      I1 => n_0_time_out_2ms_i_2,
      I2 => time_out_counter_reg(13),
      I3 => time_out_counter_reg(12),
      I4 => \n_0_time_out_counter[0]_i_4\,
      I5 => n_0_time_out_2ms_reg,
      O => n_0_time_out_2ms_i_1
    );
time_out_2ms_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      O => n_0_time_out_2ms_i_2
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_time_out_2ms_i_1,
      Q => n_0_time_out_2ms_reg,
      R => n_0_reset_time_out_reg
    );
time_out_adapt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => n_0_time_out_adapt_reg,
      I1 => time_out_adapt,
      I2 => recclk_mon_count_reset,
      O => n_0_time_out_adapt_i_1
    );
time_out_adapt_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_time_out_adapt_i_1,
      Q => n_0_time_out_adapt_reg,
      R => '0'
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_3\,
      I1 => time_out_counter_reg(6),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(12),
      I5 => \n_0_time_out_counter[0]_i_4\,
      O => \n_0_time_out_counter[0]_i_1\
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[0]_i_3\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(17),
      I5 => \n_0_time_out_counter[0]_i_9__0\,
      O => \n_0_time_out_counter[0]_i_4\
    );
\time_out_counter[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_5__0\
    );
\time_out_counter[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_6__0\
    );
\time_out_counter[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(1),
      O => \n_0_time_out_counter[0]_i_7__0\
    );
\time_out_counter[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_8__0\
    );
\time_out_counter[0]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(2),
      I4 => time_out_counter_reg(18),
      I5 => time_out_counter_reg(14),
      O => \n_0_time_out_counter[0]_i_9__0\
    );
\time_out_counter[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(15),
      O => \n_0_time_out_counter[12]_i_2__0\
    );
\time_out_counter[12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(14),
      O => \n_0_time_out_counter[12]_i_3__0\
    );
\time_out_counter[12]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(13),
      O => \n_0_time_out_counter[12]_i_4__0\
    );
\time_out_counter[12]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(12),
      O => \n_0_time_out_counter[12]_i_5__0\
    );
\time_out_counter[16]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(18),
      O => \n_0_time_out_counter[16]_i_2__0\
    );
\time_out_counter[16]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(17),
      O => \n_0_time_out_counter[16]_i_3__0\
    );
\time_out_counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(16),
      O => \n_0_time_out_counter[16]_i_4\
    );
\time_out_counter[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(7),
      O => \n_0_time_out_counter[4]_i_2__0\
    );
\time_out_counter[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(6),
      O => \n_0_time_out_counter[4]_i_3__0\
    );
\time_out_counter[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[4]_i_4__0\
    );
\time_out_counter[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(4),
      O => \n_0_time_out_counter[4]_i_5__0\
    );
\time_out_counter[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(11),
      O => \n_0_time_out_counter[8]_i_2__0\
    );
\time_out_counter[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(10),
      O => \n_0_time_out_counter[8]_i_3__0\
    );
\time_out_counter[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(9),
      O => \n_0_time_out_counter[8]_i_4__0\
    );
\time_out_counter[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(8),
      O => \n_0_time_out_counter[8]_i_5__0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(0),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_time_out_counter_reg[0]_i_2__0\,
      CO(2) => \n_1_time_out_counter_reg[0]_i_2__0\,
      CO(1) => \n_2_time_out_counter_reg[0]_i_2__0\,
      CO(0) => \n_3_time_out_counter_reg[0]_i_2__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_time_out_counter_reg[0]_i_2__0\,
      O(2) => \n_5_time_out_counter_reg[0]_i_2__0\,
      O(1) => \n_6_time_out_counter_reg[0]_i_2__0\,
      O(0) => \n_7_time_out_counter_reg[0]_i_2__0\,
      S(3) => \n_0_time_out_counter[0]_i_5__0\,
      S(2) => \n_0_time_out_counter[0]_i_6__0\,
      S(1) => \n_0_time_out_counter[0]_i_7__0\,
      S(0) => \n_0_time_out_counter[0]_i_8__0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(10),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(11),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(12),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[8]_i_1__0\,
      CO(3) => \n_0_time_out_counter_reg[12]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[12]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[12]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[12]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[12]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[12]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[12]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[12]_i_1__0\,
      S(3) => \n_0_time_out_counter[12]_i_2__0\,
      S(2) => \n_0_time_out_counter[12]_i_3__0\,
      S(1) => \n_0_time_out_counter[12]_i_4__0\,
      S(0) => \n_0_time_out_counter[12]_i_5__0\
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(13),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(14),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(15),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(16),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[12]_i_1__0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_time_out_counter_reg[16]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[16]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \n_5_time_out_counter_reg[16]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[16]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[16]_i_1__0\,
      S(3) => '0',
      S(2) => \n_0_time_out_counter[16]_i_2__0\,
      S(1) => \n_0_time_out_counter[16]_i_3__0\,
      S(0) => \n_0_time_out_counter[16]_i_4\
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(17),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(18),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(1),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(2),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(3),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(4),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[0]_i_2__0\,
      CO(3) => \n_0_time_out_counter_reg[4]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[4]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[4]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[4]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[4]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[4]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[4]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[4]_i_1__0\,
      S(3) => \n_0_time_out_counter[4]_i_2__0\,
      S(2) => \n_0_time_out_counter[4]_i_3__0\,
      S(1) => \n_0_time_out_counter[4]_i_4__0\,
      S(0) => \n_0_time_out_counter[4]_i_5__0\
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(5),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(6),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(7),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(8),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[4]_i_1__0\,
      CO(3) => \n_0_time_out_counter_reg[8]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[8]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[8]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[8]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[8]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[8]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[8]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[8]_i_1__0\,
      S(3) => \n_0_time_out_counter[8]_i_2__0\,
      S(2) => \n_0_time_out_counter[8]_i_3__0\,
      S(1) => \n_0_time_out_counter[8]_i_4__0\,
      S(0) => \n_0_time_out_counter[8]_i_5__0\
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(9),
      R => n_0_reset_time_out_reg
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_19_sync_rx_fsm_reset_done_int_cdc_sync,
      Q => n_0_time_out_wait_bypass_reg,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000E0000"
    )
    port map (
      I0 => time_out_counter_reg(2),
      I1 => n_0_time_tlock_max_i_2,
      I2 => n_0_time_tlock_max_i_3,
      I3 => n_0_time_tlock_max_i_4,
      I4 => n_0_check_tlock_max_reg,
      I5 => time_tlock_max,
      O => n_0_time_tlock_max_i_1
    );
time_tlock_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(8),
      I4 => n_0_time_out_1us_i_3,
      I5 => n_0_time_tlock_max_i_5,
      O => n_0_time_tlock_max_i_2
    );
time_tlock_max_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0010"
    )
    port map (
      I0 => time_out_counter_reg(8),
      I1 => n_0_time_out_1us_i_3,
      I2 => n_0_time_out_2ms_i_2,
      I3 => time_out_counter_reg(11),
      I4 => n_0_time_tlock_max_i_6,
      I5 => n_0_time_tlock_max_i_5,
      O => n_0_time_tlock_max_i_3
    );
time_tlock_max_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001000000FF"
    )
    port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(1),
      I3 => n_0_time_tlock_max_i_5,
      I4 => n_0_time_tlock_max_i_7,
      I5 => time_out_counter_reg(4),
      O => n_0_time_tlock_max_i_4
    );
time_tlock_max_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(18),
      I3 => time_out_counter_reg(14),
      I4 => time_out_counter_reg(15),
      O => n_0_time_tlock_max_i_5
    );
time_tlock_max_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => n_0_time_tlock_max_i_6
    );
time_tlock_max_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(9),
      O => n_0_time_tlock_max_i_7
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_time_tlock_max_i_1,
      Q => time_tlock_max,
      R => n_0_reset_time_out_reg
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      I1 => wait_bypass_count_reg(3),
      I2 => wait_bypass_count_reg(6),
      I3 => wait_bypass_count_reg(0),
      I4 => wait_bypass_count_reg(10),
      I5 => wait_bypass_count_reg(7),
      O => \n_0_wait_bypass_count[0]_i_4__0\
    );
\wait_bypass_count[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      I1 => wait_bypass_count_reg(5),
      I2 => wait_bypass_count_reg(9),
      I3 => wait_bypass_count_reg(2),
      I4 => wait_bypass_count_reg(4),
      I5 => wait_bypass_count_reg(11),
      O => \n_0_wait_bypass_count[0]_i_5__0\
    );
\wait_bypass_count[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(3),
      O => \n_0_wait_bypass_count[0]_i_6__0\
    );
\wait_bypass_count[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(2),
      O => \n_0_wait_bypass_count[0]_i_7__0\
    );
\wait_bypass_count[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      O => \n_0_wait_bypass_count[0]_i_8__0\
    );
\wait_bypass_count[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_bypass_count_reg(0),
      O => \n_0_wait_bypass_count[0]_i_9\
    );
\wait_bypass_count[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      O => \n_0_wait_bypass_count[12]_i_2__0\
    );
\wait_bypass_count[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(7),
      O => \n_0_wait_bypass_count[4]_i_2__0\
    );
\wait_bypass_count[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(6),
      O => \n_0_wait_bypass_count[4]_i_3__0\
    );
\wait_bypass_count[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(5),
      O => \n_0_wait_bypass_count[4]_i_4__0\
    );
\wait_bypass_count[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      O => \n_0_wait_bypass_count[4]_i_5__0\
    );
\wait_bypass_count[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(11),
      O => \n_0_wait_bypass_count[8]_i_2__0\
    );
\wait_bypass_count[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(10),
      O => \n_0_wait_bypass_count[8]_i_3__0\
    );
\wait_bypass_count[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      O => \n_0_wait_bypass_count[8]_i_4__0\
    );
\wait_bypass_count[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(8),
      O => \n_0_wait_bypass_count[8]_i_5__0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(0),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_wait_bypass_count_reg[0]_i_3__0\,
      CO(2) => \n_1_wait_bypass_count_reg[0]_i_3__0\,
      CO(1) => \n_2_wait_bypass_count_reg[0]_i_3__0\,
      CO(0) => \n_3_wait_bypass_count_reg[0]_i_3__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_wait_bypass_count_reg[0]_i_3__0\,
      O(2) => \n_5_wait_bypass_count_reg[0]_i_3__0\,
      O(1) => \n_6_wait_bypass_count_reg[0]_i_3__0\,
      O(0) => \n_7_wait_bypass_count_reg[0]_i_3__0\,
      S(3) => \n_0_wait_bypass_count[0]_i_6__0\,
      S(2) => \n_0_wait_bypass_count[0]_i_7__0\,
      S(1) => \n_0_wait_bypass_count[0]_i_8__0\,
      S(0) => \n_0_wait_bypass_count[0]_i_9\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(10),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(11),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[12]_i_1__0\,
      Q => wait_bypass_count_reg(12),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[8]_i_1__0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_wait_bypass_count_reg[12]_i_1__0\,
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_wait_bypass_count[12]_i_2__0\
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(1),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(2),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(3),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(4),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[0]_i_3__0\,
      CO(3) => \n_0_wait_bypass_count_reg[4]_i_1__0\,
      CO(2) => \n_1_wait_bypass_count_reg[4]_i_1__0\,
      CO(1) => \n_2_wait_bypass_count_reg[4]_i_1__0\,
      CO(0) => \n_3_wait_bypass_count_reg[4]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[4]_i_1__0\,
      O(2) => \n_5_wait_bypass_count_reg[4]_i_1__0\,
      O(1) => \n_6_wait_bypass_count_reg[4]_i_1__0\,
      O(0) => \n_7_wait_bypass_count_reg[4]_i_1__0\,
      S(3) => \n_0_wait_bypass_count[4]_i_2__0\,
      S(2) => \n_0_wait_bypass_count[4]_i_3__0\,
      S(1) => \n_0_wait_bypass_count[4]_i_4__0\,
      S(0) => \n_0_wait_bypass_count[4]_i_5__0\
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(5),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(6),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(7),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(8),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[4]_i_1__0\,
      CO(3) => \n_0_wait_bypass_count_reg[8]_i_1__0\,
      CO(2) => \n_1_wait_bypass_count_reg[8]_i_1__0\,
      CO(1) => \n_2_wait_bypass_count_reg[8]_i_1__0\,
      CO(0) => \n_3_wait_bypass_count_reg[8]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[8]_i_1__0\,
      O(2) => \n_5_wait_bypass_count_reg[8]_i_1__0\,
      O(1) => \n_6_wait_bypass_count_reg[8]_i_1__0\,
      O(0) => \n_7_wait_bypass_count_reg[8]_i_1__0\,
      S(3) => \n_0_wait_bypass_count[8]_i_2__0\,
      S(2) => \n_0_wait_bypass_count[8]_i_3__0\,
      S(1) => \n_0_wait_bypass_count[8]_i_4__0\,
      S(0) => \n_0_wait_bypass_count[8]_i_5__0\
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_rx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(9),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => rx_state(0),
      I1 => rx_state(3),
      I2 => rx_state(1),
      O => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
    port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(11),
      I2 => wait_time_cnt_reg(13),
      I3 => wait_time_cnt_reg(15),
      I4 => \n_0_wait_time_cnt[0]_i_4__0\,
      I5 => \n_0_wait_time_cnt[0]_i_5__0\,
      O => \n_0_wait_time_cnt[0]_i_2__0\
    );
\wait_time_cnt[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(9),
      I2 => wait_time_cnt_reg(3),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(4),
      I5 => wait_time_cnt_reg(14),
      O => \n_0_wait_time_cnt[0]_i_4__0\
    );
\wait_time_cnt[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => wait_time_cnt_reg(12),
      I1 => wait_time_cnt_reg(7),
      I2 => wait_time_cnt_reg(5),
      I3 => wait_time_cnt_reg(2),
      I4 => wait_time_cnt_reg(10),
      I5 => wait_time_cnt_reg(8),
      O => \n_0_wait_time_cnt[0]_i_5__0\
    );
\wait_time_cnt[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(3),
      O => \n_0_wait_time_cnt[0]_i_6__0\
    );
\wait_time_cnt[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(2),
      O => \n_0_wait_time_cnt[0]_i_7__0\
    );
\wait_time_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(1),
      O => \n_0_wait_time_cnt[0]_i_8\
    );
\wait_time_cnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(0),
      O => \n_0_wait_time_cnt[0]_i_9\
    );
\wait_time_cnt[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(15),
      O => \n_0_wait_time_cnt[12]_i_2__0\
    );
\wait_time_cnt[12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(14),
      O => \n_0_wait_time_cnt[12]_i_3__0\
    );
\wait_time_cnt[12]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(13),
      O => \n_0_wait_time_cnt[12]_i_4__0\
    );
\wait_time_cnt[12]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(12),
      O => \n_0_wait_time_cnt[12]_i_5__0\
    );
\wait_time_cnt[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(7),
      O => \n_0_wait_time_cnt[4]_i_2__0\
    );
\wait_time_cnt[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(6),
      O => \n_0_wait_time_cnt[4]_i_3__0\
    );
\wait_time_cnt[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(5),
      O => \n_0_wait_time_cnt[4]_i_4__0\
    );
\wait_time_cnt[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(4),
      O => \n_0_wait_time_cnt[4]_i_5__0\
    );
\wait_time_cnt[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(11),
      O => \n_0_wait_time_cnt[8]_i_2__0\
    );
\wait_time_cnt[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(10),
      O => \n_0_wait_time_cnt[8]_i_3__0\
    );
\wait_time_cnt[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(9),
      O => \n_0_wait_time_cnt[8]_i_4__0\
    );
\wait_time_cnt[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(8),
      O => \n_0_wait_time_cnt[8]_i_5__0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_7_wait_time_cnt_reg[0]_i_3__0\,
      Q => wait_time_cnt_reg(0),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_wait_time_cnt_reg[0]_i_3__0\,
      CO(2) => \n_1_wait_time_cnt_reg[0]_i_3__0\,
      CO(1) => \n_2_wait_time_cnt_reg[0]_i_3__0\,
      CO(0) => \n_3_wait_time_cnt_reg[0]_i_3__0\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_wait_time_cnt_reg[0]_i_3__0\,
      O(2) => \n_5_wait_time_cnt_reg[0]_i_3__0\,
      O(1) => \n_6_wait_time_cnt_reg[0]_i_3__0\,
      O(0) => \n_7_wait_time_cnt_reg[0]_i_3__0\,
      S(3) => \n_0_wait_time_cnt[0]_i_6__0\,
      S(2) => \n_0_wait_time_cnt[0]_i_7__0\,
      S(1) => \n_0_wait_time_cnt[0]_i_8\,
      S(0) => \n_0_wait_time_cnt[0]_i_9\
    );
\wait_time_cnt_reg[10]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_5_wait_time_cnt_reg[8]_i_1__0\,
      Q => wait_time_cnt_reg(10),
      S => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_4_wait_time_cnt_reg[8]_i_1__0\,
      Q => wait_time_cnt_reg(11),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_7_wait_time_cnt_reg[12]_i_1__0\,
      Q => wait_time_cnt_reg(12),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_time_cnt_reg[8]_i_1__0\,
      CO(3) => \NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \n_1_wait_time_cnt_reg[12]_i_1__0\,
      CO(1) => \n_2_wait_time_cnt_reg[12]_i_1__0\,
      CO(0) => \n_3_wait_time_cnt_reg[12]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_wait_time_cnt_reg[12]_i_1__0\,
      O(2) => \n_5_wait_time_cnt_reg[12]_i_1__0\,
      O(1) => \n_6_wait_time_cnt_reg[12]_i_1__0\,
      O(0) => \n_7_wait_time_cnt_reg[12]_i_1__0\,
      S(3) => \n_0_wait_time_cnt[12]_i_2__0\,
      S(2) => \n_0_wait_time_cnt[12]_i_3__0\,
      S(1) => \n_0_wait_time_cnt[12]_i_4__0\,
      S(0) => \n_0_wait_time_cnt[12]_i_5__0\
    );
\wait_time_cnt_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_6_wait_time_cnt_reg[12]_i_1__0\,
      Q => wait_time_cnt_reg(13),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_5_wait_time_cnt_reg[12]_i_1__0\,
      Q => wait_time_cnt_reg(14),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_4_wait_time_cnt_reg[12]_i_1__0\,
      Q => wait_time_cnt_reg(15),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_6_wait_time_cnt_reg[0]_i_3__0\,
      Q => wait_time_cnt_reg(1),
      S => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_5_wait_time_cnt_reg[0]_i_3__0\,
      Q => wait_time_cnt_reg(2),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_4_wait_time_cnt_reg[0]_i_3__0\,
      Q => wait_time_cnt_reg(3),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_7_wait_time_cnt_reg[4]_i_1__0\,
      Q => wait_time_cnt_reg(4),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_time_cnt_reg[0]_i_3__0\,
      CO(3) => \n_0_wait_time_cnt_reg[4]_i_1__0\,
      CO(2) => \n_1_wait_time_cnt_reg[4]_i_1__0\,
      CO(1) => \n_2_wait_time_cnt_reg[4]_i_1__0\,
      CO(0) => \n_3_wait_time_cnt_reg[4]_i_1__0\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_wait_time_cnt_reg[4]_i_1__0\,
      O(2) => \n_5_wait_time_cnt_reg[4]_i_1__0\,
      O(1) => \n_6_wait_time_cnt_reg[4]_i_1__0\,
      O(0) => \n_7_wait_time_cnt_reg[4]_i_1__0\,
      S(3) => \n_0_wait_time_cnt[4]_i_2__0\,
      S(2) => \n_0_wait_time_cnt[4]_i_3__0\,
      S(1) => \n_0_wait_time_cnt[4]_i_4__0\,
      S(0) => \n_0_wait_time_cnt[4]_i_5__0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_6_wait_time_cnt_reg[4]_i_1__0\,
      Q => wait_time_cnt_reg(5),
      S => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_5_wait_time_cnt_reg[4]_i_1__0\,
      Q => wait_time_cnt_reg(6),
      S => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_4_wait_time_cnt_reg[4]_i_1__0\,
      Q => wait_time_cnt_reg(7),
      S => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_7_wait_time_cnt_reg[8]_i_1__0\,
      Q => wait_time_cnt_reg(8),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
\wait_time_cnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_time_cnt_reg[4]_i_1__0\,
      CO(3) => \n_0_wait_time_cnt_reg[8]_i_1__0\,
      CO(2) => \n_1_wait_time_cnt_reg[8]_i_1__0\,
      CO(1) => \n_2_wait_time_cnt_reg[8]_i_1__0\,
      CO(0) => \n_3_wait_time_cnt_reg[8]_i_1__0\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_wait_time_cnt_reg[8]_i_1__0\,
      O(2) => \n_5_wait_time_cnt_reg[8]_i_1__0\,
      O(1) => \n_6_wait_time_cnt_reg[8]_i_1__0\,
      O(0) => \n_7_wait_time_cnt_reg[8]_i_1__0\,
      S(3) => \n_0_wait_time_cnt[8]_i_2__0\,
      S(2) => \n_0_wait_time_cnt[8]_i_3__0\,
      S(1) => \n_0_wait_time_cnt[8]_i_4__0\,
      S(0) => \n_0_wait_time_cnt[8]_i_5__0\
    );
\wait_time_cnt_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_wait_time_cnt[0]_i_2__0\,
      D => \n_6_wait_time_cnt_reg[8]_i_1__0\,
      Q => wait_time_cnt_reg(9),
      R => \n_0_wait_time_cnt[0]_i_1__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_tx_startup_fsm is
  port (
    s_out_d1_cdc_to_35 : out STD_LOGIC;
    s_out_d2_36 : out STD_LOGIC;
    s_out_d3_37 : out STD_LOGIC;
    s_out_d4_38 : out STD_LOGIC;
    s_out_d5_39 : out STD_LOGIC;
    s_out_d6_40 : out STD_LOGIC;
    s_out_d7_41 : out STD_LOGIC;
    O36 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O37 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O38 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O39 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O40 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O41 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    s_out_d1_cdc_to_42 : out STD_LOGIC;
    s_out_d2_43 : out STD_LOGIC;
    s_out_d3_44 : out STD_LOGIC;
    s_out_d4_45 : out STD_LOGIC;
    s_out_d5_46 : out STD_LOGIC;
    s_out_d6_47 : out STD_LOGIC;
    s_out_d7_48 : out STD_LOGIC;
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O44 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O45 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O46 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O47 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_49 : out STD_LOGIC;
    s_out_d2_50 : out STD_LOGIC;
    s_out_d3_51 : out STD_LOGIC;
    s_out_d4_52 : out STD_LOGIC;
    s_out_d5_53 : out STD_LOGIC;
    s_out_d6_54 : out STD_LOGIC;
    s_out_d7_55 : out STD_LOGIC;
    O48 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O49 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O50 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O51 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O52 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O53 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_56 : out STD_LOGIC;
    s_out_d2_57 : out STD_LOGIC;
    s_out_d3_58 : out STD_LOGIC;
    s_out_d4_59 : out STD_LOGIC;
    s_out_d5_60 : out STD_LOGIC;
    s_out_d6_61 : out STD_LOGIC;
    s_out_d7_62 : out STD_LOGIC;
    O54 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O55 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O56 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O57 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O58 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O59 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_63 : out STD_LOGIC;
    s_out_d2_64 : out STD_LOGIC;
    s_out_d3_65 : out STD_LOGIC;
    s_out_d4_66 : out STD_LOGIC;
    s_out_d5_67 : out STD_LOGIC;
    s_out_d6_68 : out STD_LOGIC;
    s_out_d7_69 : out STD_LOGIC;
    O60 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O61 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O62 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O63 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O64 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O65 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_70 : out STD_LOGIC;
    s_out_d2_71 : out STD_LOGIC;
    s_out_d3_72 : out STD_LOGIC;
    s_out_d4_73 : out STD_LOGIC;
    s_out_d5_74 : out STD_LOGIC;
    s_out_d6_75 : out STD_LOGIC;
    s_out_d7_76 : out STD_LOGIC;
    O66 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O67 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O68 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O69 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O70 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O71 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_77 : out STD_LOGIC;
    s_out_d2_78 : out STD_LOGIC;
    s_out_d3_79 : out STD_LOGIC;
    s_out_d4_80 : out STD_LOGIC;
    s_out_d5_81 : out STD_LOGIC;
    s_out_d6_82 : out STD_LOGIC;
    s_out_d7_83 : out STD_LOGIC;
    O72 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O73 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O74 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O75 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O76 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O77 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt_tx_reset_i : out STD_LOGIC;
    cpll_reset_i : out STD_LOGIC;
    gt_txuserrdy_i : out STD_LOGIC;
    O3 : out STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    O2 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gt_reset : in STD_LOGIC;
    ack_flag : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_tx_startup_fsm : entity is "aurora_8b10b_1_tx_startup_fsm";
end aurora_8b10b_1_aurora_8b10b_1_tx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_tx_startup_fsm is
  signal \^o1\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^cpll_reset_i\ : STD_LOGIC;
  signal cplllock_sync : STD_LOGIC;
  signal \^gt_tx_reset_i\ : STD_LOGIC;
  signal \^gt_txuserrdy_i\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal n_0_CPLL_RESET_i_1 : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[3]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[3]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[3]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[3]_i_9\ : STD_LOGIC;
  signal n_0_TXUSERRDY_i_1 : STD_LOGIC;
  signal n_0_gttxreset_i_i_1 : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_1\ : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_3\ : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_4\ : STD_LOGIC;
  signal n_0_init_wait_done_i_1 : STD_LOGIC;
  signal n_0_init_wait_done_reg : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_2\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_4\ : STD_LOGIC;
  signal n_0_mmcm_lock_reclocked_i_2 : STD_LOGIC;
  signal n_0_pll_reset_asserted_i_1 : STD_LOGIC;
  signal n_0_pll_reset_asserted_reg : STD_LOGIC;
  signal n_0_run_phase_alignment_int_i_1 : STD_LOGIC;
  signal n_0_run_phase_alignment_int_reg : STD_LOGIC;
  signal n_0_sync_run_phase_alignment_int_cdc_sync : STD_LOGIC;
  signal \n_0_time_out_2ms_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_2ms_i_2__0\ : STD_LOGIC;
  signal n_0_time_out_2ms_i_3 : STD_LOGIC;
  signal n_0_time_out_2ms_reg : STD_LOGIC;
  signal n_0_time_out_500us_i_1 : STD_LOGIC;
  signal n_0_time_out_500us_i_2 : STD_LOGIC;
  signal n_0_time_out_500us_i_3 : STD_LOGIC;
  signal n_0_time_out_500us_i_4 : STD_LOGIC;
  signal n_0_time_out_500us_reg : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_6\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_7\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_8\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_9\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_time_out_wait_bypass_reg : STD_LOGIC;
  signal \n_0_time_tlock_max_i_1__0\ : STD_LOGIC;
  signal \n_0_time_tlock_max_i_2__0\ : STD_LOGIC;
  signal \n_0_time_tlock_max_i_3__0\ : STD_LOGIC;
  signal \n_0_time_tlock_max_i_4__0\ : STD_LOGIC;
  signal n_0_time_tlock_max_reg : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_1 : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_10\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_11\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_6\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_7\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_8\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_9__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[16]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_4\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_5\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_6\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[0]_i_7\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[12]_i_2\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[12]_i_3\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[12]_i_4\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[12]_i_5\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_2\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_3\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_4\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_5\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[8]_i_2\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[8]_i_3\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[8]_i_4\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[8]_i_5\ : STD_LOGIC;
  signal \n_0_wait_time_cnt_reg[0]_i_3\ : STD_LOGIC;
  signal \n_0_wait_time_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal n_19_sync_mmcm_lock_reclocked_cdc_sync : STD_LOGIC;
  signal n_19_sync_time_out_wait_bypass_cdc_sync : STD_LOGIC;
  signal n_19_sync_tx_fsm_reset_done_int_cdc_sync : STD_LOGIC;
  signal \n_1_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_wait_time_cnt_reg[0]_i_3\ : STD_LOGIC;
  signal \n_1_wait_time_cnt_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_wait_time_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_wait_time_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal n_20_sync_TXRESETDONE_cdc_sync : STD_LOGIC;
  signal n_20_sync_cplllock_cdc_sync : STD_LOGIC;
  signal n_20_sync_mmcm_lock_reclocked_cdc_sync : STD_LOGIC;
  signal n_20_sync_run_phase_alignment_int_cdc_sync : STD_LOGIC;
  signal n_20_sync_tx_fsm_reset_done_int_cdc_sync : STD_LOGIC;
  signal n_21_sync_cplllock_cdc_sync : STD_LOGIC;
  signal \n_2_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_wait_time_cnt_reg[0]_i_3\ : STD_LOGIC;
  signal \n_2_wait_time_cnt_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_wait_time_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_wait_time_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_wait_time_cnt_reg[0]_i_3\ : STD_LOGIC;
  signal \n_3_wait_time_cnt_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_wait_time_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_wait_time_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_wait_time_cnt_reg[0]_i_3\ : STD_LOGIC;
  signal \n_4_wait_time_cnt_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_wait_time_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_wait_time_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_wait_time_cnt_reg[0]_i_3\ : STD_LOGIC;
  signal \n_5_wait_time_cnt_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_wait_time_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_wait_time_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_wait_time_cnt_reg[0]_i_3\ : STD_LOGIC;
  signal \n_6_wait_time_cnt_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_wait_time_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_wait_time_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_wait_time_cnt_reg[0]_i_3\ : STD_LOGIC;
  signal \n_7_wait_time_cnt_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_wait_time_cnt_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_wait_time_cnt_reg[8]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal reset_time_out : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_state13_out : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wait_time_done : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_tx_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of mmcm_lock_reclocked_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of time_out_500us_i_4 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_4__0\ : label is "soft_lutpair38";
begin
  O1 <= \^o1\;
  cpll_reset_i <= \^cpll_reset_i\;
  gt_tx_reset_i <= \^gt_tx_reset_i\;
  gt_txuserrdy_i <= \^gt_txuserrdy_i\;
CPLL_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF00010000"
    )
    port map (
      I0 => n_0_pll_reset_asserted_reg,
      I1 => tx_state(1),
      I2 => tx_state(3),
      I3 => tx_state(2),
      I4 => tx_state(0),
      I5 => \^cpll_reset_i\,
      O => n_0_CPLL_RESET_i_1
    );
CPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_CPLL_RESET_i_1,
      Q => \^cpll_reset_i\,
      R => gt_reset
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FDF5"
    )
    port map (
      I0 => tx_state(0),
      I1 => n_0_time_out_2ms_reg,
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => \n_0_FSM_sequential_tx_state[2]_i_2\,
      I5 => \n_0_FSM_sequential_tx_state[0]_i_2\,
      O => \n_0_FSM_sequential_tx_state[0]_i_1\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAAAAAAAAAA0000"
    )
    port map (
      I0 => tx_state(3),
      I1 => reset_time_out,
      I2 => n_0_time_out_500us_reg,
      I3 => tx_state(0),
      I4 => tx_state(2),
      I5 => tx_state(1),
      O => \n_0_FSM_sequential_tx_state[0]_i_2\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04141414"
    )
    port map (
      I0 => tx_state(3),
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state13_out,
      I4 => tx_state(2),
      O => \n_0_FSM_sequential_tx_state[1]_i_1\
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => reset_time_out,
      I1 => n_0_time_tlock_max_reg,
      I2 => mmcm_lock_reclocked,
      O => tx_state13_out
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555004005050040"
    )
    port map (
      I0 => tx_state(3),
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => n_0_time_out_2ms_reg,
      I4 => tx_state(2),
      I5 => \n_0_FSM_sequential_tx_state[2]_i_2\,
      O => \n_0_FSM_sequential_tx_state[2]_i_1\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
    port map (
      I0 => tx_state(1),
      I1 => mmcm_lock_reclocked,
      I2 => n_0_time_tlock_max_reg,
      I3 => reset_time_out,
      O => \n_0_FSM_sequential_tx_state[2]_i_2\
    );
\FSM_sequential_tx_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(10),
      I3 => wait_time_cnt_reg(9),
      I4 => wait_time_cnt_reg(7),
      I5 => wait_time_cnt_reg(6),
      O => \n_0_FSM_sequential_tx_state[3]_i_10\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(3),
      I3 => wait_time_cnt_reg(0),
      I4 => \n_0_FSM_sequential_tx_state[3]_i_9\,
      I5 => \n_0_FSM_sequential_tx_state[3]_i_10\,
      O => wait_time_done
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      O => \n_0_FSM_sequential_tx_state[3]_i_5\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => reset_time_out,
      I1 => n_0_time_out_500us_reg,
      I2 => tx_state(0),
      O => \n_0_FSM_sequential_tx_state[3]_i_6\
    );
\FSM_sequential_tx_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => wait_time_cnt_reg(8),
      I1 => wait_time_cnt_reg(11),
      I2 => wait_time_cnt_reg(14),
      I3 => wait_time_cnt_reg(15),
      I4 => wait_time_cnt_reg(13),
      I5 => wait_time_cnt_reg(12),
      O => \n_0_FSM_sequential_tx_state[3]_i_9\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => n_21_sync_cplllock_cdc_sync,
      D => \n_0_FSM_sequential_tx_state[0]_i_1\,
      Q => tx_state(0),
      R => gt_reset
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => n_21_sync_cplllock_cdc_sync,
      D => \n_0_FSM_sequential_tx_state[1]_i_1\,
      Q => tx_state(1),
      R => gt_reset
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => n_21_sync_cplllock_cdc_sync,
      D => \n_0_FSM_sequential_tx_state[2]_i_1\,
      Q => tx_state(2),
      R => gt_reset
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => n_21_sync_cplllock_cdc_sync,
      D => n_19_sync_time_out_wait_bypass_cdc_sync,
      Q => tx_state(3),
      R => gt_reset
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
    port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^gt_txuserrdy_i\,
      O => n_0_TXUSERRDY_i_1
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_TXUSERRDY_i_1,
      Q => \^gt_txuserrdy_i\,
      R => gt_reset
    );
flag2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^cpll_reset_i\,
      I1 => ack_flag,
      O => O3
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0010"
    )
    port map (
      I0 => tx_state(1),
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => tx_state(2),
      I4 => \^gt_tx_reset_i\,
      O => n_0_gttxreset_i_i_1
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_gttxreset_i_i_1,
      Q => \^gt_tx_reset_i\,
      R => gt_reset
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      O => p_0_in(0)
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      O => p_0_in(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      O => p_0_in(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(2),
      O => p_0_in(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(3),
      I4 => \init_wait_count_reg__0\(4),
      O => p_0_in(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      I5 => \init_wait_count_reg__0\(4),
      O => p_0_in(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \n_0_init_wait_count[7]_i_4\,
      I2 => \init_wait_count_reg__0\(5),
      O => p_0_in(6)
    );
\init_wait_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => \n_0_init_wait_count[7]_i_3\,
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(6),
      O => \n_0_init_wait_count[7]_i_1\
    );
\init_wait_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(7),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \n_0_init_wait_count[7]_i_4\,
      I3 => \init_wait_count_reg__0\(6),
      O => p_0_in(7)
    );
\init_wait_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(5),
      I3 => \init_wait_count_reg__0\(7),
      I4 => \init_wait_count_reg__0\(0),
      I5 => \init_wait_count_reg__0\(1),
      O => \n_0_init_wait_count[7]_i_3\
    );
\init_wait_count[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      O => \n_0_init_wait_count[7]_i_4\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      CLR => gt_reset,
      D => p_0_in(0),
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      CLR => gt_reset,
      D => p_0_in(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      CLR => gt_reset,
      D => p_0_in(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      CLR => gt_reset,
      D => p_0_in(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      CLR => gt_reset,
      D => p_0_in(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      CLR => gt_reset,
      D => p_0_in(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      CLR => gt_reset,
      D => p_0_in(6),
      Q => \init_wait_count_reg__0\(6)
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      CLR => gt_reset,
      D => p_0_in(7),
      Q => \init_wait_count_reg__0\(7)
    );
init_wait_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => \n_0_init_wait_count[7]_i_3\,
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(6),
      I3 => n_0_init_wait_done_reg,
      O => n_0_init_wait_done_i_1
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      CLR => gt_reset,
      D => n_0_init_wait_done_i_1,
      Q => n_0_init_wait_done_reg
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__0\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \n_0_mmcm_lock_count[9]_i_4\,
      I2 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[9]_i_4\,
      I3 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__0\(7)
    );
\mmcm_lock_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[9]_i_4\,
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__0\(8)
    );
\mmcm_lock_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[9]_i_4\,
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \n_0_mmcm_lock_count[9]_i_2\
    );
\mmcm_lock_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \n_0_mmcm_lock_count[9]_i_4\,
      I4 => \mmcm_lock_count_reg__0\(6),
      I5 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__0\(9)
    );
\mmcm_lock_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \n_0_mmcm_lock_count[9]_i_4\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => n_20_sync_mmcm_lock_reclocked_cdc_sync
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \n_0_mmcm_lock_count[9]_i_4\,
      I3 => \mmcm_lock_count_reg__0\(6),
      O => n_0_mmcm_lock_reclocked_i_2
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_19_sync_mmcm_lock_reclocked_cdc_sync,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF00FF10"
    )
    port map (
      I0 => tx_state(2),
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => n_0_pll_reset_asserted_reg,
      I4 => tx_state(1),
      O => n_0_pll_reset_asserted_i_1
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_pll_reset_asserted_i_1,
      Q => n_0_pll_reset_asserted_reg,
      R => gt_reset
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_20_sync_cplllock_cdc_sync,
      Q => reset_time_out,
      R => gt_reset
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
    port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => n_0_run_phase_alignment_int_reg,
      O => n_0_run_phase_alignment_int_i_1
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_run_phase_alignment_int_i_1,
      Q => n_0_run_phase_alignment_int_reg,
      R => gt_reset
    );
sync_TXRESETDONE_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_1
    port map (
      I1 => n_0_time_out_500us_reg,
      I2 => n_0_time_out_2ms_reg,
      O1 => n_20_sync_TXRESETDONE_cdc_sync,
      O54(1 downto 0) => O54(1 downto 0),
      O55(1 downto 0) => O55(1 downto 0),
      O56(1 downto 0) => O56(1 downto 0),
      O57(1 downto 0) => O57(1 downto 0),
      O58(1 downto 0) => O58(1 downto 0),
      O59(1 downto 0) => O59(1 downto 0),
      cplllock_sync => cplllock_sync,
      init_clk_in => init_clk_in,
      \out\(0) => tx_state(2),
      reset_time_out => reset_time_out,
      s_out_d1_cdc_to_56 => s_out_d1_cdc_to_56,
      s_out_d2_57 => s_out_d2_57,
      s_out_d3_58 => s_out_d3_58,
      s_out_d4_59 => s_out_d4_59,
      s_out_d5_60 => s_out_d5_60,
      s_out_d6_61 => s_out_d6_61,
      s_out_d7_62 => s_out_d7_62,
      txfsm_txresetdone_r => txfsm_txresetdone_r,
      txresetdone_s3 => txresetdone_s3
    );
sync_cplllock_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_2
    port map (
      E(0) => n_21_sync_cplllock_cdc_sync,
      I1 => \n_0_FSM_sequential_tx_state[3]_i_5\,
      I2 => n_0_init_wait_done_reg,
      I3 => n_20_sync_TXRESETDONE_cdc_sync,
      I4 => n_0_time_tlock_max_reg,
      I5 => n_0_pll_reset_asserted_reg,
      O1 => n_20_sync_cplllock_cdc_sync,
      O2 => O2,
      O66(1 downto 0) => O66(1 downto 0),
      O67(1 downto 0) => O67(1 downto 0),
      O68(1 downto 0) => O68(1 downto 0),
      O69(1 downto 0) => O69(1 downto 0),
      O70(1 downto 0) => O70(1 downto 0),
      O71(1 downto 0) => O71(1 downto 0),
      cplllock_sync => cplllock_sync,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      \out\(3 downto 0) => tx_state(3 downto 0),
      reset_time_out => reset_time_out,
      s_out_d1_cdc_to_70 => s_out_d1_cdc_to_70,
      s_out_d2_71 => s_out_d2_71,
      s_out_d3_72 => s_out_d3_72,
      s_out_d4_73 => s_out_d4_73,
      s_out_d5_74 => s_out_d5_74,
      s_out_d6_75 => s_out_d6_75,
      s_out_d7_76 => s_out_d7_76,
      txresetdone_s3 => txresetdone_s3,
      wait_time_done => wait_time_done
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_3
    port map (
      I1 => n_0_mmcm_lock_reclocked_i_2,
      O1 => n_19_sync_mmcm_lock_reclocked_cdc_sync,
      O60(1 downto 0) => O60(1 downto 0),
      O61(1 downto 0) => O61(1 downto 0),
      O62(1 downto 0) => O62(1 downto 0),
      O63(1 downto 0) => O63(1 downto 0),
      O64(1 downto 0) => O64(1 downto 0),
      O65(1 downto 0) => O65(1 downto 0),
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(9 downto 8),
      SR(0) => n_20_sync_mmcm_lock_reclocked_cdc_sync,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      s_out_d1_cdc_to_63 => s_out_d1_cdc_to_63,
      s_out_d2_64 => s_out_d2_64,
      s_out_d3_65 => s_out_d3_65,
      s_out_d4_66 => s_out_d4_66,
      s_out_d5_67 => s_out_d5_67,
      s_out_d6_68 => s_out_d6_68,
      s_out_d7_69 => s_out_d7_69
    );
sync_qplllock_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_4
    port map (
      O72(1 downto 0) => O72(1 downto 0),
      O73(1 downto 0) => O73(1 downto 0),
      O74(1 downto 0) => O74(1 downto 0),
      O75(1 downto 0) => O75(1 downto 0),
      O76(1 downto 0) => O76(1 downto 0),
      O77(1 downto 0) => O77(1 downto 0),
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_77 => s_out_d1_cdc_to_77,
      s_out_d2_78 => s_out_d2_78,
      s_out_d3_79 => s_out_d3_79,
      s_out_d4_80 => s_out_d4_80,
      s_out_d5_81 => s_out_d5_81,
      s_out_d6_82 => s_out_d6_82,
      s_out_d7_83 => s_out_d7_83
    );
sync_run_phase_alignment_int_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_5
    port map (
      I1 => n_0_run_phase_alignment_int_reg,
      O1 => n_0_sync_run_phase_alignment_int_cdc_sync,
      O2 => n_20_sync_run_phase_alignment_int_cdc_sync,
      O36(1 downto 0) => O36(1 downto 0),
      O37(1 downto 0) => O37(1 downto 0),
      O38(1 downto 0) => O38(1 downto 0),
      O39(1 downto 0) => O39(1 downto 0),
      O40(1 downto 0) => O40(1 downto 0),
      O41(1 downto 0) => O41(1 downto 0),
      s_out_d1_cdc_to_35 => s_out_d1_cdc_to_35,
      s_out_d2_36 => s_out_d2_36,
      s_out_d3_37 => s_out_d3_37,
      s_out_d4_38 => s_out_d4_38,
      s_out_d5_39 => s_out_d5_39,
      s_out_d6_40 => s_out_d6_40,
      s_out_d7_41 => s_out_d7_41,
      user_clk => user_clk
    );
sync_time_out_wait_bypass_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_6
    port map (
      D(0) => n_19_sync_time_out_wait_bypass_cdc_sync,
      I1 => n_0_time_out_wait_bypass_reg,
      I2 => \n_0_FSM_sequential_tx_state[3]_i_6\,
      O48(1 downto 0) => O48(1 downto 0),
      O49(1 downto 0) => O49(1 downto 0),
      O50(1 downto 0) => O50(1 downto 0),
      O51(1 downto 0) => O51(1 downto 0),
      O52(1 downto 0) => O52(1 downto 0),
      O53(1 downto 0) => O53(1 downto 0),
      init_clk_in => init_clk_in,
      \out\(2 downto 0) => tx_state(3 downto 1),
      s_out_d1_cdc_to_49 => s_out_d1_cdc_to_49,
      s_out_d2_50 => s_out_d2_50,
      s_out_d3_51 => s_out_d3_51,
      s_out_d4_52 => s_out_d4_52,
      s_out_d5_53 => s_out_d5_53,
      s_out_d6_54 => s_out_d6_54,
      s_out_d7_55 => s_out_d7_55
    );
sync_tx_fsm_reset_done_int_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_7
    port map (
      I1 => n_0_time_out_wait_bypass_reg,
      I2 => \n_0_wait_bypass_count[0]_i_4\,
      I3 => \n_0_wait_bypass_count[0]_i_5\,
      I4 => \n_0_wait_bypass_count[0]_i_6\,
      I5 => n_0_sync_run_phase_alignment_int_cdc_sync,
      I6 => \n_0_wait_bypass_count[0]_i_7\,
      O1 => \^o1\,
      O2 => n_19_sync_tx_fsm_reset_done_int_cdc_sync,
      O3 => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      O42(1 downto 0) => O42(1 downto 0),
      O43(1 downto 0) => O43(1 downto 0),
      O44(1 downto 0) => O44(1 downto 0),
      O45(1 downto 0) => O45(1 downto 0),
      O46(1 downto 0) => O46(1 downto 0),
      O47(1 downto 0) => O47(1 downto 0),
      s_out_d1_cdc_to_42 => s_out_d1_cdc_to_42,
      s_out_d2_43 => s_out_d2_43,
      s_out_d3_44 => s_out_d3_44,
      s_out_d4_45 => s_out_d4_45,
      s_out_d5_46 => s_out_d5_46,
      s_out_d6_47 => s_out_d6_47,
      s_out_d7_48 => s_out_d7_48,
      user_clk => user_clk,
      wait_bypass_count_reg(3 downto 2) => wait_bypass_count_reg(12 downto 11),
      wait_bypass_count_reg(1) => wait_bypass_count_reg(4),
      wait_bypass_count_reg(0) => wait_bypass_count_reg(2)
    );
\time_out_2ms_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAAE"
    )
    port map (
      I0 => n_0_time_out_2ms_reg,
      I1 => \n_0_time_out_2ms_i_2__0\,
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(8),
      I4 => reset_time_out,
      O => \n_0_time_out_2ms_i_1__0\
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => n_0_time_out_2ms_i_3,
      I1 => \n_0_time_out_counter[0]_i_9\,
      I2 => time_out_counter_reg(2),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(13),
      I5 => time_out_counter_reg(6),
      O => \n_0_time_out_2ms_i_2__0\
    );
time_out_2ms_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(0),
      I3 => time_out_counter_reg(1),
      I4 => time_out_counter_reg(15),
      I5 => time_out_counter_reg(14),
      O => n_0_time_out_2ms_i_3
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_0_time_out_2ms_i_1__0\,
      Q => n_0_time_out_2ms_reg,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAEAA"
    )
    port map (
      I0 => n_0_time_out_500us_reg,
      I1 => n_0_time_out_500us_i_2,
      I2 => n_0_time_out_500us_i_3,
      I3 => \n_0_time_tlock_max_i_3__0\,
      I4 => n_0_time_out_500us_i_4,
      I5 => reset_time_out,
      O => n_0_time_out_500us_i_1
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(16),
      I4 => time_out_counter_reg(10),
      I5 => time_out_counter_reg(4),
      O => n_0_time_out_500us_i_2
    );
time_out_500us_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      O => n_0_time_out_500us_i_3
    );
time_out_500us_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(2),
      O => n_0_time_out_500us_i_4
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_time_out_500us_i_1,
      Q => n_0_time_out_500us_reg,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
    port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(15),
      I4 => \n_0_time_out_counter[0]_i_3__0\,
      I5 => \n_0_time_out_counter[0]_i_4__0\,
      O => \n_0_time_out_counter[0]_i_1__0\
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_3__0\
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(2),
      I4 => \n_0_time_out_counter[0]_i_9\,
      O => \n_0_time_out_counter[0]_i_4__0\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_5\
    );
\time_out_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_6\
    );
\time_out_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(1),
      O => \n_0_time_out_counter[0]_i_7\
    );
\time_out_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_8\
    );
\time_out_counter[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
    port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(16),
      I4 => time_out_counter_reg(12),
      I5 => time_out_counter_reg(10),
      O => \n_0_time_out_counter[0]_i_9\
    );
\time_out_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(15),
      O => \n_0_time_out_counter[12]_i_2\
    );
\time_out_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(14),
      O => \n_0_time_out_counter[12]_i_3\
    );
\time_out_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(13),
      O => \n_0_time_out_counter[12]_i_4\
    );
\time_out_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(12),
      O => \n_0_time_out_counter[12]_i_5\
    );
\time_out_counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(17),
      O => \n_0_time_out_counter[16]_i_2\
    );
\time_out_counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(16),
      O => \n_0_time_out_counter[16]_i_3\
    );
\time_out_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(7),
      O => \n_0_time_out_counter[4]_i_2\
    );
\time_out_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(6),
      O => \n_0_time_out_counter[4]_i_3\
    );
\time_out_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[4]_i_4\
    );
\time_out_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(4),
      O => \n_0_time_out_counter[4]_i_5\
    );
\time_out_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(11),
      O => \n_0_time_out_counter[8]_i_2\
    );
\time_out_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(10),
      O => \n_0_time_out_counter[8]_i_3\
    );
\time_out_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(9),
      O => \n_0_time_out_counter[8]_i_4\
    );
\time_out_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(8),
      O => \n_0_time_out_counter[8]_i_5\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_time_out_counter_reg[0]_i_2\,
      CO(2) => \n_1_time_out_counter_reg[0]_i_2\,
      CO(1) => \n_2_time_out_counter_reg[0]_i_2\,
      CO(0) => \n_3_time_out_counter_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_time_out_counter_reg[0]_i_2\,
      O(2) => \n_5_time_out_counter_reg[0]_i_2\,
      O(1) => \n_6_time_out_counter_reg[0]_i_2\,
      O(0) => \n_7_time_out_counter_reg[0]_i_2\,
      S(3) => \n_0_time_out_counter[0]_i_5\,
      S(2) => \n_0_time_out_counter[0]_i_6\,
      S(1) => \n_0_time_out_counter[0]_i_7\,
      S(0) => \n_0_time_out_counter[0]_i_8\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[8]_i_1\,
      CO(3) => \n_0_time_out_counter_reg[12]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[12]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[12]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[12]_i_1\,
      O(2) => \n_5_time_out_counter_reg[12]_i_1\,
      O(1) => \n_6_time_out_counter_reg[12]_i_1\,
      O(0) => \n_7_time_out_counter_reg[12]_i_1\,
      S(3) => \n_0_time_out_counter[12]_i_2\,
      S(2) => \n_0_time_out_counter[12]_i_3\,
      S(1) => \n_0_time_out_counter[12]_i_4\,
      S(0) => \n_0_time_out_counter[12]_i_5\
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[16]_i_1\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[12]_i_1\,
      CO(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_time_out_counter_reg[16]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_time_out_counter_reg[16]_i_1\,
      O(0) => \n_7_time_out_counter_reg[16]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_time_out_counter[16]_i_2\,
      S(0) => \n_0_time_out_counter[16]_i_3\
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[16]_i_1\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[0]_i_2\,
      CO(3) => \n_0_time_out_counter_reg[4]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[4]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[4]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[4]_i_1\,
      O(2) => \n_5_time_out_counter_reg[4]_i_1\,
      O(1) => \n_6_time_out_counter_reg[4]_i_1\,
      O(0) => \n_7_time_out_counter_reg[4]_i_1\,
      S(3) => \n_0_time_out_counter[4]_i_2\,
      S(2) => \n_0_time_out_counter[4]_i_3\,
      S(1) => \n_0_time_out_counter[4]_i_4\,
      S(0) => \n_0_time_out_counter[4]_i_5\
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[4]_i_1\,
      CO(3) => \n_0_time_out_counter_reg[8]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[8]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[8]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[8]_i_1\,
      O(2) => \n_5_time_out_counter_reg[8]_i_1\,
      O(1) => \n_6_time_out_counter_reg[8]_i_1\,
      O(0) => \n_7_time_out_counter_reg[8]_i_1\,
      S(3) => \n_0_time_out_counter[8]_i_2\,
      S(2) => \n_0_time_out_counter[8]_i_3\,
      S(1) => \n_0_time_out_counter[8]_i_4\,
      S(0) => \n_0_time_out_counter[8]_i_5\
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => '1',
      D => n_19_sync_tx_fsm_reset_done_int_cdc_sync,
      Q => n_0_time_out_wait_bypass_reg,
      R => '0'
    );
\time_tlock_max_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEAAA"
    )
    port map (
      I0 => n_0_time_tlock_max_reg,
      I1 => \n_0_time_tlock_max_i_2__0\,
      I2 => \n_0_time_tlock_max_i_3__0\,
      I3 => time_out_counter_reg(2),
      I4 => time_out_counter_reg(17),
      I5 => reset_time_out,
      O => \n_0_time_tlock_max_i_1__0\
    );
\time_tlock_max_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(6),
      I2 => \n_0_time_tlock_max_i_4__0\,
      O => \n_0_time_tlock_max_i_2__0\
    );
\time_tlock_max_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(9),
      I4 => \n_0_time_out_counter[0]_i_3__0\,
      O => \n_0_time_tlock_max_i_3__0\
    );
\time_tlock_max_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
    port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(16),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(10),
      O => \n_0_time_tlock_max_i_4__0\
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => \n_0_time_tlock_max_i_1__0\,
      Q => n_0_time_tlock_max_reg,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
    port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^o1\,
      O => n_0_tx_fsm_reset_done_int_i_1
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_tx_fsm_reset_done_int_i_1,
      Q => \^o1\,
      R => gt_reset
    );
\wait_bypass_count[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      O => \n_0_wait_bypass_count[0]_i_10\
    );
\wait_bypass_count[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_bypass_count_reg(0),
      O => \n_0_wait_bypass_count[0]_i_11\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => wait_bypass_count_reg(6),
      I1 => wait_bypass_count_reg(13),
      I2 => wait_bypass_count_reg(14),
      I3 => wait_bypass_count_reg(7),
      I4 => wait_bypass_count_reg(9),
      I5 => wait_bypass_count_reg(3),
      O => \n_0_wait_bypass_count[0]_i_4\
    );
\wait_bypass_count[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      I1 => wait_bypass_count_reg(0),
      I2 => wait_bypass_count_reg(5),
      I3 => wait_bypass_count_reg(16),
      O => \n_0_wait_bypass_count[0]_i_5\
    );
\wait_bypass_count[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(15),
      I2 => wait_bypass_count_reg(10),
      O => \n_0_wait_bypass_count[0]_i_6\
    );
\wait_bypass_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(2),
      I2 => wait_bypass_count_reg(11),
      I3 => wait_bypass_count_reg(12),
      O => \n_0_wait_bypass_count[0]_i_7\
    );
\wait_bypass_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(3),
      O => \n_0_wait_bypass_count[0]_i_8\
    );
\wait_bypass_count[0]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(2),
      O => \n_0_wait_bypass_count[0]_i_9__0\
    );
\wait_bypass_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(15),
      O => \n_0_wait_bypass_count[12]_i_2\
    );
\wait_bypass_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(14),
      O => \n_0_wait_bypass_count[12]_i_3\
    );
\wait_bypass_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(13),
      O => \n_0_wait_bypass_count[12]_i_4\
    );
\wait_bypass_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      O => \n_0_wait_bypass_count[12]_i_5\
    );
\wait_bypass_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(16),
      O => \n_0_wait_bypass_count[16]_i_2\
    );
\wait_bypass_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(7),
      O => \n_0_wait_bypass_count[4]_i_2\
    );
\wait_bypass_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(6),
      O => \n_0_wait_bypass_count[4]_i_3\
    );
\wait_bypass_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(5),
      O => \n_0_wait_bypass_count[4]_i_4\
    );
\wait_bypass_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      O => \n_0_wait_bypass_count[4]_i_5\
    );
\wait_bypass_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(11),
      O => \n_0_wait_bypass_count[8]_i_2\
    );
\wait_bypass_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(10),
      O => \n_0_wait_bypass_count[8]_i_3\
    );
\wait_bypass_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      O => \n_0_wait_bypass_count[8]_i_4\
    );
\wait_bypass_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(8),
      O => \n_0_wait_bypass_count[8]_i_5\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(0),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_wait_bypass_count_reg[0]_i_3\,
      CO(2) => \n_1_wait_bypass_count_reg[0]_i_3\,
      CO(1) => \n_2_wait_bypass_count_reg[0]_i_3\,
      CO(0) => \n_3_wait_bypass_count_reg[0]_i_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_wait_bypass_count_reg[0]_i_3\,
      O(2) => \n_5_wait_bypass_count_reg[0]_i_3\,
      O(1) => \n_6_wait_bypass_count_reg[0]_i_3\,
      O(0) => \n_7_wait_bypass_count_reg[0]_i_3\,
      S(3) => \n_0_wait_bypass_count[0]_i_8\,
      S(2) => \n_0_wait_bypass_count[0]_i_9__0\,
      S(1) => \n_0_wait_bypass_count[0]_i_10\,
      S(0) => \n_0_wait_bypass_count[0]_i_11\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(10),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(11),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(12),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[8]_i_1\,
      CO(3) => \n_0_wait_bypass_count_reg[12]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[12]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[12]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[12]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[12]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[12]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[12]_i_1\,
      S(3) => \n_0_wait_bypass_count[12]_i_2\,
      S(2) => \n_0_wait_bypass_count[12]_i_3\,
      S(1) => \n_0_wait_bypass_count[12]_i_4\,
      S(0) => \n_0_wait_bypass_count[12]_i_5\
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(13),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(14),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(15),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[16]_i_1\,
      Q => wait_bypass_count_reg(16),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[12]_i_1\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_wait_bypass_count_reg[16]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_wait_bypass_count[16]_i_2\
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(1),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(2),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(3),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(4),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[0]_i_3\,
      CO(3) => \n_0_wait_bypass_count_reg[4]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[4]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[4]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[4]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[4]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[4]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[4]_i_1\,
      S(3) => \n_0_wait_bypass_count[4]_i_2\,
      S(2) => \n_0_wait_bypass_count[4]_i_3\,
      S(1) => \n_0_wait_bypass_count[4]_i_4\,
      S(0) => \n_0_wait_bypass_count[4]_i_5\
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(5),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(6),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(7),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(8),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[4]_i_1\,
      CO(3) => \n_0_wait_bypass_count_reg[8]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[8]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[8]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[8]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[8]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[8]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[8]_i_1\,
      S(3) => \n_0_wait_bypass_count[8]_i_2\,
      S(2) => \n_0_wait_bypass_count[8]_i_3\,
      S(1) => \n_0_wait_bypass_count[8]_i_4\,
      S(0) => \n_0_wait_bypass_count[8]_i_5\
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_sync_tx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(9),
      R => n_20_sync_run_phase_alignment_int_cdc_sync
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
    port map (
      I0 => tx_state(0),
      I1 => tx_state(2),
      I2 => tx_state(1),
      I3 => tx_state(3),
      O => clear
    );
\wait_time_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_done,
      O => sel
    );
\wait_time_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(3),
      O => \n_0_wait_time_cnt[0]_i_4\
    );
\wait_time_cnt[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(2),
      O => \n_0_wait_time_cnt[0]_i_5\
    );
\wait_time_cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(1),
      O => \n_0_wait_time_cnt[0]_i_6\
    );
\wait_time_cnt[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(0),
      O => \n_0_wait_time_cnt[0]_i_7\
    );
\wait_time_cnt[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(15),
      O => \n_0_wait_time_cnt[12]_i_2\
    );
\wait_time_cnt[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(14),
      O => \n_0_wait_time_cnt[12]_i_3\
    );
\wait_time_cnt[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(13),
      O => \n_0_wait_time_cnt[12]_i_4\
    );
\wait_time_cnt[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(12),
      O => \n_0_wait_time_cnt[12]_i_5\
    );
\wait_time_cnt[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(7),
      O => \n_0_wait_time_cnt[4]_i_2\
    );
\wait_time_cnt[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(6),
      O => \n_0_wait_time_cnt[4]_i_3\
    );
\wait_time_cnt[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(5),
      O => \n_0_wait_time_cnt[4]_i_4\
    );
\wait_time_cnt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(4),
      O => \n_0_wait_time_cnt[4]_i_5\
    );
\wait_time_cnt[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(11),
      O => \n_0_wait_time_cnt[8]_i_2\
    );
\wait_time_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(10),
      O => \n_0_wait_time_cnt[8]_i_3\
    );
\wait_time_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(9),
      O => \n_0_wait_time_cnt[8]_i_4\
    );
\wait_time_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_time_cnt_reg(8),
      O => \n_0_wait_time_cnt[8]_i_5\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_7_wait_time_cnt_reg[0]_i_3\,
      Q => wait_time_cnt_reg(0),
      R => clear
    );
\wait_time_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_wait_time_cnt_reg[0]_i_3\,
      CO(2) => \n_1_wait_time_cnt_reg[0]_i_3\,
      CO(1) => \n_2_wait_time_cnt_reg[0]_i_3\,
      CO(0) => \n_3_wait_time_cnt_reg[0]_i_3\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_wait_time_cnt_reg[0]_i_3\,
      O(2) => \n_5_wait_time_cnt_reg[0]_i_3\,
      O(1) => \n_6_wait_time_cnt_reg[0]_i_3\,
      O(0) => \n_7_wait_time_cnt_reg[0]_i_3\,
      S(3) => \n_0_wait_time_cnt[0]_i_4\,
      S(2) => \n_0_wait_time_cnt[0]_i_5\,
      S(1) => \n_0_wait_time_cnt[0]_i_6\,
      S(0) => \n_0_wait_time_cnt[0]_i_7\
    );
\wait_time_cnt_reg[10]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_5_wait_time_cnt_reg[8]_i_1\,
      Q => wait_time_cnt_reg(10),
      S => clear
    );
\wait_time_cnt_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_4_wait_time_cnt_reg[8]_i_1\,
      Q => wait_time_cnt_reg(11),
      R => clear
    );
\wait_time_cnt_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_7_wait_time_cnt_reg[12]_i_1\,
      Q => wait_time_cnt_reg(12),
      R => clear
    );
\wait_time_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_time_cnt_reg[8]_i_1\,
      CO(3) => \NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_wait_time_cnt_reg[12]_i_1\,
      CO(1) => \n_2_wait_time_cnt_reg[12]_i_1\,
      CO(0) => \n_3_wait_time_cnt_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_wait_time_cnt_reg[12]_i_1\,
      O(2) => \n_5_wait_time_cnt_reg[12]_i_1\,
      O(1) => \n_6_wait_time_cnt_reg[12]_i_1\,
      O(0) => \n_7_wait_time_cnt_reg[12]_i_1\,
      S(3) => \n_0_wait_time_cnt[12]_i_2\,
      S(2) => \n_0_wait_time_cnt[12]_i_3\,
      S(1) => \n_0_wait_time_cnt[12]_i_4\,
      S(0) => \n_0_wait_time_cnt[12]_i_5\
    );
\wait_time_cnt_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_6_wait_time_cnt_reg[12]_i_1\,
      Q => wait_time_cnt_reg(13),
      R => clear
    );
\wait_time_cnt_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_5_wait_time_cnt_reg[12]_i_1\,
      Q => wait_time_cnt_reg(14),
      R => clear
    );
\wait_time_cnt_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_4_wait_time_cnt_reg[12]_i_1\,
      Q => wait_time_cnt_reg(15),
      R => clear
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_6_wait_time_cnt_reg[0]_i_3\,
      Q => wait_time_cnt_reg(1),
      S => clear
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_5_wait_time_cnt_reg[0]_i_3\,
      Q => wait_time_cnt_reg(2),
      R => clear
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_4_wait_time_cnt_reg[0]_i_3\,
      Q => wait_time_cnt_reg(3),
      R => clear
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_7_wait_time_cnt_reg[4]_i_1\,
      Q => wait_time_cnt_reg(4),
      R => clear
    );
\wait_time_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_time_cnt_reg[0]_i_3\,
      CO(3) => \n_0_wait_time_cnt_reg[4]_i_1\,
      CO(2) => \n_1_wait_time_cnt_reg[4]_i_1\,
      CO(1) => \n_2_wait_time_cnt_reg[4]_i_1\,
      CO(0) => \n_3_wait_time_cnt_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_wait_time_cnt_reg[4]_i_1\,
      O(2) => \n_5_wait_time_cnt_reg[4]_i_1\,
      O(1) => \n_6_wait_time_cnt_reg[4]_i_1\,
      O(0) => \n_7_wait_time_cnt_reg[4]_i_1\,
      S(3) => \n_0_wait_time_cnt[4]_i_2\,
      S(2) => \n_0_wait_time_cnt[4]_i_3\,
      S(1) => \n_0_wait_time_cnt[4]_i_4\,
      S(0) => \n_0_wait_time_cnt[4]_i_5\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_6_wait_time_cnt_reg[4]_i_1\,
      Q => wait_time_cnt_reg(5),
      S => clear
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_5_wait_time_cnt_reg[4]_i_1\,
      Q => wait_time_cnt_reg(6),
      S => clear
    );
\wait_time_cnt_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_4_wait_time_cnt_reg[4]_i_1\,
      Q => wait_time_cnt_reg(7),
      S => clear
    );
\wait_time_cnt_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_7_wait_time_cnt_reg[8]_i_1\,
      Q => wait_time_cnt_reg(8),
      R => clear
    );
\wait_time_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_time_cnt_reg[4]_i_1\,
      CO(3) => \n_0_wait_time_cnt_reg[8]_i_1\,
      CO(2) => \n_1_wait_time_cnt_reg[8]_i_1\,
      CO(1) => \n_2_wait_time_cnt_reg[8]_i_1\,
      CO(0) => \n_3_wait_time_cnt_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_wait_time_cnt_reg[8]_i_1\,
      O(2) => \n_5_wait_time_cnt_reg[8]_i_1\,
      O(1) => \n_6_wait_time_cnt_reg[8]_i_1\,
      O(0) => \n_7_wait_time_cnt_reg[8]_i_1\,
      S(3) => \n_0_wait_time_cnt[8]_i_2\,
      S(2) => \n_0_wait_time_cnt[8]_i_3\,
      S(1) => \n_0_wait_time_cnt[8]_i_4\,
      S(0) => \n_0_wait_time_cnt[8]_i_5\
    );
\wait_time_cnt_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => sel,
      D => \n_6_wait_time_cnt_reg[8]_i_1\,
      Q => wait_time_cnt_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_AURORA_LANE is
  port (
    lane_up : out STD_LOGIC;
    s_out_d1_cdc_to_21 : out STD_LOGIC;
    s_out_d2_22 : out STD_LOGIC;
    s_out_d3_23 : out STD_LOGIC;
    s_out_d4_24 : out STD_LOGIC;
    s_out_d5_25 : out STD_LOGIC;
    s_out_d6_26 : out STD_LOGIC;
    s_out_d7_27 : out STD_LOGIC;
    O24 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O25 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O26 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O27 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O28 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O29 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    link_reset_out : out STD_LOGIC;
    ena_comma_align_i : out STD_LOGIC;
    comma_over_two_cycles_r : out STD_LOGIC;
    tx_reset_i : out STD_LOGIC;
    TXCHARISK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_ecp_i : out STD_LOGIC;
    bucket_full_r : out STD_LOGIC;
    GOT_V : out STD_LOGIC;
    HARD_ERR : out STD_LOGIC;
    RX_PAD : out STD_LOGIC;
    rx_polarity_i : out STD_LOGIC;
    O1 : out STD_LOGIC;
    rx_pe_data_v_i : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    FRAME_ERR0 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    TXDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O6 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    GEN_PAD : in STD_LOGIC;
    TX_PE_DATA_V : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    GEN_ECP : in STD_LOGIC;
    GEN_SCP : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    hard_err_flop_r0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC;
    START_RX : in STD_LOGIC;
    I4 : in STD_LOGIC;
    storage_v_r : in STD_LOGIC;
    I5 : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    I6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I10 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I11 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_AURORA_LANE : entity is "aurora_8b10b_1_AURORA_LANE";
end aurora_8b10b_1_aurora_8b10b_1_AURORA_LANE;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_AURORA_LANE is
  signal \^o1\ : STD_LOGIC;
  signal RX_CC : STD_LOGIC;
  signal RX_NEG : STD_LOGIC;
  signal ack_r : STD_LOGIC;
  signal counter3_r0 : STD_LOGIC;
  signal counter4_r0 : STD_LOGIC;
  signal first_v_received_r : STD_LOGIC;
  signal gen_k_i : STD_LOGIC;
  signal gen_sp_data_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gen_spa_data_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal n_14_sym_dec_i : STD_LOGIC;
  signal n_2_sym_gen_i : STD_LOGIC;
  signal n_7_lane_init_sm_i : STD_LOGIC;
  signal n_9_lane_init_sm_i : STD_LOGIC;
  signal polarity_r : STD_LOGIC;
  signal ready_r : STD_LOGIC;
  signal ready_r0 : STD_LOGIC;
  signal send_sp_c : STD_LOGIC;
begin
  O1 <= \^o1\;
aurora_8b10b_1_hotplug_i: entity work.aurora_8b10b_1_aurora_8b10b_1_hotplug
    port map (
      D(0) => RX_CC,
      O24(1 downto 0) => O24(1 downto 0),
      O25(1 downto 0) => O25(1 downto 0),
      O26(1 downto 0) => O26(1 downto 0),
      O27(1 downto 0) => O27(1 downto 0),
      O28(1 downto 0) => O28(1 downto 0),
      O29(1 downto 0) => O29(1 downto 0),
      SR(0) => SR(0),
      init_clk_in => init_clk_in,
      link_reset_out => link_reset_out,
      s_out_d1_cdc_to_21 => s_out_d1_cdc_to_21,
      s_out_d2_22 => s_out_d2_22,
      s_out_d3_23 => s_out_d3_23,
      s_out_d4_24 => s_out_d4_24,
      s_out_d5_25 => s_out_d5_25,
      s_out_d6_26 => s_out_d6_26,
      s_out_d7_27 => s_out_d7_27,
      user_clk => user_clk
    );
err_detect_i: entity work.aurora_8b10b_1_aurora_8b10b_1_ERR_DETECT
    port map (
      HARD_ERR => HARD_ERR,
      I1(0) => SR(0),
      I11(1 downto 0) => I11(1 downto 0),
      O6 => O6,
      SR(0) => n_7_lane_init_sm_i,
      bucket_full_r => bucket_full_r,
      hard_err_flop_r0 => hard_err_flop_r0,
      ready_r0 => ready_r0,
      user_clk => user_clk
    );
lane_init_sm_i: entity work.aurora_8b10b_1_aurora_8b10b_1_LANE_INIT_SM
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1 => n_2_sym_gen_i,
      I2 => \^o1\,
      I3 => I3,
      I4 => n_14_sym_dec_i,
      I5 => I5,
      O1 => ena_comma_align_i,
      O2 => tx_reset_i,
      O3(0) => n_7_lane_init_sm_i,
      O4 => n_9_lane_init_sm_i,
      O5(1) => gen_sp_data_i(0),
      O5(0) => send_sp_c,
      RX_NEG => RX_NEG,
      SR(0) => SR(0),
      ack_r => ack_r,
      comma_over_two_cycles_r => comma_over_two_cycles_r,
      counter3_r0 => counter3_r0,
      counter4_r0 => counter4_r0,
      first_v_received_r => first_v_received_r,
      gen_k_i => gen_k_i,
      gen_spa_data_i(0) => gen_spa_data_i(0),
      lane_up => lane_up,
      polarity_r => polarity_r,
      ready_r => ready_r,
      ready_r0 => ready_r0,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      user_clk => user_clk
    );
sym_dec_i: entity work.aurora_8b10b_1_aurora_8b10b_1_SYM_DEC
    port map (
      D(0) => RX_CC,
      FRAME_ERR0 => FRAME_ERR0,
      GOT_V => GOT_V,
      I1 => I1,
      I10(7 downto 0) => I10(7 downto 0),
      I2 => I2,
      I3 => n_9_lane_init_sm_i,
      I4 => I4,
      I9(7 downto 0) => I9(7 downto 0),
      O1 => rx_ecp_i,
      O2 => \^o1\,
      O3 => O2,
      O4 => O3,
      O5 => O4,
      O6 => n_14_sym_dec_i,
      O7(15 downto 0) => O5(15 downto 0),
      RX_NEG => RX_NEG,
      RX_PAD => RX_PAD,
      SR(0) => SR(0),
      START_RX => START_RX,
      ack_r => ack_r,
      counter3_r0 => counter3_r0,
      counter4_r0 => counter4_r0,
      first_v_received_r => first_v_received_r,
      polarity_r => polarity_r,
      ready_r => ready_r,
      rx_pe_data_v_i => rx_pe_data_v_i,
      storage_v_r => storage_v_r,
      user_clk => user_clk
    );
sym_gen_i: entity work.aurora_8b10b_1_aurora_8b10b_1_SYM_GEN
    port map (
      D(1) => gen_sp_data_i(0),
      D(0) => send_sp_c,
      GEN_ECP => GEN_ECP,
      GEN_PAD => GEN_PAD,
      GEN_SCP => GEN_SCP,
      I6(1 downto 0) => I6(1 downto 0),
      I7(1 downto 0) => I7(1 downto 0),
      I8(1 downto 0) => I8(1 downto 0),
      O1 => n_2_sym_gen_i,
      Q(15 downto 0) => Q(15 downto 0),
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      TX_PE_DATA_V => TX_PE_DATA_V,
      ack_r => ack_r,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_k_i => gen_k_i,
      gen_spa_data_i(0) => gen_spa_data_i(0),
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_GT_WRAPPER is
  port (
    s_out_d1_cdc_to_28 : out STD_LOGIC;
    s_out_d2_29 : out STD_LOGIC;
    s_out_d3_30 : out STD_LOGIC;
    s_out_d4_31 : out STD_LOGIC;
    s_out_d5_32 : out STD_LOGIC;
    s_out_d6_33 : out STD_LOGIC;
    s_out_d7_34 : out STD_LOGIC;
    O30 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O31 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O32 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O33 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O34 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O35 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_35 : out STD_LOGIC;
    s_out_d2_36 : out STD_LOGIC;
    s_out_d3_37 : out STD_LOGIC;
    s_out_d4_38 : out STD_LOGIC;
    s_out_d5_39 : out STD_LOGIC;
    s_out_d6_40 : out STD_LOGIC;
    s_out_d7_41 : out STD_LOGIC;
    O36 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O37 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O38 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O39 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O40 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O41 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    s_out_d1_cdc_to_42 : out STD_LOGIC;
    s_out_d2_43 : out STD_LOGIC;
    s_out_d3_44 : out STD_LOGIC;
    s_out_d4_45 : out STD_LOGIC;
    s_out_d5_46 : out STD_LOGIC;
    s_out_d6_47 : out STD_LOGIC;
    s_out_d7_48 : out STD_LOGIC;
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O44 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O45 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O46 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O47 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_49 : out STD_LOGIC;
    s_out_d2_50 : out STD_LOGIC;
    s_out_d3_51 : out STD_LOGIC;
    s_out_d4_52 : out STD_LOGIC;
    s_out_d5_53 : out STD_LOGIC;
    s_out_d6_54 : out STD_LOGIC;
    s_out_d7_55 : out STD_LOGIC;
    O48 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O49 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O50 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O51 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O52 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O53 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_56 : out STD_LOGIC;
    s_out_d2_57 : out STD_LOGIC;
    s_out_d3_58 : out STD_LOGIC;
    s_out_d4_59 : out STD_LOGIC;
    s_out_d5_60 : out STD_LOGIC;
    s_out_d6_61 : out STD_LOGIC;
    s_out_d7_62 : out STD_LOGIC;
    O54 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O55 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O56 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O57 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O58 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O59 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_63 : out STD_LOGIC;
    s_out_d2_64 : out STD_LOGIC;
    s_out_d3_65 : out STD_LOGIC;
    s_out_d4_66 : out STD_LOGIC;
    s_out_d5_67 : out STD_LOGIC;
    s_out_d6_68 : out STD_LOGIC;
    s_out_d7_69 : out STD_LOGIC;
    O60 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O61 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O62 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O63 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O64 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O65 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC;
    s_out_d1_cdc_to_70 : out STD_LOGIC;
    s_out_d2_71 : out STD_LOGIC;
    s_out_d3_72 : out STD_LOGIC;
    s_out_d4_73 : out STD_LOGIC;
    s_out_d5_74 : out STD_LOGIC;
    s_out_d6_75 : out STD_LOGIC;
    s_out_d7_76 : out STD_LOGIC;
    O66 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O67 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O68 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O69 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O70 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O71 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_77 : out STD_LOGIC;
    s_out_d2_78 : out STD_LOGIC;
    s_out_d3_79 : out STD_LOGIC;
    s_out_d4_80 : out STD_LOGIC;
    s_out_d5_81 : out STD_LOGIC;
    s_out_d6_82 : out STD_LOGIC;
    s_out_d7_83 : out STD_LOGIC;
    O72 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O73 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O74 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O75 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O76 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O77 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_84 : out STD_LOGIC;
    s_out_d2_85 : out STD_LOGIC;
    s_out_d3_86 : out STD_LOGIC;
    s_out_d4_87 : out STD_LOGIC;
    s_out_d5_88 : out STD_LOGIC;
    s_out_d6_89 : out STD_LOGIC;
    s_out_d7_90 : out STD_LOGIC;
    O78 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O79 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O80 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O81 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O82 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O83 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_91 : out STD_LOGIC;
    s_out_d2_92 : out STD_LOGIC;
    s_out_d3_93 : out STD_LOGIC;
    s_out_d4_94 : out STD_LOGIC;
    s_out_d5_95 : out STD_LOGIC;
    s_out_d6_96 : out STD_LOGIC;
    s_out_d7_97 : out STD_LOGIC;
    O84 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O85 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O86 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O87 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O88 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O89 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_98 : out STD_LOGIC;
    s_out_d2_99 : out STD_LOGIC;
    s_out_d3_100 : out STD_LOGIC;
    s_out_d4_101 : out STD_LOGIC;
    s_out_d5_102 : out STD_LOGIC;
    s_out_d6_103 : out STD_LOGIC;
    s_out_d7_104 : out STD_LOGIC;
    O90 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O91 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O92 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O93 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O94 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O95 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_105 : out STD_LOGIC;
    s_out_d2_106 : out STD_LOGIC;
    s_out_d3_107 : out STD_LOGIC;
    s_out_d4_108 : out STD_LOGIC;
    s_out_d5_109 : out STD_LOGIC;
    s_out_d6_110 : out STD_LOGIC;
    s_out_d7_111 : out STD_LOGIC;
    O96 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O97 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O98 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O99 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O100 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O101 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_112 : out STD_LOGIC;
    s_out_d2_113 : out STD_LOGIC;
    s_out_d3_114 : out STD_LOGIC;
    s_out_d4_115 : out STD_LOGIC;
    s_out_d5_116 : out STD_LOGIC;
    s_out_d6_117 : out STD_LOGIC;
    s_out_d7_118 : out STD_LOGIC;
    O102 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O103 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O104 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O105 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O106 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O107 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_119 : out STD_LOGIC;
    s_out_d2_120 : out STD_LOGIC;
    s_out_d3_121 : out STD_LOGIC;
    s_out_d4_122 : out STD_LOGIC;
    s_out_d5_123 : out STD_LOGIC;
    s_out_d6_124 : out STD_LOGIC;
    s_out_d7_125 : out STD_LOGIC;
    O108 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O109 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O110 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O111 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O112 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O113 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_126 : out STD_LOGIC;
    s_out_d2_127 : out STD_LOGIC;
    s_out_d3_128 : out STD_LOGIC;
    s_out_d4_129 : out STD_LOGIC;
    s_out_d5_130 : out STD_LOGIC;
    s_out_d6_131 : out STD_LOGIC;
    s_out_d7_132 : out STD_LOGIC;
    O114 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O115 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O116 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O117 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O118 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O119 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_133 : out STD_LOGIC;
    s_out_d2_134 : out STD_LOGIC;
    s_out_d3_135 : out STD_LOGIC;
    s_out_d4_136 : out STD_LOGIC;
    s_out_d5_137 : out STD_LOGIC;
    s_out_d6_138 : out STD_LOGIC;
    s_out_d7_139 : out STD_LOGIC;
    O120 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O121 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O122 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O123 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O124 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O125 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_resetdone_out : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    I11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC;
    hard_err_flop_r0 : out STD_LOGIC;
    I9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I10 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gtrxreset_i_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad6_in : in STD_LOGIC;
    gt_qpllrefclk_quad6_in : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    power_down : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    link_reset_comb_r : in STD_LOGIC;
    gt_reset : in STD_LOGIC;
    I1 : in STD_LOGIC;
    tx_reset_i : in STD_LOGIC;
    comma_over_two_cycles_r : in STD_LOGIC;
    bucket_full_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_GT_WRAPPER : entity is "aurora_8b10b_1_GT_WRAPPER";
end aurora_8b10b_1_aurora_8b10b_1_GT_WRAPPER;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_GT_WRAPPER is
  signal \^o2\ : STD_LOGIC;
  signal cpll_reset_i : STD_LOGIC;
  signal \gt0_aurora_8b10b_1_i/ack_flag\ : STD_LOGIC;
  signal gt_rx_reset_i : STD_LOGIC;
  signal gt_rxdfelfhold_i : STD_LOGIC;
  signal gt_rxuserrdy_i : STD_LOGIC;
  signal gt_tx_reset_i : STD_LOGIC;
  signal gt_txuserrdy_i : STD_LOGIC;
  signal gtrxreset_i : STD_LOGIC;
  signal gtrxreset_pulse : STD_LOGIC;
  signal gtrxreset_r2 : STD_LOGIC;
  signal gtrxreset_r3 : STD_LOGIC;
  signal link_reset_r2 : STD_LOGIC;
  signal n_0_gt0_rxresetdone_r3_reg_srl3 : STD_LOGIC;
  signal n_0_gt0_txresetdone_r3_reg_srl3 : STD_LOGIC;
  signal n_0_gtrxreset_cdc_sync : STD_LOGIC;
  signal n_0_gtrxreset_pulse_i_1 : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[16]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[16]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[16]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[16]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[20]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[20]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[20]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[20]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[24]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[24]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[24]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[24]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[28]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[28]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[28]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[28]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_10\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_11\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_7\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_8\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[31]_i_9\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[16]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[20]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[24]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[28]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_1 : STD_LOGIC;
  signal n_0_rx_cdrlocked_reg : STD_LOGIC;
  signal n_0_rxfsm_soft_reset_r_i_1 : STD_LOGIC;
  signal n_137_gt_txresetfsm_i : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[16]_i_2\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[20]_i_2\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[24]_i_2\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[28]_i_2\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[16]_i_2\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[20]_i_2\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[24]_i_2\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[28]_i_2\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[31]_i_3\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[16]_i_2\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[20]_i_2\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[24]_i_2\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[28]_i_2\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[31]_i_3\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[16]_i_2\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[20]_i_2\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[24]_i_2\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[28]_i_2\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal n_5_aurora_8b10b_1_multi_gt_i : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[16]_i_2\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[20]_i_2\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[24]_i_2\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[28]_i_2\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[31]_i_3\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[16]_i_2\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[20]_i_2\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[24]_i_2\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[28]_i_2\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[31]_i_3\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal n_7_aurora_8b10b_1_multi_gt_i : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[16]_i_2\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[20]_i_2\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[24]_i_2\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[28]_i_2\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[31]_i_3\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal rx_cdrlock_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_cdrlock_counter_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rx_resetdone_out\ : STD_LOGIC;
  signal rxfsm_rxresetdone_r : STD_LOGIC;
  signal rxfsm_rxresetdone_r2 : STD_LOGIC;
  signal rxfsm_soft_reset_r : STD_LOGIC;
  signal txfsm_txresetdone_r : STD_LOGIC;
  signal \NLW_rx_cdrlock_counter_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_cdrlock_counter_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_name : string;
  attribute srl_name of gt0_rxresetdone_r3_reg_srl3 : label is "\inst/gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 ";
  attribute srl_name of gt0_txresetdone_r3_reg_srl3 : label is "\inst/gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[10]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[11]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[12]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[13]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[14]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[15]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[16]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[17]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[18]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[19]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[20]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[21]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[22]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[23]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[24]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[25]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[26]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[27]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[28]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[29]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[30]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[31]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[6]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[7]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[8]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rx_cdrlock_counter[9]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of rx_cdrlocked_i_1 : label is "soft_lutpair46";
begin
  O2 <= \^o2\;
  rx_resetdone_out <= \^rx_resetdone_out\;
aurora_8b10b_1_multi_gt_i: entity work.aurora_8b10b_1_aurora_8b10b_1_multi_gt
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1 => n_137_gt_txresetfsm_i,
      I10(7 downto 0) => I10(7 downto 0),
      I11(1 downto 0) => I11(1 downto 0),
      I2 => I1,
      I9(7 downto 0) => I9(7 downto 0),
      O1 => n_5_aurora_8b10b_1_multi_gt_i,
      O2 => \^o2\,
      O3 => n_7_aurora_8b10b_1_multi_gt_i,
      O4 => O4,
      O5 => O5,
      O6 => O6,
      O7 => O7,
      SR(0) => gt_rx_reset_i,
      TXCHARISK(1 downto 0) => TXCHARISK(1 downto 0),
      TXDATA(15 downto 0) => TXDATA(15 downto 0),
      ack_flag => \gt0_aurora_8b10b_1_i/ack_flag\,
      bucket_full_r => bucket_full_r,
      comma_over_two_cycles_r => comma_over_two_cycles_r,
      cpll_reset_i => cpll_reset_i,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      gt_qpllclk_quad6_in => gt_qpllclk_quad6_in,
      gt_qpllrefclk_quad6_in => gt_qpllrefclk_quad6_in,
      gt_refclk1 => gt_refclk1,
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      hard_err_flop_r0 => hard_err_flop_r0,
      init_clk_in => init_clk_in,
      loopback(2 downto 0) => loopback(2 downto 0),
      power_down => power_down,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxn => rxn,
      rxp => rxp,
      sync_clk => sync_clk,
      tx_out_clk => tx_out_clk,
      tx_reset_i => tx_reset_i,
      txn => txn,
      txp => txp,
      user_clk => user_clk
    );
gt0_rxresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => n_5_aurora_8b10b_1_multi_gt_i,
      Q => n_0_gt0_rxresetdone_r3_reg_srl3
    );
gt0_txresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
    port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => user_clk,
      D => n_7_aurora_8b10b_1_multi_gt_i,
      Q => n_0_gt0_txresetdone_r3_reg_srl3
    );
gt_rx_reset_i_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i,
      Q => gt_rx_reset_i,
      R => '0'
    );
gt_rxresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^rx_resetdone_out\,
      O => O3
    );
gt_rxresetfsm_i: entity work.aurora_8b10b_1_aurora_8b10b_1_rx_startup_fsm
    port map (
      AR(0) => rxfsm_soft_reset_r,
      I1 => n_0_rx_cdrlocked_reg,
      O100(1 downto 0) => O100(1 downto 0),
      O101(1 downto 0) => O101(1 downto 0),
      O102(1 downto 0) => O102(1 downto 0),
      O103(1 downto 0) => O103(1 downto 0),
      O104(1 downto 0) => O104(1 downto 0),
      O105(1 downto 0) => O105(1 downto 0),
      O106(1 downto 0) => O106(1 downto 0),
      O107(1 downto 0) => O107(1 downto 0),
      O108(1 downto 0) => O108(1 downto 0),
      O109(1 downto 0) => O109(1 downto 0),
      O110(1 downto 0) => O110(1 downto 0),
      O111(1 downto 0) => O111(1 downto 0),
      O112(1 downto 0) => O112(1 downto 0),
      O113(1 downto 0) => O113(1 downto 0),
      O114(1 downto 0) => O114(1 downto 0),
      O115(1 downto 0) => O115(1 downto 0),
      O116(1 downto 0) => O116(1 downto 0),
      O117(1 downto 0) => O117(1 downto 0),
      O118(1 downto 0) => O118(1 downto 0),
      O119(1 downto 0) => O119(1 downto 0),
      O120(1 downto 0) => O120(1 downto 0),
      O121(1 downto 0) => O121(1 downto 0),
      O122(1 downto 0) => O122(1 downto 0),
      O123(1 downto 0) => O123(1 downto 0),
      O124(1 downto 0) => O124(1 downto 0),
      O125(1 downto 0) => O125(1 downto 0),
      O2 => \^o2\,
      O78(1 downto 0) => O78(1 downto 0),
      O79(1 downto 0) => O79(1 downto 0),
      O80(1 downto 0) => O80(1 downto 0),
      O81(1 downto 0) => O81(1 downto 0),
      O82(1 downto 0) => O82(1 downto 0),
      O83(1 downto 0) => O83(1 downto 0),
      O84(1 downto 0) => O84(1 downto 0),
      O85(1 downto 0) => O85(1 downto 0),
      O86(1 downto 0) => O86(1 downto 0),
      O87(1 downto 0) => O87(1 downto 0),
      O88(1 downto 0) => O88(1 downto 0),
      O89(1 downto 0) => O89(1 downto 0),
      O90(1 downto 0) => O90(1 downto 0),
      O91(1 downto 0) => O91(1 downto 0),
      O92(1 downto 0) => O92(1 downto 0),
      O93(1 downto 0) => O93(1 downto 0),
      O94(1 downto 0) => O94(1 downto 0),
      O95(1 downto 0) => O95(1 downto 0),
      O96(1 downto 0) => O96(1 downto 0),
      O97(1 downto 0) => O97(1 downto 0),
      O98(1 downto 0) => O98(1 downto 0),
      O99(1 downto 0) => O99(1 downto 0),
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtrxreset_i => gtrxreset_i,
      init_clk_in => init_clk_in,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r,
      s_out_d1_cdc_to_105 => s_out_d1_cdc_to_105,
      s_out_d1_cdc_to_112 => s_out_d1_cdc_to_112,
      s_out_d1_cdc_to_119 => s_out_d1_cdc_to_119,
      s_out_d1_cdc_to_126 => s_out_d1_cdc_to_126,
      s_out_d1_cdc_to_133 => s_out_d1_cdc_to_133,
      s_out_d1_cdc_to_84 => s_out_d1_cdc_to_84,
      s_out_d1_cdc_to_91 => s_out_d1_cdc_to_91,
      s_out_d1_cdc_to_98 => s_out_d1_cdc_to_98,
      s_out_d2_106 => s_out_d2_106,
      s_out_d2_113 => s_out_d2_113,
      s_out_d2_120 => s_out_d2_120,
      s_out_d2_127 => s_out_d2_127,
      s_out_d2_134 => s_out_d2_134,
      s_out_d2_85 => s_out_d2_85,
      s_out_d2_92 => s_out_d2_92,
      s_out_d2_99 => s_out_d2_99,
      s_out_d3_100 => s_out_d3_100,
      s_out_d3_107 => s_out_d3_107,
      s_out_d3_114 => s_out_d3_114,
      s_out_d3_121 => s_out_d3_121,
      s_out_d3_128 => s_out_d3_128,
      s_out_d3_135 => s_out_d3_135,
      s_out_d3_86 => s_out_d3_86,
      s_out_d3_93 => s_out_d3_93,
      s_out_d4_101 => s_out_d4_101,
      s_out_d4_108 => s_out_d4_108,
      s_out_d4_115 => s_out_d4_115,
      s_out_d4_122 => s_out_d4_122,
      s_out_d4_129 => s_out_d4_129,
      s_out_d4_136 => s_out_d4_136,
      s_out_d4_87 => s_out_d4_87,
      s_out_d4_94 => s_out_d4_94,
      s_out_d5_102 => s_out_d5_102,
      s_out_d5_109 => s_out_d5_109,
      s_out_d5_116 => s_out_d5_116,
      s_out_d5_123 => s_out_d5_123,
      s_out_d5_130 => s_out_d5_130,
      s_out_d5_137 => s_out_d5_137,
      s_out_d5_88 => s_out_d5_88,
      s_out_d5_95 => s_out_d5_95,
      s_out_d6_103 => s_out_d6_103,
      s_out_d6_110 => s_out_d6_110,
      s_out_d6_117 => s_out_d6_117,
      s_out_d6_124 => s_out_d6_124,
      s_out_d6_131 => s_out_d6_131,
      s_out_d6_138 => s_out_d6_138,
      s_out_d6_89 => s_out_d6_89,
      s_out_d6_96 => s_out_d6_96,
      s_out_d7_104 => s_out_d7_104,
      s_out_d7_111 => s_out_d7_111,
      s_out_d7_118 => s_out_d7_118,
      s_out_d7_125 => s_out_d7_125,
      s_out_d7_132 => s_out_d7_132,
      s_out_d7_139 => s_out_d7_139,
      s_out_d7_90 => s_out_d7_90,
      s_out_d7_97 => s_out_d7_97,
      user_clk => user_clk
    );
gt_txresetfsm_i: entity work.aurora_8b10b_1_aurora_8b10b_1_tx_startup_fsm
    port map (
      O1 => O1,
      O2 => \^o2\,
      O3 => n_137_gt_txresetfsm_i,
      O36(1 downto 0) => O36(1 downto 0),
      O37(1 downto 0) => O37(1 downto 0),
      O38(1 downto 0) => O38(1 downto 0),
      O39(1 downto 0) => O39(1 downto 0),
      O40(1 downto 0) => O40(1 downto 0),
      O41(1 downto 0) => O41(1 downto 0),
      O42(1 downto 0) => O42(1 downto 0),
      O43(1 downto 0) => O43(1 downto 0),
      O44(1 downto 0) => O44(1 downto 0),
      O45(1 downto 0) => O45(1 downto 0),
      O46(1 downto 0) => O46(1 downto 0),
      O47(1 downto 0) => O47(1 downto 0),
      O48(1 downto 0) => O48(1 downto 0),
      O49(1 downto 0) => O49(1 downto 0),
      O50(1 downto 0) => O50(1 downto 0),
      O51(1 downto 0) => O51(1 downto 0),
      O52(1 downto 0) => O52(1 downto 0),
      O53(1 downto 0) => O53(1 downto 0),
      O54(1 downto 0) => O54(1 downto 0),
      O55(1 downto 0) => O55(1 downto 0),
      O56(1 downto 0) => O56(1 downto 0),
      O57(1 downto 0) => O57(1 downto 0),
      O58(1 downto 0) => O58(1 downto 0),
      O59(1 downto 0) => O59(1 downto 0),
      O60(1 downto 0) => O60(1 downto 0),
      O61(1 downto 0) => O61(1 downto 0),
      O62(1 downto 0) => O62(1 downto 0),
      O63(1 downto 0) => O63(1 downto 0),
      O64(1 downto 0) => O64(1 downto 0),
      O65(1 downto 0) => O65(1 downto 0),
      O66(1 downto 0) => O66(1 downto 0),
      O67(1 downto 0) => O67(1 downto 0),
      O68(1 downto 0) => O68(1 downto 0),
      O69(1 downto 0) => O69(1 downto 0),
      O70(1 downto 0) => O70(1 downto 0),
      O71(1 downto 0) => O71(1 downto 0),
      O72(1 downto 0) => O72(1 downto 0),
      O73(1 downto 0) => O73(1 downto 0),
      O74(1 downto 0) => O74(1 downto 0),
      O75(1 downto 0) => O75(1 downto 0),
      O76(1 downto 0) => O76(1 downto 0),
      O77(1 downto 0) => O77(1 downto 0),
      ack_flag => \gt0_aurora_8b10b_1_i/ack_flag\,
      cpll_reset_i => cpll_reset_i,
      gt_reset => gt_reset,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_35 => s_out_d1_cdc_to_35,
      s_out_d1_cdc_to_42 => s_out_d1_cdc_to_42,
      s_out_d1_cdc_to_49 => s_out_d1_cdc_to_49,
      s_out_d1_cdc_to_56 => s_out_d1_cdc_to_56,
      s_out_d1_cdc_to_63 => s_out_d1_cdc_to_63,
      s_out_d1_cdc_to_70 => s_out_d1_cdc_to_70,
      s_out_d1_cdc_to_77 => s_out_d1_cdc_to_77,
      s_out_d2_36 => s_out_d2_36,
      s_out_d2_43 => s_out_d2_43,
      s_out_d2_50 => s_out_d2_50,
      s_out_d2_57 => s_out_d2_57,
      s_out_d2_64 => s_out_d2_64,
      s_out_d2_71 => s_out_d2_71,
      s_out_d2_78 => s_out_d2_78,
      s_out_d3_37 => s_out_d3_37,
      s_out_d3_44 => s_out_d3_44,
      s_out_d3_51 => s_out_d3_51,
      s_out_d3_58 => s_out_d3_58,
      s_out_d3_65 => s_out_d3_65,
      s_out_d3_72 => s_out_d3_72,
      s_out_d3_79 => s_out_d3_79,
      s_out_d4_38 => s_out_d4_38,
      s_out_d4_45 => s_out_d4_45,
      s_out_d4_52 => s_out_d4_52,
      s_out_d4_59 => s_out_d4_59,
      s_out_d4_66 => s_out_d4_66,
      s_out_d4_73 => s_out_d4_73,
      s_out_d4_80 => s_out_d4_80,
      s_out_d5_39 => s_out_d5_39,
      s_out_d5_46 => s_out_d5_46,
      s_out_d5_53 => s_out_d5_53,
      s_out_d5_60 => s_out_d5_60,
      s_out_d5_67 => s_out_d5_67,
      s_out_d5_74 => s_out_d5_74,
      s_out_d5_81 => s_out_d5_81,
      s_out_d6_40 => s_out_d6_40,
      s_out_d6_47 => s_out_d6_47,
      s_out_d6_54 => s_out_d6_54,
      s_out_d6_61 => s_out_d6_61,
      s_out_d6_68 => s_out_d6_68,
      s_out_d6_75 => s_out_d6_75,
      s_out_d6_82 => s_out_d6_82,
      s_out_d7_41 => s_out_d7_41,
      s_out_d7_48 => s_out_d7_48,
      s_out_d7_55 => s_out_d7_55,
      s_out_d7_62 => s_out_d7_62,
      s_out_d7_69 => s_out_d7_69,
      s_out_d7_76 => s_out_d7_76,
      s_out_d7_83 => s_out_d7_83,
      txfsm_txresetdone_r => txfsm_txresetdone_r,
      user_clk => user_clk
    );
gtrxreset_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync_0
    port map (
      O1 => n_0_gtrxreset_cdc_sync,
      O30(1 downto 0) => O30(1 downto 0),
      O31(1 downto 0) => O31(1 downto 0),
      O32(1 downto 0) => O32(1 downto 0),
      O33(1 downto 0) => O33(1 downto 0),
      O34(1 downto 0) => O34(1 downto 0),
      O35(1 downto 0) => O35(1 downto 0),
      gtrxreset_i_0 => gtrxreset_i_0,
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_28 => s_out_d1_cdc_to_28,
      s_out_d2_29 => s_out_d2_29,
      s_out_d3_30 => s_out_d3_30,
      s_out_d4_31 => s_out_d4_31,
      s_out_d5_32 => s_out_d5_32,
      s_out_d6_33 => s_out_d6_33,
      s_out_d7_34 => s_out_d7_34
    );
gtrxreset_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gtrxreset_r2,
      I1 => gtrxreset_r3,
      O => n_0_gtrxreset_pulse_i_1
    );
gtrxreset_pulse_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_gtrxreset_pulse_i_1,
      Q => gtrxreset_pulse,
      R => '0'
    );
gtrxreset_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_gtrxreset_cdc_sync,
      Q => gtrxreset_r2,
      R => '0'
    );
gtrxreset_r3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_r2,
      Q => gtrxreset_r3,
      R => '0'
    );
link_reset_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_comb_r,
      Q => link_reset_r2,
      R => '0'
    );
\rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I1 => rx_cdrlock_counter(0),
      O => rx_cdrlock_counter_0(0)
    );
\rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_6_rx_cdrlock_counter_reg[12]_i_2\,
      O => rx_cdrlock_counter_0(10)
    );
\rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_5_rx_cdrlock_counter_reg[12]_i_2\,
      O => rx_cdrlock_counter_0(11)
    );
\rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_4_rx_cdrlock_counter_reg[12]_i_2\,
      O => rx_cdrlock_counter_0(12)
    );
\rx_cdrlock_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(12),
      O => \n_0_rx_cdrlock_counter[12]_i_3\
    );
\rx_cdrlock_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(11),
      O => \n_0_rx_cdrlock_counter[12]_i_4\
    );
\rx_cdrlock_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(10),
      O => \n_0_rx_cdrlock_counter[12]_i_5\
    );
\rx_cdrlock_counter[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(9),
      O => \n_0_rx_cdrlock_counter[12]_i_6\
    );
\rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_7_rx_cdrlock_counter_reg[16]_i_2\,
      O => rx_cdrlock_counter_0(13)
    );
\rx_cdrlock_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_6_rx_cdrlock_counter_reg[16]_i_2\,
      O => rx_cdrlock_counter_0(14)
    );
\rx_cdrlock_counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_5_rx_cdrlock_counter_reg[16]_i_2\,
      O => rx_cdrlock_counter_0(15)
    );
\rx_cdrlock_counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_4_rx_cdrlock_counter_reg[16]_i_2\,
      O => rx_cdrlock_counter_0(16)
    );
\rx_cdrlock_counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(16),
      O => \n_0_rx_cdrlock_counter[16]_i_3\
    );
\rx_cdrlock_counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(15),
      O => \n_0_rx_cdrlock_counter[16]_i_4\
    );
\rx_cdrlock_counter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(14),
      O => \n_0_rx_cdrlock_counter[16]_i_5\
    );
\rx_cdrlock_counter[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(13),
      O => \n_0_rx_cdrlock_counter[16]_i_6\
    );
\rx_cdrlock_counter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_7_rx_cdrlock_counter_reg[20]_i_2\,
      O => rx_cdrlock_counter_0(17)
    );
\rx_cdrlock_counter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_6_rx_cdrlock_counter_reg[20]_i_2\,
      O => rx_cdrlock_counter_0(18)
    );
\rx_cdrlock_counter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_5_rx_cdrlock_counter_reg[20]_i_2\,
      O => rx_cdrlock_counter_0(19)
    );
\rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_7_rx_cdrlock_counter_reg[4]_i_2\,
      O => rx_cdrlock_counter_0(1)
    );
\rx_cdrlock_counter[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_4_rx_cdrlock_counter_reg[20]_i_2\,
      O => rx_cdrlock_counter_0(20)
    );
\rx_cdrlock_counter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(20),
      O => \n_0_rx_cdrlock_counter[20]_i_3\
    );
\rx_cdrlock_counter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(19),
      O => \n_0_rx_cdrlock_counter[20]_i_4\
    );
\rx_cdrlock_counter[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(18),
      O => \n_0_rx_cdrlock_counter[20]_i_5\
    );
\rx_cdrlock_counter[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(17),
      O => \n_0_rx_cdrlock_counter[20]_i_6\
    );
\rx_cdrlock_counter[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_7_rx_cdrlock_counter_reg[24]_i_2\,
      O => rx_cdrlock_counter_0(21)
    );
\rx_cdrlock_counter[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_6_rx_cdrlock_counter_reg[24]_i_2\,
      O => rx_cdrlock_counter_0(22)
    );
\rx_cdrlock_counter[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_5_rx_cdrlock_counter_reg[24]_i_2\,
      O => rx_cdrlock_counter_0(23)
    );
\rx_cdrlock_counter[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_4_rx_cdrlock_counter_reg[24]_i_2\,
      O => rx_cdrlock_counter_0(24)
    );
\rx_cdrlock_counter[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(24),
      O => \n_0_rx_cdrlock_counter[24]_i_3\
    );
\rx_cdrlock_counter[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(23),
      O => \n_0_rx_cdrlock_counter[24]_i_4\
    );
\rx_cdrlock_counter[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(22),
      O => \n_0_rx_cdrlock_counter[24]_i_5\
    );
\rx_cdrlock_counter[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(21),
      O => \n_0_rx_cdrlock_counter[24]_i_6\
    );
\rx_cdrlock_counter[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_7_rx_cdrlock_counter_reg[28]_i_2\,
      O => rx_cdrlock_counter_0(25)
    );
\rx_cdrlock_counter[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_6_rx_cdrlock_counter_reg[28]_i_2\,
      O => rx_cdrlock_counter_0(26)
    );
\rx_cdrlock_counter[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_5_rx_cdrlock_counter_reg[28]_i_2\,
      O => rx_cdrlock_counter_0(27)
    );
\rx_cdrlock_counter[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_4_rx_cdrlock_counter_reg[28]_i_2\,
      O => rx_cdrlock_counter_0(28)
    );
\rx_cdrlock_counter[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(28),
      O => \n_0_rx_cdrlock_counter[28]_i_3\
    );
\rx_cdrlock_counter[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(27),
      O => \n_0_rx_cdrlock_counter[28]_i_4\
    );
\rx_cdrlock_counter[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(26),
      O => \n_0_rx_cdrlock_counter[28]_i_5\
    );
\rx_cdrlock_counter[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(25),
      O => \n_0_rx_cdrlock_counter[28]_i_6\
    );
\rx_cdrlock_counter[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_7_rx_cdrlock_counter_reg[31]_i_3\,
      O => rx_cdrlock_counter_0(29)
    );
\rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_6_rx_cdrlock_counter_reg[4]_i_2\,
      O => rx_cdrlock_counter_0(2)
    );
\rx_cdrlock_counter[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_6_rx_cdrlock_counter_reg[31]_i_3\,
      O => rx_cdrlock_counter_0(30)
    );
\rx_cdrlock_counter[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_5_rx_cdrlock_counter_reg[31]_i_3\,
      O => rx_cdrlock_counter_0(31)
    );
\rx_cdrlock_counter[31]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(30),
      O => \n_0_rx_cdrlock_counter[31]_i_10\
    );
\rx_cdrlock_counter[31]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(29),
      O => \n_0_rx_cdrlock_counter[31]_i_11\
    );
\rx_cdrlock_counter[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter[31]_i_4\,
      I1 => \n_0_rx_cdrlock_counter[31]_i_5\,
      I2 => \n_0_rx_cdrlock_counter[31]_i_6\,
      I3 => rx_cdrlock_counter(29),
      I4 => \n_0_rx_cdrlock_counter[31]_i_7\,
      I5 => \n_0_rx_cdrlock_counter[31]_i_8\,
      O => \n_0_rx_cdrlock_counter[31]_i_2\
    );
\rx_cdrlock_counter[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => rx_cdrlock_counter(31),
      I1 => rx_cdrlock_counter(30),
      I2 => rx_cdrlock_counter(27),
      I3 => rx_cdrlock_counter(28),
      I4 => rx_cdrlock_counter(25),
      I5 => rx_cdrlock_counter(26),
      O => \n_0_rx_cdrlock_counter[31]_i_4\
    );
\rx_cdrlock_counter[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
    port map (
      I0 => rx_cdrlock_counter(8),
      I1 => rx_cdrlock_counter(7),
      I2 => rx_cdrlock_counter(4),
      I3 => rx_cdrlock_counter(3),
      I4 => rx_cdrlock_counter(1),
      I5 => rx_cdrlock_counter(2),
      O => \n_0_rx_cdrlock_counter[31]_i_5\
    );
\rx_cdrlock_counter[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
    port map (
      I0 => rx_cdrlock_counter(9),
      I1 => rx_cdrlock_counter(10),
      I2 => rx_cdrlock_counter(5),
      I3 => rx_cdrlock_counter(6),
      I4 => rx_cdrlock_counter(11),
      I5 => rx_cdrlock_counter(12),
      O => \n_0_rx_cdrlock_counter[31]_i_6\
    );
\rx_cdrlock_counter[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => rx_cdrlock_counter(20),
      I1 => rx_cdrlock_counter(19),
      I2 => rx_cdrlock_counter(15),
      I3 => rx_cdrlock_counter(16),
      I4 => rx_cdrlock_counter(13),
      I5 => rx_cdrlock_counter(14),
      O => \n_0_rx_cdrlock_counter[31]_i_7\
    );
\rx_cdrlock_counter[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => rx_cdrlock_counter(22),
      I1 => rx_cdrlock_counter(21),
      I2 => rx_cdrlock_counter(17),
      I3 => rx_cdrlock_counter(18),
      I4 => rx_cdrlock_counter(23),
      I5 => rx_cdrlock_counter(24),
      O => \n_0_rx_cdrlock_counter[31]_i_8\
    );
\rx_cdrlock_counter[31]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(31),
      O => \n_0_rx_cdrlock_counter[31]_i_9\
    );
\rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => \n_5_rx_cdrlock_counter_reg[4]_i_2\,
      I1 => rx_cdrlock_counter(0),
      I2 => \n_0_rx_cdrlock_counter[31]_i_2\,
      O => rx_cdrlock_counter_0(3)
    );
\rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => rx_cdrlock_counter(0),
      I1 => \n_0_rx_cdrlock_counter[31]_i_2\,
      I2 => \n_4_rx_cdrlock_counter_reg[4]_i_2\,
      O => rx_cdrlock_counter_0(4)
    );
\rx_cdrlock_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(4),
      O => \n_0_rx_cdrlock_counter[4]_i_3\
    );
\rx_cdrlock_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(3),
      O => \n_0_rx_cdrlock_counter[4]_i_4\
    );
\rx_cdrlock_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(2),
      O => \n_0_rx_cdrlock_counter[4]_i_5\
    );
\rx_cdrlock_counter[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(1),
      O => \n_0_rx_cdrlock_counter[4]_i_6\
    );
\rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => \n_7_rx_cdrlock_counter_reg[8]_i_2\,
      I1 => rx_cdrlock_counter(0),
      I2 => \n_0_rx_cdrlock_counter[31]_i_2\,
      O => rx_cdrlock_counter_0(5)
    );
\rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => \n_6_rx_cdrlock_counter_reg[8]_i_2\,
      I1 => rx_cdrlock_counter(0),
      I2 => \n_0_rx_cdrlock_counter[31]_i_2\,
      O => rx_cdrlock_counter_0(6)
    );
\rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => \n_5_rx_cdrlock_counter_reg[8]_i_2\,
      I1 => rx_cdrlock_counter(0),
      I2 => \n_0_rx_cdrlock_counter[31]_i_2\,
      O => rx_cdrlock_counter_0(7)
    );
\rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => \n_4_rx_cdrlock_counter_reg[8]_i_2\,
      I1 => rx_cdrlock_counter(0),
      I2 => \n_0_rx_cdrlock_counter[31]_i_2\,
      O => rx_cdrlock_counter_0(8)
    );
\rx_cdrlock_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(8),
      O => \n_0_rx_cdrlock_counter[8]_i_3\
    );
\rx_cdrlock_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(7),
      O => \n_0_rx_cdrlock_counter[8]_i_4\
    );
\rx_cdrlock_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(6),
      O => \n_0_rx_cdrlock_counter[8]_i_5\
    );
\rx_cdrlock_counter[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(5),
      O => \n_0_rx_cdrlock_counter[8]_i_6\
    );
\rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => \n_7_rx_cdrlock_counter_reg[12]_i_2\,
      I1 => rx_cdrlock_counter(0),
      I2 => \n_0_rx_cdrlock_counter[31]_i_2\,
      O => rx_cdrlock_counter_0(9)
    );
\rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(0),
      Q => rx_cdrlock_counter(0),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(10),
      Q => rx_cdrlock_counter(10),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(11),
      Q => rx_cdrlock_counter(11),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(12),
      Q => rx_cdrlock_counter(12),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[8]_i_2\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[12]_i_2\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[12]_i_2\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[12]_i_2\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[12]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rx_cdrlock_counter_reg[12]_i_2\,
      O(2) => \n_5_rx_cdrlock_counter_reg[12]_i_2\,
      O(1) => \n_6_rx_cdrlock_counter_reg[12]_i_2\,
      O(0) => \n_7_rx_cdrlock_counter_reg[12]_i_2\,
      S(3) => \n_0_rx_cdrlock_counter[12]_i_3\,
      S(2) => \n_0_rx_cdrlock_counter[12]_i_4\,
      S(1) => \n_0_rx_cdrlock_counter[12]_i_5\,
      S(0) => \n_0_rx_cdrlock_counter[12]_i_6\
    );
\rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(13),
      Q => rx_cdrlock_counter(13),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(14),
      Q => rx_cdrlock_counter(14),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(15),
      Q => rx_cdrlock_counter(15),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(16),
      Q => rx_cdrlock_counter(16),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[16]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[12]_i_2\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[16]_i_2\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[16]_i_2\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[16]_i_2\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[16]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rx_cdrlock_counter_reg[16]_i_2\,
      O(2) => \n_5_rx_cdrlock_counter_reg[16]_i_2\,
      O(1) => \n_6_rx_cdrlock_counter_reg[16]_i_2\,
      O(0) => \n_7_rx_cdrlock_counter_reg[16]_i_2\,
      S(3) => \n_0_rx_cdrlock_counter[16]_i_3\,
      S(2) => \n_0_rx_cdrlock_counter[16]_i_4\,
      S(1) => \n_0_rx_cdrlock_counter[16]_i_5\,
      S(0) => \n_0_rx_cdrlock_counter[16]_i_6\
    );
\rx_cdrlock_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(17),
      Q => rx_cdrlock_counter(17),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(18),
      Q => rx_cdrlock_counter(18),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(19),
      Q => rx_cdrlock_counter(19),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(1),
      Q => rx_cdrlock_counter(1),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(20),
      Q => rx_cdrlock_counter(20),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[20]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[16]_i_2\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[20]_i_2\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[20]_i_2\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[20]_i_2\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[20]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rx_cdrlock_counter_reg[20]_i_2\,
      O(2) => \n_5_rx_cdrlock_counter_reg[20]_i_2\,
      O(1) => \n_6_rx_cdrlock_counter_reg[20]_i_2\,
      O(0) => \n_7_rx_cdrlock_counter_reg[20]_i_2\,
      S(3) => \n_0_rx_cdrlock_counter[20]_i_3\,
      S(2) => \n_0_rx_cdrlock_counter[20]_i_4\,
      S(1) => \n_0_rx_cdrlock_counter[20]_i_5\,
      S(0) => \n_0_rx_cdrlock_counter[20]_i_6\
    );
\rx_cdrlock_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(21),
      Q => rx_cdrlock_counter(21),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(22),
      Q => rx_cdrlock_counter(22),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(23),
      Q => rx_cdrlock_counter(23),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(24),
      Q => rx_cdrlock_counter(24),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[24]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[20]_i_2\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[24]_i_2\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[24]_i_2\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[24]_i_2\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[24]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rx_cdrlock_counter_reg[24]_i_2\,
      O(2) => \n_5_rx_cdrlock_counter_reg[24]_i_2\,
      O(1) => \n_6_rx_cdrlock_counter_reg[24]_i_2\,
      O(0) => \n_7_rx_cdrlock_counter_reg[24]_i_2\,
      S(3) => \n_0_rx_cdrlock_counter[24]_i_3\,
      S(2) => \n_0_rx_cdrlock_counter[24]_i_4\,
      S(1) => \n_0_rx_cdrlock_counter[24]_i_5\,
      S(0) => \n_0_rx_cdrlock_counter[24]_i_6\
    );
\rx_cdrlock_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(25),
      Q => rx_cdrlock_counter(25),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(26),
      Q => rx_cdrlock_counter(26),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(27),
      Q => rx_cdrlock_counter(27),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(28),
      Q => rx_cdrlock_counter(28),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[28]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[24]_i_2\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[28]_i_2\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[28]_i_2\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[28]_i_2\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[28]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rx_cdrlock_counter_reg[28]_i_2\,
      O(2) => \n_5_rx_cdrlock_counter_reg[28]_i_2\,
      O(1) => \n_6_rx_cdrlock_counter_reg[28]_i_2\,
      O(0) => \n_7_rx_cdrlock_counter_reg[28]_i_2\,
      S(3) => \n_0_rx_cdrlock_counter[28]_i_3\,
      S(2) => \n_0_rx_cdrlock_counter[28]_i_4\,
      S(1) => \n_0_rx_cdrlock_counter[28]_i_5\,
      S(0) => \n_0_rx_cdrlock_counter[28]_i_6\
    );
\rx_cdrlock_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(29),
      Q => rx_cdrlock_counter(29),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(2),
      Q => rx_cdrlock_counter(2),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(30),
      Q => rx_cdrlock_counter(30),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(31),
      Q => rx_cdrlock_counter(31),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[31]_i_3\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[28]_i_2\,
      CO(3 downto 2) => \NLW_rx_cdrlock_counter_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_rx_cdrlock_counter_reg[31]_i_3\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[31]_i_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_rx_cdrlock_counter_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2) => \n_5_rx_cdrlock_counter_reg[31]_i_3\,
      O(1) => \n_6_rx_cdrlock_counter_reg[31]_i_3\,
      O(0) => \n_7_rx_cdrlock_counter_reg[31]_i_3\,
      S(3) => '0',
      S(2) => \n_0_rx_cdrlock_counter[31]_i_9\,
      S(1) => \n_0_rx_cdrlock_counter[31]_i_10\,
      S(0) => \n_0_rx_cdrlock_counter[31]_i_11\
    );
\rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(3),
      Q => rx_cdrlock_counter(3),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(4),
      Q => rx_cdrlock_counter(4),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_rx_cdrlock_counter_reg[4]_i_2\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[4]_i_2\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[4]_i_2\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[4]_i_2\,
      CYINIT => rx_cdrlock_counter(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rx_cdrlock_counter_reg[4]_i_2\,
      O(2) => \n_5_rx_cdrlock_counter_reg[4]_i_2\,
      O(1) => \n_6_rx_cdrlock_counter_reg[4]_i_2\,
      O(0) => \n_7_rx_cdrlock_counter_reg[4]_i_2\,
      S(3) => \n_0_rx_cdrlock_counter[4]_i_3\,
      S(2) => \n_0_rx_cdrlock_counter[4]_i_4\,
      S(1) => \n_0_rx_cdrlock_counter[4]_i_5\,
      S(0) => \n_0_rx_cdrlock_counter[4]_i_6\
    );
\rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(5),
      Q => rx_cdrlock_counter(5),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(6),
      Q => rx_cdrlock_counter(6),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(7),
      Q => rx_cdrlock_counter(7),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(8),
      Q => rx_cdrlock_counter(8),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[4]_i_2\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[8]_i_2\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[8]_i_2\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[8]_i_2\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[8]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rx_cdrlock_counter_reg[8]_i_2\,
      O(2) => \n_5_rx_cdrlock_counter_reg[8]_i_2\,
      O(1) => \n_6_rx_cdrlock_counter_reg[8]_i_2\,
      O(0) => \n_7_rx_cdrlock_counter_reg[8]_i_2\,
      S(3) => \n_0_rx_cdrlock_counter[8]_i_3\,
      S(2) => \n_0_rx_cdrlock_counter[8]_i_4\,
      S(1) => \n_0_rx_cdrlock_counter[8]_i_5\,
      S(0) => \n_0_rx_cdrlock_counter[8]_i_6\
    );
\rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter_0(9),
      Q => rx_cdrlock_counter(9),
      R => gt_rx_reset_i
    );
rx_cdrlocked_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => n_0_rx_cdrlocked_reg,
      I1 => rx_cdrlock_counter(0),
      I2 => \n_0_rx_cdrlock_counter[31]_i_2\,
      O => n_0_rx_cdrlocked_i_1
    );
rx_cdrlocked_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_rx_cdrlocked_i_1,
      Q => n_0_rx_cdrlocked_reg,
      R => gt_rx_reset_i
    );
rxfsm_rxresetdone_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rxfsm_rxresetdone_r,
      Q => rxfsm_rxresetdone_r2,
      R => '0'
    );
rxfsm_rxresetdone_r3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => rxfsm_rxresetdone_r2,
      Q => \^rx_resetdone_out\,
      R => '0'
    );
rxfsm_rxresetdone_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_gt0_rxresetdone_r3_reg_srl3,
      Q => rxfsm_rxresetdone_r,
      R => '0'
    );
rxfsm_soft_reset_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => gt_reset,
      I1 => gtrxreset_pulse,
      I2 => link_reset_r2,
      O => n_0_rxfsm_soft_reset_r_i_1
    );
rxfsm_soft_reset_r_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => '1',
      D => n_0_rxfsm_soft_reset_r_i_1,
      Q => rxfsm_soft_reset_r,
      R => '0'
    );
txfsm_txresetdone_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => '1',
      D => n_0_gt0_txresetdone_r3_reg_srl3,
      Q => txfsm_txresetdone_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1_aurora_8b10b_1_core is
  port (
    tx_resetdone_out : out STD_LOGIC;
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_0 : out STD_LOGIC;
    s_out_d2_1 : out STD_LOGIC;
    s_out_d3_2 : out STD_LOGIC;
    s_out_d4_3 : out STD_LOGIC;
    s_out_d5_4 : out STD_LOGIC;
    s_out_d6_5 : out STD_LOGIC;
    s_out_d7_6 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_7 : out STD_LOGIC;
    s_out_d2_8 : out STD_LOGIC;
    s_out_d3_9 : out STD_LOGIC;
    s_out_d4_10 : out STD_LOGIC;
    s_out_d5_11 : out STD_LOGIC;
    s_out_d6_12 : out STD_LOGIC;
    s_out_d7_13 : out STD_LOGIC;
    O12 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O13 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O15 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O16 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O17 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_14 : out STD_LOGIC;
    s_out_d2_15 : out STD_LOGIC;
    s_out_d3_16 : out STD_LOGIC;
    s_out_d4_17 : out STD_LOGIC;
    s_out_d5_18 : out STD_LOGIC;
    s_out_d6_19 : out STD_LOGIC;
    s_out_d7_20 : out STD_LOGIC;
    O18 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O19 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O20 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O21 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O22 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O23 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    lane_up : out STD_LOGIC;
    s_out_d1_cdc_to_21 : out STD_LOGIC;
    s_out_d2_22 : out STD_LOGIC;
    s_out_d3_23 : out STD_LOGIC;
    s_out_d4_24 : out STD_LOGIC;
    s_out_d5_25 : out STD_LOGIC;
    s_out_d6_26 : out STD_LOGIC;
    s_out_d7_27 : out STD_LOGIC;
    O24 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O25 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O26 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O27 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O28 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O29 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_28 : out STD_LOGIC;
    s_out_d2_29 : out STD_LOGIC;
    s_out_d3_30 : out STD_LOGIC;
    s_out_d4_31 : out STD_LOGIC;
    s_out_d5_32 : out STD_LOGIC;
    s_out_d6_33 : out STD_LOGIC;
    s_out_d7_34 : out STD_LOGIC;
    O30 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O31 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O32 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O33 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O34 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O35 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_35 : out STD_LOGIC;
    s_out_d2_36 : out STD_LOGIC;
    s_out_d3_37 : out STD_LOGIC;
    s_out_d4_38 : out STD_LOGIC;
    s_out_d5_39 : out STD_LOGIC;
    s_out_d6_40 : out STD_LOGIC;
    s_out_d7_41 : out STD_LOGIC;
    O36 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O37 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O38 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O39 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O40 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O41 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_42 : out STD_LOGIC;
    s_out_d2_43 : out STD_LOGIC;
    s_out_d3_44 : out STD_LOGIC;
    s_out_d4_45 : out STD_LOGIC;
    s_out_d5_46 : out STD_LOGIC;
    s_out_d6_47 : out STD_LOGIC;
    s_out_d7_48 : out STD_LOGIC;
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O44 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O45 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O46 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O47 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_49 : out STD_LOGIC;
    s_out_d2_50 : out STD_LOGIC;
    s_out_d3_51 : out STD_LOGIC;
    s_out_d4_52 : out STD_LOGIC;
    s_out_d5_53 : out STD_LOGIC;
    s_out_d6_54 : out STD_LOGIC;
    s_out_d7_55 : out STD_LOGIC;
    O48 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O49 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O50 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O51 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O52 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O53 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_56 : out STD_LOGIC;
    s_out_d2_57 : out STD_LOGIC;
    s_out_d3_58 : out STD_LOGIC;
    s_out_d4_59 : out STD_LOGIC;
    s_out_d5_60 : out STD_LOGIC;
    s_out_d6_61 : out STD_LOGIC;
    s_out_d7_62 : out STD_LOGIC;
    O54 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O55 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O56 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O57 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O58 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O59 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_63 : out STD_LOGIC;
    s_out_d2_64 : out STD_LOGIC;
    s_out_d3_65 : out STD_LOGIC;
    s_out_d4_66 : out STD_LOGIC;
    s_out_d5_67 : out STD_LOGIC;
    s_out_d6_68 : out STD_LOGIC;
    s_out_d7_69 : out STD_LOGIC;
    O60 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O61 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O62 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O63 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O64 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O65 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_lock : out STD_LOGIC;
    s_out_d1_cdc_to_70 : out STD_LOGIC;
    s_out_d2_71 : out STD_LOGIC;
    s_out_d3_72 : out STD_LOGIC;
    s_out_d4_73 : out STD_LOGIC;
    s_out_d5_74 : out STD_LOGIC;
    s_out_d6_75 : out STD_LOGIC;
    s_out_d7_76 : out STD_LOGIC;
    O66 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O67 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O68 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O69 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O70 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O71 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_77 : out STD_LOGIC;
    s_out_d2_78 : out STD_LOGIC;
    s_out_d3_79 : out STD_LOGIC;
    s_out_d4_80 : out STD_LOGIC;
    s_out_d5_81 : out STD_LOGIC;
    s_out_d6_82 : out STD_LOGIC;
    s_out_d7_83 : out STD_LOGIC;
    O72 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O73 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O74 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O75 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O76 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O77 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_84 : out STD_LOGIC;
    s_out_d2_85 : out STD_LOGIC;
    s_out_d3_86 : out STD_LOGIC;
    s_out_d4_87 : out STD_LOGIC;
    s_out_d5_88 : out STD_LOGIC;
    s_out_d6_89 : out STD_LOGIC;
    s_out_d7_90 : out STD_LOGIC;
    O78 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O79 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O80 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O81 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O82 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O83 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_91 : out STD_LOGIC;
    s_out_d2_92 : out STD_LOGIC;
    s_out_d3_93 : out STD_LOGIC;
    s_out_d4_94 : out STD_LOGIC;
    s_out_d5_95 : out STD_LOGIC;
    s_out_d6_96 : out STD_LOGIC;
    s_out_d7_97 : out STD_LOGIC;
    O84 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O85 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O86 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O87 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O88 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O89 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_98 : out STD_LOGIC;
    s_out_d2_99 : out STD_LOGIC;
    s_out_d3_100 : out STD_LOGIC;
    s_out_d4_101 : out STD_LOGIC;
    s_out_d5_102 : out STD_LOGIC;
    s_out_d6_103 : out STD_LOGIC;
    s_out_d7_104 : out STD_LOGIC;
    O90 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O91 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O92 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O93 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O94 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O95 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_105 : out STD_LOGIC;
    s_out_d2_106 : out STD_LOGIC;
    s_out_d3_107 : out STD_LOGIC;
    s_out_d4_108 : out STD_LOGIC;
    s_out_d5_109 : out STD_LOGIC;
    s_out_d6_110 : out STD_LOGIC;
    s_out_d7_111 : out STD_LOGIC;
    O96 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O97 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O98 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O99 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O100 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O101 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_112 : out STD_LOGIC;
    s_out_d2_113 : out STD_LOGIC;
    s_out_d3_114 : out STD_LOGIC;
    s_out_d4_115 : out STD_LOGIC;
    s_out_d5_116 : out STD_LOGIC;
    s_out_d6_117 : out STD_LOGIC;
    s_out_d7_118 : out STD_LOGIC;
    O102 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O103 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O104 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O105 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O106 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O107 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_119 : out STD_LOGIC;
    s_out_d2_120 : out STD_LOGIC;
    s_out_d3_121 : out STD_LOGIC;
    s_out_d4_122 : out STD_LOGIC;
    s_out_d5_123 : out STD_LOGIC;
    s_out_d6_124 : out STD_LOGIC;
    s_out_d7_125 : out STD_LOGIC;
    O108 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O109 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O110 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O111 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O112 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O113 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_126 : out STD_LOGIC;
    s_out_d2_127 : out STD_LOGIC;
    s_out_d3_128 : out STD_LOGIC;
    s_out_d4_129 : out STD_LOGIC;
    s_out_d5_130 : out STD_LOGIC;
    s_out_d6_131 : out STD_LOGIC;
    s_out_d7_132 : out STD_LOGIC;
    O114 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O115 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O116 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O117 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O118 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O119 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_133 : out STD_LOGIC;
    s_out_d2_134 : out STD_LOGIC;
    s_out_d3_135 : out STD_LOGIC;
    s_out_d4_136 : out STD_LOGIC;
    s_out_d5_137 : out STD_LOGIC;
    s_out_d6_138 : out STD_LOGIC;
    s_out_d7_139 : out STD_LOGIC;
    O120 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O121 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O122 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O123 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O124 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O125 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O126 : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    O127 : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rx_tlast : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    reset : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad6_in : in STD_LOGIC;
    gt_qpllrefclk_quad6_in : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    power_down : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    do_cc : in STD_LOGIC;
    gt_reset : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_1_aurora_8b10b_1_core : entity is "aurora_8b10b_1_core";
end aurora_8b10b_1_aurora_8b10b_1_core;

architecture STRUCTURE of aurora_8b10b_1_aurora_8b10b_1_core is
  signal GEN_ECP : STD_LOGIC;
  signal GEN_PAD : STD_LOGIC;
  signal GEN_SCP : STD_LOGIC;
  signal GOT_V : STD_LOGIC;
  signal \^hard_err\ : STD_LOGIC;
  signal \^o126\ : STD_LOGIC;
  signal \^o127\ : STD_LOGIC;
  signal RX_PAD : STD_LOGIC;
  signal RX_PE_DATA : STD_LOGIC_VECTOR ( 0 to 15 );
  signal START_RX : STD_LOGIC;
  signal TX_PE_DATA : STD_LOGIC_VECTOR ( 0 to 15 );
  signal TX_PE_DATA_V : STD_LOGIC;
  signal ena_comma_align_i : STD_LOGIC;
  signal \err_detect_i/bucket_full_r\ : STD_LOGIC;
  signal \err_detect_i/hard_err_flop_r0\ : STD_LOGIC;
  signal \err_detect_i/p_2_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gen_a_i : STD_LOGIC;
  signal gen_cc_i : STD_LOGIC;
  signal gen_k_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gen_r_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gen_v_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gtrxreset_i_0 : STD_LOGIC;
  signal \lane_init_sm_i/comma_over_two_cycles_r\ : STD_LOGIC;
  signal \^lane_up\ : STD_LOGIC;
  signal link_reset_comb_r : STD_LOGIC;
  signal \^link_reset_out\ : STD_LOGIC;
  signal n_0_axi_to_ll_pdu_i : STD_LOGIC;
  signal n_1_axi_to_ll_pdu_i : STD_LOGIC;
  signal n_2_rx_ll_i : STD_LOGIC;
  signal n_32_aurora_lane_0_i : STD_LOGIC;
  signal n_330_gt_wrapper_i : STD_LOGIC;
  signal n_331_gt_wrapper_i : STD_LOGIC;
  signal n_332_gt_wrapper_i : STD_LOGIC;
  signal n_333_gt_wrapper_i : STD_LOGIC;
  signal n_336_gt_wrapper_i : STD_LOGIC;
  signal n_338_gt_wrapper_i : STD_LOGIC;
  signal n_339_gt_wrapper_i : STD_LOGIC;
  signal n_340_gt_wrapper_i : STD_LOGIC;
  signal n_341_gt_wrapper_i : STD_LOGIC;
  signal n_342_gt_wrapper_i : STD_LOGIC;
  signal n_343_gt_wrapper_i : STD_LOGIC;
  signal n_344_gt_wrapper_i : STD_LOGIC;
  signal n_345_gt_wrapper_i : STD_LOGIC;
  signal n_346_gt_wrapper_i : STD_LOGIC;
  signal n_347_gt_wrapper_i : STD_LOGIC;
  signal n_348_gt_wrapper_i : STD_LOGIC;
  signal n_349_gt_wrapper_i : STD_LOGIC;
  signal n_34_aurora_lane_0_i : STD_LOGIC;
  signal n_350_gt_wrapper_i : STD_LOGIC;
  signal n_351_gt_wrapper_i : STD_LOGIC;
  signal n_352_gt_wrapper_i : STD_LOGIC;
  signal n_353_gt_wrapper_i : STD_LOGIC;
  signal n_35_aurora_lane_0_i : STD_LOGIC;
  signal n_37_aurora_lane_0_i : STD_LOGIC;
  signal n_70_aurora_lane_0_i : STD_LOGIC;
  signal reset_lanes_i : STD_LOGIC;
  signal rx_char_is_comma_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_ecp_i : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/FRAME_ERR0\ : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/storage_v_r\ : STD_LOGIC;
  signal rx_pe_data_v_i : STD_LOGIC;
  signal rx_polarity_i : STD_LOGIC;
  signal rx_realign_i : STD_LOGIC;
  signal tx_char_is_k_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_data_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tx_dst_rdy : STD_LOGIC;
  signal \tx_ll_control_i/reset_i\ : STD_LOGIC;
  signal \^tx_lock\ : STD_LOGIC;
  signal tx_reset_i : STD_LOGIC;
  signal \^tx_resetdone_out\ : STD_LOGIC;
begin
  O126 <= \^o126\;
  O127 <= \^o127\;
  lane_up <= \^lane_up\;
  link_reset_out <= \^link_reset_out\;
  tx_lock <= \^tx_lock\;
  tx_resetdone_out <= \^tx_resetdone_out\;
aurora_lane_0_i: entity work.aurora_8b10b_1_aurora_8b10b_1_AURORA_LANE
    port map (
      D(1 downto 0) => rx_char_is_comma_i(1 downto 0),
      FRAME_ERR0 => \rx_ll_pdu_datapath_i/FRAME_ERR0\,
      GEN_ECP => GEN_ECP,
      GEN_PAD => GEN_PAD,
      GEN_SCP => GEN_SCP,
      GOT_V => GOT_V,
      HARD_ERR => \^hard_err\,
      I1 => n_331_gt_wrapper_i,
      I10(7) => n_346_gt_wrapper_i,
      I10(6) => n_347_gt_wrapper_i,
      I10(5) => n_348_gt_wrapper_i,
      I10(4) => n_349_gt_wrapper_i,
      I10(3) => n_350_gt_wrapper_i,
      I10(2) => n_351_gt_wrapper_i,
      I10(1) => n_352_gt_wrapper_i,
      I10(0) => n_353_gt_wrapper_i,
      I11(1 downto 0) => \err_detect_i/p_2_out\(1 downto 0),
      I2 => n_332_gt_wrapper_i,
      I3 => n_336_gt_wrapper_i,
      I4 => n_2_rx_ll_i,
      I5 => n_333_gt_wrapper_i,
      I6(1) => gen_v_i(0),
      I6(0) => gen_v_i(1),
      I7(1) => gen_r_i(0),
      I7(0) => gen_r_i(1),
      I8(1) => gen_k_i(0),
      I8(0) => gen_k_i(1),
      I9(7) => n_338_gt_wrapper_i,
      I9(6) => n_339_gt_wrapper_i,
      I9(5) => n_340_gt_wrapper_i,
      I9(4) => n_341_gt_wrapper_i,
      I9(3) => n_342_gt_wrapper_i,
      I9(2) => n_343_gt_wrapper_i,
      I9(1) => n_344_gt_wrapper_i,
      I9(0) => n_345_gt_wrapper_i,
      O1 => n_32_aurora_lane_0_i,
      O2 => n_34_aurora_lane_0_i,
      O24(1 downto 0) => O24(1 downto 0),
      O25(1 downto 0) => O25(1 downto 0),
      O26(1 downto 0) => O26(1 downto 0),
      O27(1 downto 0) => O27(1 downto 0),
      O28(1 downto 0) => O28(1 downto 0),
      O29(1 downto 0) => O29(1 downto 0),
      O3 => n_35_aurora_lane_0_i,
      O4 => n_37_aurora_lane_0_i,
      O5(15) => RX_PE_DATA(0),
      O5(14) => RX_PE_DATA(1),
      O5(13) => RX_PE_DATA(2),
      O5(12) => RX_PE_DATA(3),
      O5(11) => RX_PE_DATA(4),
      O5(10) => RX_PE_DATA(5),
      O5(9) => RX_PE_DATA(6),
      O5(8) => RX_PE_DATA(7),
      O5(7) => RX_PE_DATA(8),
      O5(6) => RX_PE_DATA(9),
      O5(5) => RX_PE_DATA(10),
      O5(4) => RX_PE_DATA(11),
      O5(3) => RX_PE_DATA(12),
      O5(2) => RX_PE_DATA(13),
      O5(1) => RX_PE_DATA(14),
      O5(0) => RX_PE_DATA(15),
      O6 => n_70_aurora_lane_0_i,
      Q(15) => TX_PE_DATA(0),
      Q(14) => TX_PE_DATA(1),
      Q(13) => TX_PE_DATA(2),
      Q(12) => TX_PE_DATA(3),
      Q(11) => TX_PE_DATA(4),
      Q(10) => TX_PE_DATA(5),
      Q(9) => TX_PE_DATA(6),
      Q(8) => TX_PE_DATA(7),
      Q(7) => TX_PE_DATA(8),
      Q(6) => TX_PE_DATA(9),
      Q(5) => TX_PE_DATA(10),
      Q(4) => TX_PE_DATA(11),
      Q(3) => TX_PE_DATA(12),
      Q(2) => TX_PE_DATA(13),
      Q(1) => TX_PE_DATA(14),
      Q(0) => TX_PE_DATA(15),
      RX_PAD => RX_PAD,
      SR(0) => reset_lanes_i,
      START_RX => START_RX,
      TXCHARISK(1 downto 0) => tx_char_is_k_i(1 downto 0),
      TXDATA(15 downto 0) => tx_data_i(15 downto 0),
      TX_PE_DATA_V => TX_PE_DATA_V,
      bucket_full_r => \err_detect_i/bucket_full_r\,
      comma_over_two_cycles_r => \lane_init_sm_i/comma_over_two_cycles_r\,
      ena_comma_align_i => ena_comma_align_i,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      hard_err_flop_r0 => \err_detect_i/hard_err_flop_r0\,
      init_clk_in => init_clk_in,
      lane_up => \^lane_up\,
      link_reset_out => \^link_reset_out\,
      rx_ecp_i => rx_ecp_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      s_out_d1_cdc_to_21 => s_out_d1_cdc_to_21,
      s_out_d2_22 => s_out_d2_22,
      s_out_d3_23 => s_out_d3_23,
      s_out_d4_24 => s_out_d4_24,
      s_out_d5_25 => s_out_d5_25,
      s_out_d6_26 => s_out_d6_26,
      s_out_d7_27 => s_out_d7_27,
      storage_v_r => \rx_ll_pdu_datapath_i/storage_v_r\,
      tx_reset_i => tx_reset_i,
      user_clk => user_clk
    );
axi_to_ll_pdu_i: entity work.aurora_8b10b_1_aurora_8b10b_1_AXI_TO_LL
    port map (
      I1 => \^o127\,
      O1 => n_0_axi_to_ll_pdu_i,
      O2 => n_1_axi_to_ll_pdu_i,
      SR(0) => \^o126\,
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      tx_dst_rdy => tx_dst_rdy,
      user_clk => user_clk
    );
core_reset_logic_i: entity work.aurora_8b10b_1_aurora_8b10b_1_RESET_LOGIC
    port map (
      I1 => \^tx_resetdone_out\,
      I2 => n_330_gt_wrapper_i,
      I3 => \^tx_lock\,
      O1(1 downto 0) => O1(1 downto 0),
      O10(1 downto 0) => O10(1 downto 0),
      O11(1 downto 0) => O11(1 downto 0),
      O12(1 downto 0) => O12(1 downto 0),
      O13(1 downto 0) => O13(1 downto 0),
      O14(1 downto 0) => O14(1 downto 0),
      O15(1 downto 0) => O15(1 downto 0),
      O16(1 downto 0) => O16(1 downto 0),
      O17(1 downto 0) => O17(1 downto 0),
      O2(1 downto 0) => O2(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6(1 downto 0) => O6(1 downto 0),
      O7(1 downto 0) => O7(1 downto 0),
      O8(1 downto 0) => O8(1 downto 0),
      O9(1 downto 0) => O9(1 downto 0),
      SR(0) => \^o126\,
      init_clk_in => init_clk_in,
      link_reset_comb_r => link_reset_comb_r,
      link_reset_out => \^link_reset_out\,
      \out\(1 downto 0) => \out\(1 downto 0),
      reset => reset,
      s_out_d1_cdc_to => s_out_d1_cdc_to,
      s_out_d1_cdc_to_0 => s_out_d1_cdc_to_0,
      s_out_d1_cdc_to_7 => s_out_d1_cdc_to_7,
      s_out_d2 => s_out_d2,
      s_out_d2_1 => s_out_d2_1,
      s_out_d2_8 => s_out_d2_8,
      s_out_d3 => s_out_d3,
      s_out_d3_2 => s_out_d3_2,
      s_out_d3_9 => s_out_d3_9,
      s_out_d4 => s_out_d4,
      s_out_d4_10 => s_out_d4_10,
      s_out_d4_3 => s_out_d4_3,
      s_out_d5 => s_out_d5,
      s_out_d5_11 => s_out_d5_11,
      s_out_d5_4 => s_out_d5_4,
      s_out_d6 => s_out_d6,
      s_out_d6_12 => s_out_d6_12,
      s_out_d6_5 => s_out_d6_5,
      s_out_d7 => s_out_d7,
      s_out_d7_13 => s_out_d7_13,
      s_out_d7_6 => s_out_d7_6,
      user_clk => user_clk
    );
global_logic_i: entity work.aurora_8b10b_1_aurora_8b10b_1_GLOBAL_LOGIC
    port map (
      GOT_V => GOT_V,
      HARD_ERR => \^hard_err\,
      I1(0) => \^o126\,
      I2 => n_70_aurora_lane_0_i,
      I6(1) => gen_v_i(0),
      I6(0) => gen_v_i(1),
      I7(1) => gen_r_i(0),
      I7(0) => gen_r_i(1),
      I8(1) => gen_k_i(0),
      I8(0) => gen_k_i(1),
      O1 => \^o127\,
      SR(0) => reset_lanes_i,
      START_RX => START_RX,
      gen_a_i => gen_a_i,
      gtrxreset_i_0 => gtrxreset_i_0,
      \^hard_err\ => hard_err,
      lane_up => \^lane_up\,
      power_down => power_down,
      reset_i => \tx_ll_control_i/reset_i\,
      soft_err => soft_err,
      user_clk => user_clk
    );
gt_wrapper_i: entity work.aurora_8b10b_1_aurora_8b10b_1_GT_WRAPPER
    port map (
      D(1 downto 0) => rx_char_is_comma_i(1 downto 0),
      I1 => n_32_aurora_lane_0_i,
      I10(7) => n_346_gt_wrapper_i,
      I10(6) => n_347_gt_wrapper_i,
      I10(5) => n_348_gt_wrapper_i,
      I10(4) => n_349_gt_wrapper_i,
      I10(3) => n_350_gt_wrapper_i,
      I10(2) => n_351_gt_wrapper_i,
      I10(1) => n_352_gt_wrapper_i,
      I10(0) => n_353_gt_wrapper_i,
      I11(1 downto 0) => \err_detect_i/p_2_out\(1 downto 0),
      I9(7) => n_338_gt_wrapper_i,
      I9(6) => n_339_gt_wrapper_i,
      I9(5) => n_340_gt_wrapper_i,
      I9(4) => n_341_gt_wrapper_i,
      I9(3) => n_342_gt_wrapper_i,
      I9(2) => n_343_gt_wrapper_i,
      I9(1) => n_344_gt_wrapper_i,
      I9(0) => n_345_gt_wrapper_i,
      O1 => \^tx_resetdone_out\,
      O100(1 downto 0) => O100(1 downto 0),
      O101(1 downto 0) => O101(1 downto 0),
      O102(1 downto 0) => O102(1 downto 0),
      O103(1 downto 0) => O103(1 downto 0),
      O104(1 downto 0) => O104(1 downto 0),
      O105(1 downto 0) => O105(1 downto 0),
      O106(1 downto 0) => O106(1 downto 0),
      O107(1 downto 0) => O107(1 downto 0),
      O108(1 downto 0) => O108(1 downto 0),
      O109(1 downto 0) => O109(1 downto 0),
      O110(1 downto 0) => O110(1 downto 0),
      O111(1 downto 0) => O111(1 downto 0),
      O112(1 downto 0) => O112(1 downto 0),
      O113(1 downto 0) => O113(1 downto 0),
      O114(1 downto 0) => O114(1 downto 0),
      O115(1 downto 0) => O115(1 downto 0),
      O116(1 downto 0) => O116(1 downto 0),
      O117(1 downto 0) => O117(1 downto 0),
      O118(1 downto 0) => O118(1 downto 0),
      O119(1 downto 0) => O119(1 downto 0),
      O120(1 downto 0) => O120(1 downto 0),
      O121(1 downto 0) => O121(1 downto 0),
      O122(1 downto 0) => O122(1 downto 0),
      O123(1 downto 0) => O123(1 downto 0),
      O124(1 downto 0) => O124(1 downto 0),
      O125(1 downto 0) => O125(1 downto 0),
      O2 => \^tx_lock\,
      O3 => n_330_gt_wrapper_i,
      O30(1 downto 0) => O30(1 downto 0),
      O31(1 downto 0) => O31(1 downto 0),
      O32(1 downto 0) => O32(1 downto 0),
      O33(1 downto 0) => O33(1 downto 0),
      O34(1 downto 0) => O34(1 downto 0),
      O35(1 downto 0) => O35(1 downto 0),
      O36(1 downto 0) => O36(1 downto 0),
      O37(1 downto 0) => O37(1 downto 0),
      O38(1 downto 0) => O38(1 downto 0),
      O39(1 downto 0) => O39(1 downto 0),
      O4 => n_331_gt_wrapper_i,
      O40(1 downto 0) => O40(1 downto 0),
      O41(1 downto 0) => O41(1 downto 0),
      O42(1 downto 0) => O42(1 downto 0),
      O43(1 downto 0) => O43(1 downto 0),
      O44(1 downto 0) => O44(1 downto 0),
      O45(1 downto 0) => O45(1 downto 0),
      O46(1 downto 0) => O46(1 downto 0),
      O47(1 downto 0) => O47(1 downto 0),
      O48(1 downto 0) => O48(1 downto 0),
      O49(1 downto 0) => O49(1 downto 0),
      O5 => n_332_gt_wrapper_i,
      O50(1 downto 0) => O50(1 downto 0),
      O51(1 downto 0) => O51(1 downto 0),
      O52(1 downto 0) => O52(1 downto 0),
      O53(1 downto 0) => O53(1 downto 0),
      O54(1 downto 0) => O54(1 downto 0),
      O55(1 downto 0) => O55(1 downto 0),
      O56(1 downto 0) => O56(1 downto 0),
      O57(1 downto 0) => O57(1 downto 0),
      O58(1 downto 0) => O58(1 downto 0),
      O59(1 downto 0) => O59(1 downto 0),
      O6 => n_333_gt_wrapper_i,
      O60(1 downto 0) => O60(1 downto 0),
      O61(1 downto 0) => O61(1 downto 0),
      O62(1 downto 0) => O62(1 downto 0),
      O63(1 downto 0) => O63(1 downto 0),
      O64(1 downto 0) => O64(1 downto 0),
      O65(1 downto 0) => O65(1 downto 0),
      O66(1 downto 0) => O66(1 downto 0),
      O67(1 downto 0) => O67(1 downto 0),
      O68(1 downto 0) => O68(1 downto 0),
      O69(1 downto 0) => O69(1 downto 0),
      O7 => n_336_gt_wrapper_i,
      O70(1 downto 0) => O70(1 downto 0),
      O71(1 downto 0) => O71(1 downto 0),
      O72(1 downto 0) => O72(1 downto 0),
      O73(1 downto 0) => O73(1 downto 0),
      O74(1 downto 0) => O74(1 downto 0),
      O75(1 downto 0) => O75(1 downto 0),
      O76(1 downto 0) => O76(1 downto 0),
      O77(1 downto 0) => O77(1 downto 0),
      O78(1 downto 0) => O78(1 downto 0),
      O79(1 downto 0) => O79(1 downto 0),
      O80(1 downto 0) => O80(1 downto 0),
      O81(1 downto 0) => O81(1 downto 0),
      O82(1 downto 0) => O82(1 downto 0),
      O83(1 downto 0) => O83(1 downto 0),
      O84(1 downto 0) => O84(1 downto 0),
      O85(1 downto 0) => O85(1 downto 0),
      O86(1 downto 0) => O86(1 downto 0),
      O87(1 downto 0) => O87(1 downto 0),
      O88(1 downto 0) => O88(1 downto 0),
      O89(1 downto 0) => O89(1 downto 0),
      O90(1 downto 0) => O90(1 downto 0),
      O91(1 downto 0) => O91(1 downto 0),
      O92(1 downto 0) => O92(1 downto 0),
      O93(1 downto 0) => O93(1 downto 0),
      O94(1 downto 0) => O94(1 downto 0),
      O95(1 downto 0) => O95(1 downto 0),
      O96(1 downto 0) => O96(1 downto 0),
      O97(1 downto 0) => O97(1 downto 0),
      O98(1 downto 0) => O98(1 downto 0),
      O99(1 downto 0) => O99(1 downto 0),
      TXCHARISK(1 downto 0) => tx_char_is_k_i(1 downto 0),
      TXDATA(15 downto 0) => tx_data_i(15 downto 0),
      bucket_full_r => \err_detect_i/bucket_full_r\,
      comma_over_two_cycles_r => \lane_init_sm_i/comma_over_two_cycles_r\,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      gt_qpllclk_quad6_in => gt_qpllclk_quad6_in,
      gt_qpllrefclk_quad6_in => gt_qpllrefclk_quad6_in,
      gt_refclk1 => gt_refclk1,
      gt_reset => gt_reset,
      gtrxreset_i_0 => gtrxreset_i_0,
      hard_err_flop_r0 => \err_detect_i/hard_err_flop_r0\,
      init_clk_in => init_clk_in,
      link_reset_comb_r => link_reset_comb_r,
      loopback(2 downto 0) => loopback(2 downto 0),
      power_down => power_down,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rx_resetdone_out => rx_resetdone_out,
      rxn => rxn,
      rxp => rxp,
      s_out_d1_cdc_to_105 => s_out_d1_cdc_to_105,
      s_out_d1_cdc_to_112 => s_out_d1_cdc_to_112,
      s_out_d1_cdc_to_119 => s_out_d1_cdc_to_119,
      s_out_d1_cdc_to_126 => s_out_d1_cdc_to_126,
      s_out_d1_cdc_to_133 => s_out_d1_cdc_to_133,
      s_out_d1_cdc_to_28 => s_out_d1_cdc_to_28,
      s_out_d1_cdc_to_35 => s_out_d1_cdc_to_35,
      s_out_d1_cdc_to_42 => s_out_d1_cdc_to_42,
      s_out_d1_cdc_to_49 => s_out_d1_cdc_to_49,
      s_out_d1_cdc_to_56 => s_out_d1_cdc_to_56,
      s_out_d1_cdc_to_63 => s_out_d1_cdc_to_63,
      s_out_d1_cdc_to_70 => s_out_d1_cdc_to_70,
      s_out_d1_cdc_to_77 => s_out_d1_cdc_to_77,
      s_out_d1_cdc_to_84 => s_out_d1_cdc_to_84,
      s_out_d1_cdc_to_91 => s_out_d1_cdc_to_91,
      s_out_d1_cdc_to_98 => s_out_d1_cdc_to_98,
      s_out_d2_106 => s_out_d2_106,
      s_out_d2_113 => s_out_d2_113,
      s_out_d2_120 => s_out_d2_120,
      s_out_d2_127 => s_out_d2_127,
      s_out_d2_134 => s_out_d2_134,
      s_out_d2_29 => s_out_d2_29,
      s_out_d2_36 => s_out_d2_36,
      s_out_d2_43 => s_out_d2_43,
      s_out_d2_50 => s_out_d2_50,
      s_out_d2_57 => s_out_d2_57,
      s_out_d2_64 => s_out_d2_64,
      s_out_d2_71 => s_out_d2_71,
      s_out_d2_78 => s_out_d2_78,
      s_out_d2_85 => s_out_d2_85,
      s_out_d2_92 => s_out_d2_92,
      s_out_d2_99 => s_out_d2_99,
      s_out_d3_100 => s_out_d3_100,
      s_out_d3_107 => s_out_d3_107,
      s_out_d3_114 => s_out_d3_114,
      s_out_d3_121 => s_out_d3_121,
      s_out_d3_128 => s_out_d3_128,
      s_out_d3_135 => s_out_d3_135,
      s_out_d3_30 => s_out_d3_30,
      s_out_d3_37 => s_out_d3_37,
      s_out_d3_44 => s_out_d3_44,
      s_out_d3_51 => s_out_d3_51,
      s_out_d3_58 => s_out_d3_58,
      s_out_d3_65 => s_out_d3_65,
      s_out_d3_72 => s_out_d3_72,
      s_out_d3_79 => s_out_d3_79,
      s_out_d3_86 => s_out_d3_86,
      s_out_d3_93 => s_out_d3_93,
      s_out_d4_101 => s_out_d4_101,
      s_out_d4_108 => s_out_d4_108,
      s_out_d4_115 => s_out_d4_115,
      s_out_d4_122 => s_out_d4_122,
      s_out_d4_129 => s_out_d4_129,
      s_out_d4_136 => s_out_d4_136,
      s_out_d4_31 => s_out_d4_31,
      s_out_d4_38 => s_out_d4_38,
      s_out_d4_45 => s_out_d4_45,
      s_out_d4_52 => s_out_d4_52,
      s_out_d4_59 => s_out_d4_59,
      s_out_d4_66 => s_out_d4_66,
      s_out_d4_73 => s_out_d4_73,
      s_out_d4_80 => s_out_d4_80,
      s_out_d4_87 => s_out_d4_87,
      s_out_d4_94 => s_out_d4_94,
      s_out_d5_102 => s_out_d5_102,
      s_out_d5_109 => s_out_d5_109,
      s_out_d5_116 => s_out_d5_116,
      s_out_d5_123 => s_out_d5_123,
      s_out_d5_130 => s_out_d5_130,
      s_out_d5_137 => s_out_d5_137,
      s_out_d5_32 => s_out_d5_32,
      s_out_d5_39 => s_out_d5_39,
      s_out_d5_46 => s_out_d5_46,
      s_out_d5_53 => s_out_d5_53,
      s_out_d5_60 => s_out_d5_60,
      s_out_d5_67 => s_out_d5_67,
      s_out_d5_74 => s_out_d5_74,
      s_out_d5_81 => s_out_d5_81,
      s_out_d5_88 => s_out_d5_88,
      s_out_d5_95 => s_out_d5_95,
      s_out_d6_103 => s_out_d6_103,
      s_out_d6_110 => s_out_d6_110,
      s_out_d6_117 => s_out_d6_117,
      s_out_d6_124 => s_out_d6_124,
      s_out_d6_131 => s_out_d6_131,
      s_out_d6_138 => s_out_d6_138,
      s_out_d6_33 => s_out_d6_33,
      s_out_d6_40 => s_out_d6_40,
      s_out_d6_47 => s_out_d6_47,
      s_out_d6_54 => s_out_d6_54,
      s_out_d6_61 => s_out_d6_61,
      s_out_d6_68 => s_out_d6_68,
      s_out_d6_75 => s_out_d6_75,
      s_out_d6_82 => s_out_d6_82,
      s_out_d6_89 => s_out_d6_89,
      s_out_d6_96 => s_out_d6_96,
      s_out_d7_104 => s_out_d7_104,
      s_out_d7_111 => s_out_d7_111,
      s_out_d7_118 => s_out_d7_118,
      s_out_d7_125 => s_out_d7_125,
      s_out_d7_132 => s_out_d7_132,
      s_out_d7_139 => s_out_d7_139,
      s_out_d7_34 => s_out_d7_34,
      s_out_d7_41 => s_out_d7_41,
      s_out_d7_48 => s_out_d7_48,
      s_out_d7_55 => s_out_d7_55,
      s_out_d7_62 => s_out_d7_62,
      s_out_d7_69 => s_out_d7_69,
      s_out_d7_76 => s_out_d7_76,
      s_out_d7_83 => s_out_d7_83,
      s_out_d7_90 => s_out_d7_90,
      s_out_d7_97 => s_out_d7_97,
      sync_clk => sync_clk,
      tx_out_clk => tx_out_clk,
      tx_reset_i => tx_reset_i,
      txn => txn,
      txp => txp,
      user_clk => user_clk
    );
hpcnt_reset_cdc_sync: entity work.aurora_8b10b_1_aurora_8b10b_1_cdc_sync
    port map (
      O18(1 downto 0) => O18(1 downto 0),
      O19(1 downto 0) => O19(1 downto 0),
      O20(1 downto 0) => O20(1 downto 0),
      O21(1 downto 0) => O21(1 downto 0),
      O22(1 downto 0) => O22(1 downto 0),
      O23(1 downto 0) => O23(1 downto 0),
      init_clk_in => init_clk_in,
      reset => reset,
      s_out_d1_cdc_to_14 => s_out_d1_cdc_to_14,
      s_out_d2_15 => s_out_d2_15,
      s_out_d3_16 => s_out_d3_16,
      s_out_d4_17 => s_out_d4_17,
      s_out_d5_18 => s_out_d5_18,
      s_out_d6_19 => s_out_d6_19,
      s_out_d7_20 => s_out_d7_20
    );
rx_ll_i: entity work.aurora_8b10b_1_aurora_8b10b_1_RX_LL
    port map (
      D(15) => RX_PE_DATA(0),
      D(14) => RX_PE_DATA(1),
      D(13) => RX_PE_DATA(2),
      D(12) => RX_PE_DATA(3),
      D(11) => RX_PE_DATA(4),
      D(10) => RX_PE_DATA(5),
      D(9) => RX_PE_DATA(6),
      D(8) => RX_PE_DATA(7),
      D(7) => RX_PE_DATA(8),
      D(6) => RX_PE_DATA(9),
      D(5) => RX_PE_DATA(10),
      D(4) => RX_PE_DATA(11),
      D(3) => RX_PE_DATA(12),
      D(2) => RX_PE_DATA(13),
      D(1) => RX_PE_DATA(14),
      D(0) => RX_PE_DATA(15),
      FRAME_ERR0 => \rx_ll_pdu_datapath_i/FRAME_ERR0\,
      I1 => n_37_aurora_lane_0_i,
      I2 => n_35_aurora_lane_0_i,
      I3 => n_34_aurora_lane_0_i,
      O1 => n_2_rx_ll_i,
      RX_PAD => RX_PAD,
      START_RX => START_RX,
      frame_err => frame_err,
      m_axi_rx_tdata(0 to 15) => m_axi_rx_tdata(0 to 15),
      m_axi_rx_tkeep(0) => m_axi_rx_tkeep(0),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      rx_ecp_i => rx_ecp_i,
      rx_pe_data_v_i => rx_pe_data_v_i,
      storage_v_r => \rx_ll_pdu_datapath_i/storage_v_r\,
      user_clk => user_clk
    );
tx_ll_i: entity work.aurora_8b10b_1_aurora_8b10b_1_TX_LL
    port map (
      GEN_ECP => GEN_ECP,
      GEN_PAD => GEN_PAD,
      GEN_SCP => GEN_SCP,
      I1 => n_0_axi_to_ll_pdu_i,
      I2 => n_1_axi_to_ll_pdu_i,
      O127 => \^o127\,
      Q(15) => TX_PE_DATA(0),
      Q(14) => TX_PE_DATA(1),
      Q(13) => TX_PE_DATA(2),
      Q(12) => TX_PE_DATA(3),
      Q(11) => TX_PE_DATA(4),
      Q(10) => TX_PE_DATA(5),
      Q(9) => TX_PE_DATA(6),
      Q(8) => TX_PE_DATA(7),
      Q(7) => TX_PE_DATA(8),
      Q(6) => TX_PE_DATA(9),
      Q(5) => TX_PE_DATA(10),
      Q(4) => TX_PE_DATA(11),
      Q(3) => TX_PE_DATA(12),
      Q(2) => TX_PE_DATA(13),
      Q(1) => TX_PE_DATA(14),
      Q(0) => TX_PE_DATA(15),
      TX_PE_DATA_V => TX_PE_DATA_V,
      do_cc => do_cc,
      gen_cc_i => gen_cc_i,
      reset_i => \tx_ll_control_i/reset_i\,
      s_axi_tx_tdata(0 to 15) => s_axi_tx_tdata(0 to 15),
      s_axi_tx_tkeep(0 to 1) => s_axi_tx_tkeep(0 to 1),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      tx_dst_rdy => tx_dst_rdy,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_1 is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 15 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 1 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 15 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 1 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    frame_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    warn_cc : in STD_LOGIC;
    do_cc : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    gt_reset : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_lock : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpen_in : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpwe_in : in STD_LOGIC;
    gt0_qplllock_in : in STD_LOGIC;
    gt0_qpllrefclklost_in : in STD_LOGIC;
    gt0_qpllreset_out : out STD_LOGIC;
    gt_qpllclk_quad6_in : in STD_LOGIC;
    gt_qpllrefclk_quad6_in : in STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    pll_not_locked : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of aurora_8b10b_1 : entity is true;
  attribute core_generation_info : string;
  attribute core_generation_info of aurora_8b10b_1 : entity is "aurora_8b10b_1,aurora_8b10b_v10_3,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=right,c_gt_clock_1=GTXQ5,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=1,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=2,c_line_rate=62500,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=250000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}";
end aurora_8b10b_1;

architecture STRUCTURE of aurora_8b10b_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/link_reset_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \core_reset_logic_i/link_reset_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \core_reset_logic_i/link_reset_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \core_reset_logic_i/link_reset_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \core_reset_logic_i/link_reset_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \core_reset_logic_i/link_reset_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \core_reset_logic_i/link_reset_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_lock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \hpcnt_reset_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hpcnt_reset_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hpcnt_reset_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hpcnt_reset_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hpcnt_reset_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hpcnt_reset_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hpcnt_reset_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \hpcnt_reset_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \hpcnt_reset_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \hpcnt_reset_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \hpcnt_reset_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \hpcnt_reset_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \hpcnt_reset_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \^m_axi_rx_tkeep\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  gt0_qpllreset_out <= \<const0>\;
  m_axi_rx_tkeep(0) <= \<const1>\;
  m_axi_rx_tkeep(1) <= \^m_axi_rx_tkeep\(1);
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
inst: entity work.aurora_8b10b_1_aurora_8b10b_1_core
    port map (
      O1(1 downto 0) => \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O10(1 downto 0) => \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O100(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O101(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O102(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O103(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O104(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O105(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O106(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O107(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O108(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O109(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O11(1 downto 0) => \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O110(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O111(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O112(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O113(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O114(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O115(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O116(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O117(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O118(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O119(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O12(1 downto 0) => \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O120(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O121(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O122(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O123(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O124(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O125(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O126 => sys_reset_out,
      O127 => channel_up,
      O13(1 downto 0) => \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O14(1 downto 0) => \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O15(1 downto 0) => \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O16(1 downto 0) => \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O17(1 downto 0) => \core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O18(1 downto 0) => \hpcnt_reset_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O19(1 downto 0) => \hpcnt_reset_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O2(1 downto 0) => \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O20(1 downto 0) => \hpcnt_reset_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O21(1 downto 0) => \hpcnt_reset_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O22(1 downto 0) => \hpcnt_reset_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O23(1 downto 0) => \hpcnt_reset_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O24(1 downto 0) => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O25(1 downto 0) => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O26(1 downto 0) => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O27(1 downto 0) => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O28(1 downto 0) => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O29(1 downto 0) => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O3(1 downto 0) => \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O30(1 downto 0) => \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O31(1 downto 0) => \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O32(1 downto 0) => \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O33(1 downto 0) => \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O34(1 downto 0) => \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O35(1 downto 0) => \gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O36(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O37(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O38(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O39(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O4(1 downto 0) => \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O40(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O41(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O42(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O43(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O44(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O45(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O46(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O47(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O48(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O49(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O5(1 downto 0) => \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O50(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O51(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O52(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O53(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O54(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O55(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O56(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O57(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O58(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O59(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O6(1 downto 0) => \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O60(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O61(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O62(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O63(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O64(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O65(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O66(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O67(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O68(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O69(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O7(1 downto 0) => \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O70(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O71(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O72(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O73(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O74(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O75(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O76(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O77(1 downto 0) => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O78(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O79(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O8(1 downto 0) => \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O80(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O81(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O82(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O83(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O84(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O85(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O86(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O87(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O88(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O89(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O9(1 downto 0) => \core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O90(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O91(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O92(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O93(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O94(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O95(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O96(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O97(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O98(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O99(1 downto 0) => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      do_cc => do_cc,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      frame_err => frame_err,
      gt_qpllclk_quad6_in => gt_qpllclk_quad6_in,
      gt_qpllrefclk_quad6_in => gt_qpllrefclk_quad6_in,
      gt_refclk1 => gt_refclk1,
      gt_reset => gt_reset,
      hard_err => hard_err,
      init_clk_in => init_clk_in,
      lane_up => lane_up,
      link_reset_out => link_reset_out,
      loopback(2 downto 0) => loopback(2 downto 0),
      m_axi_rx_tdata(0 to 15) => m_axi_rx_tdata(0 to 15),
      m_axi_rx_tkeep(0) => \^m_axi_rx_tkeep\(1),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      \out\(1 downto 0) => \core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      power_down => power_down,
      reset => reset,
      rx_resetdone_out => rx_resetdone_out,
      rxn => rxn,
      rxp => rxp,
      s_axi_tx_tdata(0 to 15) => s_axi_tx_tdata(0 to 15),
      s_axi_tx_tkeep(0 to 1) => s_axi_tx_tkeep(0 to 1),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      s_out_d1_cdc_to => \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_0 => \core_reset_logic_i/link_reset_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_105 => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_112 => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_119 => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_126 => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_133 => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_14 => \hpcnt_reset_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_21 => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_28 => \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_35 => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_42 => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_49 => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_56 => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_63 => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_7 => \core_reset_logic_i/tx_lock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_70 => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_77 => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_84 => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_91 => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_98 => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to\,
      s_out_d2 => \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d2\,
      s_out_d2_1 => \core_reset_logic_i/link_reset_cdc_sync/s_out_d2\,
      s_out_d2_106 => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d2\,
      s_out_d2_113 => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2\,
      s_out_d2_120 => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d2\,
      s_out_d2_127 => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d2\,
      s_out_d2_134 => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d2\,
      s_out_d2_15 => \hpcnt_reset_cdc_sync/s_out_d2\,
      s_out_d2_22 => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d2\,
      s_out_d2_29 => \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d2\,
      s_out_d2_36 => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2\,
      s_out_d2_43 => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d2\,
      s_out_d2_50 => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2\,
      s_out_d2_57 => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d2\,
      s_out_d2_64 => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2\,
      s_out_d2_71 => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d2\,
      s_out_d2_78 => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d2\,
      s_out_d2_8 => \core_reset_logic_i/tx_lock_cdc_sync/s_out_d2\,
      s_out_d2_85 => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2\,
      s_out_d2_92 => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d2\,
      s_out_d2_99 => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2\,
      s_out_d3 => \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d3\,
      s_out_d3_100 => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3\,
      s_out_d3_107 => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d3\,
      s_out_d3_114 => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3\,
      s_out_d3_121 => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d3\,
      s_out_d3_128 => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d3\,
      s_out_d3_135 => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d3\,
      s_out_d3_16 => \hpcnt_reset_cdc_sync/s_out_d3\,
      s_out_d3_2 => \core_reset_logic_i/link_reset_cdc_sync/s_out_d3\,
      s_out_d3_23 => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d3\,
      s_out_d3_30 => \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d3\,
      s_out_d3_37 => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3\,
      s_out_d3_44 => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d3\,
      s_out_d3_51 => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3\,
      s_out_d3_58 => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d3\,
      s_out_d3_65 => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3\,
      s_out_d3_72 => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d3\,
      s_out_d3_79 => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d3\,
      s_out_d3_86 => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3\,
      s_out_d3_9 => \core_reset_logic_i/tx_lock_cdc_sync/s_out_d3\,
      s_out_d3_93 => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d3\,
      s_out_d4 => \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d4\,
      s_out_d4_10 => \core_reset_logic_i/tx_lock_cdc_sync/s_out_d4\,
      s_out_d4_101 => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4\,
      s_out_d4_108 => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d4\,
      s_out_d4_115 => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4\,
      s_out_d4_122 => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d4\,
      s_out_d4_129 => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d4\,
      s_out_d4_136 => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d4\,
      s_out_d4_17 => \hpcnt_reset_cdc_sync/s_out_d4\,
      s_out_d4_24 => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d4\,
      s_out_d4_3 => \core_reset_logic_i/link_reset_cdc_sync/s_out_d4\,
      s_out_d4_31 => \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d4\,
      s_out_d4_38 => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4\,
      s_out_d4_45 => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d4\,
      s_out_d4_52 => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4\,
      s_out_d4_59 => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d4\,
      s_out_d4_66 => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4\,
      s_out_d4_73 => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d4\,
      s_out_d4_80 => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d4\,
      s_out_d4_87 => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4\,
      s_out_d4_94 => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d4\,
      s_out_d5 => \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d5\,
      s_out_d5_102 => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5\,
      s_out_d5_109 => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d5\,
      s_out_d5_11 => \core_reset_logic_i/tx_lock_cdc_sync/s_out_d5\,
      s_out_d5_116 => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5\,
      s_out_d5_123 => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d5\,
      s_out_d5_130 => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d5\,
      s_out_d5_137 => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d5\,
      s_out_d5_18 => \hpcnt_reset_cdc_sync/s_out_d5\,
      s_out_d5_25 => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d5\,
      s_out_d5_32 => \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d5\,
      s_out_d5_39 => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5\,
      s_out_d5_4 => \core_reset_logic_i/link_reset_cdc_sync/s_out_d5\,
      s_out_d5_46 => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d5\,
      s_out_d5_53 => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5\,
      s_out_d5_60 => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d5\,
      s_out_d5_67 => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5\,
      s_out_d5_74 => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d5\,
      s_out_d5_81 => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d5\,
      s_out_d5_88 => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5\,
      s_out_d5_95 => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d5\,
      s_out_d6 => \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d6\,
      s_out_d6_103 => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6\,
      s_out_d6_110 => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d6\,
      s_out_d6_117 => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6\,
      s_out_d6_12 => \core_reset_logic_i/tx_lock_cdc_sync/s_out_d6\,
      s_out_d6_124 => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d6\,
      s_out_d6_131 => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d6\,
      s_out_d6_138 => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d6\,
      s_out_d6_19 => \hpcnt_reset_cdc_sync/s_out_d6\,
      s_out_d6_26 => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d6\,
      s_out_d6_33 => \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d6\,
      s_out_d6_40 => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6\,
      s_out_d6_47 => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d6\,
      s_out_d6_5 => \core_reset_logic_i/link_reset_cdc_sync/s_out_d6\,
      s_out_d6_54 => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6\,
      s_out_d6_61 => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d6\,
      s_out_d6_68 => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6\,
      s_out_d6_75 => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d6\,
      s_out_d6_82 => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d6\,
      s_out_d6_89 => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6\,
      s_out_d6_96 => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d6\,
      s_out_d7 => \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d7\,
      s_out_d7_104 => \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7\,
      s_out_d7_111 => \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d7\,
      s_out_d7_118 => \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7\,
      s_out_d7_125 => \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d7\,
      s_out_d7_13 => \core_reset_logic_i/tx_lock_cdc_sync/s_out_d7\,
      s_out_d7_132 => \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d7\,
      s_out_d7_139 => \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d7\,
      s_out_d7_20 => \hpcnt_reset_cdc_sync/s_out_d7\,
      s_out_d7_27 => \aurora_lane_0_i/aurora_8b10b_1_hotplug_i/rx_cc_cdc_sync/s_out_d7\,
      s_out_d7_34 => \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d7\,
      s_out_d7_41 => \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7\,
      s_out_d7_48 => \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d7\,
      s_out_d7_55 => \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7\,
      s_out_d7_6 => \core_reset_logic_i/link_reset_cdc_sync/s_out_d7\,
      s_out_d7_62 => \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d7\,
      s_out_d7_69 => \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7\,
      s_out_d7_76 => \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d7\,
      s_out_d7_83 => \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d7\,
      s_out_d7_90 => \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7\,
      s_out_d7_97 => \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d7\,
      soft_err => soft_err,
      sync_clk => sync_clk,
      tx_lock => tx_lock,
      tx_out_clk => tx_out_clk,
      tx_resetdone_out => tx_resetdone_out,
      txn => txn,
      txp => txp,
      user_clk => user_clk
    );
end STRUCTURE;
