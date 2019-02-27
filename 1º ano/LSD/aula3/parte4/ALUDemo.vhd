library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ALUDemo is
	port(SW   : in std_logic_vector(10 downto 0);
		  HEX0 : out std_logic_vector(6 downto 0);
		  HEX1 : OUT std_logic_vector(6 downto 0);
		  HEX2 : OUT std_logic_vector(6 downto 0));
	
end ALUDemo;

architecture Shell of ALUDemo is

	signal s_r : std_logic_vector(7 downto 0);
	signal s_bcd0 : std_logic_vector(3 downto 0);
	signal s_bcd1 : std_logic_vector(3 downto 0);
	signal s_bcd2 : std_logic_vector(3 downto 0);
	

begin
	ALU : entity work.ALU_4(Behavioral)
		port map(a => SW(7 downto 4),
					b => SW(3 downto 0),
					op => SW(10 downto 8),
					r => s_r(3 downto 0));
					
	BCD : entity work.Bin2BCD(Behavioral)
		port map(bin => s_r,
					bcd0 => s_bcd0,
					bcd1 => s_bcd1,
					bcd2 => s_bcd2);
				
	Decod0 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => s_bcd0,
					decOut_n => HEX0(6 downto 0));
					
	Decod1 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => s_bcd1,
					decOut_n => HEX1(6 downto 0));
					
	Decod2 : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => s_bcd2,
					decOut_n => HEX2(6 downto 0));
					
	
end Shell;