library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

entity LCDModule is
  generic
  (
    CLOCK_50_FREQUENCY : real := 50.0e6 -- frequency of the clock_50 input signal (must be 50MHz)
  );
  port
  (
    clk : in std_logic;

    top_message, bot_message : in std_logic_vector(3 downto 0) := "0000";
	 num : in std_logic_vector(3 downto 0);

    lcd_on   : out   std_logic;
    lcd_blon : out   std_logic;
    lcd_rw   : out   std_logic;
    lcd_en   : out   std_logic;
    lcd_rs   : out   std_logic;
    lcd_data : inout std_logic_vector(7 downto 0)
  );
end LCDModule;

architecture Behavioral of LCDModule is
  --
  -- The master clock (in this case, this is just clock_50)
  --
  constant CLOCK_FREQUENCY : real := CLOCK_50_FREQUENCY;
  signal clock : std_logic;
  --
  -- Events related to key presses
  --
  signal key_pressed_pulse : std_logic_vector(3 downto 0);
  --
  -- LCD interface
  --
  signal txd_rs_and_data : std_logic_vector(8 downto 0);
  signal txd_request     : std_logic;
  signal txd_accepted    : std_logic := '0';
  --
  -- LCD initialization/refresh stage
  --
  signal index : integer range 0 to 33 := 0;
  --
  -- Contents of the two lines of the LCD display (the display is initially almost all blank; for example, the ASCII code of a space is X"20")
  --
  signal top_line    : std_logic_vector(127 downto 0) := X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20"; -- 16 ASCII codes for the top line
  signal bottom_line : std_logic_vector(127 downto 0) := X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20"; -- 16 ASCII codes for the bottom line
