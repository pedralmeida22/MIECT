library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SistemaDeControloDeAlarmeComPerifericos is
	port(CLOCK_50 : in std_logic;
		  KEY      : in std_logic_vector(3 downto 0);
		  SW       : in std_logic_vector(15 downto 0);
		  LEDG     : out std_logic_vector(0 downto 0);
		  LEDR     : out std_logic_vector(17 downto 0);
		  HEX7, HEX6 : out std_logic_vector(6 downto 0);
		  lcd_on   : out   std_logic;
		  lcd_blon : out   std_logic;
		  lcd_rw   : out   std_logic;
		  lcd_en   : out   std_logic;
		  lcd_rs   : out   std_logic;
		  lcd_data : inout std_logic_vector(7 downto 0);
		  ps2_clk  : inout std_logic;
		  ps2_dat  : inout std_logic);

end SistemaDeControloDeAlarmeComPerifericos;

architecture Behavioral of SistemaDeControloDeAlarmeComPerifericos is

	signal s_siren, s_pressing, s_display_timer_en, s_setting_pin, s_check_pin, s_pulse, s_done_reg, s_rec_enable, s_reset, s_timer_finish, s_trigger : std_logic;
	signal s_ram_reset, s_clock_1hz, s_ram_display_en, s_ram_next, s_window_trigger, s_timer_reset, s_int_trigger, s_pin_enable, s_correct_pin, s_wrong_pin3x, s_entering_pin : std_logic;
	signal s_correct_pin1, s_correct_pin2 : std_logic_vector(63 downto 0);
	signal s_ps2, s_ram_ascii : std_logic_vector(7 downto 0);
	signal s_ram_sensor, s_btn, s_state, s_top_message, s_bot_message, s_hex7, s_hex6, s_hex4, s_seq_state1, s_seq_state2, s_seq_state : std_logic_vector(3 downto 0);	
	signal s_timer_max, s_timer_count : std_logic_vector(5 downto 0);

begin 

	s_trigger <= SW(8) or SW(7) or SW(6) or SW(5) or SW(4) or SW(3) or SW(2) or SW(1) or SW(0);
	s_window_trigger <= SW(8) or SW(7) or SW(6) or SW(5) or SW(4);
	s_int_trigger <= SW(1) or SW(0);
	
	s_correct_pin1 <= x"4B1B23242B432224"; --lsdefixe
	
		
	s_reset <= SW(15);
	
	clock1Hz   : entity work.ClkDividerN(RTL)
						generic map(k => 50000000)
						port map(clkIn => CLOCK_50,
									clkOut => s_clock_1hz);
	
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
												ram_enter => s_btn(2),
												back      => s_btn(3),
												mode => SW(10),
												trigger   => s_trigger,
												window_trigger => s_window_trigger,
												timer_reset => s_timer_reset,
												ram_reset => s_ram_reset,
												int_trigger => s_int_trigger,
												done_set => s_done_reg,
												siren => s_siren,
												timer_max => s_timer_max,
												pin_enable => s_pin_enable,
												set_pin_en => s_rec_enable,
												state => s_state);
												
												
												
	checkPin     : entity work.CheckPin(Behavioral)
									port map(clk => CLOCK_50,
												enable => s_pin_enable,
												btn => s_ps2,
												pressing => s_pressing,
												correct_pin1 => s_correct_pin1,
												correct_pin2 => s_correct_pin2,
												correct => s_correct_pin,
												state => s_seq_state1,
												wrong_3x => s_wrong_pin3x,
												entering => s_check_pin);
												
					 
	regPin		 : entity work.RegisterPin(Behavioral)
									port map(clk => CLOCK_50,
												enable_rec => s_rec_enable,
												btn => s_ps2,
												pressing => s_pressing,
												done => s_done_reg,
												state => s_seq_state2,
												entering => s_setting_pin,
												pin => s_correct_pin2);
	       
	s_entering_pin  <= 	s_setting_pin or s_check_pin;							
												
	timer        : entity work.Timer(Behavioral)
									port map(clk => CLOCK_50,
												reset => s_timer_reset or s_reset,
												enable => '1',
												max => s_timer_max,
												finish => s_timer_finish,
												count => s_timer_count);
												
												
	pulse        : entity work.ClkDividerN(RTL)
									generic map(k => 150000000)
									port map(clkIn => CLOCK_50,
												clkOut => s_pulse);
												
	s_seq_state <= s_seq_state1 when s_pin_enable = '1' else s_seq_state2;											
												
	LCDNum       : entity work.LCDNumDec(Decoder)
									port map(binInput => s_ram_sensor,
												asciiOut => s_ram_ascii);
												
												
	LCDSel       : entity work.LCDSelector(decoder)
									port map(clk => CLOCK_50,
												mode => SW(10),
												pulse => s_pulse,
												state => s_state,
												sensorNum => s_ram_sensor,
												seq_state => s_seq_state,
												entering_pin => s_entering_pin,
												top_message => s_top_message,
												bot_message => s_bot_message);
												
												
	LCDMod       : entity work.LCDModule(Behavioral)
									generic map(CLOCK_50_FREQUENCY => 50.0e6)
									port map(clk => CLOCK_50,
												top_message => s_top_message,
												bot_message => s_bot_message,
												num => s_seq_state,
												sensorNum => s_ram_ascii,
												lcd_on => lcd_on,
											   lcd_blon => lcd_blon,
											   lcd_rw => lcd_rw,
											   lcd_en => lcd_en,
											   lcd_rs => lcd_rs,
											   lcd_data => lcd_data);
									
	
	
												

	bin2bcd      : entity work.Bin2BCDCase(Behavioral)
									port map(binInput => "00" & s_timer_count,
												bcd0 => s_hex6,
												bcd1 => s_hex7,
												bcd2 => open);
												
	s_display_timer_en <= not s_timer_reset;
												
	decHex7      : entity work.Bin7SegDecoder(Behavioral)
									port map(binInput => '0' & s_hex7,
												enable => s_display_timer_en,
												decOut_n => HEX7);
												
	decHex6      : entity work.Bin7SegDecoder(Behavioral)
									port map(binInput => '0' & s_hex6,
												enable => s_display_timer_en,
												decOut_n => HEX6);
												
												
	keyboard     : entity work.ps2Keyboard(Behavioral)
									port map(clk => CLOCK_50,
												key => s_ps2,
												pressing => s_pressing,
												ps2_clk => ps2_clk,
												ps2_dat => ps2_dat);
	
		
												
	s_ram_next <= s_btn(2) when s_state = "1000" else '0';

	
	ram          : entity work.RamControler(Behavioral)
									port map(clk => CLOCK_50,
												next_entry => s_ram_next,
												reset_read => s_ram_reset,
												state => s_state,
												sensors => s_wrong_pin3x & SW(8 downto 0),
												sensor => s_ram_sensor);
												
												
	s_ram_display_en <='1' when (s_state = "1000" and s_ram_sensor /= "1111") else '0';
	
	LEDG(0) <= s_clock_1hz when (s_state = "0010" or s_state = "0011" or s_state = "0100") else '0';
	
	LEDR(17 downto 14) <= s_clock_1hz & s_clock_1hz & s_clock_1hz & s_clock_1hz when s_siren = '1' else "0000";
												
												
end Behavioral;
												