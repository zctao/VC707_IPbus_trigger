-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Tue Apr 21 13:11:51 2015
-- Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ZhengchengTao/Documents/VC707_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/axis_dwidth_converter_0/axis_dwidth_converter_0_funcsim.vhdl
-- Design      : axis_dwidth_converter_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axisc_downsizer is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axisc_downsizer : entity is "axis_dwidth_converter_v1_1_axisc_downsizer";
end axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axisc_downsizer;

architecture STRUCTURE of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axisc_downsizer is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal last_out0 : STD_LOGIC;
  signal \n_0_r0_data[63]_i_1\ : STD_LOGIC;
  signal \n_0_r0_is_null_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_r0_is_null_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_r0_is_null_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_r0_is_null_r_reg[3]\ : STD_LOGIC;
  signal n_0_r0_last_i_1 : STD_LOGIC;
  signal n_0_r0_last_reg : STD_LOGIC;
  signal \n_0_r0_out_sel_next_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_r0_out_sel_next_r[0]_i_2\ : STD_LOGIC;
  signal \n_0_r0_out_sel_next_r[0]_i_5\ : STD_LOGIC;
  signal \n_0_r0_out_sel_next_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_r0_out_sel_next_r[1]_i_2\ : STD_LOGIC;
  signal \n_0_r0_out_sel_next_r_reg[0]\ : STD_LOGIC;
  signal \n_0_r0_out_sel_next_r_reg[1]\ : STD_LOGIC;
  signal \n_0_r0_out_sel_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_r0_out_sel_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_r0_out_sel_r[1]_i_2\ : STD_LOGIC;
  signal \n_0_r0_out_sel_r_reg[0]\ : STD_LOGIC;
  signal \n_0_r0_out_sel_r_reg[1]\ : STD_LOGIC;
  signal \n_0_r1_data[0]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[10]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[11]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[12]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[13]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[14]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[15]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[15]_i_2\ : STD_LOGIC;
  signal \n_0_r1_data[1]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[2]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[3]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[4]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[5]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[6]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[7]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[8]_i_1\ : STD_LOGIC;
  signal \n_0_r1_data[9]_i_1\ : STD_LOGIC;
  signal \n_0_r1_keep[0]_i_1\ : STD_LOGIC;
  signal \n_0_r1_keep[1]_i_1\ : STD_LOGIC;
  signal n_0_r1_last_i_1 : STD_LOGIC;
  signal n_0_r1_last_reg : STD_LOGIC;
  signal \n_0_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_state[0]_i_2\ : STD_LOGIC;
  signal \n_0_state[0]_i_3\ : STD_LOGIC;
  signal \n_0_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_state_reg[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r0_data : STD_LOGIC_VECTOR ( 63 downto 48 );
  signal r0_is_null_r : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal r0_is_null_r_1 : STD_LOGIC;
  signal r0_keep : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal state14_out : STD_LOGIC;
  signal xfer_is_end : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r0_out_sel_next_r[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r0_out_sel_next_r[0]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r0_out_sel_r[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[0]_i_4\ : label is "soft_lutpair2";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(48),
      I1 => p_0_in(16),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(32),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(58),
      I1 => p_0_in(26),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(42),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(59),
      I1 => p_0_in(27),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(43),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(60),
      I1 => p_0_in(28),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(44),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(12),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(61),
      I1 => p_0_in(29),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(45),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(13),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(62),
      I1 => p_0_in(30),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(46),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(14),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(63),
      I1 => p_0_in(31),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(47),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(15),
      O => m_axis_tdata(15)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(49),
      I1 => p_0_in(17),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(33),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(50),
      I1 => p_0_in(18),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(34),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(51),
      I1 => p_0_in(19),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(35),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(52),
      I1 => p_0_in(20),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(36),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(53),
      I1 => p_0_in(21),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(37),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(54),
      I1 => p_0_in(22),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(38),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(55),
      I1 => p_0_in(23),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(39),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(56),
      I1 => p_0_in(24),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(40),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(8),
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_0_in(57),
      I1 => p_0_in(25),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_0_in(41),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_0_in(9),
      O => m_axis_tdata(9)
    );
\m_axis_tkeep[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_1_in(6),
      I1 => p_1_in(2),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_1_in(4),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_1_in(0),
      O => m_axis_tkeep(0)
    );
\m_axis_tkeep[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => p_1_in(7),
      I1 => p_1_in(3),
      I2 => \n_0_r0_out_sel_r_reg[0]\,
      I3 => p_1_in(5),
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      I5 => p_1_in(1),
      O => m_axis_tkeep(1)
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
    port map (
      I0 => n_0_r1_last_reg,
      I1 => \^o2\,
      I2 => \n_0_state_reg[2]\,
      I3 => \^o1\,
      I4 => last_out0,
      O => m_axis_tlast
    );
m_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => r0_is_null_r(1),
      I1 => \n_0_r0_is_null_r_reg[3]\,
      I2 => r0_is_null_r(2),
      I3 => n_0_r0_last_reg,
      O => last_out0
    );
\r0_data[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => aclken,
      I1 => \^o1\,
      I2 => \n_0_state_reg[2]\,
      O => \n_0_r0_data[63]_i_1\
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(0),
      Q => p_0_in(0),
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(10),
      Q => p_0_in(10),
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(11),
      Q => p_0_in(11),
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(12),
      Q => p_0_in(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(13),
      Q => p_0_in(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(14),
      Q => p_0_in(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(15),
      Q => p_0_in(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(16),
      Q => p_0_in(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(17),
      Q => p_0_in(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(18),
      Q => p_0_in(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(19),
      Q => p_0_in(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(1),
      Q => p_0_in(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(20),
      Q => p_0_in(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(21),
      Q => p_0_in(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(22),
      Q => p_0_in(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(23),
      Q => p_0_in(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(24),
      Q => p_0_in(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(25),
      Q => p_0_in(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(26),
      Q => p_0_in(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(27),
      Q => p_0_in(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(28),
      Q => p_0_in(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(29),
      Q => p_0_in(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(2),
      Q => p_0_in(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(30),
      Q => p_0_in(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(31),
      Q => p_0_in(31),
      R => '0'
    );
\r0_data_reg[32]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(32),
      Q => p_0_in(32),
      R => '0'
    );
\r0_data_reg[33]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(33),
      Q => p_0_in(33),
      R => '0'
    );
\r0_data_reg[34]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(34),
      Q => p_0_in(34),
      R => '0'
    );
\r0_data_reg[35]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(35),
      Q => p_0_in(35),
      R => '0'
    );
\r0_data_reg[36]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(36),
      Q => p_0_in(36),
      R => '0'
    );
\r0_data_reg[37]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(37),
      Q => p_0_in(37),
      R => '0'
    );
\r0_data_reg[38]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(38),
      Q => p_0_in(38),
      R => '0'
    );
\r0_data_reg[39]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(39),
      Q => p_0_in(39),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(3),
      Q => p_0_in(3),
      R => '0'
    );
\r0_data_reg[40]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(40),
      Q => p_0_in(40),
      R => '0'
    );
\r0_data_reg[41]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(41),
      Q => p_0_in(41),
      R => '0'
    );
\r0_data_reg[42]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(42),
      Q => p_0_in(42),
      R => '0'
    );
\r0_data_reg[43]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(43),
      Q => p_0_in(43),
      R => '0'
    );
\r0_data_reg[44]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(44),
      Q => p_0_in(44),
      R => '0'
    );
\r0_data_reg[45]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(45),
      Q => p_0_in(45),
      R => '0'
    );
\r0_data_reg[46]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(46),
      Q => p_0_in(46),
      R => '0'
    );
\r0_data_reg[47]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(47),
      Q => p_0_in(47),
      R => '0'
    );
\r0_data_reg[48]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(48),
      Q => r0_data(48),
      R => '0'
    );
\r0_data_reg[49]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(49),
      Q => r0_data(49),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(4),
      Q => p_0_in(4),
      R => '0'
    );
\r0_data_reg[50]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(50),
      Q => r0_data(50),
      R => '0'
    );
\r0_data_reg[51]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(51),
      Q => r0_data(51),
      R => '0'
    );
\r0_data_reg[52]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(52),
      Q => r0_data(52),
      R => '0'
    );
\r0_data_reg[53]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(53),
      Q => r0_data(53),
      R => '0'
    );
\r0_data_reg[54]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(54),
      Q => r0_data(54),
      R => '0'
    );
