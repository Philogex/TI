library ieee;
use ieee.std_logic_1164.all;

entity versuch1b is
	port(
	s0, s1, s2, s3	: in std_logic;
	f					: out std_logic);
end versuch1b;

architecture v1b_arch of versuch1b is
begin
	f <= s0 or (s2 and s3);
end v1b_arch;