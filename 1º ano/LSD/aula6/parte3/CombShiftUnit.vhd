library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit is
	port(dataIn   : in std_logic_vector(7 downto 0);
		  dirLeft  : in  std_logic;
		  rotate   : in std_logic; 
		  shArith  : in std_logic;
		  shAmount : in  std_logic_vector(2 downto 0); 
		  dataOut  : out std_logic_vector(7 downto 0)); 

end CombShiftUnit;

architecture Behavioral of CombShiftUnit is

	signal s_shAmount : integer;
	
begin
	s_shAmount <= to_integer(unsigned(shAmount));
	
	process(dataIn, dirLeft, shAmount)
	begin 
		if(dirLeft = '1') then
			if() then
				dataOut <= std_logic_vector(SHIFT_LEFT(unsigned(dataIn), s_shAmount));
				
			elsif(rotate = '1') then
				dataOut <= std_logic(ROTATE_LEFT(dataIn), rotate);
				
			elsif(shArith = '1') then
				dataOut <= dataIn(6 downto 0) & '0';
			
			end if;
		else
			if() then
				dataOut <= std_logic_vector(SHIFT_RIGHT(unsigned(dataIn), s_shAmount));
			
			elsif(rotate = '1') then
				dataOut <= std_logic(ROTATE_RIGHT(dataIn), rotate);
			
			elsif(shArith = '1') then
				dataOut <= dataIn(7) & dataIn(7 downto 1);
				
			end if;
		end if;
	end process;		
end Behavioral;