\r0_data_reg[55]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(55),
      Q => r0_data(55),
      R => '0'
    );
\r0_data_reg[56]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(56),
      Q => r0_data(56),
      R => '0'
    );
\r0_data_reg[57]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(57),
      Q => r0_data(57),
      R => '0'
    );
\r0_data_reg[58]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(58),
      Q => r0_data(58),
      R => '0'
    );
\r0_data_reg[59]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(59),
      Q => r0_data(59),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(5),
      Q => p_0_in(5),
      R => '0'
    );
\r0_data_reg[60]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(60),
      Q => r0_data(60),
      R => '0'
    );
\r0_data_reg[61]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(61),
      Q => r0_data(61),
      R => '0'
    );
\r0_data_reg[62]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(62),
      Q => r0_data(62),
      R => '0'
    );
\r0_data_reg[63]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(63),
      Q => r0_data(63),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(6),
      Q => p_0_in(6),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(7),
      Q => p_0_in(7),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(8),
      Q => p_0_in(8),
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tdata(9),
      Q => p_0_in(9),
      R => '0'
    );
\r0_is_null_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
    port map (
      I0 => s_axis_tkeep(3),
      I1 => s_axis_tkeep(2),
      I2 => r0_is_null_r_1,
      I3 => r0_is_null_r(1),
      O => \n_0_r0_is_null_r[1]_i_1\
    );
