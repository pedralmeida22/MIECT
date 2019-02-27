library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksMachine is
	port(CLOCK_50 : in std_logic;
		  SW : in std_logic_vector(1 downto 0);
		  KEY : in std_logic_vector(0 downto 0);
		  LEDG : out std_logic_vector(8 downto 0));
		  
end DrinksMachine;

architecture Shell of DrinksMachine is

	signal s_clk : std_logic;
	signal s_coin20 : std_logic;
	signal s_coin50 : std_logic;
	

begin

	freqDiv : entity work.FreqDivider(Behavioral)
				 port map(clkIn => CLOCK_50,
							 K => x"05F5E100",
							 clkOut => s_clk);
							 
	debounce_coin20 : entity work.DebounceUnit(Behavioral)
				  port map(refClk => s_clk,
							  dirtyIn => s_coin20,
							  pulsedOut => );
							  
	debounce_coin50 : entity work.DebounceUnit(Behavioral)
				  port map(refClk => s_clk,
							  dirtyIn => s_coin50,
							  pulsedOut => );
	
	machine : entity work.DrinksFSM(Behavioral)
				 port map(clk => s_clk,
						    s_coin20 => SW(0),
							 s_coin50 => SW(1),
							 reset => not KEY(0),
							 drinkOut => LEDG(0));
							 
	LEDG(8) <= s_clk;

end Shell;