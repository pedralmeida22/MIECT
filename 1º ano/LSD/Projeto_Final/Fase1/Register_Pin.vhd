library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register_Pin is
	port(clk, enable_rec: in std_logic;
		  btn        : in std_logic_vector(3 downto 0); 
		  done, entering       : out std_logic;
		  pin : out std_logic_vector(7 downto 0));
	
end Register_Pin;

architecture Shell of Register_Pin is

	signal s_valid, s_reset, s_start: std_logic;
	signal s_pin : std_logic_vector(7 downto 0);

begin
	
	s_reset <= '1' when enable_rec = '0' else '1';
	s_start <= btn(0) when enable_rec = '1' else '0';
	
	reg8 : entity work.Reg8(Behavioral)
			 port map(clk => clk,
						 enable => s_valid,
					    dataIn => s_pin,
						 dataOut => pin);
			 
			 
	seq_detec : entity work.SeqDetector(Behavioral)
			port map(clk => clk,
						reset => s_reset,
					   start => s_start,
						btn => btn,
						valid => s_valid,
						entering => entering,
						pin => s_pin);

end Shell;