\r0_is_null_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
    port map (
      I0 => s_axis_tkeep(5),
      I1 => s_axis_tkeep(4),
      I2 => r0_is_null_r_1,
      I3 => r0_is_null_r(2),
      O => \n_0_r0_is_null_r[2]_i_1\
    );
\r0_is_null_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
    port map (
      I0 => s_axis_tkeep(7),
      I1 => s_axis_tkeep(6),
      I2 => r0_is_null_r_1,
      I3 => \n_0_r0_is_null_r_reg[3]\,
      O => \n_0_r0_is_null_r[3]_i_1\
    );
\r0_is_null_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => \^o1\,
      I1 => aclken,
      I2 => \n_0_state_reg[2]\,
      I3 => s_axis_tvalid,
      O => r0_is_null_r_1
    );
\r0_is_null_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_r0_is_null_r[1]_i_1\,
      Q => r0_is_null_r(1),
      R => areset_r
    );
\r0_is_null_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_r0_is_null_r[2]_i_1\,
      Q => r0_is_null_r(2),
      R => areset_r
    );
\r0_is_null_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_r0_is_null_r[3]_i_1\,
      Q => \n_0_r0_is_null_r_reg[3]\,
      R => areset_r
    );
\r0_keep_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tkeep(0),
      Q => p_1_in(0),
      R => '0'
    );
\r0_keep_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tkeep(1),
      Q => p_1_in(1),
      R => '0'
    );
\r0_keep_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tkeep(2),
      Q => p_1_in(2),
      R => '0'
    );
\r0_keep_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tkeep(3),
      Q => p_1_in(3),
      R => '0'
    );
\r0_keep_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tkeep(4),
      Q => p_1_in(4),
      R => '0'
    );
\r0_keep_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tkeep(5),
      Q => p_1_in(5),
      R => '0'
    );
\r0_keep_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tkeep(6),
      Q => r0_keep(6),
      R => '0'
    );