begin
  --
  -- The master clock (in this case there is no need to change the clock frequency, so our master clock is just clock_50)
  --
  clock <= clk;
 
  --
  -- The LCD controller
  --
  DISPLAY : entity work.lcd_controller(conservative)
              generic map
              (
                CLOCK_FREQUENCY => CLOCK_FREQUENCY
              )
              port map
              (
                clock => clock,
                reset => '0',  -- no reset
                lcd_on   => lcd_on,
                lcd_blon => lcd_blon,
                lcd_rw   => lcd_rw,
                lcd_en   => lcd_en,
                lcd_rs   => lcd_rs,
                lcd_data => lcd_data,
                txd_rs_and_data => txd_rs_and_data,
                txd_request     => txd_request,
                txd_accepted    => txd_accepted
              );
  --
  -- Deal with key press events
  --
  process(clock) is
  begin
    if rising_edge(clock) then
      if (top_message = "0001") then
        top_line <= X"4D_6F_64_65_3A_20_49_6E_74_65_72_20_20_20_20_20"; --Mode: Intern
		elsif(top_message = "0010") then
		  top_line <= X"4D_6F_64_65_3A_20_45_78_74_65_72_20_20_20_20_20"; --Mode: Extern
		elsif(top_message = "0011") then
		  top_line <= X"41_63_74_69_76_61_74_65_64_20_20_20_20_20_20_20"; --Activated
		elsif(top_message = "0100") then
		  top_line <= X"41_6C_61_72_6D_20_54_72_6A_67_67_65_72_64_20_20"; --Alarm Triggerd
		elsif(top_message = "0101") then
		  top_line <= X"53_65_74_74_69_6E_67_20_50_69_6E_20_20_20_20_20"; --Setting Pin
		elsif(top_message = "0110") then
		  top_line <= X"44_65_61_63_74_20_41_6C_61_72_6D_20_20_20_20_20"; --Deact Alarm
		elsif(top_message = "0111") then
		  top_line <= X"49_6E_73_65_72_74_20_6E_65_77_20_50_69_6E_20_20"; --Insert new Pin
		elsif(top_message = "1000") then
		  top_line <= X"49_6E_73_65_72_74_20_50_69_6E_20_20_20_20_20_20"; --Insert Pin
      else
		  top_line <= X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20"; --blank
      end if;
		
		if(bot_message = "0001") then
		  bottom_line <= X"50_72_65_73_73_20_45_6E_74_65_72_20_20_20_20_20"; --Press Enter (falta atualizar)
		elsif(bot_message = "0010") then
		  bottom_line <= X"50_72_65_73_73_20_34_20_74_6F_20_41_63_74_69_76"; --Press 0 to Activ
		elsif(bot_message = "0011") then
		  bottom_line <= X"50_72_65_73_73_20_33_20_74_6F_20_53_65_74_20_50"; --Press 1 to Set P
		elsif(bot_message = "0100") then
		  bottom_line <= X"49_6E_73_65_72_74_20_50_69_6E_20_20_20_20_20_20"; --Insert Pin
		elsif(bot_message = "0101") then
		  case num is
			when "0001" => bottom_line <= X"20_20_20_20_2A_2A_2A_2A_2A_2A_2A_2A_20_20_20_20";
			when "0010" => bottom_line <= X"20_20_20_20_20_2A_2A_2A_2A_2A_2A_2A_20_20_20_20";
			when "0011" => bottom_line <= X"20_20_20_20_20_20_2A_2A_2A_2A_2A_2A_20_20_20_20";
			when "0100" => bottom_line <= X"20_20_20_20_20_20_20_2A_2A_2A_2A_2A_20_20_20_20";
			when "0101" => bottom_line <= X"20_20_20_20_20_20_20_20_2A_2A_2A_2A_20_20_20_20";
			when "0110" => bottom_line <= X"20_20_20_20_20_20_20_20_20_2A_2A_2A_20_20_20_20";
			when "0111" => bottom_line <= X"20_20_20_20_20_20_20_20_20_20_2A_2A_20_20_20_20";
			when "1000" => bottom_line <= X"20_20_20_20_20_20_20_20_20_20_20_2A_20_20_20_20";
			when others => bottom_line <= X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20";
		  end case;
		else
		  bottom_line <= X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20"; --blank
		end if;
	 end if;
  end process;
  --
  -- LCD initialization (done once) and refresh (done all the time)
  --
  process(clock) is
  begin
    if rising_edge(clock) then
      txd_request <= '1'; -- we are always attempting to write
      case index is
        when 0 => txd_rs_and_data <= b"0_1_000_0000"; -- set write address command
        when 1 => txd_rs_and_data <= '1' & top_line(127 downto 120);
        when 2 => txd_rs_and_data <= '1' & top_line(119 downto 112);
        when 3 => txd_rs_and_data <= '1' & top_line(111 downto 104);
        when 4 => txd_rs_and_data <= '1' & top_line(103 downto  96);
        when 5 => txd_rs_and_data <= '1' & top_line( 95 downto  88);
        when 6 => txd_rs_and_data <= '1' & top_line( 87 downto  80);
        when 7 => txd_rs_and_data <= '1' & top_line( 79 downto  72);
        when 8 => txd_rs_and_data <= '1' & top_line( 71 downto  64);
        when 9 => txd_rs_and_data <= '1' & top_line( 63 downto  56);
        when 10 => txd_rs_and_data <= '1' & top_line( 55 downto  48);
        when 11 => txd_rs_and_data <= '1' & top_line( 47 downto  40);
        when 12 => txd_rs_and_data <= '1' & top_line( 39 downto  32);
        when 13 => txd_rs_and_data <= '1' & top_line( 31 downto  24);
        when 14 => txd_rs_and_data <= '1' & top_line( 23 downto  16);
        when 15 => txd_rs_and_data <= '1' & top_line( 15 downto   8);
        when 16 => txd_rs_and_data <= '1' & top_line(  7 downto   0);
        -- refresh the bottom line
        when 17 => txd_rs_and_data <= b"0_1_100_0000"; -- set write address command
        when 18 => txd_rs_and_data <= '1' & bottom_line(127 downto 120);
        when 19 => txd_rs_and_data <= '1' & bottom_line(119 downto 112);
        when 20 => txd_rs_and_data <= '1' & bottom_line(111 downto 104);
        when 21 => txd_rs_and_data <= '1' & bottom_line(103 downto  96);
        when 22 => txd_rs_and_data <= '1' & bottom_line( 95 downto  88);
        when 23 => txd_rs_and_data <= '1' & bottom_line( 87 downto  80);
        when 24 => txd_rs_and_data <= '1' & bottom_line( 79 downto  72);
        when 25 => txd_rs_and_data <= '1' & bottom_line( 71 downto  64);
        when 26 => txd_rs_and_data <= '1' & bottom_line( 63 downto  56);
        when 27 => txd_rs_and_data <= '1' & bottom_line( 55 downto  48);
        when 28 => txd_rs_and_data <= '1' & bottom_line( 47 downto  40);
        when 29 => txd_rs_and_data <= '1' & bottom_line( 39 downto  32);
        when 30 => txd_rs_and_data <= '1' & bottom_line( 31 downto  24);
        when 31 => txd_rs_and_data <= '1' & bottom_line( 23 downto  16);
        when 32 => txd_rs_and_data <= '1' & bottom_line( 15 downto   8);
        when 33 => txd_rs_and_data <= '1' & bottom_line(  7 downto   0);
      end case;
      if txd_accepted = '1' then
        if index < 33 then
          index <= index+1; -- advance to the next initialization/refresh stage
        else
          index <= 0; -- restart at the first refresh stage
        end if;
      end if;
    end if;
  end process;
end Behavioral;
