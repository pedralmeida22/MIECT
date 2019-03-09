library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

entity ALU32 is
	port(op   : in  std_logic_vector(2 downto 0);         
		  op0  : in  std_logic_vector(31 downto 0);         
		  op1  : in  std_logic_vector(31 downto 0);         
		  res  : out std_logic_vector(31 downto 0);         
		  zero : out std_logic);
	
end ALU32;

architecture Behavioral of ALU32 is
	
begin
	
	process(op, op0, op1)
	begin
		case op is
			when "000" =>
				res <= op0 and op1; 
				
			when "001" =>  
				res <= op0 or  op1;
			
			when "010" =>
				res <= std_logic_vector(unsigned(op0) + unsigned(op1));
 
			when "011" =>  
				res <= op0 xor op1; 
 
			when "100" =>  
				res <= op0 nor op1;
	 
			when "110" =>         
				res <= std_logic_vector(unsigned(op0) - unsigned(op1));	
			
			when "111" => -- set if less than
				if (op0 < op1) then
					res <= x"00000001";
				else
					res <= x"00000000";
				end if;
				 
			when others =>
				res <= (others => 'X');
				zero <= '1';
				
		end case;			
	end process;
					
end Behavioral;