\r0_keep_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r0_data[63]_i_1\,
      D => s_axis_tkeep(7),
      Q => r0_keep(7),
      R => '0'
    );
r0_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
    port map (
      I0 => s_axis_tlast,
      I1 => \n_0_state_reg[2]\,
      I2 => aclken,
      I3 => \^o1\,
      I4 => n_0_r0_last_reg,
      O => n_0_r0_last_i_1
    );
r0_last_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_r0_last_i_1,
      Q => n_0_r0_last_reg,
      R => '0'
    );
\r0_out_sel_next_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEAEAEA"
    )
    port map (
      I0 => areset_r,
      I1 => p_0_in_0,
      I2 => aclken,
      I3 => xfer_is_end,
      I4 => m_axis_tready,
      O => \n_0_r0_out_sel_next_r[0]_i_1\
    );
\r0_out_sel_next_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F8787878"
    )
    port map (
      I0 => m_axis_tready,
      I1 => aclken,
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => \n_0_r0_is_null_r_reg[3]\,
      I4 => r0_is_null_r(2),
      I5 => \n_0_r0_out_sel_next_r[0]_i_5\,
      O => \n_0_r0_out_sel_next_r[0]_i_2\
    );
\r0_out_sel_next_r[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \^o1\,
      I1 => \n_0_state_reg[2]\,
      I2 => \^o2\,
      O => p_0_in_0
    );
\r0_out_sel_next_r[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAA080"
    )
    port map (
      I0 => \n_0_r0_is_null_r_reg[3]\,
      I1 => r0_is_null_r(1),
      I2 => r0_is_null_r(2),
      I3 => \n_0_r0_out_sel_r_reg[0]\,
      I4 => \n_0_r0_out_sel_r_reg[1]\,
      O => xfer_is_end
    );
\r0_out_sel_next_r[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA8888"
    )
    port map (
      I0 => \n_0_r0_out_sel_next_r_reg[1]\,
      I1 => \n_0_r0_out_sel_next_r_reg[0]\,
      I2 => r0_is_null_r(2),
      I3 => r0_is_null_r(1),
      I4 => \n_0_r0_is_null_r_reg[3]\,
      O => \n_0_r0_out_sel_next_r[0]_i_5\
    );
\r0_out_sel_next_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \n_0_r0_out_sel_next_r_reg[1]\,
      I1 => \n_0_r0_out_sel_next_r[1]_i_2\,
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => \n_0_r0_out_sel_next_r[0]_i_1\,
      O => \n_0_r0_out_sel_next_r[1]_i_1\
    );
\r0_out_sel_next_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008888888"
    )
    port map (
      I0 => m_axis_tready,
      I1 => aclken,
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => \n_0_r0_is_null_r_reg[3]\,
      I4 => r0_is_null_r(2),
      I5 => \n_0_r0_out_sel_next_r[0]_i_5\,
      O => \n_0_r0_out_sel_next_r[1]_i_2\
    );
\r0_out_sel_next_r_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_r0_out_sel_next_r[0]_i_2\,
      Q => \n_0_r0_out_sel_next_r_reg[0]\,
      S => \n_0_r0_out_sel_next_r[0]_i_1\
    );
\r0_out_sel_next_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_r0_out_sel_next_r[1]_i_1\,
      Q => \n_0_r0_out_sel_next_r_reg[1]\,
      R => '0'
    );
\r0_out_sel_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFC0BF80"
    )
    port map (
      I0 => \n_0_r0_out_sel_next_r_reg[0]\,
      I1 => aclken,
      I2 => m_axis_tready,
      I3 => \n_0_r0_out_sel_r_reg[0]\,
      I4 => \n_0_r0_out_sel_r[1]_i_2\,
      I5 => \n_0_r0_out_sel_next_r[0]_i_1\,
      O => \n_0_r0_out_sel_r[0]_i_1\
    );
