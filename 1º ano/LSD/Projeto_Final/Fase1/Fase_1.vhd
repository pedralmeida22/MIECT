library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Fase_1 is
	port(CLOCK_50 : in std_logic;
		  KEY      : in std_logic_vector(3 downto 0);
		  SW       : in std_logic_vector(15 downto 0);
		  LEDG     : out std_logic_vector(5 downto 0);
		  LEDR     : out std_logic_vector(15 downto 0));

end Fase_1;

architecture Behavioral of Fase_1 is

	signal  s_timer_finish, s_trigger, s_window_trigger, s_timer_reset, s_int_trigger : std_logic;
	signal  s_timer_max : std_logic_vector(5 downto 0);

begin 

	s_trigger <= SW(7) or SW(6) or SW(5) or SW(4) or SW(3) or SW(2) or SW(1) or SW(0);
	s_window_trigger <= SW(7) or SW(6) or SW(5) or SW(4);
	s_int_trigger <= SW(1) or SW(0);

	alarmControl   : entity work.AlarmControlUnit(Behavioral)
									port map(clk   => CLOCK_50,
												reset => SW(15),
												timer_finish => s_timer_finish,
												right_pin => not KEY(3),
												wrong_pin => not KEY(2),
												arm       => not KEY(0),
												mode => SW(10),
												trigger   => s_trigger,
												window_trigger => s_window_trigger,
												timer_reset => s_timer_reset,
												int_trigger => s_int_trigger,
												siren => LEDR(15),
												timer_max => s_timer_max,
												state => LEDR(3 downto 0));
												
	counter        : entity work.Counter10_20(Behavioral)
									port map(clk => CLOCK_50,
												reset => s_timer_reset,
												enable => '1',
												max => s_timer_max,
												finish => s_timer_finish,
												count => LEDG(5 downto 0));
												
end Behavioral;
												