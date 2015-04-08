--------------------------------------------------------------------------------
-- Copyright (C) 1999-2008 Easics NV.
-- This source file may be used and distributed without restriction
-- provided that this copyright statement is not removed from the file
-- and that any derivative work contains the original copyright notice
-- and the associated disclaimer.
--
-- THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
-- OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
-- WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
--
-- Purpose : synthesizable CRC function
--   * polynomial: (0 1 2 4 5 7 8 10 11 12 16 22 23 26 32)
--   * data width: 8
--
-- Info : tools@easics.be
--        http://www.easics.com
--------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:34 12/01/2011 
-- Design Name: 
-- Module Name:    EthernetCRC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER  
-- This module is provided only as an example, no correctness or any usefullness is implied.
-- Use of it is at users' own risk. 
-- Do not remove this disclaimer.
-- !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER  
-- Description: Ethernet CRC calculation, derived from PCK_CRC32_D8 generated using easics.com tools
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EthernetCRC is
    Port ( clk : in  STD_LOGIC;
           init : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (7 downto 0);
           crc : out  STD_LOGIC_VECTOR (31 downto 0);
           bad_crc : out  STD_LOGIC
					 );
end EthernetCRC;

architecture Behavioral of EthernetCRC is
constant crc_R : std_logic_vector(31 downto 0) := x"c704dd7b";
signal crc_i : std_logic_vector(31 downto 0) := (others => '1');
signal byte_cnt : std_logic_vector(1 downto 0) := (others => '1');
signal invert : std_logic := '1';
begin
process(crc_i,d)
begin
	for i in 0 to 31 loop
		crc(i) <= not crc_i(31-i);
	end loop;
