	library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.DisplayUnit_pkg.all; 

entity InstructionMemory is
	generic(ADDR_BUS_SIZE : positive := 6);
	port(address  : in std_logic_vector(ADDR_BUS_SIZE-1 downto 0);
		  readData : out std_logic_vector(31 downto 0));
	
end InstructionMemory;

architecture Behavioral of InstructionMemory is
	constant NUM_WORDS : positive := (2 ** ADDR_BUS_SIZE);
	subtype  TData is std_logic_vector(31 downto 0);
	type TMemory  is array(0 to NUM_WORDS - 1) of TData;
	constant s_memory : TMemory := (X"2002001A", -- addi $2,$0,1A
											  X"2003FFF9", -- addi $3,$0,-7
											  X"00432020", -- add $4,$2,$3
											  X"00432822", -- sub $5,$2,$3
											  X"8C010000",   -- lw $1,0($0)
											  X"20210004",	  -- addi $1,$1,4
											  X"AC010004",   -- sw $1,4($0)
											  others => X"00000000");
	begin
		--readData <= s_memory(to_integer(unsigned(address)));
		
		-- Porto de leitura da memória, definido na interface do módulo
		readData <= s_memory(to_integer(unsigned(address)));
		
		-- Ponto de leitura para efeitos de visualização (ligado ao módulo
		-- de visualização através dos sinais globais DU_IMaddr e DU_IMdata)
		DU_IMdata <= s_memory(to_integer(unsigned(DU_IMaddr))); 
	
end Behavioral;