library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

entity ShiftRegisterN is
	generic(N : positive := 4);
	port(clk : in std_logic;
		  sin : in std_logic;
		  dataOut : out std_logic_vector(N-1 downto 0));
	
end ShiftRegisterN;

architecture Behavioral of ShiftRegisterN is

		signal s_dataOut : std_logic_vector(N-1 downto 0);
begin
	process(clk)
	begin 
		if(rising_edge(clk)) then
			s_dataOut <= s_dataOut(N-2 downto 0) & sin;

		end if;	
	end process;
	
	dataOut <= s_dataOut(N-1 downto 0);
	
end Behavioral;	