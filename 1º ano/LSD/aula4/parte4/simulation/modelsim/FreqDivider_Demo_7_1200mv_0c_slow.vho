-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "03/13/2018 11:32:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fd_d|Add2~0_combout\ : std_logic;
SIGNAL \fd_d|Add2~1\ : std_logic;
SIGNAL \fd_d|Add2~2_combout\ : std_logic;
SIGNAL \fd_d|Add2~3\ : std_logic;
SIGNAL \fd_d|Add2~4_combout\ : std_logic;
SIGNAL \fd_d|Add2~5\ : std_logic;
SIGNAL \fd_d|Add2~6_combout\ : std_logic;
SIGNAL \fd_d|Add2~7\ : std_logic;
SIGNAL \fd_d|Add2~8_combout\ : std_logic;
SIGNAL \fd_d|Add2~9\ : std_logic;
SIGNAL \fd_d|Add2~10_combout\ : std_logic;
SIGNAL \fd_d|Add2~11\ : std_logic;
SIGNAL \fd_d|Add2~12_combout\ : std_logic;
SIGNAL \fd_d|s_counter~7_combout\ : std_logic;
SIGNAL \fd_d|Add2~13\ : std_logic;
SIGNAL \fd_d|Add2~14_combout\ : std_logic;
SIGNAL \fd_d|Equal0~5_combout\ : std_logic;
SIGNAL \fd_d|Add2~15\ : std_logic;
SIGNAL \fd_d|Add2~16_combout\ : std_logic;
SIGNAL \fd_d|Add2~17\ : std_logic;
SIGNAL \fd_d|Add2~18_combout\ : std_logic;
SIGNAL \fd_d|Add2~19\ : std_logic;
SIGNAL \fd_d|Add2~20_combout\ : std_logic;
SIGNAL \fd_d|Add2~21\ : std_logic;
SIGNAL \fd_d|Add2~22_combout\ : std_logic;
SIGNAL \fd_d|s_counter~6_combout\ : std_logic;
SIGNAL \fd_d|Add2~23\ : std_logic;
SIGNAL \fd_d|Add2~24_combout\ : std_logic;
SIGNAL \fd_d|s_counter~5_combout\ : std_logic;
SIGNAL \fd_d|Add2~25\ : std_logic;
SIGNAL \fd_d|Add2~26_combout\ : std_logic;
SIGNAL \fd_d|s_counter~4_combout\ : std_logic;
SIGNAL \fd_d|Add2~27\ : std_logic;
SIGNAL \fd_d|Add2~28_combout\ : std_logic;
SIGNAL \fd_d|s_counter~11_combout\ : std_logic;
SIGNAL \fd_d|Add2~29\ : std_logic;
SIGNAL \fd_d|Add2~30_combout\ : std_logic;
SIGNAL \fd_d|Add2~31\ : std_logic;
SIGNAL \fd_d|Add2~32_combout\ : std_logic;
SIGNAL \fd_d|s_counter~10_combout\ : std_logic;
SIGNAL \fd_d|Equal0~9_combout\ : std_logic;
SIGNAL \fd_d|Add2~33\ : std_logic;
SIGNAL \fd_d|Add2~34_combout\ : std_logic;
SIGNAL \fd_d|Add2~35\ : std_logic;
SIGNAL \fd_d|Add2~36_combout\ : std_logic;
SIGNAL \fd_d|s_counter~3_combout\ : std_logic;
SIGNAL \fd_d|Add2~37\ : std_logic;
SIGNAL \fd_d|Add2~38_combout\ : std_logic;
SIGNAL \fd_d|s_counter~2_combout\ : std_logic;
SIGNAL \fd_d|Add2~39\ : std_logic;
SIGNAL \fd_d|Add2~40_combout\ : std_logic;
SIGNAL \fd_d|s_counter~1_combout\ : std_logic;
SIGNAL \fd_d|Add2~41\ : std_logic;
SIGNAL \fd_d|Add2~42_combout\ : std_logic;
SIGNAL \fd_d|s_counter~0_combout\ : std_logic;
SIGNAL \fd_d|Add2~43\ : std_logic;
SIGNAL \fd_d|Add2~44_combout\ : std_logic;
SIGNAL \fd_d|s_counter~9_combout\ : std_logic;
SIGNAL \fd_d|Add2~45\ : std_logic;
SIGNAL \fd_d|Add2~46_combout\ : std_logic;
SIGNAL \fd_d|Add2~47\ : std_logic;
SIGNAL \fd_d|Add2~48_combout\ : std_logic;
SIGNAL \fd_d|s_counter~8_combout\ : std_logic;
SIGNAL \fd_d|Equal0~8_combout\ : std_logic;
SIGNAL \fd_d|Equal0~10_combout\ : std_logic;
SIGNAL \fd_d|Equal0~6_combout\ : std_logic;
SIGNAL \fd_d|Equal0~2_combout\ : std_logic;
SIGNAL \fd_d|Add2~49\ : std_logic;
SIGNAL \fd_d|Add2~50_combout\ : std_logic;
SIGNAL \fd_d|Add2~51\ : std_logic;
SIGNAL \fd_d|Add2~52_combout\ : std_logic;
SIGNAL \fd_d|Add2~53\ : std_logic;
SIGNAL \fd_d|Add2~54_combout\ : std_logic;
SIGNAL \fd_d|Equal0~1_combout\ : std_logic;
SIGNAL \fd_d|Add2~55\ : std_logic;
SIGNAL \fd_d|Add2~56_combout\ : std_logic;
SIGNAL \fd_d|Add2~57\ : std_logic;
SIGNAL \fd_d|Add2~58_combout\ : std_logic;
SIGNAL \fd_d|Add2~59\ : std_logic;
SIGNAL \fd_d|Add2~60_combout\ : std_logic;
SIGNAL \fd_d|Add2~61\ : std_logic;
SIGNAL \fd_d|Add2~62_combout\ : std_logic;
SIGNAL \fd_d|Equal0~0_combout\ : std_logic;
SIGNAL \fd_d|Equal0~3_combout\ : std_logic;
SIGNAL \fd_d|Equal0~4_combout\ : std_logic;
SIGNAL \fd_d|Equal0~11_combout\ : std_logic;
SIGNAL \fd_d|Equal0~7_combout\ : std_logic;
SIGNAL \fd_d|clkOut~0_combout\ : std_logic;
SIGNAL \fd_d|clkOut~1_combout\ : std_logic;
SIGNAL \fd_d|clkOut~2_combout\ : std_logic;
SIGNAL \fd_d|clkOut~3_combout\ : std_logic;
SIGNAL \fd_d|clkOut~q\ : std_logic;
SIGNAL \fd_d|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_d|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y66_N0
\fd_d|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~0_combout\ = \fd_d|s_counter\(0) $ (VCC)
-- \fd_d|Add2~1\ = CARRY(\fd_d|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(0),
	datad => VCC,
	combout => \fd_d|Add2~0_combout\,
	cout => \fd_d|Add2~1\);

