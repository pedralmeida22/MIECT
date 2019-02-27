library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RamControler is
	port(clk, next_entry, reset_read : in  std_logic; 
		  state : in std_logic_vector(3 downto 0);
		  sensors : in  std_logic_vector(9 downto 0);
		  sensor : out std_logic_vector(3 downto 0)); 
end RamControler;

architecture Behavioral of RamControler is

	signal s_ram_data_in, s_ram_data_out : std_logic_vector(7 downto 0) := "00000000";
	signal s_sensor : std_logic_vector(3 downto 0) := "0000";
	signal s_address_write : unsigned(3 downto 0) := "1111";
	signal s_address_read : unsigned(3 downto 0) := "0011";
	signal s_address : unsigned(3 downto 0) := "0000";
	signal s_ram_write, s_sensor_saved : std_logic := '0';

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
		
			if(reset_read = '1') then
				s_address_read <= "0100";
				s_sensor <= "1111";
				s_ram_data_in <= "00000000";
				s_ram_write <= '0';
			end if;
			
			if(state = "0010" or state = "0011" or (sensors(9) = '1' and state = "0100")) then
				if(sensors(0) = '1') then
					s_sensor <= "0000";
				elsif(sensors(1) = '1') then
					s_sensor <= "0001";
				elsif(sensors(2) = '1') then
					s_sensor <= "0010";
				elsif(sensors(3) = '1') then
					s_sensor <= "0011";
				elsif(sensors(4) = '1') then
					s_sensor <= "0100";
				elsif(sensors(5) = '1') then
					s_sensor <= "0101";
				elsif(sensors(6) = '1') then
					s_sensor <= "0110";
				elsif(sensors(7) = '1') then
					s_sensor <= "0111";
				elsif(sensors(8) = '1') then
					s_sensor <= "1000";
				elsif(sensors(9) = '1') then
					s_sensor <= "1001";
				else
					s_sensor <= "1111";
				end if;
			end if;
				
			if(state = "0101") then
				s_ram_data_in <= "1000" & s_sensor;
				s_ram_write <= '1';
				if(s_address_write /= "0011") then
					s_address_write <= s_address_write + "0001";
				else
					s_address_write <= "0000";
				end if;
			else
				s_ram_write <= '0';
				if(next_entry = '1') then
					if(s_address_read /= "0000") then
						s_address_read <= s_address_read - "0001";
					else
						s_address_read <= "0011";
					end if;
					
				end if;
				
			end if;
				
			end if;	
			
		
		
	end process;
	
	s_address <= s_address_write when s_ram_write = '1' else s_address_read;
	
	ram :         entity work.ram_8x8(Behavioral)
									port map(clk => clk,
												writeEnable => s_ram_write,
												address => std_logic_vector(s_address),
												writeData => s_ram_data_in,
												readData => s_ram_data_out);
												
	sensor <= s_ram_data_out(3 downto 0) when s_ram_data_out(7) = '1' else "1111";
	
		
end Behavioral;
				
				