library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is 



	port (
		reset_n     : in std_logic; -- Key 3	(reset)
      clk         : in std_logic; --50 MHz	(clock)
		switches		: in std_logic_vector(7 downto 0); -- zur Übernahme des ofl-values	(overflow data)
		cnt_enable	: in std_logic; -- SW9		(enable counter)
		ofl_rd		: in std_logic; -- read and store ofl-value, KEY0	(store overflow data)
		cnt_rd		: in std_logic; -- read and store the actual count-value, KEY1
		cnt_val_act : out std_logic_vector(7 downto 0); -- aktueller Zählwert
		cnt_val_stored_out : out std_logic_vector(7 downto 0) -- gespeicherter Zählwert
		
		
		);
end entity counter;

architecture arch of counter is
	signal counter					: unsigned(23 downto 0);
	signal intern_counter_async: unsigned(7 downto 0);
	signal intern_counter_ofl	: unsigned(7 downto 0);
	signal ofl_val					: unsigned(7 downto 0) := (others => '1');
	
begin

	process (reset_n, clk)  
	begin
		if(reset_n = '1') then
			intern_counter_ofl <= (others => '0');
		elsif (rising_edge(clk)) then
			if(ofl_rd = '1') then
				ofl_val <= unsigned(switches);
			end if;
			if(cnt_rd = '1') then
				intern_counter_async <= intern_counter_ofl;
			end if;
			if(cnt_enable = '1') then
				if not(counter = 4999999) then
					counter <= counter + 1;
				elsif(intern_counter_ofl < ofl_val) then
					intern_counter_ofl <= intern_counter_ofl + 1;
					counter <= (others => '0');
				else
					intern_counter_ofl <= "00000001";
				end if;
			end if;
		end if; 
	end process;
	cnt_val_act <= std_logic_vector(intern_counter_ofl);
	cnt_val_stored_out <= std_logic_vector(intern_counter_async);
end architecture arch;
	
	
	
	
	
	
	
	