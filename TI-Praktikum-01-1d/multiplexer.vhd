library ieee;
use ieee.std_logic_1164.all;


entity multiplexer is
	port(
		A:		in std_logic_vector(7 downto 0);			-- zu multiplexende Eingangssignale Pin-Belegung beginnend bei A0: SW0 rechter Schalter bis A7: SW7 dritter Schalter von links
		S:		in std_logic_vector(2 downto 0);			-- Adresse
		X:		out std_logic -- Output auf LED
	);

end multiplexer;

architecture mux_arch of multiplexer is
begin
	with S select X <= 
	A(7) when "000",
	A(6) when "001",
	A(5) when "010",
	A(4) when "011",
	A(3) when "100",
	A(2) when "101",
	A(1) when "110",
	A(0) when "111";
end mux_arch;