\r0_out_sel_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFC0BF80"
    )
    port map (
      I0 => \n_0_r0_out_sel_next_r_reg[1]\,
      I1 => aclken,
      I2 => m_axis_tready,
      I3 => \n_0_r0_out_sel_r_reg[1]\,
      I4 => \n_0_r0_out_sel_r[1]_i_2\,
      I5 => \n_0_r0_out_sel_next_r[0]_i_1\,
      O => \n_0_r0_out_sel_r[1]_i_1\
    );
\r0_out_sel_r[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCCEC00"
    )
    port map (
      I0 => r0_is_null_r(1),
      I1 => \n_0_r0_out_sel_next_r_reg[1]\,
      I2 => r0_is_null_r(2),
      I3 => \n_0_r0_is_null_r_reg[3]\,
      I4 => \n_0_r0_out_sel_next_r_reg[0]\,
      O => \n_0_r0_out_sel_r[1]_i_2\
    );
\r0_out_sel_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_r0_out_sel_r[0]_i_1\,
      Q => \n_0_r0_out_sel_r_reg[0]\,
      R => '0'
    );
\r0_out_sel_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_r0_out_sel_r[1]_i_1\,
      Q => \n_0_r0_out_sel_r_reg[1]\,
      R => '0'
    );
\r1_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(48),
      I1 => p_0_in(16),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(32),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(0),
      O => \n_0_r1_data[0]_i_1\
    );
\r1_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(58),
      I1 => p_0_in(26),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(42),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(10),
      O => \n_0_r1_data[10]_i_1\
    );
\r1_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(59),
      I1 => p_0_in(27),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(43),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(11),
      O => \n_0_r1_data[11]_i_1\
    );
\r1_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(60),
      I1 => p_0_in(28),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(44),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(12),
      O => \n_0_r1_data[12]_i_1\
    );
\r1_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(61),
      I1 => p_0_in(29),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(45),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(13),
      O => \n_0_r1_data[13]_i_1\
    );
\r1_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(62),
      I1 => p_0_in(30),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(46),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(14),
      O => \n_0_r1_data[14]_i_1\
    );
\r1_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => aclken,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => \n_0_state_reg[2]\,
      O => \n_0_r1_data[15]_i_1\
    );
\r1_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(63),
      I1 => p_0_in(31),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(47),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(15),
      O => \n_0_r1_data[15]_i_2\
    );
\r1_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(49),
      I1 => p_0_in(17),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(33),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(1),
      O => \n_0_r1_data[1]_i_1\
    );
\r1_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(50),
      I1 => p_0_in(18),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(34),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(2),
      O => \n_0_r1_data[2]_i_1\
    );
\r1_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(51),
      I1 => p_0_in(19),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(35),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(3),
      O => \n_0_r1_data[3]_i_1\
    );
\r1_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(52),
      I1 => p_0_in(20),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(36),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(4),
      O => \n_0_r1_data[4]_i_1\
    );
\r1_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(53),
      I1 => p_0_in(21),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(37),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(5),
      O => \n_0_r1_data[5]_i_1\
    );
\r1_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(54),
      I1 => p_0_in(22),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(38),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(6),
      O => \n_0_r1_data[6]_i_1\
    );
\r1_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(55),
      I1 => p_0_in(23),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(39),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(7),
      O => \n_0_r1_data[7]_i_1\
    );
\r1_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(56),
      I1 => p_0_in(24),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(40),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(8),
      O => \n_0_r1_data[8]_i_1\
    );
\r1_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_data(57),
      I1 => p_0_in(25),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_0_in(41),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_0_in(9),
      O => \n_0_r1_data[9]_i_1\
    );
\r1_data_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[0]_i_1\,
      Q => p_0_in(48),
      R => '0'
    );
\r1_data_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[10]_i_1\,
      Q => p_0_in(58),
      R => '0'
    );
\r1_data_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[11]_i_1\,
      Q => p_0_in(59),
      R => '0'
    );
\r1_data_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[12]_i_1\,
      Q => p_0_in(60),
      R => '0'
    );
