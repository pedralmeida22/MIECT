library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerCounter is
	port(clk, enable, reset, start : in std_logic;
		  countOut : out std_logic_vector(15 downto 0);
		  disp1, disp2, disp3, disp4 : out std_logic_vector(3 downto 0); --portos para efeitos de simulação
		  termCount : out std_logic);
end TimerCounter;

architecture Behavioral of TimerCounter is
	
	signal s_count : unsigned(15 downto 0);
	signal s_termCount : std_logic;
	signal s_start : std_logic := '1';
	signal s_reset : std_logic := '0';
	
begin

	process(clk, reset)
	begin	
	
		if(falling_edge(reset)) then
			s_reset <= '1';
		end if;
		
		if(falling_edge(start)) then
			s_start <= not s_start;
		end if;
		
		if(s_reset = '1') then
			s_count <= x"4921";
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
			end if;
		end if;
		
		if(s_count = x"0000") then
			s_termCount <= '1';
		end if;
		
	end process;

	termCount <= s_termCount;
	countOut <= std_logic_vector(s_count);
	--para simulação
	disp1 <= std_logic_vector(s_count(15 downto 12));
	disp2 <= std_logic_vector(s_count(11 downto 8));
	disp3 <= std_logic_vector(s_count(7 downto 4));
	disp4 <= std_logic_vector(s_count(3 downto 0));
	-----------------
	
end Behavioral;
		
				