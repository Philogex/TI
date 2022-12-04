library ieee;
use ieee.std_logic_1164.all;

entity versuch1a is
	port(
	x0, x1, x2	: in std_logic;
	y				: out std_logic);
end versuch1a;

architecture va1_arch of versuch1a is
begin
	y <= not(x1) and (x0 or x2);
end va1_arch;