library ieee;
use ieee.std_logic_1164.all;

entity Mux21_N is
	generic(N_BITS : positive := 5);
	
	port(sel    : in std_logic;
		  input0 : in std_logic_vector(N_BITS-1 downto 0);
		  input1 : in std_logic_vector(N_BITS-1 downto 0);
		  muxOut : out std_logic_vector(N_BITS-1 downto 0));

end Mux21_N;

architecture Behavioral of Mux21_N is
begin
	process(sel, input0, input1)
	begin
		if (sel = '0') then
			muxOut <= input0;
		else
			muxOut <= input1;
		end if;
	end process;

end Behavioral;