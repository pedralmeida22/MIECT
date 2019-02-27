library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUpDown4 is
	port(clk : in std_logic;
	     reset : in std_logic;
	     upDown_n : in std_logic;
		  cntOut : out std_logic_vector(3 downto 0));

end CounterUpDown4;

architecture Behavioral of CounterUpDown4 is

	 signal s_cntValue : unsigned(3 downto 0);
	 
begin
	process(clk)
	begin 
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_cntValue <= (others => '0');
			elsif (upDown_n = '1') then
				s_cntValue <= s_cntValue + 1;
			else
				s_cntValue <= s_cntValue - 1;
			end if;
		end if;
	end process;
	
	cntOut <= std_logic_vector(s_cntValue);
	
end Behavioral;