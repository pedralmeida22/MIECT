 library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCDCase is

	port(binInput : in std_logic_vector(7 downto 0);
	     bcd0,bcd1,bcd2 : out std_logic_vector(3 downto 0));
	
end Bin2BCDCase;


architecture Behavioral of Bin2BCDCase is

begin

 process(binInput)

   begin

      case binInput is
		
		

         when "00000000" => bcd0 <= "0000";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00000001" => bcd0 <= "0001";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00000010" => bcd0 <= "0010";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00000011" => bcd0 <= "0011";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00000100" => bcd0 <= "0100";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00000101" => bcd0 <= "0101";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00000110" => bcd0 <= "0110";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00000111" => bcd0 <= "0111";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00001000" => bcd0 <= "1000";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00001001" => bcd0 <= "1001";   bcd1 <= "0000";   bcd2 <= "0000";
         when "00001010" => bcd0 <= "0000";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00001011" => bcd0 <= "0001";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00001100" => bcd0 <= "0010";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00001101" => bcd0 <= "0011";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00001110" => bcd0 <= "0100";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00001111" => bcd0 <= "0101";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00010000" => bcd0 <= "0110";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00010001" => bcd0 <= "0111";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00010010" => bcd0 <= "1000";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00010011" => bcd0 <= "1001";   bcd1 <= "0001";   bcd2 <= "0000";
         when "00010100" => bcd0 <= "0000";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00010101" => bcd0 <= "0001";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00010110" => bcd0 <= "0010";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00010111" => bcd0 <= "0011";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00011000" => bcd0 <= "0100";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00011001" => bcd0 <= "0101";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00011010" => bcd0 <= "0110";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00011011" => bcd0 <= "0111";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00011100" => bcd0 <= "1000";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00011101" => bcd0 <= "1001";   bcd1 <= "0010";   bcd2 <= "0000";
         when "00011110" => bcd0 <= "0000";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00011111" => bcd0 <= "0001";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00100000" => bcd0 <= "0010";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00100001" => bcd0 <= "0011";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00100010" => bcd0 <= "0100";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00100011" => bcd0 <= "0101";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00100100" => bcd0 <= "0110";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00100101" => bcd0 <= "0111";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00100110" => bcd0 <= "1000";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00100111" => bcd0 <= "1001";   bcd1 <= "0011";   bcd2 <= "0000";
         when "00101000" => bcd0 <= "0000";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00101001" => bcd0 <= "0001";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00101010" => bcd0 <= "0010";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00101011" => bcd0 <= "0011";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00101100" => bcd0 <= "0100";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00101101" => bcd0 <= "0101";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00101110" => bcd0 <= "0110";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00101111" => bcd0 <= "0111";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00110000" => bcd0 <= "1000";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00110001" => bcd0 <= "1001";   bcd1 <= "0100";   bcd2 <= "0000";
         when "00110010" => bcd0 <= "0000";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00110011" => bcd0 <= "0001";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00110100" => bcd0 <= "0010";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00110101" => bcd0 <= "0011";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00110110" => bcd0 <= "0100";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00110111" => bcd0 <= "0101";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00111000" => bcd0 <= "0110";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00111001" => bcd0 <= "0111";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00111010" => bcd0 <= "1000";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00111011" => bcd0 <= "1001";   bcd1 <= "0101";   bcd2 <= "0000";
         when "00111100" => bcd0 <= "0000";   bcd1 <= "0110";   bcd2 <= "0000";
         when "00111101" => bcd0 <= "0001";   bcd1 <= "0110";   bcd2 <= "0000";
         when "00111110" => bcd0 <= "0010";   bcd1 <= "0110";   bcd2 <= "0000";
         when "00111111" => bcd0 <= "0011";   bcd1 <= "0110";   bcd2 <= "0000";
         when "01000000" => bcd0 <= "0100";   bcd1 <= "0110";   bcd2 <= "0000";
         when "01000001" => bcd0 <= "0101";   bcd1 <= "0110";   bcd2 <= "0000";
         when "01000010" => bcd0 <= "0110";   bcd1 <= "0110";   bcd2 <= "0000";
         when "01000011" => bcd0 <= "0111";   bcd1 <= "0110";   bcd2 <= "0000";
         when "01000100" => bcd0 <= "1000";   bcd1 <= "0110";   bcd2 <= "0000";
         when "01000101" => bcd0 <= "1001";   bcd1 <= "0110";   bcd2 <= "0000";
         when "01000110" => bcd0 <= "0000";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01000111" => bcd0 <= "0001";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01001000" => bcd0 <= "0010";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01001001" => bcd0 <= "0011";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01001010" => bcd0 <= "0100";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01001011" => bcd0 <= "0101";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01001100" => bcd0 <= "0110";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01001101" => bcd0 <= "0111";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01001110" => bcd0 <= "1000";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01001111" => bcd0 <= "1001";   bcd1 <= "0111";   bcd2 <= "0000";
         when "01010000" => bcd0 <= "0000";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01010001" => bcd0 <= "0001";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01010010" => bcd0 <= "0010";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01010011" => bcd0 <= "0011";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01010100" => bcd0 <= "0100";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01010101" => bcd0 <= "0101";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01010110" => bcd0 <= "0110";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01010111" => bcd0 <= "0111";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01011000" => bcd0 <= "1000";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01011001" => bcd0 <= "1001";   bcd1 <= "1000";   bcd2 <= "0000";
         when "01011010" => bcd0 <= "0000";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01011011" => bcd0 <= "0001";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01011100" => bcd0 <= "0010";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01011101" => bcd0 <= "0011";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01011110" => bcd0 <= "0100";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01011111" => bcd0 <= "0101";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01100000" => bcd0 <= "0110";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01100001" => bcd0 <= "0111";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01100010" => bcd0 <= "1000";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01100011" => bcd0 <= "1001";   bcd1 <= "1001";   bcd2 <= "0000";
         when "01100100" => bcd0 <= "0000";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01100101" => bcd0 <= "0001";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01100110" => bcd0 <= "0010";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01100111" => bcd0 <= "0011";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01101000" => bcd0 <= "0100";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01101001" => bcd0 <= "0101";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01101010" => bcd0 <= "0110";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01101011" => bcd0 <= "0111";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01101100" => bcd0 <= "1000";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01101101" => bcd0 <= "1001";   bcd1 <= "0000";   bcd2 <= "0001";
         when "01101110" => bcd0 <= "0000";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01101111" => bcd0 <= "0001";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01110000" => bcd0 <= "0010";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01110001" => bcd0 <= "0011";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01110010" => bcd0 <= "0100";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01110011" => bcd0 <= "0101";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01110100" => bcd0 <= "0110";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01110101" => bcd0 <= "0111";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01110110" => bcd0 <= "1000";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01110111" => bcd0 <= "1001";   bcd1 <= "0001";   bcd2 <= "0001";
         when "01111000" => bcd0 <= "0000";   bcd1 <= "0010";   bcd2 <= "0001";
         when "01111001" => bcd0 <= "0001";   bcd1 <= "0010";   bcd2 <= "0001";
         when "01111010" => bcd0 <= "0010";   bcd1 <= "0010";   bcd2 <= "0001";
         when "01111011" => bcd0 <= "0011";   bcd1 <= "0010";   bcd2 <= "0001";
         when "01111100" => bcd0 <= "0100";   bcd1 <= "0010";   bcd2 <= "0001";
         when "01111101" => bcd0 <= "0101";   bcd1 <= "0010";   bcd2 <= "0001";
         when "01111110" => bcd0 <= "0110";   bcd1 <= "0010";   bcd2 <= "0001";
         when "01111111" => bcd0 <= "0111";   bcd1 <= "0010";   bcd2 <= "0001";
         when "10000000" => bcd0 <= "1000";   bcd1 <= "0010";   bcd2 <= "0001";
         when "10000001" => bcd0 <= "1001";   bcd1 <= "0010";   bcd2 <= "0001";
         when "10000010" => bcd0 <= "0000";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10000011" => bcd0 <= "0001";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10000100" => bcd0 <= "0010";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10000101" => bcd0 <= "0011";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10000110" => bcd0 <= "0100";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10000111" => bcd0 <= "0101";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10001000" => bcd0 <= "0110";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10001001" => bcd0 <= "0111";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10001010" => bcd0 <= "1000";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10001011" => bcd0 <= "1001";   bcd1 <= "0011";   bcd2 <= "0001";
         when "10001100" => bcd0 <= "0000";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10001101" => bcd0 <= "0001";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10001110" => bcd0 <= "0010";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10001111" => bcd0 <= "0011";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10010000" => bcd0 <= "0100";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10010001" => bcd0 <= "0101";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10010010" => bcd0 <= "0110";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10010011" => bcd0 <= "0111";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10010100" => bcd0 <= "1000";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10010101" => bcd0 <= "1001";   bcd1 <= "0100";   bcd2 <= "0001";
         when "10010110" => bcd0 <= "0000";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10010111" => bcd0 <= "0001";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10011000" => bcd0 <= "0010";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10011001" => bcd0 <= "0011";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10011010" => bcd0 <= "0100";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10011011" => bcd0 <= "0101";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10011100" => bcd0 <= "0110";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10011101" => bcd0 <= "0111";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10011110" => bcd0 <= "1000";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10011111" => bcd0 <= "1001";   bcd1 <= "0101";   bcd2 <= "0001";
         when "10100000" => bcd0 <= "0000";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10100001" => bcd0 <= "0001";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10100010" => bcd0 <= "0010";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10100011" => bcd0 <= "0011";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10100100" => bcd0 <= "0100";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10100101" => bcd0 <= "0101";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10100110" => bcd0 <= "0110";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10100111" => bcd0 <= "0111";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10101000" => bcd0 <= "1000";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10101001" => bcd0 <= "1001";   bcd1 <= "0110";   bcd2 <= "0001";
         when "10101010" => bcd0 <= "0000";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10101011" => bcd0 <= "0001";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10101100" => bcd0 <= "0010";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10101101" => bcd0 <= "0011";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10101110" => bcd0 <= "0100";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10101111" => bcd0 <= "0101";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10110000" => bcd0 <= "0110";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10110001" => bcd0 <= "0111";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10110010" => bcd0 <= "1000";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10110011" => bcd0 <= "1001";   bcd1 <= "0111";   bcd2 <= "0001";
         when "10110100" => bcd0 <= "0000";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10110101" => bcd0 <= "0001";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10110110" => bcd0 <= "0010";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10110111" => bcd0 <= "0011";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10111000" => bcd0 <= "0100";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10111001" => bcd0 <= "0101";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10111010" => bcd0 <= "0110";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10111011" => bcd0 <= "0111";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10111100" => bcd0 <= "1000";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10111101" => bcd0 <= "1001";   bcd1 <= "1000";   bcd2 <= "0001";
         when "10111110" => bcd0 <= "0000";   bcd1 <= "1001";   bcd2 <= "0001";
         when "10111111" => bcd0 <= "0001";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11000000" => bcd0 <= "0010";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11000001" => bcd0 <= "0011";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11000010" => bcd0 <= "0100";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11000011" => bcd0 <= "0101";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11000100" => bcd0 <= "0110";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11000101" => bcd0 <= "0111";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11000110" => bcd0 <= "1000";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11000111" => bcd0 <= "1001";   bcd1 <= "1001";   bcd2 <= "0001";
         when "11001000" => bcd0 <= "0000";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11001001" => bcd0 <= "0001";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11001010" => bcd0 <= "0010";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11001011" => bcd0 <= "0011";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11001100" => bcd0 <= "0100";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11001101" => bcd0 <= "0101";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11001110" => bcd0 <= "0110";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11001111" => bcd0 <= "0111";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11010000" => bcd0 <= "1000";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11010001" => bcd0 <= "1001";   bcd1 <= "0000";   bcd2 <= "0010";
         when "11010010" => bcd0 <= "0000";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11010011" => bcd0 <= "0001";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11010100" => bcd0 <= "0010";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11010101" => bcd0 <= "0011";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11010110" => bcd0 <= "0100";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11010111" => bcd0 <= "0101";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11011000" => bcd0 <= "0110";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11011001" => bcd0 <= "0111";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11011010" => bcd0 <= "1000";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11011011" => bcd0 <= "1001";   bcd1 <= "0001";   bcd2 <= "0010";
         when "11011100" => bcd0 <= "0000";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11011101" => bcd0 <= "0001";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11011110" => bcd0 <= "0010";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11011111" => bcd0 <= "0011";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11100000" => bcd0 <= "0100";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11100001" => bcd0 <= "0101";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11100010" => bcd0 <= "0110";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11100011" => bcd0 <= "0111";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11100100" => bcd0 <= "1000";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11100101" => bcd0 <= "1001";   bcd1 <= "0010";   bcd2 <= "0010";
         when "11100110" => bcd0 <= "0000";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11100111" => bcd0 <= "0001";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11101000" => bcd0 <= "0010";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11101001" => bcd0 <= "0011";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11101010" => bcd0 <= "0100";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11101011" => bcd0 <= "0101";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11101100" => bcd0 <= "0110";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11101101" => bcd0 <= "0111";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11101110" => bcd0 <= "1000";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11101111" => bcd0 <= "1001";   bcd1 <= "0011";   bcd2 <= "0010";
         when "11110000" => bcd0 <= "0000";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11110001" => bcd0 <= "0001";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11110010" => bcd0 <= "0010";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11110011" => bcd0 <= "0011";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11110100" => bcd0 <= "0100";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11110101" => bcd0 <= "0101";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11110110" => bcd0 <= "0110";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11110111" => bcd0 <= "0111";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11111000" => bcd0 <= "1000";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11111001" => bcd0 <= "1001";   bcd1 <= "0100";   bcd2 <= "0010";
         when "11111010" => bcd0 <= "0000";   bcd1 <= "0101";   bcd2 <= "0010";
         when "11111011" => bcd0 <= "0001";   bcd1 <= "0101";   bcd2 <= "0010";
         when "11111100" => bcd0 <= "0010";   bcd1 <= "0101";   bcd2 <= "0010";
         when "11111101" => bcd0 <= "0011";   bcd1 <= "0101";   bcd2 <= "0010";
         when "11111110" => bcd0 <= "0100";   bcd1 <= "0101";   bcd2 <= "0010";
         when "11111111" => bcd0 <= "0101";   bcd1 <= "0101";   bcd2 <= "0010";
			
		end case;
	end process;
	
end Behavioral;
