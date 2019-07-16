library ieee;
use ieee.std_logic_1164.all;

entity Mux41_N is
	generic(N_BITS : positive := 5);
	
	port(sel    : in std_logic_vector(1 downto 0);
		  input0 : in std_logic_vector(N_BITS-1 downto 0);
		  input1 : in std_logic_vector(N_BITS-1 downto 0);
		  input2 : in std_logic_vector(N_BITS-1 downto 0);
		  input3 : in std_logic_vector(N_BITS-1 downto 0);
		  muxOut : out std_logic_vector(N_BITS-1 downto 0));

end Mux41_N;

architecture Behavioral of Mux41_N is
begin
	process(sel, input0, input1, input2, input3)
	begin
		if(sel = "00") then
			muxOut <= input0;
			
		elsif(sel = "01") then
			muxOut <= input1;
			
		elsif(sel = "10") then
			muxOut <= input2;
			
		else
			muxOut <= input3;
		end if;
	end process;
end Behavioral;