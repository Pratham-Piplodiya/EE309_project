library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
  
entity mux6to1 is
   port(S2,S1,S0:in std_logic;
	D0,D1,D2,D3,D4,D5:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end mux6to1;
  
architecture data of mux6to1 is
begin
 
mux_process : process (S0, S1, S2, D0, D1, D2, D3, D4, D5) 
begin
	if S2 = '0' then
		if S1 = '0' then
			if S0 = '0' then
				Y <= D0;
			else
				Y <= D1;
			end if;
		else
			if S0 = '0' then
				Y <= D2;
			else
				Y <= D3;
			end if;
		end if;
	else
		if S0 = '0' then
			Y <= D4;
		else
			Y <= D5;
		end if;
	end if;
	
end process mux_process;

end data;