-- Location: FF_X77_Y66_N1
\fd_d|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(0));

-- Location: LCCOMB_X77_Y66_N2
\fd_d|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~2_combout\ = (\fd_d|s_counter\(1) & (!\fd_d|Add2~1\)) # (!\fd_d|s_counter\(1) & ((\fd_d|Add2~1\) # (GND)))
-- \fd_d|Add2~3\ = CARRY((!\fd_d|Add2~1\) # (!\fd_d|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(1),
	datad => VCC,
	cin => \fd_d|Add2~1\,
	combout => \fd_d|Add2~2_combout\,
	cout => \fd_d|Add2~3\);

-- Location: FF_X77_Y66_N3
\fd_d|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(1));

-- Location: LCCOMB_X77_Y66_N4
\fd_d|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~4_combout\ = (\fd_d|s_counter\(2) & (\fd_d|Add2~3\ $ (GND))) # (!\fd_d|s_counter\(2) & (!\fd_d|Add2~3\ & VCC))
-- \fd_d|Add2~5\ = CARRY((\fd_d|s_counter\(2) & !\fd_d|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(2),
	datad => VCC,
	cin => \fd_d|Add2~3\,
	combout => \fd_d|Add2~4_combout\,
	cout => \fd_d|Add2~5\);

-- Location: FF_X77_Y66_N5
\fd_d|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(2));

-- Location: LCCOMB_X77_Y66_N6
\fd_d|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~6_combout\ = (\fd_d|s_counter\(3) & (!\fd_d|Add2~5\)) # (!\fd_d|s_counter\(3) & ((\fd_d|Add2~5\) # (GND)))
-- \fd_d|Add2~7\ = CARRY((!\fd_d|Add2~5\) # (!\fd_d|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(3),
	datad => VCC,
	cin => \fd_d|Add2~5\,
	combout => \fd_d|Add2~6_combout\,
	cout => \fd_d|Add2~7\);