\r1_data_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[13]_i_1\,
      Q => p_0_in(61),
      R => '0'
    );
\r1_data_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[14]_i_1\,
      Q => p_0_in(62),
      R => '0'
    );
\r1_data_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[15]_i_2\,
      Q => p_0_in(63),
      R => '0'
    );
\r1_data_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[1]_i_1\,
      Q => p_0_in(49),
      R => '0'
    );
\r1_data_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[2]_i_1\,
      Q => p_0_in(50),
      R => '0'
    );
\r1_data_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[3]_i_1\,
      Q => p_0_in(51),
      R => '0'
    );
\r1_data_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[4]_i_1\,
      Q => p_0_in(52),
      R => '0'
    );
\r1_data_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[5]_i_1\,
      Q => p_0_in(53),
      R => '0'
    );
\r1_data_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[6]_i_1\,
      Q => p_0_in(54),
      R => '0'
    );
\r1_data_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[7]_i_1\,
      Q => p_0_in(55),
      R => '0'
    );
\r1_data_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[8]_i_1\,
      Q => p_0_in(56),
      R => '0'
    );
\r1_data_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_data[9]_i_1\,
      Q => p_0_in(57),
      R => '0'
    );
\r1_keep[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_keep(6),
      I1 => p_1_in(2),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_1_in(4),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_1_in(0),
      O => \n_0_r1_keep[0]_i_1\
    );
\r1_keep[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => r0_keep(7),
      I1 => p_1_in(3),
      I2 => \n_0_r0_out_sel_next_r_reg[0]\,
      I3 => p_1_in(5),
      I4 => \n_0_r0_out_sel_next_r_reg[1]\,
      I5 => p_1_in(1),
      O => \n_0_r1_keep[1]_i_1\
    );
\r1_keep_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_keep[0]_i_1\,
      Q => p_1_in(6),
      R => '0'
    );
\r1_keep_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_r1_data[15]_i_1\,
      D => \n_0_r1_keep[1]_i_1\,
      Q => p_1_in(7),
      R => '0'
    );
r1_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
    port map (
      I0 => n_0_r0_last_reg,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => \n_0_state_reg[2]\,
      I4 => aclken,
      I5 => n_0_r1_last_reg,
      O => n_0_r1_last_i_1
    );
r1_last_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_r1_last_i_1,
      Q => n_0_r1_last_reg,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA3FFFF0FAF0000"
    )
    port map (
      I0 => \n_0_state[0]_i_2\,
      I1 => s_axis_tvalid,
      I2 => \^o2\,
      I3 => \n_0_state_reg[2]\,
      I4 => aclken,
      I5 => \^o1\,
      O => \n_0_state[0]_i_1\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FFFFF0F0FEE00"
    )
    port map (
      I0 => \n_0_state[0]_i_3\,
      I1 => \n_0_r0_out_sel_next_r[0]_i_5\,
      I2 => s_axis_tvalid,
      I3 => m_axis_tready,
      I4 => \^o1\,
      I5 => state14_out,
      O => \n_0_state[0]_i_2\
    );
\state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \n_0_r0_out_sel_next_r_reg[0]\,
      I1 => \n_0_r0_is_null_r_reg[3]\,
      I2 => r0_is_null_r(2),
      O => \n_0_state[0]_i_3\
    );
