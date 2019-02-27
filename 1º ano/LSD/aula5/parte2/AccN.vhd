library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AccN is
	generic(N : positive := 8);
	port(dataIn  : in std_logic_vector(N-1 downto 0);
		  clk     : in std_logic;
		  enable  : in std_logic;
		  reset   : in std_logic;
		  dataOut : out std_logic_vector(N-1 downto 0));
		  
end AccN;

architecture Shell of AccN is

	signal s_adderOut : std_logic_vector(N-1 downto 0);
	signal s_regOut   : std_logic_vector(N-1 downto 0);
	
begin
	AdderN : entity work.AdderN(Behavioral)
				port map(operand0 => dataIn,
				         operand1 => s_regOut,
							result => s_adderOut);
							
	RegN : entity work.RegN(Behavioral)
				port map(dataIn => s_adderOut,
				         reset => reset,
							enable => enable,
							clk => clk,
							dataOut => s_regOut);
							
	dataOut <= s_regOut;

end Shell;