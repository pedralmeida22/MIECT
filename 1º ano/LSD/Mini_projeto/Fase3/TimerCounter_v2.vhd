library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerCounter_v2 is
	port(clk, reset, startStop, setM, setS, set : in std_logic;
		  countOut : out std_logic_vector(15 downto 0);
		  termCount : out std_logic);
end TimerCounter_v2;

architecture Behavioral of TimerCounter_v2 is
	
	signal s_count, s_startValue : unsigned(15 downto 0) := x"5959";
	signal s_freqCount : unsigned(1 downto 0);
	signal s_termCount : std_logic;
	signal s_enable : std_logic := '1';
	
begin

	process(clk, reset, startStop)
	begin	

		if(rising_edge(startStop)) then
			s_enable <= not s_enable;
		end if;
		
		if(rising_edge(clk)  and s_enable = '1') then
		
			if(reset = '1') then
				s_count <= s_startValue;
				s_termCount <= '0';
		
			elsif(set = '1') then
				if(setS = '1') then
					if(s_startValue(7 downto 0) /= x"59") then
							
						if (s_startValue(3 downto 0) = x"9") then
						
							s_startValue <= s_startValue + x"0007";
						else
						
							s_startValue <= s_startValue + x"0001";
						end if;
					else
						s_startValue <= s_startValue(15 downto 8) & x"00";
					end if;
				end if;
				if(setM = '1') then
			
					if(s_startValue(15 downto 8) /= x"59") then
					
						if (s_startValue(11 downto 8) = x"9") then
						
							s_startValue <= s_startValue + x"0700";
						else
						
							s_startValue <= s_startValue + x"0100";
						end if;
					else
						s_startValue <= x"00" & s_startValue(7 downto 0);
					end if;
				end if;
			elsif(s_freqCount = "11") then
				s_freqCount <= "00";
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
			else
				s_freqCount <= (s_freqCount + "01");
				
			end if;
			
			
		end if;
		
	end process;
	
	termCount <= s_termCount when (set = '0') else '0';
	countOut <= std_logic_vector(s_count) when (set = '0') else std_logic_vector(s_startValue);
	
end Behavioral;
		
				