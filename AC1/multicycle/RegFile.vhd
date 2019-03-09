library ieee;
use ieee.std_logic_1164.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all; 

entity RegFile is
	port(clk         : in std_logic;
		  writeEnable : in std_logic;
		  writeReg    : in std_logic_vector(4 downto 0);
		  writeData   : in std_logic_vector(31 downto 0);
		  readReg1    : in std_logic_vector(4 downto 0);
		  readReg2    : in std_logic_vector(4 downto 0);
		  readData1   : out std_logic_vector(31 downto 0);
		  readData2   : out std_logic_vector(31 downto 0));

end RegFile;

architecture Structural of RegFile is
begin
	rs_mem : entity work.DP_Memory(Behavioral)
				port map(clk => clk,
						   readAddr => readReg1,  -- addr
							readData => readData1, -- data
							writeAddr => writeReg,
							writeData => writeData,
							WriteEnable => writeEnable);
							
	rt_mem : entity work.DP_Memory(Behavioral)
				port map(clk => clk,
						   readAddr => readReg2,
							readData => readData2,
							writeAddr => writeReg,
							writeData => writeData,
							WriteEnable => writeEnable);
							
	debug_memory : entity work.DP_Memory(Behavioral)
				port map(clk => clk,
							readAddr => DU_RFaddr,  -- addr
							readData => DU_RFdata, -- data
							writeAddr => writeReg,
							writeData => writeData,
							WriteEnable => writeEnable);
							

end Structural;