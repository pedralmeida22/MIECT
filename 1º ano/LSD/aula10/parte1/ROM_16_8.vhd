library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ROM_16_8 is
	port(address : in std_logic_vector(3 downto 0);
		  dataOut : out std_logic_vector(7 downto 0));

end ROM_16_8;

architecture Behavioral of Rom_16_8 is

	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (0 to 15) of TDataWord;
	constant c_memory: TROM := (x"00", x"43", x"D2", x"5C",
										 x"7C", x"AC", x"A3", x"FF", 
										 x"1B", x"10", x"0C", x"BF", 
										 x"AE", x"3C", x"13", x"98");
begin

	dataOut <= c_memory(to_integer(unsigned(address)));
	
end Behavioral;