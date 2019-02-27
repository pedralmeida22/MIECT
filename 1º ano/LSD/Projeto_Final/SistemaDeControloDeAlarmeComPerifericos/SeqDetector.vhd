library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port(reset, clk, start, pressing	: in  std_logic;
		  btn    		: in std_logic_vector(7 downto 0);
		  valid, entering	: out std_logic;
		  state        : out std_logic_vector(3 downto 0);
		  pin				: out std_logic_vector(63 downto 0));
end SeqDetector;

architecture Behavioral of SeqDetector is

	type TState is (IDLE, NUM1, NUM2, NUM3, NUM4, NUM5, NUM6, NUM7, NUM8);
	signal s_cs, s_ns : TState;
	signal s_pressed : std_logic := '0';
	signal s_pin : std_logic_vector(63 downto 0) := x"4545454545454545";

begin

	s_pressed <= pressing;

	sync_proc : process(clk, btn)
	begin
		if (rising_edge(clk)) then
			
			if (reset = '1') then
				s_cs <= IDLE;
			else
				s_cs <= s_ns;
			end if;
		end if;
	end process;

	comb_proc : process(s_cs, s_pressed)
	begin
		s_ns <= s_cs;
		valid <= '0';
		
		case (s_cs) is
		when IDLE =>
			state <= "0000";
			entering <= '0';
			if(start = '1') then
				s_ns <= NUM1;
			end if;
		when NUM1 =>
			state <= "0001";
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(63 downto 56) <= btn;
				
				s_ns <= NUM2;
			else
				s_pin <= s_pin;
			end if;
		
		
		when NUM2 =>
			state <= "0010";
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(55 downto 48) <= btn;
				
				s_ns <= NUM3;
			else
				s_pin <= s_pin;
			end if;
			
		when NUM3 =>
			state <= "0011";
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(47 downto 40) <= btn;
				
				s_ns <= NUM4;
			else
				s_pin <= s_pin;
			end if;
		
		when NUM4 =>
			state <= "0100";
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(39 downto 32) <= btn;
				
				s_ns <= NUM5;
			else
				s_pin <= s_pin;
			end if;
		
		when NUM5 =>
			state <= "0101";
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(31 downto 24) <= btn;
				
				s_ns <= NUM6;
			else
				s_pin <= s_pin;
			end if;
		
		when NUM6 =>
			state <= "0110";
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(23 downto 16) <= btn;
				
				s_ns <= NUM7;
			else
				s_pin <= s_pin;
			end if;
		
		when NUM7 =>
			state <= "0111";
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(15 downto 8) <= btn;
				
				s_ns <= NUM8;
			else
				s_pin <= s_pin;
			end if;
		
		when NUM8 =>
			state <= "1000";
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(7 downto 0) <= btn;
				valid <= '1';
				s_ns <= IDLE;
			else
				s_pin <= s_pin;
			end if;
		
		
		
		end case;

	end process;
	
	pin <= s_pin;

end Behavioral;