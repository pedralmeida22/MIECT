library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

entity LCDSelector is
	port(clk, mode, pulse, entering_pin : in std_logic;
		  state, seq_state, sensorNum : in std_logic_vector(3 downto 0);
		  top_message, bot_message : out std_logic_vector(3 downto 0));
		 
end LCDSelector;

architecture Decoder of LCDSelector is
begin

	process(clk)
	begin
	
		if(rising_edge(clk)) then
			
			top_message <= "0000";
			bot_message <= "0000";
		
			if(state = "0000") then
				if(mode = '1') then
					top_message <= "0001";
				else
					top_message <= "0010";
				end if;
				if(pulse = '0') then
					bot_message <= "0010";
				else
					bot_message <= "0011";
				end if;
			elsif(state = "0001") then
				top_message <= "0011";
				if(entering_pin = '1') then
					bot_message <= "0100";
				end if;
			
			elsif(state = "0010") then
				top_message <= "0010";
			
			elsif(state = "0011") then
				top_message <= "0001";
				
			elsif(state = "0100") then
				if(entering_pin = '1') then
					bot_message <= "0101";
					top_message <= "1000";
				else
					top_message <= "0110";
					bot_message <= "0001";
				end if;
			
			elsif(state = "0110") then
				
				if(entering_pin = '1') then
					bot_message <= "0101";
					top_message <= "1000";
				else
					top_message <= "0100";
					bot_message <= "0001";
				end if;
			elsif(state = "0111") then
				
				if(entering_pin = '1') then
					bot_message <= "0101";
					top_message <= "0111";
				else
					top_message <= "0101";
					bot_message <= "0001";
				end if;
			elsif(state = "1000") then
				top_message <= "1001";
				if(sensorNum = "1111") then
					bot_message <= "1111";
				elsif(sensorNum = "1000") then
					bot_message <= "0111";
				elsif(sensorNum = "1001") then
					bot_message <= "1000";
				else
					bot_message <= "0110";
				end if;
			end if;
			
		end if;
		
	end process;
end Decoder;
