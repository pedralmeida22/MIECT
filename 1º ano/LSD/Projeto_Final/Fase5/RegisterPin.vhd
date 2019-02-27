library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegisterPin is
	port(clk, enable_rec, pressing: in std_logic;
		  btn        : in std_logic_vector(7 downto 0);
		  done, entering       : out std_logic;
		  state : out std_logic_vector(3 downto 0);
		  pin : out std_logic_vector(63 downto 0));
	
end RegisterPin;

architecture Behavioral of RegisterPin is

	signal s_valid, s_reset, s_start, s_start_btn: std_logic;
	signal s_pin : std_logic_vector(63 downto 0);

begin

	s_start_btn <= '1' when (btn = x"5A" and pressing = '1') else '0';
	
	s_reset <= '1' when enable_rec = '0' else '0';
	s_start <= s_start_btn when enable_rec = '1' else '0';
	
	
	done <= s_valid;
	
	
	
	reg8 : entity work.Reg64(Behavioral)
			 port map(clk => clk,
						 enable => s_valid,
					    dataIn => s_pin,
						 dataOut => pin);
			 
			 
	seq_detec : entity work.SeqDetector(Behavioral)
			port map(clk => clk,
						reset => s_reset,
					   start => s_start,
						pressing => pressing,
						btn => btn,
						valid => s_valid,
						state => state,
						entering => entering,
						pin => s_pin);

end Behavioral;