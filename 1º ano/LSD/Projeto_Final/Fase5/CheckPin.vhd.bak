library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CheckPin is
	port(clk, enable : in  std_logic;
		  btn   : in std_logic_vector(3 downto 0);
		  correct_pin1, correct_pin2   : in std_logic_vector(7 downto 0);
		  correct, wrong_3x, entering       : out std_logic);
end CheckPin;

architecture Behavioral of CheckPin is

	signal s_valid, s_start, s_reset : std_logic;
	signal s_count : unsigned(1 downto 0) := "00";
	signal s_pin   : std_logic_vector(7 downto 0);

begin

	s_start <= btn(0) when enable = '1' else '0';
	s_reset <= '1' when enable = '0' else '0';
	

	seqdetector : entity work.SeqDetector(Behavioral)
							port map(reset => s_reset,
										clk   => clk,
										start => s_start,
										btn   => btn,
										valid => s_valid,
										entering => entering,
										pin   => s_pin);
									
	
	process(s_valid, s_reset)
	begin
		if(s_reset = '1') then
			correct <= '0';
			wrong_3x <= '0';
		elsif(rising_edge(clk)) then
		
			if(s_valid = '1') then
				if(s_pin = correct_pin1 or s_pin = correct_pin2) then
					correct <= '1';
					wrong_3x <= '0';
				else
					if(s_count = "10") then
						correct <= '0';
						wrong_3x <= '1';
						s_count <= "00";
					else
						correct <= '0';
						wrong_3x <= '0';
						s_count <= s_count + "01";
					end if;
				end if;
			end if;
			
		end if;
	end process;	
	
end Behavioral;