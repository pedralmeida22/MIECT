library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer is
	port(clk, reset, enable : in std_logic;
		  max                : in std_logic_vector(5 downto 0);
		  finish   : out std_logic;
		  count    : out std_logic_vector(5 downto 0));

end Timer;

architecture Behavioral of Timer is
	signal s_count_freq : natural := 0;
	signal s_count, s_max : unsigned(5 downto 0) := (unsigned(max));
	signal s_finish : std_logic;

begin

	process(reset)
	begin
		
	end process;
	
	process(clk, enable, reset)
	begin
	
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_count <= unsigned(max);
				s_count_freq <= 0;
				s_finish <= '0';
				s_max <= unsigned(max);
		
			elsif(enable = '1') then
				if(s_count = "111111") then
					s_finish <= '1';
					s_count <= (s_max + "000001");
					s_count_freq <= 0;
				elsif(s_count_freq >= 50000000) then
					s_count <= s_count - "000001";
					s_count_freq <= 0;
					s_finish <= '0';
				else
					s_count_freq <= s_count_freq + 1;
					s_finish <= '0';
				end if;
			end if;
		end if;
	end process;
	
	finish <= s_finish;
	count <= std_logic_vector(s_count);
	
end Behavioral;
					
					
					
					
					
					
					
			