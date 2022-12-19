library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity akkumulator is 

	port (
		d	: in std_logic_vector(3 downto 0); -- Daten-Eingang
      ld : in std_logic; -- MUX Steuereingang: 0(gedrückt)=Ergebnis durchschalten, 1(nicht gedrückt)= Dateneingang durchschalten
		sub : in std_logic; -- 0=+, 1=-
		e	: in std_logic; -- enable Auffangregister 0(gedrückt)= enabled
		clk : in std_logic; -- Takt

		c : out std_logic; -- LEDG(4) carry out
		q : out std_logic_vector(3 downto 0) -- LEDG(3..0) Daten-Ausgang
		
		-- debug pins:
		--z_out : out std_logic_vector(4 downto 0)	-- LEDR(4..0), z4 = carry
		
	
		);
end entity akkumulator;

architecture arch of akkumulator is
signal cr				:	signed(4 downto 0);
signal ALU				:	signed(4 downto 0);
signal cr_out			:	signed(4 downto 0);
begin
	catch_register: process(clk, ld, e) is
	begin
		if(rising_edge(clk)) then
				if(ld = '0' and e = '0') then
					cr <= ALU;
				elsif(e = '0') then
					cr <= signed('0' & d);
				end if;
		end if;
		cr_out <= cr;
	end process;
	math_stuff: process(e)
	begin
		if(sub = '0') then
			ALU <= cr_out + signed(d);
		else
			ALU <= cr_out - signed(d);
		end if;
	end process;
	c <= cr_out(4);
	q <= std_logic_vector(cr_out(3 downto 0));
end arch;
