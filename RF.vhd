library ieee;
use ieee.std_logic_1164.all;

entity registerFileAccess is
	port (R0, R1, R2, R3, R4, R5, R6, R7 : IN STD_LOGIC_VECTOR(15 downto 0);
				Rf_a1 : IN STD_LOGIC_VECTOR(2 downto 0);
				Rf_a2 : IN STD_LOGIC_VECTOR(2 downto 0);
				Rf_a3 : IN STD_LOGIC_VECTOR(2 downto 0);
				Rf_d3 : IN STD_LOGIC_VECTOR(2 downto 0);

				Rf_d1 : OUT STD_LOGIC_VECTOR(15 downto 0);
				Rf_d2 : OUT STD_LOGIC_VECTOR(15 downto 0));
end registerFileAccess;

component R1 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end R1;

component R2 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end R2;

component R3 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end R3;

component R4 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end R4;

component R5 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end R5;

component R6 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end R6;

component R7 is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end R7;

architecture description of registerFileAccess is
		begin
			process (Rf_a, R0, R1, R2, R3, R4, R5, R6, R7)
			begin
				case Rf_a1 is
	        when "000" =>
	                Rf_d1 <= R0;
					when "001" =>
	                Rf_d1 <= R1;
					when "010" =>
	                Rf_d1 <= R2;
					when "011" =>
	                Rf_d1 <= R3;
					when "100" =>
	                Rf_d1 <= R4;
					when "101" =>
	                Rf_d1 <= R5;
					when "110" =>
	                Rf_d1 <= R6;
					when "111" =>
	                Rf_d1 <= R7;
					when others =>
									Rf_d1 <= R0;
	      end case;
			
			
			case Rf_a2 is
	        when "000" =>
	                Rf_d2 <= R0;
					when "001" =>
	                Rf_d2 <= R1;
					when "010" =>
	                Rf_d2 <= R2;
					when "011" =>
	                Rf_d2 <= R3;
					when "100" =>
	                Rf_d2 <= R4;
					when "101" =>
	                Rf_d2 <= R5;
					when "110" =>
	                Rf_d2 <= R6;
					when "111" =>
	                Rf_d2 <= R7;
					when others =>
									Rf_d2 <= R0;
	      end case;
			
			
			case Rf_a3 is
	        when "000" =>
	                R0 <= Rf_d3;
					when "001" =>
	                R1 <= Rf_d3;
					when "010" =>
	                R2 <= Rf_d3;
					when "011" =>
	                R3 <= Rf_d3;
					when "100" =>
	                R4 <= Rf_d3;
					when "101" =>
	                R5 <= Rf_d3;
					when "110" =>
	                R6 <= Rf_d3;
					when "111" =>
	                R7 <= Rf_d3;
					when others =>
									R0 <= Rf_d3;
	      end case;
			end process;
end description;
