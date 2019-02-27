library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity ShiftRegister_Demo is
	port(CLOCK_50 : in std_logic;
	     SW       : in std_logic_vector(0 downto 0);
		  LEDG     : out std_logic_vector(8 downto 0);
		  LEDR     : out std_logic_vector(3 downto 0));
	
end ShiftRegister_Demo;

architecture Behavioral of ShiftRegister_Demo is

	signal s_clk : std_logic;

begin

	clk_divider : entity work.ClkDividerN(RTL)
			generic map(k => 50000000)
		   port map(ClkIn => CLOCK_50,
			         ClkOut => s_clk);
		
	shift_divider : entity work.ShiftRegisterN(Behavioral)
			generic map(N => 4)
			port map(clk => s_clk,
						sin => SW(0),
						dataOut => LEDR);
						
	LEDG(8) <= s_clk;
			
end Behavioral;