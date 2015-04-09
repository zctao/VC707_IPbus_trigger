-- Top-level design for ipbus demo on the VC709
-- Kristian Hahn & Marco Trovato
-- Northwestern University, 16/4/14

-- Modified by Charlie Strohman crs5@cornell.edu Oct 13, 2014
-- 1) Replace the Xilinx ethernet MAC (which needs a purchased license) with
--    a MAC from Mr. Wu of BU.
-- 2) Converted to Vivado, which required creating new pinout and timing
--    constraint files
-- 3) Update the ethernet PHY to version 14.1
-- 4) Changed the MAC and IP addresses farther down in this file to those
--    suitable for my board and subnet.
-- 5) Started using the 200 MHz clock for new PHY

-- Verified on a Rev 1.0 vc709.

-- Clocking for the vc709: The board does not host a fixed 125MHz oscillator.
-- GTH Bank 113 for the SFPs accepts clock from either the jitter attenuator
-- or from the MGT SMA inputs.  For the example, we chose to divide the
-- 156.25MHz default clock from the on-board progammable oscillator to 125MHz.
-- This is routed over the user SMA connectors to the MGT SMA connectors via
-- cable loopback, similar to the setup described in the XTP234 VC709 IBERT
-- guide. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ipbus.ALL;
library UNISIM;
use UNISIM.vcomponents.all;
                                       
entity top is
    port(
        -- clocking & GT
        sma_clk_n, sma_clk_p: out std_logic;
        clk200_n, clk200_p: in std_logic;        
        prog_clk_n, prog_clk_p: in std_logic;        
        gt_clkp, gt_clkn: in std_logic;
        gt_txp, gt_txn: out std_logic;
        gt_rxp, gt_rxn: in std_logic;
        -- SFP
        sfp_los, sfp_mod_det: in std_logic;   
        --sfp_rs0, sfp_rs1: out std_logic;        
        sfp_tx_disable: out std_logic;  
        
        --FMC GT & SFPS        
        FMC1_GBTCLK1_P: in std_logic;
        FMC1_GBTCLK1_N: in std_logic;
         
        FMC_SFP4_LOS: in std_logic;
        FMC_SFP4_RS: out std_logic;
        FMC_SFP4_TX_DISABLE: out std_logic;
        FMC_SFP4_RX_N, FMC_SFP4_RX_P: in std_logic;
        FMC_SFP4_TX_N, FMC_SFP4_TX_P: out std_logic;
        
        FMC_SFP7_LOS: in std_logic;
        FMC_SFP7_RS: out std_logic;
        FMC_SFP7_TX_DISABLE: out std_logic;
        FMC_SFP7_RX_N, FMC_SFP7_RX_P: in std_logic;
        FMC_SFP7_TX_N, FMC_SFP7_TX_P: out std_logic;
        
        -- LEDs
        leds: out std_logic_vector(7 downto 0);
        -- Switch
        en_proc_switch: in std_logic;
        lcd: out std_logic_vector(6 downto 0)

    );
end top;


architecture rtl of top is

    signal clkdiv_clk, clkdiv_locked, clkdiv_rst, clkdiv_fb : std_logic;
    signal clk_156_25, clk125_ub, clk125_bufg, clk125_clean : std_logic;
    signal clk125_fr, clk125, clk100, clk200, ipb_clk, clk_locked, locked, eth_locked: std_logic;
    signal rst_125, rst_ipb, rst_eth, onehz: std_logic;
    signal mac_tx_data, mac_rx_data: std_logic_vector(7 downto 0);
    signal mac_tx_valid, mac_tx_last, mac_tx_error, mac_tx_ready: std_logic;
    signal mac_rx_valid, mac_rx_last, mac_rx_error: std_logic;
    signal ipb_master_out : ipb_wbus;
    signal ipb_master_in : ipb_rbus;
    signal ipb_to_user : ipb_wbus;
    signal ipb_from_user : ipb_rbus;
    signal mac_addr: std_logic_vector(47 downto 0);
    signal ip_addr: std_logic_vector(31 downto 0);
    signal pkt_rx, pkt_tx, pkt_rx_led, pkt_tx_led, sys_rst: std_logic;	
    signal light_detect: std_logic;
    signal link_status: std_logic; 
    signal eth_phy_status_vector: std_logic_vector(15 downto 0);
    signal gtrefclk_out, eth_link_status: std_logic;  
    signal lcd_bits: std_logic_vector(6 downto 0);