-- Location: FF_X77_Y66_N7
\fd_d|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(3));

-- Location: LCCOMB_X77_Y66_N8
\fd_d|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~8_combout\ = (\fd_d|s_counter\(4) & (\fd_d|Add2~7\ $ (GND))) # (!\fd_d|s_counter\(4) & (!\fd_d|Add2~7\ & VCC))
-- \fd_d|Add2~9\ = CARRY((\fd_d|s_counter\(4) & !\fd_d|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(4),
	datad => VCC,
	cin => \fd_d|Add2~7\,
	combout => \fd_d|Add2~8_combout\,
	cout => \fd_d|Add2~9\);

-- Location: FF_X77_Y66_N9
\fd_d|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(4));

-- Location: LCCOMB_X77_Y66_N10
\fd_d|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~10_combout\ = (\fd_d|s_counter\(5) & (!\fd_d|Add2~9\)) # (!\fd_d|s_counter\(5) & ((\fd_d|Add2~9\) # (GND)))
-- \fd_d|Add2~11\ = CARRY((!\fd_d|Add2~9\) # (!\fd_d|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(5),
	datad => VCC,
	cin => \fd_d|Add2~9\,
	combout => \fd_d|Add2~10_combout\,
	cout => \fd_d|Add2~11\);

-- Location: FF_X77_Y66_N11
\fd_d|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(5));

-- Location: LCCOMB_X77_Y66_N12
\fd_d|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~12_combout\ = (\fd_d|s_counter\(6) & (\fd_d|Add2~11\ $ (GND))) # (!\fd_d|s_counter\(6) & (!\fd_d|Add2~11\ & VCC))
-- \fd_d|Add2~13\ = CARRY((\fd_d|s_counter\(6) & !\fd_d|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(6),
	datad => VCC,
	cin => \fd_d|Add2~11\,
	combout => \fd_d|Add2~12_combout\,
	cout => \fd_d|Add2~13\);

-- Location: LCCOMB_X76_Y66_N14
\fd_d|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~7_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~12_combout\,
	combout => \fd_d|s_counter~7_combout\);

-- Location: FF_X76_Y66_N15
\fd_d|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(6));

-- Location: LCCOMB_X77_Y66_N14
\fd_d|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~14_combout\ = (\fd_d|s_counter\(7) & (!\fd_d|Add2~13\)) # (!\fd_d|s_counter\(7) & ((\fd_d|Add2~13\) # (GND)))
-- \fd_d|Add2~15\ = CARRY((!\fd_d|Add2~13\) # (!\fd_d|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(7),
	datad => VCC,
	cin => \fd_d|Add2~13\,
	combout => \fd_d|Add2~14_combout\,
	cout => \fd_d|Add2~15\);

-- Location: FF_X77_Y66_N15
\fd_d|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(7));

-- Location: LCCOMB_X76_Y66_N12
\fd_d|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~5_combout\ = (!\fd_d|s_counter\(6) & (\fd_d|s_counter\(4) & (!\fd_d|s_counter\(7) & \fd_d|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(6),
	datab => \fd_d|s_counter\(4),
	datac => \fd_d|s_counter\(7),
	datad => \fd_d|s_counter\(3),
	combout => \fd_d|Equal0~5_combout\);

-- Location: LCCOMB_X77_Y66_N16
\fd_d|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~16_combout\ = (\fd_d|s_counter\(8) & (\fd_d|Add2~15\ $ (GND))) # (!\fd_d|s_counter\(8) & (!\fd_d|Add2~15\ & VCC))
-- \fd_d|Add2~17\ = CARRY((\fd_d|s_counter\(8) & !\fd_d|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(8),
	datad => VCC,
	cin => \fd_d|Add2~15\,
	combout => \fd_d|Add2~16_combout\,
	cout => \fd_d|Add2~17\);

-- Location: FF_X77_Y66_N17
\fd_d|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(8));

-- Location: LCCOMB_X77_Y66_N18
\fd_d|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~18_combout\ = (\fd_d|s_counter\(9) & (!\fd_d|Add2~17\)) # (!\fd_d|s_counter\(9) & ((\fd_d|Add2~17\) # (GND)))
-- \fd_d|Add2~19\ = CARRY((!\fd_d|Add2~17\) # (!\fd_d|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(9),
	datad => VCC,
	cin => \fd_d|Add2~17\,
	combout => \fd_d|Add2~18_combout\,
	cout => \fd_d|Add2~19\);

-- Location: FF_X77_Y66_N19
\fd_d|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(9));

-- Location: LCCOMB_X77_Y66_N20
\fd_d|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~20_combout\ = (\fd_d|s_counter\(10) & (\fd_d|Add2~19\ $ (GND))) # (!\fd_d|s_counter\(10) & (!\fd_d|Add2~19\ & VCC))
-- \fd_d|Add2~21\ = CARRY((\fd_d|s_counter\(10) & !\fd_d|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(10),
	datad => VCC,
	cin => \fd_d|Add2~19\,
	combout => \fd_d|Add2~20_combout\,
	cout => \fd_d|Add2~21\);

-- Location: FF_X77_Y66_N21
\fd_d|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(10));

-- Location: LCCOMB_X77_Y66_N22
\fd_d|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~22_combout\ = (\fd_d|s_counter\(11) & (!\fd_d|Add2~21\)) # (!\fd_d|s_counter\(11) & ((\fd_d|Add2~21\) # (GND)))
-- \fd_d|Add2~23\ = CARRY((!\fd_d|Add2~21\) # (!\fd_d|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(11),
	datad => VCC,
	cin => \fd_d|Add2~21\,
	combout => \fd_d|Add2~22_combout\,
	cout => \fd_d|Add2~23\);

-- Location: LCCOMB_X76_Y65_N22
\fd_d|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~6_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~22_combout\,
	combout => \fd_d|s_counter~6_combout\);

