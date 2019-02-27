library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

entity ps2Keyboard is
  port(clk : in std_logic;
		 key : out std_logic_vector(7 downto 0);
		 pressing : out std_logic;
		 ps2_clk : inout std_logic;
       ps2_dat : inout std_logic);
		 
end ps2Keyboard;

architecture Behavioral of ps2Keyboard is

  constant CLOCK_FREQUENCY : real := 50.0e6;
  
  signal key_code,last_key_code : std_logic_vector(7 downto 0);     
  signal new_key_code_pulse, s_enable, s_first : std_logic;                        
  
  
begin
  

  PS2_KEYBOARD_CONTROLLER : entity work.ps2_controller(smart)
    generic map(CLOCK_FREQUENCY => CLOCK_FREQUENCY)
    port map(clock => clk,
				 reset => '0', 
				 ps2_clk => ps2_clk,
				 ps2_dat => ps2_dat,
				 keyboard_detected => s_enable,
				 keyboard_leds     => "101", 
				 key_code          => key_code,
				 valid_key_code    => new_key_code_pulse,
				 mouse_detected   => open, 
				 mouse_delta_x    => open, 
				 mouse_delta_y    => open, 
				 mouse_buttons    => open, 
				 valid_mouse_data => open);
  
  process(clk, s_enable) is
  begin
    if rising_edge(clk) then
		key <= key_code;
      if (new_key_code_pulse = '1' and s_enable = '1' and key_code /= x"F0" and s_first = '0') then
		  pressing <= '1';
		  s_first <= '1';
		else
		  if(key_code = x"F0") then
			s_first <= '0';
		  end if;
		  pressing <= '0';
		  
      end if;
    end if;
  end process;

end Behavioral;
