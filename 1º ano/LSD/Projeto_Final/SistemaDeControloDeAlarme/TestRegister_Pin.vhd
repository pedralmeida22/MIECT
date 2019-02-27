library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TestRegister_Pin is
	port(CLOCK_50: in std_logic;
		  KEY        : in std_logic_vector(3 downto 0);
		  SW        : in std_logic_vector(3 downto 0);
		  LEDR        : out std_logic_vector(17 downto 0));
	
end TestRegister_Pin;

architecture Shell of TestRegister_Pin is

	signal s_valid, s_reset, s_start: std_logic;
	signal s_btn : std_logic_vector(3 downto 0);
	signal s_pin : std_logic_vector(7 downto 0);

begin
	
	s_reset <= '1' when SW(0) = '0' else '0';
	s_start <= s_btn(0) when SW(0) = '1' else '0';
	
	LEDR(17 downto 14) <= s_btn;
	
	debouncer0 : entity work.debouncer(fancy)
						generic map(CLOCK_FREQUENCY => 50.0e6,
										WINDOW_DURATION => 20.0e-6, 
										DELAY_DURATION  => 20.0e-3, 
										INITIAL_LEVEL   => '0')
						port map(clock             => CLOCK_50,
									reset             => s_reset,
									dirty             => KEY(0),
									clean             => open, 
									zero_to_one_pulse => open,
									one_to_zero_pulse => s_btn(0));
									
	debouncer1 : entity work.debouncer(fancy)
						generic map(CLOCK_FREQUENCY => 50.0e6,
										WINDOW_DURATION => 20.0e-6, 
										DELAY_DURATION  => 20.0e-3, 
										INITIAL_LEVEL   => '0')
						port map(clock             => CLOCK_50,
									reset             => s_reset,
									dirty             => KEY(1),
									clean             => open, 
									zero_to_one_pulse => open,
									one_to_zero_pulse => s_btn(1));
	debouncer2 : entity work.debouncer(fancy)
						generic map(CLOCK_FREQUENCY => 50.0e6,
										WINDOW_DURATION => 20.0e-6, 
										DELAY_DURATION  => 20.0e-3, 
										INITIAL_LEVEL   => '0')
						port map(clock             => CLOCK_50,
									reset             => s_reset,
									dirty             => KEY(2),
									clean             => open, 
									zero_to_one_pulse => open,
									one_to_zero_pulse => s_btn(2));
	debouncer3 : entity work.debouncer(fancy)
						generic map(CLOCK_FREQUENCY => 50.0e6,
										WINDOW_DURATION => 20.0e-6, 
										DELAY_DURATION  => 20.0e-3, 
										INITIAL_LEVEL   => '0')
						port map(clock             => CLOCK_50,
									reset             => s_reset,
									dirty             => KEY(3),
									clean             => open, 
									zero_to_one_pulse => open,
									one_to_zero_pulse => s_btn(3));
									
	
									
	
	reg8 : entity work.Reg8(Behavioral)
			 port map(clk => CLOCK_50,
						 enable => s_valid,
					    dataIn => s_pin,
						 dataOut => LEDR(7 downto 0));
			 
			 
	seq_detec : entity work.SeqDetector(Behavioral)
			port map(clk => CLOCK_50,
						reset => s_reset,
					   start => s_start,
						btn => s_btn,
						valid => s_valid,
						entering => LEDR(10),
						pin => s_pin);

end Shell;