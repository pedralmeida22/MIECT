library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

entity ps2KeyboardPin is
  port(clk : in std_logic;
		 btn : out std_logic_vector(3 downto 0);
		 ps2_clk : inout std_logic;
       ps2_dat : inout std_logic);
		 
end ps2KeyboardPin;

architecture Behavioral of ps2KeyboardPin is

  constant CLOCK_FREQUENCY : real := 50.0e6;
  
  signal key_code,last_key_code : std_logic_vector(7 downto 0);     
  signal new_key_code_pulse, s_enable : std_logic;                        
  
  
begin
  

  PS2_KEYBOARD_CONTROLLER : entity work.ps2_controller(smart)
    generic map(CLOCK_FREQUENCY => CLOCK_FREQUENCY)
    port map(clock => clk,
				 reset => '0', 
				 ps2_clk => ps2_clk,
				 ps2_dat => ps2_dat,
				 keyboard_detected => s_enable,
				 keyboard_leds     => "000", 
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
      if (new_key_code_pulse = '1' and s_enable = '1') then
        last_key_code <= key_code;                            
        if key_code = X"25" then 
			  if last_key_code /= X"F0" then 
				btn(0) <= '1'; 
			  else 
				btn(0) <= '0'; 
			  end if; 
		  end if;
		  if key_code = X"26" then 
			  if last_key_code /= X"F0" then 
				btn(1) <= '1'; 
			  else 
			   btn(1) <= '0'; 
			  end if; 
		  end if;
		  if key_code = X"1E" then 
			  if last_key_code /= X"F0" then 
				btn(2) <= '1'; 
			  else 
			   btn(2) <= '0'; 
			  end if; 
		  end if;
		  if key_code = X"16" then 
			  if last_key_code /= X"F0" then 
				btn(3) <= '1'; 
			  else 
				btn(3) <= '0'; 
			  end if; 
		  end if;

      end if;
    end if;
  end process;

end Behavioral;
