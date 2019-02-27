library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ROM_Demo is
	port(SW : in std_logic_vector(3 downto 0);
		  LEDR : out std_logic_vector(7 downto 0));
end ROM_Demo;

architecture Shell of ROM_Demo is

begin
	
	rom : entity work.ROM_16_8(Behavioral)
			port map(address => SW,
						dataOut => LEDR);
	
end Shell;