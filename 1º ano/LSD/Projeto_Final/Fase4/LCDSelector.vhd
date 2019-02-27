library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

entity LCDSelector is
	port(clk, mode, pulse, state : in std_logic;
		  intern, extern, activ, trigg, press0, pressAct, press1, insPin, insNew : out std_logic);
		 
end LCDSelector;

architecture Decoder of LCDSelector is
begin

	process(clk)
	begin
	
		if(rising_edge(clk)) then
			if(state = "0000") then
				if(mode = '0') then
					extern = '1';
				else
					intern = '1';
				end if;
				
			elsif(state = "0001") then
				activ = '1';
			
			elsif(state = "0010") then
				extern = '1';
			
			elsif(state = "0011") then
				intern = '1';
			
			elsif(state = "0101") then
				trigg = '1';
				press0 = '1';
			
			elsif(state = "0110") then
			
			elsif(state = "0111") then
				insPin = '1';
			end if;
			
			intern <= '0';
			extern <= '0';
			activ <= '0';
			trigg <= '0';
			press0 <= '0';
			pressAct <= '0';
			press1 <= '0';
			insPin <= '0';
			insNew <= '0';
		end if;
		
	end process;
end Decoder;
