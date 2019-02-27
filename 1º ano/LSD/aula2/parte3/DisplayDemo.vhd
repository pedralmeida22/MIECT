library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDemo is
	port( SW    : in std_logic_vector(3 downto 0);
		   KEY   : in std_logic_vector(0 downto 0);
		   HEX0  : out std_logic_vector(6 downto 0);
			LEDR  : out std_logic_vector(6 downto 0);
			LEDG  : out std_logic_vector(3 downto 0));
	
end DisplayDemo;

architecture Shell of DisplayDemo is

signal s_DecOut_n : std_logic_vector(6 downto 0); 

begin
		system_core : entity work.Bin7SegDecoder(Behavioral)
						  port map( enable => KEY(0),
										binInput => SW,
										decOut_n => s_DecOut_n);
						  
		HEX0 <= s_DecOut_n;
		LEDR <= s_DecOut_n;
		LEDG <= SW;
										
	
	
end Shell;