-- Location: FF_X76_Y65_N23
\fd_d|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(11));

-- Location: LCCOMB_X77_Y66_N24
\fd_d|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~24_combout\ = (\fd_d|s_counter\(12) & (\fd_d|Add2~23\ $ (GND))) # (!\fd_d|s_counter\(12) & (!\fd_d|Add2~23\ & VCC))
-- \fd_d|Add2~25\ = CARRY((\fd_d|s_counter\(12) & !\fd_d|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(12),
	datad => VCC,
	cin => \fd_d|Add2~23\,
	combout => \fd_d|Add2~24_combout\,
	cout => \fd_d|Add2~25\);

-- Location: LCCOMB_X76_Y65_N24
\fd_d|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~5_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|Equal0~11_combout\,
	datac => \fd_d|Add2~24_combout\,
	combout => \fd_d|s_counter~5_combout\);

-- Location: FF_X76_Y65_N25
\fd_d|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(12));

-- Location: LCCOMB_X77_Y66_N26
\fd_d|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~26_combout\ = (\fd_d|s_counter\(13) & (!\fd_d|Add2~25\)) # (!\fd_d|s_counter\(13) & ((\fd_d|Add2~25\) # (GND)))
-- \fd_d|Add2~27\ = CARRY((!\fd_d|Add2~25\) # (!\fd_d|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(13),
	datad => VCC,
	cin => \fd_d|Add2~25\,
	combout => \fd_d|Add2~26_combout\,
	cout => \fd_d|Add2~27\);

-- Location: LCCOMB_X76_Y65_N28
\fd_d|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~4_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~26_combout\,
	combout => \fd_d|s_counter~4_combout\);

-- Location: FF_X76_Y65_N29
\fd_d|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(13));

-- Location: LCCOMB_X77_Y66_N28
\fd_d|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~28_combout\ = (\fd_d|s_counter\(14) & (\fd_d|Add2~27\ $ (GND))) # (!\fd_d|s_counter\(14) & (!\fd_d|Add2~27\ & VCC))
-- \fd_d|Add2~29\ = CARRY((\fd_d|s_counter\(14) & !\fd_d|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(14),
	datad => VCC,
	cin => \fd_d|Add2~27\,
	combout => \fd_d|Add2~28_combout\,
	cout => \fd_d|Add2~29\);

-- Location: LCCOMB_X76_Y66_N18
\fd_d|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~11_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~28_combout\,
	combout => \fd_d|s_counter~11_combout\);

-- Location: FF_X76_Y66_N19
\fd_d|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(14));

-- Location: LCCOMB_X77_Y66_N30
\fd_d|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~30_combout\ = (\fd_d|s_counter\(15) & (!\fd_d|Add2~29\)) # (!\fd_d|s_counter\(15) & ((\fd_d|Add2~29\) # (GND)))
-- \fd_d|Add2~31\ = CARRY((!\fd_d|Add2~29\) # (!\fd_d|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(15),
	datad => VCC,
	cin => \fd_d|Add2~29\,
	combout => \fd_d|Add2~30_combout\,
	cout => \fd_d|Add2~31\);

