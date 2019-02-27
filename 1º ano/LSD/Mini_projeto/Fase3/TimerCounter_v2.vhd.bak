library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerCounter is
	port(clk, clkSet, enable, reset, start, setM, setS, set : in std_logic;
		  countOut : out std_logic_vector(15 downto 0);
		  termCount : out std_logic);
end TimerCounter;

architecture Behavioral of TimerCounter is
	
	signal s_count, s_startValueCount : unsigned(15 downto 0);
	signal s_termCount : std_logic;
	signal s_start : std_logic := '1';
	signal s_reset : std_logic := '0';
	
begin

	process(clk, reset, clkSet)
	begin	
		if(set = '0') then
		
			if(rising_edge(reset)) then
				s_reset <= '1';
			end if;
			
			if(falling_edge(start)) then
				s_start <= not s_start;
			end if;
			
			if(s_reset = '1') then
				s_count <= s_startValueCount;
				s_termCount <= '0';
				s_reset <= '0';

			elsif(rising_edge(clk) and (enable = '1') and (s_start = '1')) then
			
				if(s_count /= x"0000") then

					if((s_count(11 downto 0) = x"000") and (s_count(15 downto 12) /= x"0")) then
					
						s_count <= s_count - x"06A7";
					elsif ((s_count(7 downto 0) = x"00") and (s_count(15 downto 8) /= x"00")) then
					
						s_count <= s_count - x"00A7";
					elsif ((s_count(3 downto 0) = x"0") and (s_count(15 downto 4) /= x"000")) then
					
						s_count <= s_count - x"0007";
					else
					
						s_count <= s_count - x"0001";
					end if;
				else
					s_termCount <= '1';
				end if;
			end if;
		else
		
			if(rising_edge(clkSet) and enable = '1') then
				
				if(setM = '0' and setS = '1') then
					if(s_startValueCount(7 downto 0) /= x"59") then
							
						if (s_startValueCount(3 downto 0) = x"9") then
						
							s_startValueCount <= s_startValueCount + x"0007";
						else
						
							s_startValueCount <= s_startValueCount + x"0001";
						end if;
					else
						s_startValueCount <= s_startValueCount(15 downto 8) & x"00";
					end if;
				elsif(setM = '1' and setS = '0') then
				
					if(s_startValueCount(15 downto 8) /= x"59") then
					
						if (s_startValueCount(11 downto 8) = x"9") then
						
							s_startValueCount <= s_startValueCount + x"0700";
						else
						
							s_startValueCount <= s_startValueCount + x"0100";
						end if;
					else
						s_startValueCount <= x"00" & s_startValueCount(7 downto 0);
					end if;
				end if;
			end if;
		end if;
		
	end process;
	
	termCount <= s_termCount when (set = '0') else '0';
	countOut <= std_logic_vector(s_count) when (set = '0') else std_logic_vector(s_startValueCount);
	
end Behavioral;
		
				