begin

    -- value initialization
    FMC_SFP4_RS <= '0';
    FMC_SFP4_TX_DISABLE <= '0';
    --light_detect <= not FMC_SFP4_LOS

    FMC_SFP7_RS <= '0';
    FMC_SFP7_TX_DISABLE <= '0';
    --light_detect <= not FMC_SFP7_LOS
    
    --sfp_rs0 <= '0';                       -- for AFBR-703SDDZ, sets 1.25 Gbps
    --sfp_rs1 <= '0';                       --
    sfp_tx_disable <= '0';
    light_detect <= not sfp_los;
    locked <= clk_locked and eth_locked;
    --leds <= (pkt_rx_led, pkt_tx_led, clkdiv_locked, clk_locked, eth_locked, onehz, light_detect, en_proc_switch);
    leds <= (onehz,lcd_bits(0),lcd_bits(1),lcd_bits(2),lcd_bits(3),lcd_bits(4),lcd_bits(5),lcd_bits(6));
    lcd <= lcd_bits;
    mac_addr <= X"000a3502c9aa";          -- from the sticker on the board ...
    ip_addr <= X"c0a80075";               -- 192.168.0.117  IP address assigned to VC707 (192.168.0.111 for VC709)
  
    --	DCM clock generation for internal bus, ethernet
    clocks: entity work.clocks_7s_serdes
      port map(
        clki_fr => clk125_fr,
        clki_125 => clk125,
        clko_ipb => ipb_clk,
        eth_locked => eth_locked,
        locked => clk_locked,
        nuke => sys_rst,
        rsto_125 => rst_125,
        rsto_ipb => rst_ipb,
        rsto_eth => rst_eth,
        onehz => onehz
      );
  
    -- Ethernet MAC core and PHY interface
    eth: entity work.eth_7s_1000basex
      generic map ( AN_enable => 1 )
      port map(
        gt_clkp => gt_clkp,
        gt_clkn => gt_clkn,
        gt_txp => gt_txp,
        gt_txn => gt_txn,
        gt_rxp => gt_rxp,
        gt_rxn => gt_rxn,
        sig_detn => sfp_los,
        locked => eth_locked,
        tx_data => mac_tx_data,
        tx_valid => mac_tx_valid,
        tx_last => mac_tx_last,
        tx_error => mac_tx_error,
        tx_ready => mac_tx_ready,
        rx_data => mac_rx_data,
        rx_valid => mac_rx_valid,
        rx_last => mac_rx_last,
        rx_error => mac_rx_error,
        clk125_out => clk125,
        clk125_out_fr => clk125_fr,
        rsti => rst_eth,
        clk200 => clk200
      );
 
    -- ipbus control logic
    ipbus: entity work.ipbus_ctrl
      port map(
        mac_clk => clk125,
        rst_macclk => rst_125,
        ipb_clk => ipb_clk,
        rst_ipb => rst_ipb,
        mac_rx_data => mac_rx_data,
        mac_rx_valid => mac_rx_valid,
        mac_rx_last => mac_rx_last,
        mac_rx_error => mac_rx_error,
        mac_tx_data => mac_tx_data,
        mac_tx_valid => mac_tx_valid,
        mac_tx_last => mac_tx_last,
        mac_tx_error => mac_tx_error,
        mac_tx_ready => mac_tx_ready,
        ipb_out => ipb_master_out,
        ipb_in => ipb_master_in,
        mac_addr => mac_addr,
        ip_addr => ip_addr,
        pkt_rx => pkt_rx,
        pkt_tx => pkt_tx,
        pkt_rx_led => pkt_rx_led,
        pkt_tx_led => pkt_tx_led
      );

    -- ipbus slaves live in the entity below, and can expose top-level ports
    -- The ipbus fabric is instantiated within.
    slaves: entity work.slaves
      port map(
        clk200 => clk200,
        ipb_clk => ipb_clk,
        ipb_rst => rst_ipb,
        ipb_in => ipb_master_out,
        ipb_out => ipb_master_in,
        rst_out => sys_rst,
        pkt_rx => pkt_rx,
        pkt_tx => pkt_tx,
        -- en proc switch
        en_proc_switch => en_proc_switch,
        lcd => lcd_bits,
        --interboard links
        sfp4_tx_n => FMC_SFP4_TX_N,
        sfp4_tx_p => FMC_SFP4_TX_P,
        sfp4_rx_n => FMC_SFP4_RX_N,
        sfp4_rx_p => FMC_SFP4_RX_P,
        sfp7_tx_n => FMC_SFP7_TX_N,
        sfp7_tx_p => FMC_SFP7_TX_P,
        sfp7_rx_n => FMC_SFP7_RX_N,
        sfp7_rx_p => FMC_SFP7_RX_P,
        --gt ref clk
        gt_refclk_p => FMC1_GBTCLK1_P,
        gt_refclk_n => FMC1_GBTCLK1_N,   
        --init clk
        init_clk => clk125
      );


 -------------------------------------------------------------------------------------
  -- Buffer incoming clocks
  -- the SYSCLK oscillator outputs 200.0 Mhz 
  IBUFGDS_clk200 : IBUFGDS
  port map (I  => clk200_p, IB => clk200_n, O  => clk200);

  -- the programmable oscillator outputs 156.25 Mhz 
  IBUFGDS_prog : IBUFGDS
  port map (I  => prog_clk_p, IB => prog_clk_n, O  => clk_156_25);

  -- divide the 'prog_clk' down to 125 MHz
  -- This should be replaced someday by configuring the programmable clock directly 
  mcmm: MMCME2_BASE
    generic map(
      BANDWIDTH => "HIGH",
      CLKIN1_PERIOD => 6.400,
      CLKFBOUT_MULT_F => 46.000,
      DIVCLK_DIVIDE => 5,
      CLKOUT0_DIVIDE_F => 11.5
      )
    port map(
      clkin1 => clk_156_25,
      clkout0 => clk125_ub,
      clkfbout => clkdiv_fb,
      clkfbin => clkdiv_fb,
      rst => clkdiv_rst,
      pwrdwn => '0',
      locked => clkdiv_locked);
  clkdiv_rst <= sys_rst;

  -- buffer the divided clock 
  BUFG_inst : BUFG
    port map (I => clk125_ub, O => clk125_bufg);

  -- clean it up with a DDR flip flop
  ODDR_inst : ODDR
    port map (    Q =>  clk125_clean,  -- 1-bit DDR output,
                  C =>  clk125_bufg,   -- 1-bit clock input 
                  CE => '1',
                  D1 => '1',  -- 1-bit data input (positive edge)
                  D2 => '0'   -- 1-bit data input (negative edge),
                  );                  

  -- loop it over the SMA connectors to the MGT
  OBUFDS_inst : OBUFDS
    generic map (
      IOSTANDARD => "LVDS"
      )
    port map (I => clk125_clean, O =>  sma_clk_p, OB => sma_clk_n);

  
end rtl;

