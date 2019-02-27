library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

entity LCDNumDec is
	port(binInput : in std_logic_vector(3 downto 0);
		  asciiOut : out std_logic_vector(7 downto 0));
		 
end LCDNumDec;

architecture Decoder of LCDNumDec is

begin

	process(binInput)
	begin
	
		if(binInput = "0000") then
			asciiOut <= x"30";
		elsif(binInput = "0001") then
			asciiOut <= x"31";
		elsif(binInput = "0010") then
			asciiOut <= x"32";
		elsif(binInput = "0011") then
			asciiOut <= x"33";
		elsif(binInput = "0100") then
			asciiOut <= x"34";
		elsif(binInput = "0101") then
			asciiOut <= x"35";
		elsif(binInput = "0110") then
			asciiOut <= x"36";
		elsif(binInput = "0111") then
			asciiOut <= x"37";
		else
			asciiOut <= x"00";
		end if;
	end process;
end Decoder;
	