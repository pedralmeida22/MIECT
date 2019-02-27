library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FreqDivider_Demo is
	port(CLOCK_50 : in std_logic;
	     SW       : in std_logic_vector(1 downto 0);
	     LEDR     : out std_logic_vector(0 downto 0);
		  HEX0      : out std_logic_vector(6 downto 0));
		  
end FreqDivider_Demo;

architecture Shell of FreqDivider_Demo is
	signal s_cntOut : std_logic_vector(3 downto 0);
	signal s_clk : std_logic;

begin
	fd_d : entity work.FreqDivider(Behavioral)
			port map(clkIn => CLOCK_50,
			         clkOut => s_clk,
						k => x"017D7840");
	
	counter : entity work.CounterUpDown4(Behavioral)
			port map(clk => s_clk,
			         reset => SW(0),
						upDown_n => SW(1),
						cntOut => s_cntOut(3 downto 0));
						
	decoder : entity work.Bin7SegDecoder(Behavioral)
			port map(binInput => s_cntOut(3 downto 0),
			         decOut_n => HEX0(6 downto 0));
						
	LEDR(0) <= s_clk;
			
end Shell;