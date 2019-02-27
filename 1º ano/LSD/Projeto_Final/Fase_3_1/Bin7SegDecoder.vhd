library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is

	port(binInput : in std_logic_vector(4 downto 0);
		  enable   : in std_logic;
	     decOut_n : out std_logic_vector(6 downto 0));
	
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin

	decOut_n <= "1111111" when (enable   = '0') else -- disabled
					"1111001" when (binInput = "00001") else --1
					"0100100" when (binInput = "00010") else --2
					"0110000" when (binInput = "00011") else --3
					"0011001" when (binInput = "00100") else --4
					"0010010" when (binInput = "00101") else --5
					"0000010" when (binInput = "00110") else --6
					"1111000" when (binInput = "00111") else --7
					"0000000" when (binInput = "01000") else --8
					"0010000" when (binInput = "01001") else --9
					"0001000" when (binInput = "01010") else --A
					"0000011" when (binInput = "01011") else --b
					"1000110" when (binInput = "01100") else --C
					"0100001" when (binInput = "01101") else --d
					"0000110" when (binInput = "01110") else --E
					"0001110" when (binInput = "01111") else --F
					"1000000" when (binInput = "00000") else --0
					"0111111" when (binInput = "10000") else -- -
					"0101011" when (binInput = "10001") else -- n
					"0001001" when (binInput = "10010") else -- H
					"1111111";-- apagado
		
end Behavioral;