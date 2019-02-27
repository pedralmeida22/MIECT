library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ram_8x8 is
	port(clk : in  std_logic; 
		  writeEnable : in  std_logic; 
		  address : in  std_logic_vector(3 downto 0); 
		  writeData : in  std_logic_vector(7 downto 0);  
		  readData : out std_logic_vector(7 downto 0)); 
end ram_8x8;

architecture Behavioral of ram_8x8 is
	
	subtype TData is std_logic_vector(7 downto 0); 
	type TMemory is array (0 to 7) of TData; 
	signal s_memory : TMemory;
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(writeEnable = '1') then
				s_memory(to_integer(unsigned(address))) <= writeData;
			else
				readData <= s_memory(to_integer(unsigned(address)));
			end if;
		end if;
	end process;		

end Behavioral;