end process;
bad_crc <= '0' when crc_i = crc_R else '1';
process(clk)
begin
	if(clk'event and clk = '1')then
		if(init = '1')then
			invert <= '1';
			byte_cnt <= "00";
			crc_i <= (others => '0');
		elsif(ce = '1')then
			if(byte_cnt = "11")then
				invert <= '0';
			else
				byte_cnt(1) <= byte_cnt(1) xor byte_cnt(0);
				byte_cnt(0) <= not byte_cnt(0);
			end if;
			crc_i(0) <= d(7) xor d(1) xor crc_i(24) xor crc_i(30);
			crc_i(1) <= d(7) xor d(6) xor d(1) xor d(0) xor crc_i(24) xor crc_i(25) xor crc_i(30) xor crc_i(31);
			crc_i(2) <= invert xor d(7) xor d(6) xor d(5) xor d(1) xor d(0) xor crc_i(24) xor crc_i(25) xor crc_i(26) xor crc_i(30) xor crc_i(31);
			crc_i(3) <= d(6) xor d(5) xor d(4) xor d(0) xor crc_i(25) xor crc_i(26) xor crc_i(27) xor crc_i(31);
			crc_i(4) <= invert xor d(7) xor d(5) xor d(4) xor d(3) xor d(1) xor crc_i(24) xor crc_i(26) xor crc_i(27) xor crc_i(28) xor crc_i(30);
			crc_i(5) <= invert xor d(7) xor d(6) xor d(4) xor d(3) xor d(2) xor d(1) xor d(0) xor crc_i(24) xor crc_i(25) xor crc_i(27) xor crc_i(28) xor crc_i(29) xor crc_i(30) xor crc_i(31);
			crc_i(6) <= d(6) xor d(5) xor d(3) xor d(2) xor d(1) xor d(0) xor crc_i(25) xor crc_i(26) xor crc_i(28) xor crc_i(29) xor crc_i(30) xor crc_i(31);
			crc_i(7) <= invert xor d(7) xor d(5) xor d(4) xor d(2) xor d(0) xor crc_i(24) xor crc_i(26) xor crc_i(27) xor crc_i(29) xor crc_i(31);
			crc_i(8) <= d(7) xor d(6) xor d(4) xor d(3) xor crc_i(0) xor crc_i(24) xor crc_i(25) xor crc_i(27) xor crc_i(28);
			crc_i(9) <= d(6) xor d(5) xor d(3) xor d(2) xor crc_i(1) xor crc_i(25) xor crc_i(26) xor crc_i(28) xor crc_i(29);
			crc_i(10) <= d(7) xor d(5) xor d(4) xor d(2) xor crc_i(2) xor crc_i(24) xor crc_i(26) xor crc_i(27) xor crc_i(29);
			crc_i(11) <= d(7) xor d(6) xor d(4) xor d(3) xor crc_i(3) xor crc_i(24) xor crc_i(25) xor crc_i(27) xor crc_i(28);
			crc_i(12) <= d(7) xor d(6) xor d(5) xor d(3) xor d(2) xor d(1) xor crc_i(4) xor crc_i(24) xor crc_i(25) xor crc_i(26) xor crc_i(28) xor crc_i(29) xor crc_i(30);
			crc_i(13) <= d(6) xor d(5) xor d(4) xor d(2) xor d(1) xor d(0) xor crc_i(5) xor crc_i(25) xor crc_i(26) xor crc_i(27) xor crc_i(29) xor crc_i(30) xor crc_i(31);
			crc_i(14) <= invert xor d(5) xor d(4) xor d(3) xor d(1) xor d(0) xor crc_i(6) xor crc_i(26) xor crc_i(27) xor crc_i(28) xor crc_i(30) xor crc_i(31);
			crc_i(15) <= d(4) xor d(3) xor d(2) xor d(0) xor crc_i(7) xor crc_i(27) xor crc_i(28) xor crc_i(29) xor crc_i(31);
			crc_i(16) <= invert xor d(7) xor d(3) xor d(2) xor crc_i(8) xor crc_i(24) xor crc_i(28) xor crc_i(29);
			crc_i(17) <= invert xor d(6) xor d(2) xor d(1) xor crc_i(9) xor crc_i(25) xor crc_i(29) xor crc_i(30);
			crc_i(18) <= invert xor d(5) xor d(1) xor d(0) xor crc_i(10) xor crc_i(26) xor crc_i(30) xor crc_i(31);
			crc_i(19) <= d(4) xor d(0) xor crc_i(11) xor crc_i(27) xor crc_i(31);
			crc_i(20) <= invert xor d(3) xor crc_i(12) xor crc_i(28);
			crc_i(21) <= invert xor d(2) xor crc_i(13) xor crc_i(29);
			crc_i(22) <= invert xor d(7) xor crc_i(14) xor crc_i(24);
			crc_i(23) <= invert xor d(7) xor d(6) xor d(1) xor crc_i(15) xor crc_i(24) xor crc_i(25) xor crc_i(30);
			crc_i(24) <= invert xor d(6) xor d(5) xor d(0) xor crc_i(16) xor crc_i(25) xor crc_i(26) xor crc_i(31);
			crc_i(25) <= d(5) xor d(4) xor crc_i(17) xor crc_i(26) xor crc_i(27);
			crc_i(26) <= d(7) xor d(4) xor d(3) xor d(1) xor crc_i(18) xor crc_i(24) xor crc_i(27) xor crc_i(28) xor crc_i(30);
			crc_i(27) <= d(6) xor d(3) xor d(2) xor d(0) xor crc_i(19) xor crc_i(25) xor crc_i(28) xor crc_i(29) xor crc_i(31);
			crc_i(28) <= invert xor d(5) xor d(2) xor d(1) xor crc_i(20) xor crc_i(26) xor crc_i(29) xor crc_i(30);
			crc_i(29) <= invert xor d(4) xor d(1) xor d(0) xor crc_i(21) xor crc_i(27) xor crc_i(30) xor crc_i(31);
			crc_i(30) <= d(3) xor d(0) xor crc_i(22) xor crc_i(28) xor crc_i(31);
			crc_i(31) <= invert xor d(2) xor crc_i(23) xor crc_i(29);			
		end if;
	end if;
end process;

end Behavioral;

