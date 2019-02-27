library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port(reset, clk, start	: in  std_logic;
		  btn    		: in std_logic_vector(3 downto 0);
		  valid, entering	: out std_logic;
		  pin				: out std_logic_vector(7 downto 0));
end SeqDetector;

architecture Behavioral of SeqDetector is

	type TState is (IDLE, NUM1, NUM2, NUM3, NUM4);
	signal s_cs, s_ns : TState;
	signal s_pressed : std_logic := '0';
	signal s_btn_pressed : std_logic_vector(1 downto 0);
	signal s_pin : std_logic_vector(7 downto 0) := "00000000";

begin

	

	sync_proc : process(clk, btn)
	begin
		if(clk = '1') then s_pressed <= (btn(0) or btn(1) or btn(2) or btn(3));
		end if;
		if(btn(0) = '1') then
			s_btn_pressed <= "00";
		elsif (btn(1) = '1') then
			s_btn_pressed <= "01";
		elsif (btn(2) = '1') then
			s_btn_pressed <= "10";
		elsif (btn(3) = '1') then
			s_btn_pressed <= "11";
		else
			s_btn_pressed <= s_btn_pressed;
		end if;
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
			entering <= '0';
			if(start = '1') then
				s_ns <= NUM1;
			end if;
		when NUM1 =>
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(7 downto 6) <= s_btn_pressed;
				
				s_ns <= NUM2;
			else
				s_pin <= s_pin;
			end if;
			
		when NUM2 =>
			entering <= '1';	
			if(s_pressed = '1') then
			
				s_pin(5 downto 4) <= s_btn_pressed;
				
				s_ns <= NUM3;
			else
				s_pin <= s_pin;
			end if;
			
		when NUM3 =>	
			entering <= '1';
			if(s_pressed = '1') then
			
				s_pin(3 downto 2) <= s_btn_pressed;
				
				s_ns <= NUM4;
				
			else
				s_pin <= s_pin;
			end if;
			
		when NUM4 =>
			entering <= '1';
			if(s_pressed = '1') then
				s_pin(1 downto 0) <= s_btn_pressed;
				valid <= '1';
				s_ns <= IDLE;
				
			else
				s_pin <= s_pin;
			end if;		
		
		end case;

	end process;
	
	pin <= s_pin;

end Behavioral;