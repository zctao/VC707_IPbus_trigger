-- Contains the instantiation of the Mr.Wu's MAC & 1000baseX pcs/pma & GTP transceiver cores
--
-- Do not change signal names in here without correspondig alteration to the timing contraints file
--
-- Dave Newbold, April 2011
--
-- Modified by Charlie Strohman crs5@cornell.edu Oct 13, 2014
-- 
-- Clocking can get confusing. The incoming clocks are the 125 MHz differential pair 'gt_clkp/gt_clkn'
-- and the 200 MHz independent clock 'clk200'. The 'gt' clock is buffered inside the 'phy' module,
-- since "Shared Logic in Core" was selected when using the IP wizard. It comes right out of the
-- 'phy' as 'clk125_gt'. It passes thru the buffer 'bufg_fr' to generate 'clk125_fr'. This is a
-- free-running clock. It leaves this module as 'clk125_out_fr'.
-- The 'phy' generates the 125 MHz 'userclk2_out', which may have a different phase than the free
-- running clock. This is tied to the unbuffered internal signal 'clk125_ub'. It passes thru the
-- buffer 'bufg_125' to generate 'clk125'. The EMAC runs from this clock. It leaves this module as 'clk125_out'.

library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.VComponents.all;
use work.emac_hostbus_decl.all;

entity eth_7s_1000basex is
  generic( AN_enable: integer := 1 );   -- KH addition
  port(
    gt_clkp, gt_clkn: in std_logic;
    gt_txp, gt_txn: out std_logic;
    gt_rxp, gt_rxn: in std_logic;
    sig_detn: in std_logic := '1';
    clk125_out_fr: out std_logic;
    clk125_out: out std_logic;
    clk200: in std_logic;
    rsti: in std_logic;
    locked: out std_logic;
    tx_data: in std_logic_vector(7 downto 0);
    tx_valid: in std_logic;
    tx_last: in std_logic;
    tx_error: in std_logic;
    tx_ready: out std_logic;
    rx_data: out std_logic_vector(7 downto 0);
    rx_valid: out std_logic;
    rx_last: out std_logic;
    rx_error: out std_logic;
    hostbus_in: in emac_hostbus_in := ('0', "00", "0000000000", X"00000000", '0', '0', '0');
    hostbus_out: out emac_hostbus_out
  );
  
end eth_7s_1000basex;

architecture rtl of eth_7s_1000basex is
    COMPONENT soft_emac
       Port ( reset : in  STD_LOGIC;
       emacphytxd : out  STD_LOGIC_VECTOR (7 downto 0);
       emacphytxen : out  STD_LOGIC;
       emacphytxer : out  STD_LOGIC;
       phyemacrxd : in  STD_LOGIC_VECTOR (7 downto 0);
       phyemacrxdv : in  STD_LOGIC;
       phyemacrxer : in  STD_LOGIC;
       clientemactxd : in  STD_LOGIC_VECTOR (7 downto 0);
       clientemactxdvld : in  STD_LOGIC;
       clientemactxdlast : in  STD_LOGIC;
	   clientemactxerr: in std_logic;
	   emacclienttxready: out std_logic;
	   emacclientrxd: out std_logic_vector(7 downto 0);
	   emacclientrxdvld: out std_logic;
	   emacclientrxdlast: out std_logic;
	   emacclientrxerr: out std_logic;
	   txgmiimiiclk: in std_logic;
	   rxgmiimiiclk: in std_logic
      );
 END COMPONENT;
 
  ------------------------------------------------------------------------------
  -- Component Declaration for the Core Block (core wrapper).
  ------------------------------------------------------------------------------
   component gig_ethernet_pcs_pma_0

      port(
      -- Transceiver Interface
      ------------------------


      gtrefclk_p           : in std_logic;                     -- Very high quality 125MHz clock for GT transceiver
      gtrefclk_n           : in std_logic;                     -- Very high quality 125MHz clock for GT transceiver
      gtrefclk_out         : out std_logic;                   
      txp                  : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
      txn                  : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
      rxp                  : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
      rxn                  : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.

      mmcm_locked_out      : out std_logic;                     -- Locked signal from MMCM
      userclk_out          : out std_logic;                     -- 62.5MHz clock.
      userclk2_out         : out std_logic;                     -- 125MHz clock.
      rxuserclk_out          : out std_logic;                     -- 62.5MHz clock.
      rxuserclk2_out         : out std_logic;                     -- 125MHz clock.
      independent_clock_bufg : in std_logic;                    -- 200MHz clock.
      pma_reset_out         : out std_logic;                     -- transceiver PMA reset signal
      resetdone             :out std_logic;

      -- GMII Interface
      -----------------
      gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      -- Management: Alternative to MDIO Interface
      --------------------------------------------

      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.


      an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
      an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
      an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0


      -- General IO's
      ---------------
      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
      signal_detect        : in std_logic;                      -- Input from PMD to indicate presence of optical input.
      gt0_qplloutclk_out     : out std_logic;
      gt0_qplloutrefclk_out  : out std_logic
      );

   end component;


	signal gmii_txd, gmii_rxd: std_logic_vector(7 downto 0);
	signal gmii_tx_en, gmii_tx_er, gmii_rx_dv, gmii_rx_er: std_logic;
	signal gmii_rx_clk: std_logic;
	signal clkin, clk125, clk125_ub, clk125_gt, clk125_fr : std_logic;
	signal mac_rst, phy_done, mmcm_locked, locked_int, sig_det: std_logic;
	signal status: std_logic_vector(15 downto 0);
    signal gig_pcs_pma_config_vector: std_logic_vector(4 downto 0) := "00000";
    signal an_adv_config_vector: std_logic_vector(15 downto 0) := "0000110000100000";
    CONSTANT BIT_0 : STD_LOGIC:= '0';