-- Location: FF_X77_Y66_N31
\fd_d|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(15));

-- Location: LCCOMB_X77_Y65_N0
\fd_d|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~32_combout\ = (\fd_d|s_counter\(16) & (\fd_d|Add2~31\ $ (GND))) # (!\fd_d|s_counter\(16) & (!\fd_d|Add2~31\ & VCC))
-- \fd_d|Add2~33\ = CARRY((\fd_d|s_counter\(16) & !\fd_d|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(16),
	datad => VCC,
	cin => \fd_d|Add2~31\,
	combout => \fd_d|Add2~32_combout\,
	cout => \fd_d|Add2~33\);

-- Location: LCCOMB_X76_Y66_N4
\fd_d|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~10_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~32_combout\,
	combout => \fd_d|s_counter~10_combout\);

-- Location: FF_X76_Y66_N5
\fd_d|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(16));

-- Location: LCCOMB_X76_Y66_N2
\fd_d|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~9_combout\ = (!\fd_d|s_counter\(10) & (\fd_d|s_counter\(16) & (!\fd_d|s_counter\(15) & \fd_d|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(10),
	datab => \fd_d|s_counter\(16),
	datac => \fd_d|s_counter\(15),
	datad => \fd_d|s_counter\(14),
	combout => \fd_d|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y65_N2
\fd_d|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~34_combout\ = (\fd_d|s_counter\(17) & (!\fd_d|Add2~33\)) # (!\fd_d|s_counter\(17) & ((\fd_d|Add2~33\) # (GND)))
-- \fd_d|Add2~35\ = CARRY((!\fd_d|Add2~33\) # (!\fd_d|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(17),
	datad => VCC,
	cin => \fd_d|Add2~33\,
	combout => \fd_d|Add2~34_combout\,
	cout => \fd_d|Add2~35\);

-- Location: FF_X77_Y65_N3
\fd_d|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(17));

-- Location: LCCOMB_X77_Y65_N4
\fd_d|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~36_combout\ = (\fd_d|s_counter\(18) & (\fd_d|Add2~35\ $ (GND))) # (!\fd_d|s_counter\(18) & (!\fd_d|Add2~35\ & VCC))
-- \fd_d|Add2~37\ = CARRY((\fd_d|s_counter\(18) & !\fd_d|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(18),
	datad => VCC,
	cin => \fd_d|Add2~35\,
	combout => \fd_d|Add2~36_combout\,
	cout => \fd_d|Add2~37\);

-- Location: LCCOMB_X76_Y65_N6
\fd_d|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~3_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~36_combout\,
	combout => \fd_d|s_counter~3_combout\);

-- Location: FF_X76_Y65_N7
\fd_d|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(18));

-- Location: LCCOMB_X77_Y65_N6
\fd_d|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~38_combout\ = (\fd_d|s_counter\(19) & (!\fd_d|Add2~37\)) # (!\fd_d|s_counter\(19) & ((\fd_d|Add2~37\) # (GND)))
-- \fd_d|Add2~39\ = CARRY((!\fd_d|Add2~37\) # (!\fd_d|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(19),
	datad => VCC,
	cin => \fd_d|Add2~37\,
	combout => \fd_d|Add2~38_combout\,
	cout => \fd_d|Add2~39\);

-- Location: LCCOMB_X76_Y65_N16
\fd_d|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~2_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~38_combout\,
	combout => \fd_d|s_counter~2_combout\);

-- Location: FF_X76_Y65_N17
\fd_d|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(19));

-- Location: LCCOMB_X77_Y65_N8
\fd_d|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~40_combout\ = (\fd_d|s_counter\(20) & (\fd_d|Add2~39\ $ (GND))) # (!\fd_d|s_counter\(20) & (!\fd_d|Add2~39\ & VCC))
-- \fd_d|Add2~41\ = CARRY((\fd_d|s_counter\(20) & !\fd_d|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(20),
	datad => VCC,
	cin => \fd_d|Add2~39\,
	combout => \fd_d|Add2~40_combout\,
	cout => \fd_d|Add2~41\);

-- Location: LCCOMB_X76_Y65_N14
\fd_d|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~1_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|Equal0~11_combout\,
	datac => \fd_d|Add2~40_combout\,
	combout => \fd_d|s_counter~1_combout\);

-- Location: FF_X76_Y65_N15
\fd_d|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(20));

