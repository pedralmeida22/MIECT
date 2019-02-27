library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Reg8 is
	port(clk, enable : in  std_logic; 
		  dataIn : in std_logic_vector(7 downto 0);
		  dataOut : out std_logic_vector(7 downto 0));
	
end Reg8;

architecture Behavioral of Reg8 is
begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(enable = '1') then
				dataOut <= dataIn;
			end if;
		end if;
	end process;

end Behavioral;