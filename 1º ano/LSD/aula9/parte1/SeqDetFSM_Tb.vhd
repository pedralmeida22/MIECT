library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM_Tb is
end SeqDetFSM_Tb;

architecture Stimulus of SeqDetFSM_Tb is

	signal s_clk, s_reset, s_xIn : std_logic;
	signal s_yOut : std_logic;
	
begin
	
	uut : entity work.SeqDetFSM(MealyArch)
			port map(clk   => s_clk,
					   reset => s_reset,
						xIn   => s_xIn,
						yout  => s_yOut);
						
	clock_proc : process 
	begin 
		s_clk <= '0'; 
		wait for 125ns; 
		s_clk <= '1'; 
		wait for 125ns; 
	end process;
	
	stim_proc : process 
	begin
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '1';
		wait for 125ns;
		s_xIn <= '0';
		wait for 125ns;
		s_xIn <= '0';		
		
	end process;
		
end Stimulus;