-- Location: LCCOMB_X77_Y65_N10
\fd_d|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~42_combout\ = (\fd_d|s_counter\(21) & (!\fd_d|Add2~41\)) # (!\fd_d|s_counter\(21) & ((\fd_d|Add2~41\) # (GND)))
-- \fd_d|Add2~43\ = CARRY((!\fd_d|Add2~41\) # (!\fd_d|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(21),
	datad => VCC,
	cin => \fd_d|Add2~41\,
	combout => \fd_d|Add2~42_combout\,
	cout => \fd_d|Add2~43\);

-- Location: LCCOMB_X76_Y65_N26
\fd_d|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~0_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|Equal0~11_combout\,
	datac => \fd_d|Add2~42_combout\,
	combout => \fd_d|s_counter~0_combout\);

-- Location: FF_X76_Y65_N27
\fd_d|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(21));

-- Location: LCCOMB_X77_Y65_N12
\fd_d|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~44_combout\ = (\fd_d|s_counter\(22) & (\fd_d|Add2~43\ $ (GND))) # (!\fd_d|s_counter\(22) & (!\fd_d|Add2~43\ & VCC))
-- \fd_d|Add2~45\ = CARRY((\fd_d|s_counter\(22) & !\fd_d|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(22),
	datad => VCC,
	cin => \fd_d|Add2~43\,
	combout => \fd_d|Add2~44_combout\,
	cout => \fd_d|Add2~45\);

-- Location: LCCOMB_X76_Y66_N8
\fd_d|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~9_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~44_combout\,
	combout => \fd_d|s_counter~9_combout\);

-- Location: FF_X76_Y66_N9
\fd_d|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(22));

-- Location: LCCOMB_X77_Y65_N14
\fd_d|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~46_combout\ = (\fd_d|s_counter\(23) & (!\fd_d|Add2~45\)) # (!\fd_d|s_counter\(23) & ((\fd_d|Add2~45\) # (GND)))
-- \fd_d|Add2~47\ = CARRY((!\fd_d|Add2~45\) # (!\fd_d|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(23),
	datad => VCC,
	cin => \fd_d|Add2~45\,
	combout => \fd_d|Add2~46_combout\,
	cout => \fd_d|Add2~47\);

-- Location: FF_X77_Y65_N15
\fd_d|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(23));

-- Location: LCCOMB_X77_Y65_N16
\fd_d|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~48_combout\ = (\fd_d|s_counter\(24) & (\fd_d|Add2~47\ $ (GND))) # (!\fd_d|s_counter\(24) & (!\fd_d|Add2~47\ & VCC))
-- \fd_d|Add2~49\ = CARRY((\fd_d|s_counter\(24) & !\fd_d|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(24),
	datad => VCC,
	cin => \fd_d|Add2~47\,
	combout => \fd_d|Add2~48_combout\,
	cout => \fd_d|Add2~49\);

-- Location: LCCOMB_X76_Y66_N6
\fd_d|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|s_counter~8_combout\ = (!\fd_d|Equal0~11_combout\ & \fd_d|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_d|Equal0~11_combout\,
	datad => \fd_d|Add2~48_combout\,
	combout => \fd_d|s_counter~8_combout\);

-- Location: FF_X76_Y66_N7
\fd_d|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(24));

