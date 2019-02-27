library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Fase_4 is
	port(CLOCK_50 : in std_logic;
		  KEY      : in std_logic_vector(3 downto 0);
		  SW       : in std_logic_vector(15 downto 0);
		  LEDG     : out std_logic_vector(5 downto 0);
		  LEDR     : out std_logic_vector(17 downto 0));

end Fase_4;

architecture Behavioral of Fase_4 is

	signal s_done_reg, s_rec_enable, s_reset, s_timer_finish, s_trigger, s_window_trigger, s_timer_reset, s_int_trigger, s_pin_enable, s_correct_pin, s_wrong_pin3x, s_entering_pin : std_logic;
	signal s_correct_pin1, s_correct_pin2 : std_logic_vector(7 downto 0);
	signal s_btn : std_logic_vector(3 downto 0);	
	signal s_timer_max : std_logic_vector(5 downto 0);

begin 

	s_trigger <= SW(8) or SW(7) or SW(6) or SW(5) or SW(4) or SW(3) or SW(2) or SW(1) or SW(0);
	s_window_trigger <= SW(8) or SW(7) or SW(6) or SW(5) or SW(4);
	s_int_trigger <= SW(1) or SW(0);
	
	s_correct_pin1 <= "01110101";
	
	LEDR(17) <= s_entering_pin;
	LEDR(16) <= s_pin_enable;
	
	
	s_reset <= SW(15);
	
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
	
	

	alarmControl   : entity work.AlarmControlUnit(Behavioral)
									port map(clk   => CLOCK_50,
												reset => s_reset,
												timer_finish => s_timer_finish,
												right_pin => s_correct_pin,
												wrong_pin => s_wrong_pin3x,
												arm       => s_btn(0),
												pin_set   => s_btn(1),
												mode => SW(10),
												trigger   => s_trigger,
												window_trigger => s_window_trigger,
												timer_reset => s_timer_reset,
												int_trigger => s_int_trigger,
												done_set => s_done_reg,
												siren => LEDR(15),
												timer_max => s_timer_max,
												pin_enable => s_pin_enable,
												set_pin_en => s_rec_enable,
												state => LEDR(3 downto 0));
												
												
	checkPin     : entity work.CheckPin(Behavioral)
									port map(clk => CLOCK_50,
												enable => s_pin_enable,
												btn => s_btn,
												correct_pin1 => s_correct_pin1,
												correct_pin2 => s_correct_pin2,
												correct => s_correct_pin,
												wrong_3x => s_wrong_pin3x,
												entering => s_entering_pin);
												
					 
	regPin		 : entity work.RegisterPin(Behavioral)
									port map(clk => CLOCK_50,
												enable_rec => s_rec_enable,
												btn => s_btn,
												done => s_done_reg,
												entering => open,
												pin => s_correct_pin2);
	       
												
												
	timer        : entity work.Timer(Behavioral)
									port map(clk => CLOCK_50,
												reset => s_timer_reset or s_reset,
												enable => '1',
												max => s_timer_max,
												finish => s_timer_finish,
												count => LEDG(5 downto 0));
												
	
												
end Behavioral;
												