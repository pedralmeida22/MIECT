librarY IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port( bin : in std_logic_vector(7 downto 0);
			bcd0, bcd1, bcd2 : out std_logic_vector(3 downto 0));

end Bin2BCD;

architecture Behavioral of Bin2BCD is

	signal s_bin, s_bcd0, s_bcd1, s_bcd2 : unsigned(7 downto 0);

begin
	
	s_bcd0 <= s_bin mod 10;
	s_bcd2 <= s_bin mod 100;
	s_bcd1 <= (s_bin / 10) mod 10;
	
	bcd0 <= std_logic_vector(s_bcd0(3 downto 0));
	bcd1 <= std_logic_vector(s_bcd1(3 downto 0));
	bcd2 <= std_logic_vector(s_bcd2(3 downto 0));

end Behavioral;