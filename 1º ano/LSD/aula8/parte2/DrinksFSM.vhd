library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM is
	port(clk      : in std_logic;
		  reset    : in std_logic;
		  coin20   : in std_logic;
		  coin50   : in std_logic;
		  drinkOut : out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is

	type Tstate is (CLEARED, E20, E40, E50, E60, E70, E80, DRINK);
	signal s_currentState, s_nextState : TState;
	
begin
	
	sync_proc: process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_currentState <= CLEARED;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;
	
	comb_proc: process(s_currentState)
	begin
		case(s_currentState) is
		when CLEARED =>
			drinkOut <= '0';
			if(reset = '1') then
				s_nextState <= CLEARED;				
			elsif(coin20 = '1') then
				s_nextState <= E20;
			elsif(coin50 = '1') then
				s_nextState <= E50;
			else
				s_nextState <= CLEARED;
			end if;
		
		when E20 =>
			drinkOut <= '0';
			if(reset = '1') then
				s_nextState <= CLEARED;				
			elsif(coin20 = '1') then
				s_nextState <= E40;
			elsif(coin50 = '1') then
				s_nextState <= E70;
			else
				s_nextState <= E20;
			end if;			
		
		when E40 =>
			drinkOut <= '0';
			if(reset = '1') then
				s_nextState <= CLEARED;				
			elsif(coin20 = '1') then
				s_nextState <= E60;
			elsif(coin50 = '1') then
				s_nextState <= DRINK;
			else
				s_nextState <= E40;
			end if;
		
		when E50 =>
			drinkOut <= '0';
			if(reset = '1') then
				s_nextState <= CLEARED;				
			elsif(coin20 = '1') then
				s_nextState <= E70;
			elsif(coin50 = '1') then
				s_nextState <= DRINK;
			else
				s_nextState <= E50;
			end if;
		
		when E60 =>
			drinkOut <= '0';
			if(reset = '1') then
				s_nextState <= CLEARED;				
			elsif(coin20 = '1') then
				s_nextState <= E80;
			elsif(coin50 = '1') then
				s_nextState <= DRINK;
			else
				s_nextState <= E60;
			end if;
		
		when E70 =>
			drinkOut <= '0';
			if(reset = '1') then
				s_nextState <= CLEARED;				
			elsif(coin20 = '1' or coin50 = '1') then
				s_nextState <= DRINK;
			else
				s_nextState <= E70;
			end if;
		
		when E80 =>
			drinkOut <= '0';
			if(reset = '1') then
				s_nextState <= CLEARED;				
			elsif(coin20 = '1' or coin50 = '1') then
				s_nextState <= DRINK;
			else
				s_nextState <= E80;
			end if;
		
		when DRINK =>
			drinkOut <= '1';
			if(reset = '1') then
				s_nextState <= CLEARED;
			else
				s_nextState <= DRINK;
			end if;
			
		end case;
	end process;
end Behavioral;