\state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => m_axis_tready,
      I1 => r0_is_null_r(2),
      I2 => r0_is_null_r(1),
      I3 => \n_0_r0_is_null_r_reg[3]\,
      O => state14_out
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFCFFFF0A000000"
    )
    port map (
      I0 => s_axis_tvalid,
      I1 => \n_0_state[1]_i_2\,
      I2 => \n_0_state_reg[2]\,
      I3 => \^o1\,
      I4 => aclken,
      I5 => \^o2\,
      O => \n_0_state[1]_i_1\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAFF3FFFFFFF"
    )
    port map (
      I0 => s_axis_tvalid,
      I1 => \n_0_r0_is_null_r_reg[3]\,
      I2 => r0_is_null_r(1),
      I3 => m_axis_tready,
      I4 => r0_is_null_r(2),
      I5 => \^o1\,
      O => \n_0_state[1]_i_2\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CFFFF00800000"
    )
    port map (
      I0 => s_axis_tvalid,
      I1 => \^o2\,
      I2 => \^o1\,
      I3 => m_axis_tready,
      I4 => aclken,
      I5 => \n_0_state_reg[2]\,
      O => \n_0_state[2]_i_1\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_state[0]_i_1\,
      Q => \^o1\,
      R => areset_r
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_state[1]_i_1\,
      Q => \^o2\,
      R => areset_r
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \n_0_state[2]_i_1\,
      Q => \n_0_state_reg[2]\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is "yes";
  attribute C_FAMILY : string;
  attribute C_FAMILY of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is "virtex7";
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 64;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 16;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 1;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 1;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 1;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 1;
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is "32'b00000000000000000000000000011011";
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 0;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 1;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 2;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 4;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 5;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 6;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 7;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 1;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 2;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 4;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 16;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 32;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 64;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 2;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 1;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 0;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 8;
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is "32'b00000000000000000000000000011011";
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 1;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 4;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 64;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 8;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 8;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 2;
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 0;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter : entity is "axis_dwidth_converter_v1_1_axis_dwidth_converter";
end axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter;

architecture STRUCTURE of axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter is
  signal \<const0>\ : STD_LOGIC;
  signal areset_r : STD_LOGIC;
  signal n_0_areset_r_i_1 : STD_LOGIC;
begin
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => aresetn,
      O => n_0_areset_r_i_1
    );
areset_r_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_areset_r_i_1,
      Q => areset_r,
      R => \<const0>\
    );
\gen_downsizer_conversion.axisc_downsizer_0\: entity work.axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axisc_downsizer
    port map (
      O1 => s_axis_tready,
      O2 => m_axis_tvalid,
      aclk => aclk,
      aclken => aclken,
      areset_r => areset_r,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tkeep(1 downto 0) => m_axis_tkeep(1 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_dwidth_converter_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axis_dwidth_converter_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axis_dwidth_converter_0 : entity is "axis_dwidth_converter_v1_1_axis_dwidth_converter,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_dwidth_converter_0 : entity is "axis_dwidth_converter_0,axis_dwidth_converter_v1_1_axis_dwidth_converter,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of axis_dwidth_converter_0 : entity is "axis_dwidth_converter_0,axis_dwidth_converter_v1_1_axis_dwidth_converter,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_dwidth_converter,x_ipVersion=1.1,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_S_AXIS_TDATA_WIDTH=64,C_M_AXIS_TDATA_WIDTH=16,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_S_AXIS_TUSER_WIDTH=1,C_M_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000000000000000000000000011011}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_dwidth_converter_0 : entity is "yes";
end axis_dwidth_converter_0;

architecture STRUCTURE of axis_dwidth_converter_0 is
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000011011";
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtex7";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 16;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 64;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inst : label is std.standard.true;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000011011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of inst : label is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of inst : label is 8;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of inst : label is 64;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of inst : label is 8;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of inst : label is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of inst : label is 2;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of inst : label is 4;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of inst : label is 8;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of inst : label is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
begin
inst: entity work.axis_dwidth_converter_0_axis_dwidth_converter_v1_1_axis_dwidth_converter
    port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(1 downto 0) => m_axis_tkeep(1 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(1 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(1 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(7 downto 0) => s_axis_tkeep(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(7) => '1',
      s_axis_tstrb(6) => '1',
      s_axis_tstrb(5) => '1',
      s_axis_tstrb(4) => '1',
      s_axis_tstrb(3) => '1',
      s_axis_tstrb(2) => '1',
      s_axis_tstrb(1) => '1',
      s_axis_tstrb(0) => '1',
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
