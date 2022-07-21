library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
  
entity mux3to1_16bit is
   port(S0,S1:in std_logic;
	
	D0,D1,D2:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end mux3to1_16bit;
  
architecture data of mux3to1_16bit is
begin
 
mux_process : process (S0, S1, D0, D1, D2) 
begin
	if S1 = '0' then
		if S0 = '0' then 
			Y <= D0;
		else
			Y <= D1;
		end if;
	else
		Y <= D2;
	end if;
	
end process mux_process;

end data;