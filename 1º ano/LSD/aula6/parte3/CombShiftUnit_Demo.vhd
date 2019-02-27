library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CombShiftUnit_Demo is
	port(SW   : in std_logic_vector(17 downto 0);
		  KEY0  : in std_logic;
		  KEY1  : in std_logic;
		  KEY2  : in std_logic;
		  LEDR  : out std_logic_vector(7 downto 0));

end CombShiftUnit_Demo;

architecture Shell of CombShiftUnit_Demo is

begin

	ComShift : entity work.CombShiftUnit(Behavioral)
					port map(dataIn => SW(7 downto 0),
					         dirLeft => KEY1,
								rotate => KEY0,
								shArith => KEY3,
								shAmount => SW(17 downto 15),
								dataOut => LEDR(7 downto 0));
								
end Shell;