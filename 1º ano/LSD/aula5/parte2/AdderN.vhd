library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AdderN is
	generic(N : positive := 8);
	port(operand0 : in std_logic_vector(N-1 downto 0);
	     operand1 : in std_logic_vector(N-1 downto 0);
		  result   : out std_logic_vector(N-1 downto 0));
end AdderN;

architecture Behavioral of AdderN is

	signal s_r, s_a, s_b : unsigned(N-1 downto 0);
	
begin 
	s_a <= unsigned(operand0);
	s_b <= unsigned(operand1);
	s_r <= s_a + s_b;
	
	result <= std_logic_vector(s_r);

end Behavioral;