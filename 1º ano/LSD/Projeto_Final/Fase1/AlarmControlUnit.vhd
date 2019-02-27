library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AlarmControlUnit is
	port(clk, reset, timer_finish, right_pin, wrong_pin, arm, trigger, window_trigger, int_trigger, mode : in std_logic;
		  timer_reset, siren	: out std_logic;
		  timer_max : out std_logic_vector(5 downto 0);
		  state : out std_logic_vector(3 downto 0));
end AlarmControlUnit;

architecture Behavioral of AlarmControlUnit is

	type TState is (IDLE, ARM_TIMER, ARMED_EXT, ARMED_INT, DESARM_TIMER, TRIGGERD, TRIGGERD_TIMER);
	signal s_cs, s_ns : TState;
	signal s_timer_max : std_logic_vector(5 downto 0);

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_cs <= IDLE;
			else
				s_cs <= s_ns;
			end if;
		end if;
	end process;

	comb_proc : process(s_cs, clk)
	begin
	
		s_ns <= s_cs;
		siren <= '0';
		
		case (s_cs) is
		
		when IDLE =>
			timer_reset <= '1';
			s_timer_max <= "001010";
			state <= "0000";
		
			if (arm = '1') then
				s_ns <= ARM_TIMER;
			end if;

		when ARM_TIMER =>
			state <= "0001";
			timer_reset <= '0';
			s_timer_max <= "001010";
		
			if (timer_finish = '1') then
				if (mode = '0') then
					s_ns <= ARMED_EXT;
				else
					s_ns <= ARMED_INT;
				end if;
			elsif (window_trigger = '1' or wrong_pin = '1') then
				s_ns <= TRIGGERD;
			end if;

		when ARMED_EXT =>
			timer_reset <= '1';
			s_timer_max <= "010100";
			state <= "0010";
			
			if (window_trigger = '1') then
				s_ns <= TRIGGERD;
			elsif (trigger = '1') then
				s_ns <= DESARM_TIMER;
			end if;
			
			
		when ARMED_INT =>
			timer_reset <= '1';
			s_timer_max <= "010100";
			state <= "0011";
			
			if (window_trigger = '1') then
				s_ns <= TRIGGERD;
			elsif (int_trigger = '1') then
				s_ns <= DESARM_TIMER;
			end if;

		when DESARM_TIMER =>
			state <= "0100";
			timer_reset <= '0';
			s_timer_max <= "010100";
		
			if (window_trigger = '1' or wrong_pin = '1' or timer_finish = '1') then
				s_ns <= TRIGGERD;
			elsif(right_pin = '1') then
				s_ns <= IDLE;
			end if;
			
		when TRIGGERD =>
			timer_reset <= '1';
			s_timer_max <= "011111";
			siren <= '1';
			state <= "0101";
		
			s_ns <= TRIGGERD_TIMER;
			
		when TRIGGERD_TIMER =>
			siren <= '1';
			state <= "0110";
			timer_reset <= '0';
			s_timer_max <= "011111";
		
			if(right_pin = '1' or timer_finish = '1') then
				s_ns <= IDLE;
			end if;
		end case;
		
		

	end process;
	
	timer_max <= s_timer_max;

end Behavioral;
