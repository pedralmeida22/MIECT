library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(clk   : in std_logic;
		  reset : in std_logic;
		  xIn   : in std_logic;
		  yOut  : out std_logic);
		  
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is
	
	type TState is (ST_INI, ST_1, ST_10, ST_100);
	signal s_presentState, s_nextState : TState;
	
begin
	
	sync_proc: process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_presentState <= ST_INI;
			else
				s_presentState <= s_nextState;
			end if;
		end if;
	end process;
	
	comb_proc: process(s_presentState, xIn)
	begin
		yOut <= '0';
		case s_presentState is
		
		when ST_INI => 
			if(xIn = '1') then
				s_nextState <= ST_1;
			else
				s_nextState <= ST_INI;
			end if;
	
		when ST_1 => 
			if(xIn = '0') then
				s_nextState <= ST_10;
			else
				s_nextState <= ST_1;
			end if;
			
		when ST_10 => 
			if(xIn = '0') then
				s_nextState <= ST_100;
			else
				s_nextState <= ST_1;
			end if;
			
		when ST_100 => 
			if(xIn = '1') then
				s_nextState <= ST_1;
				yOut <= '1';
			else
				s_nextState <= ST_INI;
			end if;
			
		when others =>
			s_nextState <= ST_INI;
			
		end case;
	end process;			
end MealyArch;