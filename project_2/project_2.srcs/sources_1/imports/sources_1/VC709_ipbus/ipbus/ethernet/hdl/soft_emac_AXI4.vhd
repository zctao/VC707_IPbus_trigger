----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:24 12/01/2011 
-- Design Name: 
-- Module Name:    soft_emac - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER  
-- This MAC only accepts IP packets, it does not support VLAN
-- This module is provided only as an example, no correctness or any usefullness is implied.
-- Use of it is at users' own risk. 
-- Do not remove this disclaimer.
-- !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER  
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_misc.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity soft_emac is
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
end soft_emac;

architecture Behavioral of soft_emac is
COMPONENT EthernetCRC
	PORT(
		clk : IN std_logic;
		init : IN std_logic;
		ce : IN std_logic;
		d : IN std_logic_vector(7 downto 0);          
		crc : OUT std_logic_vector(31 downto 0);
		bad_crc : OUT std_logic
		);
END COMPONENT;
constant SFD : std_logic_vector(7 downto 0) := x"d5";
signal hdr_cnt : std_logic_vector(2 downto 0) := (others => '0');
signal gap_cnt : std_logic_vector(4 downto 0) := (others => '0');
signal tx_d : std_logic_vector(7 downto 0) := (others => '0');
signal tx_crc : std_logic_vector(31 downto 0) := (others => '0');
signal init_tx_crc : std_logic := '0';
signal tx_byte_cnt: std_logic_vector(10 downto 0) := (others => '0');
signal enough_data : std_logic := '0';
signal sel_FCS : std_logic_vector(2 downto 0) := (others => '0');
signal ce_tx_crc : std_logic := '0';
signal clientemactxd_ended : std_logic := '0';
signal clientemactxdvld_dl : std_logic := '0';
signal clientemactxdvld_dl2 : std_logic := '0';
-- rx path signals
signal rx_crc : std_logic_vector(31 downto 0) := (others => '0');
signal rx_crc_d : std_logic_vector(7 downto 0) := (others => '0');
signal init_rx_crc : std_logic := '0';
signal rx_byte_cnt: std_logic_vector(10 downto 0) := (others => '0');
signal length_OK : std_logic_vector(1 downto 0) := (others => '0');
signal rx_err : std_logic := '0';
signal type_err : std_logic := '0';
signal bad_crc : std_logic := '0';
signal phyemacrxdv_q : std_logic := '0';
signal phyemacrxer_q : std_logic := '0';
signal ce_rx_crc : std_logic := '0';
signal ce_rx_crc_dl : std_logic := '0';
signal ce_rx_crc_q : std_logic := '0';
signal ready : std_logic := '0';
signal emacclientrxdp : std_logic_vector(7 downto 0) := (others => '0');
signal tx_buf_a : std_logic_vector(7 downto 0) := (others => '0');
signal tx_buf_b : std_logic_vector(7 downto 0) := (others => '0');
signal tx_header : std_logic_vector(1 downto 0) := (others => '0');
begin
-- tx path
emacclienttxready <= ready;
process(txgmiimiiclk)
begin
	if(txgmiimiiclk'event and txgmiimiiclk = '1')then
		if(reset = '1')then
			ready <= '0';
		elsif((tx_header(1) = '0' and clientemactxdvld = '1') or hdr_cnt = "110")then
			ready <= '1';
		elsif(tx_header = "10" or clientemactxdlast = '1')then
			ready <= '0';
		end if;
		clientemactxdvld_dl <= clientemactxdvld;
		clientemactxdvld_dl2 <= clientemactxdvld_dl;
		if(ready = '1' or ce_tx_crc = '1')then
			tx_buf_a <= clientemactxd;
			tx_buf_b <= tx_buf_a;
		end if;
		if(reset = '1' or clientemactxdlast = '1')then
			tx_header <= "00";
		elsif(clientemactxdvld = '1' and tx_header /= "11")then
			tx_header <= tx_header + 1;
		end if;
		if(reset = '1' or sel_FCS = "111")then
			gap_cnt <= "00100";
		elsif(gap_cnt(4) = '0')then
			gap_cnt <= gap_cnt + 1;
		end if;
		if(reset = '1' or ce_tx_crc = '1' or gap_cnt(4) = '0')then
			hdr_cnt <= "000";
		elsif(clientemactxdvld = '1')then
			hdr_cnt <= hdr_cnt + 1;
		end if;
		if(reset = '1' or gap_cnt(4) = '0')then
			emacphytxen <= '0';
		elsif(clientemactxdvld = '1')then
			emacphytxen <= '1';
		end if;
		if(ce_tx_crc = '0')then
			clientemactxd_ended <= '0';
		elsif(clientemactxdvld_dl2 = '0')then
			clientemactxd_ended <= '1';
		end if;
		if(reset = '1' or ((clientemactxdvld_dl2 = '0' or clientemactxd_ended = '1') and enough_data = '1'))then
			ce_tx_crc <= '0';
		elsif(init_tx_crc = '1')then
			ce_tx_crc <= '1';
		end if;
		if(reset = '1')then
			sel_FCS <= "000";
		elsif((clientemactxdvld_dl2 = '0' or clientemactxd_ended = '1') and enough_data = '1')then
			sel_FCS <= "100";
		elsif(sel_FCS(2) = '1')then
			sel_FCS <= sel_FCS + 1;
		end if;
		if(sel_FCS(2) = '1')then
			case sel_FCS(1 downto 0) is
				when "00" => emacphytxd <= tx_crc(7 downto 0);
				when "01" => emacphytxd <= tx_crc(15 downto 8);
				when "10" => emacphytxd <= tx_crc(23 downto 16);
				when others => emacphytxd <= tx_crc(31 downto 24);
			end case;
		elsif(ce_tx_crc = '1')then
			emacphytxd <= tx_d;
		elsif(init_tx_crc = '1')then
			emacphytxd <= x"d5";
		else
			emacphytxd <= x"55";
		end if;
		if(reset = '1' or ce_tx_crc = '0')then
			tx_byte_cnt <= (others => '0');
			enough_data <= '0';
		else
			tx_byte_cnt <= tx_byte_cnt + 1;
			if(tx_byte_cnt(5 downto 0) = "111010")then
				enough_data <= '1';
			elsif((clientemactxdvld_dl2 = '0' or clientemactxd_ended = '1'))then
				enough_data <= '0';
			end if;
		end if;
		if(clientemactxerr = '1' or (ready = '1' and clientemactxdvld = '0') or (tx_byte_cnt = "10111101010" and clientemactxdvld = '1'))then
			emacphytxer <= '1';
		else
			emacphytxer <= '0';
		end if;
		if(clientemactxdvld_dl2 = '1' and clientemactxd_ended = '0')then
			tx_d <= tx_buf_b;
		else
			tx_d <= (others => '0');
		end if;
		if(hdr_cnt = "110")then
			init_tx_crc <= '1';
		else
			init_tx_crc <= '0';
		end if;
	end if;
end process;
i_tx_CRC32D8: EthernetCRC PORT MAP(
		clk => txgmiimiiclk,
		init => init_tx_crc,
		ce => ce_tx_crc,
		d => tx_d,
		crc => tx_crc,
		bad_crc => open
	);
-- rx path
process(rxgmiimiiclk)
begin
	if(rxgmiimiiclk'event and rxgmiimiiclk = '1')then
		rx_crc_d <= phyemacrxd;
		phyemacrxdv_q <= phyemacrxdv;
		if(reset = '1' or phyemacrxdv = '0')then
			ce_rx_crc <= '0';
		elsif(rx_crc_d = SFD and phyemacrxdv_q = '1')then
			ce_rx_crc <= '1';
		end if;
		phyemacrxer_q <= phyemacrxer and not reset;
		if(reset = '1' or ce_rx_crc = '0')then
			rx_byte_cnt <= (others => '0');
			rx_err <= '0';
			type_err <= '0';
			length_OK <= "10";
		else
			rx_byte_cnt <= rx_byte_cnt + 1;
			if(phyemacrxer_q = '1')then
				rx_err <= '1';
			end if;
			if(rx_byte_cnt = "00000001100" and or_reduce(rx_crc_d(7 downto 3)) = '0' and rx_crc_d(2 downto 1) /= "11")then
				type_err <= '1';
			end if;
			if(rx_byte_cnt(5 downto 0) = "111111")then
				length_OK(0) <= '1';
			end if;
			if(rx_byte_cnt = "10111101110")then
				length_OK(1) <= '0';
			end if;
		end if;
		if(reset = '1')then
			emacclientrxerr <= '0';
		elsif(ce_rx_crc = '0' and ce_rx_crc_q = '1')then
			if(bad_crc = '0' and rx_err = '0' and type_err = '0' and length_OK = "11")then
				emacclientrxerr <= '0';
			else
				emacclientrxerr <= '1';
			end if;
		else
			emacclientrxerr <= '0';
		end if;
		ce_rx_crc_q <= ce_rx_crc and not reset;
		emacclientrxdvld <= ce_rx_crc_q and ce_rx_crc_dl and not reset;
		emacclientrxdlast <= ce_rx_crc_q and not ce_rx_crc and not reset;
		emacclientrxd <= emacclientrxdp;
	end if;
end process;
i_rx_CRC32D8: EthernetCRC PORT MAP(
		clk => rxgmiimiiclk,
		init => init_rx_crc,
		ce => ce_rx_crc,
		d => rx_crc_d,
		crc => open,
		bad_crc => bad_crc
	);
init_rx_crc <= not ce_rx_crc;
g_emacclientrxdp: for i in 0 to 7 generate
   SRL16E_inst : SRL16E
   port map (
      Q => emacclientrxdp(i),       -- SRL data output
      A0 => '1',     -- Select[0] input
      A1 => '0',     -- Select[1] input
      A2 => '1',     -- Select[2] input
      A3 => '0',     -- Select[3] input
      CE => '1',     -- Clock enable input
      CLK => rxgmiimiiclk,   -- Clock input
      D => phyemacrxd(i)        -- SRL data input
   );
end generate;
i_ce_rx_crc_dl : SRL16E
   port map (
      Q => ce_rx_crc_dl,       -- SRL data output
      A0 => '0',     -- Select[0] input
      A1 => '0',     -- Select[1] input
      A2 => '1',     -- Select[2] input
      A3 => '0',     -- Select[3] input
      CE => '1',     -- Clock enable input
      CLK => rxgmiimiiclk,   -- Clock input
      D => ce_rx_crc        -- SRL data input
   );
end Behavioral;

