-- All trigger stuff lives below here
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity ipbus_trigger_top is
	port(
        clk200: in std_logic;
		clk: in STD_LOGIC;
		reset: in STD_LOGIC;
		ipbus_in: in ipb_wbus;
		ipbus_out: out ipb_rbus;
		en_proc_switch: in std_logic;
		lcd: out std_logic_vector(6 downto 0);
		--sfp
        txn_pphi: out std_logic;
        txp_pphi: out std_logic;
        rxn_pphi: in std_logic;
        rxp_pphi: in std_logic;
        txn_mphi: out std_logic;
        txp_mphi: out std_logic;
        rxn_mphi: in std_logic;
        rxp_mphi: in std_logic;
        --gt ref clk
        gt_refclk_p: in std_logic;
        gt_refclk_n: in std_logic;
        --init clk
        init_clk: in std_logic;
        --tvalid signal output for timing measurement
        tx_tvalid_out: out std_logic;
        rx_tvalid_out: out std_logic
	);
	
end ipbus_trigger_top;



architecture rtl of ipbus_trigger_top is

component verilog_trigger_top
  port (
    reset : in std_logic; 
    clk200 : in std_logic := 'X'; 
    ipb_clk : in std_logic := 'X'; 
    ipb_strobe : in std_logic := 'X'; 
    ipb_write : in std_logic := 'X'; 
    ipb_ack : out std_logic; 
    ipb_err : out std_logic; 
    ipb_addr : in std_logic_vector ( 31 downto 0 ); 
    ipb_wdata : in std_logic_vector ( 31 downto 0 ); 
    ipb_rdata : out std_logic_vector ( 31 downto 0 );
    en_proc_switch: in std_logic ;
    lcd: out std_logic_vector(6 downto 0);
    --sfp
    txn_pphi: out std_logic;
    txp_pphi: out std_logic;
    rxn_pphi: in std_logic;
    rxp_pphi: in std_logic;
    txn_mphi: out std_logic;
    txp_mphi: out std_logic;
    rxn_mphi: in std_logic;
    rxp_mphi: in std_logic;
    --gt ref clk
    gt_refclk_p: in std_logic;
    gt_refclk_n: in std_logic;
    --init clk
    init_clk: in std_logic;
    --tvalid signal output for timing measurement
    tx_tvalid_out: out std_logic;
    rx_tvalid_out: out std_logic
  );
end component;

--	type reg_array is array(2**5 downto 0) of std_logic_vector(31 downto 0);
--	signal reg: reg_array;
--	signal sel: integer;
--	signal ptr: unsigned(5 downto 0);
--	signal data: std_logic_vector(31 downto 0);
	
begin

--	sel <= to_integer(ptr);

--	process(clk)
--	begin
--		if rising_edge(clk) then
--			if reset='1' then
--				ptr <= (others=>'0');
--			elsif ipbus_in.ipb_strobe='1' then
--				if ipbus_in.ipb_addr(0)='0' and ipbus_in.ipb_write='1' then
--					ptr <= unsigned(ipbus_in.ipb_wdata(5 downto 0));
--				elsif ipbus_in.ipb_addr(0)='1' then
--					if ipbus_in.ipb_write='1' then
--						reg(sel) <= ipbus_in.ipb_wdata;
--					end if;
--					ptr <= ptr + 1;
--				end if;
--			end if;

--			data <= reg(sel);
						
--		end if;
--	end process;
	
--	ipbus_out.ipb_ack <= ipbus_in.ipb_strobe;
--	ipbus_out.ipb_err <= '0';
--	ipbus_out.ipb_rdata <= std_logic_vector(to_unsigned(0, 32 - 6)) & std_logic_vector(ptr)
--		when ipbus_in.ipb_addr(0)='0' else data;

    -- Pass required signals to the verilog code that is the top level
    -- of the L1 trigger code.
	trigger_top : verilog_trigger_top
	  port map(
	   -- clocks and reset
	   reset => reset,						-- active HI
	   clk200 => clk200,
	   -- programming interface
	   --inputs
	   ipb_clk => clk,						-- programming clock
	   ipb_strobe => ipbus_in.ipb_strobe,	-- this ipb space is selected for an I/O operation 
	   ipb_addr => ipbus_in.ipb_addr,		-- slave address, memory or register
	   ipb_write => ipbus_in.ipb_write,		-- this is a write operation
	   ipb_wdata => ipbus_in.ipb_wdata,		-- data to write for write operations
	   -- outputs
	   ipb_rdata => ipbus_out.ipb_rdata,		-- data returned for read operations
	   ipb_ack => ipbus_out.ipb_ack,			-- 'write' data has been stored, 'read' data is ready
	   ipb_err => ipbus_out.ipb_err,			-- '1' if error, '0' if OK?
	   en_proc_switch => en_proc_switch,
	   lcd => lcd,
	   --sfp
       txn_pphi => txn_pphi,
       txp_pphi => txp_pphi,
       rxn_pphi => rxn_pphi,
       rxp_pphi => rxp_pphi,
       txn_mphi => txn_mphi,
       txp_mphi => txp_mphi,
       rxn_mphi => rxn_mphi,
       rxp_mphi => rxp_mphi,
       --gt ref clk
       gt_refclk_p => gt_refclk_p,
       gt_refclk_n => gt_refclk_n,
       --init clk
       init_clk => init_clk,
       --tvalid output signals for timing measurement
       tx_tvalid_out => tx_tvalid_out,
       rx_tvalid_out => rx_tvalid_out
      );

end rtl;
