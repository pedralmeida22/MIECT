library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Reg64 is
	port(clk, enable : in  std_logic; 
		  dataIn : in std_logic_vector(63 downto 0);
		  dataOut : out std_logic_vector(63 downto 0));
	
end Reg64;

architecture Behavioral of Reg64 is
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