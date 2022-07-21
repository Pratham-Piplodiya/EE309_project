library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Shift7 is
   port(ip: in std_logic_vector(15 downto 0);
			op: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of Shift7 is

begin
	op(15 downto 1) <= ip(14 downto 0);
	op(0)           <= ip(15);
	
	
end Struct;