-- Location: LCCOMB_X76_Y66_N24
\fd_d|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~8_combout\ = (\fd_d|s_counter\(24) & (\fd_d|s_counter\(22) & (!\fd_d|s_counter\(23) & !\fd_d|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(24),
	datab => \fd_d|s_counter\(22),
	datac => \fd_d|s_counter\(23),
	datad => \fd_d|s_counter\(17),
	combout => \fd_d|Equal0~8_combout\);

-- Location: LCCOMB_X76_Y66_N28
\fd_d|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~10_combout\ = (\fd_d|Equal0~9_combout\ & (\fd_d|s_counter\(5) & \fd_d|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|Equal0~9_combout\,
	datac => \fd_d|s_counter\(5),
	datad => \fd_d|Equal0~8_combout\,
	combout => \fd_d|Equal0~10_combout\);

-- Location: LCCOMB_X76_Y66_N26
\fd_d|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~6_combout\ = (\fd_d|s_counter\(1) & (\fd_d|s_counter\(0) & \fd_d|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(1),
	datac => \fd_d|s_counter\(0),
	datad => \fd_d|s_counter\(2),
	combout => \fd_d|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y65_N30
\fd_d|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~2_combout\ = (\fd_d|s_counter\(18) & (\fd_d|s_counter\(19) & (\fd_d|s_counter\(20) & \fd_d|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(18),
	datab => \fd_d|s_counter\(19),
	datac => \fd_d|s_counter\(20),
	datad => \fd_d|s_counter\(13),
	combout => \fd_d|Equal0~2_combout\);

-- Location: LCCOMB_X77_Y65_N18
\fd_d|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~50_combout\ = (\fd_d|s_counter\(25) & (!\fd_d|Add2~49\)) # (!\fd_d|s_counter\(25) & ((\fd_d|Add2~49\) # (GND)))
-- \fd_d|Add2~51\ = CARRY((!\fd_d|Add2~49\) # (!\fd_d|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(25),
	datad => VCC,
	cin => \fd_d|Add2~49\,
	combout => \fd_d|Add2~50_combout\,
	cout => \fd_d|Add2~51\);

-- Location: FF_X77_Y65_N19
\fd_d|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(25));

-- Location: LCCOMB_X77_Y65_N20
\fd_d|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~52_combout\ = (\fd_d|s_counter\(26) & (\fd_d|Add2~51\ $ (GND))) # (!\fd_d|s_counter\(26) & (!\fd_d|Add2~51\ & VCC))
-- \fd_d|Add2~53\ = CARRY((\fd_d|s_counter\(26) & !\fd_d|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(26),
	datad => VCC,
	cin => \fd_d|Add2~51\,
	combout => \fd_d|Add2~52_combout\,
	cout => \fd_d|Add2~53\);

-- Location: FF_X77_Y65_N21
\fd_d|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(26));

-- Location: LCCOMB_X77_Y65_N22
\fd_d|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~54_combout\ = (\fd_d|s_counter\(27) & (!\fd_d|Add2~53\)) # (!\fd_d|s_counter\(27) & ((\fd_d|Add2~53\) # (GND)))
-- \fd_d|Add2~55\ = CARRY((!\fd_d|Add2~53\) # (!\fd_d|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(27),
	datad => VCC,
	cin => \fd_d|Add2~53\,
	combout => \fd_d|Add2~54_combout\,
	cout => \fd_d|Add2~55\);

-- Location: FF_X77_Y65_N23
\fd_d|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(27));

-- Location: LCCOMB_X76_Y65_N20
\fd_d|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~1_combout\ = (\fd_d|s_counter\(21) & (!\fd_d|s_counter\(27) & (!\fd_d|s_counter\(26) & !\fd_d|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(21),
	datab => \fd_d|s_counter\(27),
	datac => \fd_d|s_counter\(26),
	datad => \fd_d|s_counter\(25),
	combout => \fd_d|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y65_N24
\fd_d|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~56_combout\ = (\fd_d|s_counter\(28) & (\fd_d|Add2~55\ $ (GND))) # (!\fd_d|s_counter\(28) & (!\fd_d|Add2~55\ & VCC))
-- \fd_d|Add2~57\ = CARRY((\fd_d|s_counter\(28) & !\fd_d|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(28),
	datad => VCC,
	cin => \fd_d|Add2~55\,
	combout => \fd_d|Add2~56_combout\,
	cout => \fd_d|Add2~57\);

-- Location: FF_X77_Y65_N25
\fd_d|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(28));

-- Location: LCCOMB_X77_Y65_N26
\fd_d|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~58_combout\ = (\fd_d|s_counter\(29) & (!\fd_d|Add2~57\)) # (!\fd_d|s_counter\(29) & ((\fd_d|Add2~57\) # (GND)))
-- \fd_d|Add2~59\ = CARRY((!\fd_d|Add2~57\) # (!\fd_d|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(29),
	datad => VCC,
	cin => \fd_d|Add2~57\,
	combout => \fd_d|Add2~58_combout\,
	cout => \fd_d|Add2~59\);

-- Location: FF_X77_Y65_N27
\fd_d|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(29));

-- Location: LCCOMB_X77_Y65_N28
\fd_d|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~60_combout\ = (\fd_d|s_counter\(30) & (\fd_d|Add2~59\ $ (GND))) # (!\fd_d|s_counter\(30) & (!\fd_d|Add2~59\ & VCC))
-- \fd_d|Add2~61\ = CARRY((\fd_d|s_counter\(30) & !\fd_d|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(30),
	datad => VCC,
	cin => \fd_d|Add2~59\,
	combout => \fd_d|Add2~60_combout\,
	cout => \fd_d|Add2~61\);

-- Location: FF_X77_Y65_N29
\fd_d|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(30));

-- Location: LCCOMB_X77_Y65_N30
\fd_d|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Add2~62_combout\ = \fd_d|s_counter\(31) $ (\fd_d|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(31),
	cin => \fd_d|Add2~61\,
	combout => \fd_d|Add2~62_combout\);

-- Location: FF_X77_Y65_N31
\fd_d|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|s_counter\(31));

-- Location: LCCOMB_X76_Y65_N8
\fd_d|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~0_combout\ = (!\fd_d|s_counter\(31) & (!\fd_d|s_counter\(30) & (!\fd_d|s_counter\(29) & !\fd_d|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(31),
	datab => \fd_d|s_counter\(30),
	datac => \fd_d|s_counter\(29),
	datad => \fd_d|s_counter\(28),
	combout => \fd_d|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y65_N12
\fd_d|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~3_combout\ = (\fd_d|s_counter\(11) & (\fd_d|s_counter\(12) & (!\fd_d|s_counter\(9) & !\fd_d|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(11),
	datab => \fd_d|s_counter\(12),
	datac => \fd_d|s_counter\(9),
	datad => \fd_d|s_counter\(8),
	combout => \fd_d|Equal0~3_combout\);

-- Location: LCCOMB_X76_Y65_N10
\fd_d|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~4_combout\ = (\fd_d|Equal0~2_combout\ & (\fd_d|Equal0~1_combout\ & (\fd_d|Equal0~0_combout\ & \fd_d|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|Equal0~2_combout\,
	datab => \fd_d|Equal0~1_combout\,
	datac => \fd_d|Equal0~0_combout\,
	datad => \fd_d|Equal0~3_combout\,
	combout => \fd_d|Equal0~4_combout\);

-- Location: LCCOMB_X76_Y66_N30
\fd_d|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~11_combout\ = (\fd_d|Equal0~5_combout\ & (\fd_d|Equal0~10_combout\ & (\fd_d|Equal0~6_combout\ & \fd_d|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|Equal0~5_combout\,
	datab => \fd_d|Equal0~10_combout\,
	datac => \fd_d|Equal0~6_combout\,
	datad => \fd_d|Equal0~4_combout\,
	combout => \fd_d|Equal0~11_combout\);

-- Location: LCCOMB_X76_Y66_N20
\fd_d|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|Equal0~7_combout\ = (\fd_d|Equal0~5_combout\ & (\fd_d|Equal0~6_combout\ & \fd_d|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|Equal0~5_combout\,
	datac => \fd_d|Equal0~6_combout\,
	datad => \fd_d|Equal0~4_combout\,
	combout => \fd_d|Equal0~7_combout\);

-- Location: LCCOMB_X76_Y66_N22
\fd_d|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|clkOut~0_combout\ = (!\fd_d|s_counter\(24) & (!\fd_d|s_counter\(22) & (\fd_d|s_counter\(23) & \fd_d|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(24),
	datab => \fd_d|s_counter\(22),
	datac => \fd_d|s_counter\(23),
	datad => \fd_d|s_counter\(17),
	combout => \fd_d|clkOut~0_combout\);

-- Location: LCCOMB_X76_Y66_N16
\fd_d|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|clkOut~1_combout\ = (\fd_d|s_counter\(10) & (!\fd_d|s_counter\(16) & (\fd_d|s_counter\(15) & !\fd_d|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|s_counter\(10),
	datab => \fd_d|s_counter\(16),
	datac => \fd_d|s_counter\(15),
	datad => \fd_d|s_counter\(14),
	combout => \fd_d|clkOut~1_combout\);

-- Location: LCCOMB_X76_Y66_N10
\fd_d|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|clkOut~2_combout\ = (!\fd_d|s_counter\(5) & (\fd_d|clkOut~0_combout\ & \fd_d|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd_d|s_counter\(5),
	datac => \fd_d|clkOut~0_combout\,
	datad => \fd_d|clkOut~1_combout\,
	combout => \fd_d|clkOut~2_combout\);

-- Location: LCCOMB_X76_Y66_N0
\fd_d|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_d|clkOut~3_combout\ = (!\fd_d|Equal0~11_combout\ & ((\fd_d|clkOut~q\) # ((\fd_d|Equal0~7_combout\ & \fd_d|clkOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_d|Equal0~11_combout\,
	datab => \fd_d|Equal0~7_combout\,
	datac => \fd_d|clkOut~q\,
	datad => \fd_d|clkOut~2_combout\,
	combout => \fd_d|clkOut~3_combout\);

-- Location: FF_X76_Y66_N1
\fd_d|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fd_d|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fd_d|clkOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


