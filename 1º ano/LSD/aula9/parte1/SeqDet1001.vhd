library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDet1001 is
	port(CLOCK_50 : in std_logic; 
		  SW : in std_logic_vector(1 downto 0);
		  LEDG : out std_logic_vector(8 downto 8);
		  LEDR : out std_logic_vector(0 downto 0));
		  
end SeqDet1001;

architecture Shell of SeqDet1001 is

	signal s_clk : std_logic;
	
begin
	
	freqDiv : entity work.FreqDivider(Behavioral)
				 port map(clkIn => CLOCK_50,
						    K => x"02FAF080",
							 clkOut => s_clk);

	SeqDet : entity work.SeqDetFSM(MealyArch)
				port map(clk => s_clk,
						   reset => SW(1),
							xIn => SW(0),
							yOut => LEDR(0));
							
	LEDG(8) <= s_clk;

end Shell;