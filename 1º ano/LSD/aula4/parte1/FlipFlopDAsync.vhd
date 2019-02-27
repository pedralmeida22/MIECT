library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FlipFlopDAsync is
	port(clk   : in std_logic;
		  d     : in std_logic;
		  set   : in std_logic;
		  reset : in std_logic;
		  q     : out std_logic);

end FlipFlopDAsync;

architecture Behavioral of FlipFlopDAsync is
begin
	process(reset, clk)
	begin
		if (reset = '1') then
			q <= '0';
		elsif (set = '1') then
				q <= '1';
		elsif (rising_edge(clk)) then
				q <= d;
		end if;
	end process;

end Behavioral;