begin
	

	bufg_fr: BUFG port map(
		i => clk125_gt,
		o => clk125_fr
	);
    clk125_out_fr <= clk125_fr;

	bufg_125: BUFG port map(
		i => clk125_ub,
		o => clk125
	);
    clk125_out <= clk125;


	process(clk125_fr)
	begin
		if rising_edge(clk125_fr) then
			locked_int <= mmcm_locked and phy_done;
		end if;
	end process;

	locked <= locked_int;
	mac_rst <= (not locked_int or rsti);

    -- Mr. Wu's EMAC
	mac: soft_emac
		port map(
			reset => mac_rst,
			rxgmiimiiclk => clk125,
			emacclientrxd => rx_data,
			emacclientrxdvld => rx_valid,
			emacclientrxdlast => rx_last,
			emacclientrxerr => rx_error,
			txgmiimiiclk => clk125,
			clientemactxd => tx_data,
			clientemactxdvld => tx_valid,
			clientemactxdlast => tx_last,
			clientemactxerr => tx_error,
			emacclienttxready => tx_ready,
			emacphytxd => gmii_txd,
			emacphytxen => gmii_tx_en,
			emacphytxer => gmii_tx_er,
			phyemacrxd => gmii_rxd,
			phyemacrxdv => gmii_rx_dv,
			phyemacrxer => gmii_rx_er
		);

	hostbus_out.hostrddata <= (others => '0');
	hostbus_out.hostmiimrdy <= '0';

	sig_det <= not sig_detn;

        -- KH: enable AN via the configuration_vector
        gig_pcs_pma_config_vector <= "10000" when AN_enable = 1 else "00000";         

        
-- Update to 'phy' provided in Vivado 2014.4
--	phy: entity work.gig_eth_pcs_pma_v11_5_block
	phy: gig_ethernet_pcs_pma_0
		port map(
			gtrefclk_p => gt_clkp,          -- Very high quality 125MHz clock for GT transceiver.
			gtrefclk_n => gt_clkn,          -- Very high quality 125MHz clock for GT transceiver.
			gtrefclk_out => clk125_gt,
			txp => gt_txp,              -- Differential +ve of serial transmission from PMA to PMD.
            txn => gt_txn,              -- Differential -ve of serial transmission from PMA to PMD.
            rxp => gt_rxp,              -- Differential +ve for serial reception from PMD to PMA.
            rxn => gt_rxn,              -- Differential -ve for serial reception from PMD to PMA.

			resetdone => phy_done,      -- The GT transceiver has completed its reset cycle
			mmcm_locked_out => mmcm_locked, -- Locked indication from MMCM
			userclk_out => open,         -- 62.5MHz global clock.
			userclk2_out => clk125_ub,         -- 125MHz global clock.
            rxuserclk_out => open,       -- 62.5MHz global clock.
            rxuserclk2_out => open,       -- 125MHz global clock.
			independent_clock_bufg => clk200,    -- 200MHz independent cloc,
			pma_reset_out => open,          -- transceiver PMA reset signal

            -- GMII Interface
			gmii_txd => gmii_txd,       -- Transmit data from client MAC.
			gmii_tx_en => gmii_tx_en,   -- Transmit control signal from client MAC.
			gmii_tx_er => gmii_tx_er,   -- Transmit control signal from client MAC.
			gmii_rxd => gmii_rxd,       -- Received Data to client MAC.
			gmii_rx_dv => gmii_rx_dv,   -- Received control signal to client MAC.
            gmii_rx_er => gmii_rx_er,   -- Received control signal to client MAC.
    		gmii_isolate => open,       -- Tristate control to electrically isolate GMII.

            -- Management: Alternative to MDIO Interface
			configuration_vector => gig_pcs_pma_config_vector,  -- Alternative to MDIO interface.                        			
			an_interrupt => open,       -- Interrupt to processor to signal that Auto-Negotiation has completed
			an_adv_config_vector => an_adv_config_vector,-- Alternate interface to program REG4 (AN ADV)
			an_restart_config => BIT_0,   -- Alternate signal to modify AN restart bit in REG0

            -- General IO's            
			status_vector => status,     -- Core status.
			reset => rsti,               -- Asynchronous reset for entire core.
			signal_detect => sig_det,     -- Input from PMD to indicate presence of optical input.
            gt0_qplloutclk_out => open,
            gt0_qplloutrefclk_out => open
		);

end rtl;
