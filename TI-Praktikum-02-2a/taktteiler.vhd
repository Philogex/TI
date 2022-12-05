library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity taktteiler is 
	port (
      clk			: in std_logic; --50 MHz
		clk_10Hz		: out std_logic
		);
end entity taktteiler;

architecture arch of taktteiler is
	signal counter		: integer range 2**23 - 1 downto 0 := 0;
	signal intern_clk : std_logic := '0';
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if(counter = 4999999) then
				intern_clk <= not(intern_clk);
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
	clk_10Hz <= intern_clk;
end architecture arch;
	