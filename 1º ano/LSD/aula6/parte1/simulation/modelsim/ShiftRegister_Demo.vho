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

-- DATE "04/03/2018 10:59:54"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_divider|Add0~0_combout\ : std_logic;
SIGNAL \clk_divider|Add0~1\ : std_logic;
SIGNAL \clk_divider|Add0~2_combout\ : std_logic;
SIGNAL \clk_divider|Add0~3\ : std_logic;
SIGNAL \clk_divider|Add0~4_combout\ : std_logic;
SIGNAL \clk_divider|Add0~5\ : std_logic;
SIGNAL \clk_divider|Add0~6_combout\ : std_logic;
SIGNAL \clk_divider|Add0~7\ : std_logic;
SIGNAL \clk_divider|Add0~8_combout\ : std_logic;
SIGNAL \clk_divider|Add0~9\ : std_logic;
SIGNAL \clk_divider|Add0~10_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~5_combout\ : std_logic;
SIGNAL \clk_divider|Add0~11\ : std_logic;
SIGNAL \clk_divider|Add0~12_combout\ : std_logic;
SIGNAL \clk_divider|Add0~13\ : std_logic;
SIGNAL \clk_divider|Add0~14_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~11_combout\ : std_logic;
SIGNAL \clk_divider|Add0~15\ : std_logic;
SIGNAL \clk_divider|Add0~16_combout\ : std_logic;
SIGNAL \clk_divider|Add0~17\ : std_logic;
SIGNAL \clk_divider|Add0~18_combout\ : std_logic;
SIGNAL \clk_divider|Add0~19\ : std_logic;
SIGNAL \clk_divider|Add0~20_combout\ : std_logic;
SIGNAL \clk_divider|Add0~21\ : std_logic;
SIGNAL \clk_divider|Add0~22_combout\ : std_logic;
SIGNAL \clk_divider|Add0~23\ : std_logic;
SIGNAL \clk_divider|Add0~24_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~10_combout\ : std_logic;
SIGNAL \clk_divider|Add0~25\ : std_logic;
SIGNAL \clk_divider|Add0~26_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~9_combout\ : std_logic;
SIGNAL \clk_divider|Add0~27\ : std_logic;
SIGNAL \clk_divider|Add0~28_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~8_combout\ : std_logic;
SIGNAL \clk_divider|Add0~29\ : std_logic;
SIGNAL \clk_divider|Add0~30_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~3_combout\ : std_logic;
SIGNAL \clk_divider|Add0~31\ : std_logic;
SIGNAL \clk_divider|Add0~32_combout\ : std_logic;
SIGNAL \clk_divider|Add0~33\ : std_logic;
SIGNAL \clk_divider|Add0~34_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~2_combout\ : std_logic;
SIGNAL \clk_divider|Add0~35\ : std_logic;
SIGNAL \clk_divider|Add0~36_combout\ : std_logic;
SIGNAL \clk_divider|Add0~37\ : std_logic;
SIGNAL \clk_divider|Add0~38_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~7_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~2_combout\ : std_logic;
SIGNAL \clk_divider|Add0~39\ : std_logic;
SIGNAL \clk_divider|Add0~40_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~6_combout\ : std_logic;
SIGNAL \clk_divider|Add0~41\ : std_logic;
SIGNAL \clk_divider|Add0~42_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~5_combout\ : std_logic;
SIGNAL \clk_divider|Add0~43\ : std_logic;
SIGNAL \clk_divider|Add0~44_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~4_combout\ : std_logic;
SIGNAL \clk_divider|Add0~49\ : std_logic;
SIGNAL \clk_divider|Add0~51\ : std_logic;
SIGNAL \clk_divider|Add0~52_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~1_combout\ : std_logic;
SIGNAL \clk_divider|Add0~53\ : std_logic;
SIGNAL \clk_divider|Add0~54_combout\ : std_logic;
SIGNAL \clk_divider|Add0~55\ : std_logic;
SIGNAL \clk_divider|Add0~56_combout\ : std_logic;
SIGNAL \clk_divider|Add0~57\ : std_logic;
SIGNAL \clk_divider|Add0~58_combout\ : std_logic;
SIGNAL \clk_divider|Add0~59\ : std_logic;
SIGNAL \clk_divider|Add0~60_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~0_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~3_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~4_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~6_combout\ : std_logic;
SIGNAL \clk_divider|Add0~45\ : std_logic;
SIGNAL \clk_divider|Add0~46_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~1_combout\ : std_logic;
SIGNAL \clk_divider|Add0~47\ : std_logic;
SIGNAL \clk_divider|Add0~48_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~7_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~8_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~9_combout\ : std_logic;
SIGNAL \clk_divider|Add0~50_combout\ : std_logic;
SIGNAL \clk_divider|s_divCounter~0_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~0_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~1_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~2_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~3_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~feeder_combout\ : std_logic;
SIGNAL \clk_divider|clkOut~q\ : std_logic;
SIGNAL \clk_divider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \shift_divider|s_dataOut[0]~feeder_combout\ : std_logic;
SIGNAL \shift_divider|s_dataOut[1]~feeder_combout\ : std_logic;
SIGNAL \shift_divider|s_dataOut[2]~feeder_combout\ : std_logic;
SIGNAL \shift_divider|s_dataOut[3]~feeder_combout\ : std_logic;
SIGNAL \shift_divider|s_dataOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider|s_divCounter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_divider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_divider|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift_divider|s_dataOut\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift_divider|s_dataOut\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift_divider|s_dataOut\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shift_divider|s_dataOut\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

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

-- Location: LCCOMB_X54_Y71_N2
\clk_divider|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~0_combout\ = \clk_divider|s_divCounter\(0) $ (VCC)
-- \clk_divider|Add0~1\ = CARRY(\clk_divider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(0),
	datad => VCC,
	combout => \clk_divider|Add0~0_combout\,
	cout => \clk_divider|Add0~1\);

-- Location: FF_X54_Y71_N3
\clk_divider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(0));

-- Location: LCCOMB_X54_Y71_N4
\clk_divider|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~2_combout\ = (\clk_divider|s_divCounter\(1) & (!\clk_divider|Add0~1\)) # (!\clk_divider|s_divCounter\(1) & ((\clk_divider|Add0~1\) # (GND)))
-- \clk_divider|Add0~3\ = CARRY((!\clk_divider|Add0~1\) # (!\clk_divider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(1),
	datad => VCC,
	cin => \clk_divider|Add0~1\,
	combout => \clk_divider|Add0~2_combout\,
	cout => \clk_divider|Add0~3\);

-- Location: FF_X54_Y71_N5
\clk_divider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(1));

-- Location: LCCOMB_X54_Y71_N6
\clk_divider|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~4_combout\ = (\clk_divider|s_divCounter\(2) & (\clk_divider|Add0~3\ $ (GND))) # (!\clk_divider|s_divCounter\(2) & (!\clk_divider|Add0~3\ & VCC))
-- \clk_divider|Add0~5\ = CARRY((\clk_divider|s_divCounter\(2) & !\clk_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(2),
	datad => VCC,
	cin => \clk_divider|Add0~3\,
	combout => \clk_divider|Add0~4_combout\,
	cout => \clk_divider|Add0~5\);

-- Location: FF_X54_Y71_N7
\clk_divider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(2));

-- Location: LCCOMB_X54_Y71_N8
\clk_divider|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~6_combout\ = (\clk_divider|s_divCounter\(3) & (!\clk_divider|Add0~5\)) # (!\clk_divider|s_divCounter\(3) & ((\clk_divider|Add0~5\) # (GND)))
-- \clk_divider|Add0~7\ = CARRY((!\clk_divider|Add0~5\) # (!\clk_divider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(3),
	datad => VCC,
	cin => \clk_divider|Add0~5\,
	combout => \clk_divider|Add0~6_combout\,
	cout => \clk_divider|Add0~7\);

-- Location: FF_X54_Y71_N9
\clk_divider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(3));

-- Location: LCCOMB_X54_Y71_N10
\clk_divider|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~8_combout\ = (\clk_divider|s_divCounter\(4) & (\clk_divider|Add0~7\ $ (GND))) # (!\clk_divider|s_divCounter\(4) & (!\clk_divider|Add0~7\ & VCC))
-- \clk_divider|Add0~9\ = CARRY((\clk_divider|s_divCounter\(4) & !\clk_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(4),
	datad => VCC,
	cin => \clk_divider|Add0~7\,
	combout => \clk_divider|Add0~8_combout\,
	cout => \clk_divider|Add0~9\);

-- Location: FF_X54_Y71_N11
\clk_divider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(4));

-- Location: LCCOMB_X54_Y71_N12
\clk_divider|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~10_combout\ = (\clk_divider|s_divCounter\(5) & (!\clk_divider|Add0~9\)) # (!\clk_divider|s_divCounter\(5) & ((\clk_divider|Add0~9\) # (GND)))
-- \clk_divider|Add0~11\ = CARRY((!\clk_divider|Add0~9\) # (!\clk_divider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(5),
	datad => VCC,
	cin => \clk_divider|Add0~9\,
	combout => \clk_divider|Add0~10_combout\,
	cout => \clk_divider|Add0~11\);

-- Location: FF_X54_Y71_N13
\clk_divider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(5));

-- Location: LCCOMB_X54_Y71_N0
\clk_divider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~5_combout\ = (\clk_divider|s_divCounter\(4) & (\clk_divider|s_divCounter\(3) & (\clk_divider|s_divCounter\(2) & \clk_divider|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(4),
	datab => \clk_divider|s_divCounter\(3),
	datac => \clk_divider|s_divCounter\(2),
	datad => \clk_divider|s_divCounter\(5),
	combout => \clk_divider|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y71_N14
\clk_divider|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~12_combout\ = (\clk_divider|s_divCounter\(6) & (\clk_divider|Add0~11\ $ (GND))) # (!\clk_divider|s_divCounter\(6) & (!\clk_divider|Add0~11\ & VCC))
-- \clk_divider|Add0~13\ = CARRY((\clk_divider|s_divCounter\(6) & !\clk_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(6),
	datad => VCC,
	cin => \clk_divider|Add0~11\,
	combout => \clk_divider|Add0~12_combout\,
	cout => \clk_divider|Add0~13\);

-- Location: FF_X54_Y71_N15
\clk_divider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(6));

-- Location: LCCOMB_X54_Y71_N16
\clk_divider|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~14_combout\ = (\clk_divider|s_divCounter\(7) & (!\clk_divider|Add0~13\)) # (!\clk_divider|s_divCounter\(7) & ((\clk_divider|Add0~13\) # (GND)))
-- \clk_divider|Add0~15\ = CARRY((!\clk_divider|Add0~13\) # (!\clk_divider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(7),
	datad => VCC,
	cin => \clk_divider|Add0~13\,
	combout => \clk_divider|Add0~14_combout\,
	cout => \clk_divider|Add0~15\);

-- Location: LCCOMB_X53_Y70_N0
\clk_divider|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~11_combout\ = (\clk_divider|Add0~14_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~14_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~11_combout\);

-- Location: FF_X53_Y70_N1
\clk_divider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(7));

-- Location: LCCOMB_X54_Y71_N18
\clk_divider|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~16_combout\ = (\clk_divider|s_divCounter\(8) & (\clk_divider|Add0~15\ $ (GND))) # (!\clk_divider|s_divCounter\(8) & (!\clk_divider|Add0~15\ & VCC))
-- \clk_divider|Add0~17\ = CARRY((\clk_divider|s_divCounter\(8) & !\clk_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(8),
	datad => VCC,
	cin => \clk_divider|Add0~15\,
	combout => \clk_divider|Add0~16_combout\,
	cout => \clk_divider|Add0~17\);

-- Location: FF_X54_Y71_N19
\clk_divider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(8));

-- Location: LCCOMB_X54_Y71_N20
\clk_divider|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~18_combout\ = (\clk_divider|s_divCounter\(9) & (!\clk_divider|Add0~17\)) # (!\clk_divider|s_divCounter\(9) & ((\clk_divider|Add0~17\) # (GND)))
-- \clk_divider|Add0~19\ = CARRY((!\clk_divider|Add0~17\) # (!\clk_divider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(9),
	datad => VCC,
	cin => \clk_divider|Add0~17\,
	combout => \clk_divider|Add0~18_combout\,
	cout => \clk_divider|Add0~19\);

-- Location: FF_X54_Y71_N21
\clk_divider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(9));

-- Location: LCCOMB_X54_Y71_N22
\clk_divider|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~20_combout\ = (\clk_divider|s_divCounter\(10) & (\clk_divider|Add0~19\ $ (GND))) # (!\clk_divider|s_divCounter\(10) & (!\clk_divider|Add0~19\ & VCC))
-- \clk_divider|Add0~21\ = CARRY((\clk_divider|s_divCounter\(10) & !\clk_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(10),
	datad => VCC,
	cin => \clk_divider|Add0~19\,
	combout => \clk_divider|Add0~20_combout\,
	cout => \clk_divider|Add0~21\);

-- Location: FF_X54_Y71_N23
\clk_divider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(10));

-- Location: LCCOMB_X54_Y71_N24
\clk_divider|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~22_combout\ = (\clk_divider|s_divCounter\(11) & (!\clk_divider|Add0~21\)) # (!\clk_divider|s_divCounter\(11) & ((\clk_divider|Add0~21\) # (GND)))
-- \clk_divider|Add0~23\ = CARRY((!\clk_divider|Add0~21\) # (!\clk_divider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(11),
	datad => VCC,
	cin => \clk_divider|Add0~21\,
	combout => \clk_divider|Add0~22_combout\,
	cout => \clk_divider|Add0~23\);

-- Location: FF_X54_Y71_N25
\clk_divider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(11));

-- Location: LCCOMB_X54_Y71_N26
\clk_divider|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~24_combout\ = (\clk_divider|s_divCounter\(12) & (\clk_divider|Add0~23\ $ (GND))) # (!\clk_divider|s_divCounter\(12) & (!\clk_divider|Add0~23\ & VCC))
-- \clk_divider|Add0~25\ = CARRY((\clk_divider|s_divCounter\(12) & !\clk_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(12),
	datad => VCC,
	cin => \clk_divider|Add0~23\,
	combout => \clk_divider|Add0~24_combout\,
	cout => \clk_divider|Add0~25\);

-- Location: LCCOMB_X53_Y70_N12
\clk_divider|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~10_combout\ = (\clk_divider|Add0~24_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datab => \clk_divider|Equal0~9_combout\,
	datad => \clk_divider|Add0~24_combout\,
	combout => \clk_divider|s_divCounter~10_combout\);

-- Location: FF_X53_Y70_N13
\clk_divider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(12));

-- Location: LCCOMB_X54_Y71_N28
\clk_divider|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~26_combout\ = (\clk_divider|s_divCounter\(13) & (!\clk_divider|Add0~25\)) # (!\clk_divider|s_divCounter\(13) & ((\clk_divider|Add0~25\) # (GND)))
-- \clk_divider|Add0~27\ = CARRY((!\clk_divider|Add0~25\) # (!\clk_divider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(13),
	datad => VCC,
	cin => \clk_divider|Add0~25\,
	combout => \clk_divider|Add0~26_combout\,
	cout => \clk_divider|Add0~27\);

-- Location: LCCOMB_X53_Y70_N2
\clk_divider|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~9_combout\ = (\clk_divider|Add0~26_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datab => \clk_divider|Equal0~9_combout\,
	datad => \clk_divider|Add0~26_combout\,
	combout => \clk_divider|s_divCounter~9_combout\);

-- Location: FF_X53_Y70_N3
\clk_divider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(13));

-- Location: LCCOMB_X54_Y71_N30
\clk_divider|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~28_combout\ = (\clk_divider|s_divCounter\(14) & (\clk_divider|Add0~27\ $ (GND))) # (!\clk_divider|s_divCounter\(14) & (!\clk_divider|Add0~27\ & VCC))
-- \clk_divider|Add0~29\ = CARRY((\clk_divider|s_divCounter\(14) & !\clk_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(14),
	datad => VCC,
	cin => \clk_divider|Add0~27\,
	combout => \clk_divider|Add0~28_combout\,
	cout => \clk_divider|Add0~29\);

-- Location: LCCOMB_X53_Y70_N20
\clk_divider|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~8_combout\ = (\clk_divider|Add0~28_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~28_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~8_combout\);

-- Location: FF_X53_Y70_N21
\clk_divider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(14));

-- Location: LCCOMB_X54_Y70_N0
\clk_divider|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~30_combout\ = (\clk_divider|s_divCounter\(15) & (!\clk_divider|Add0~29\)) # (!\clk_divider|s_divCounter\(15) & ((\clk_divider|Add0~29\) # (GND)))
-- \clk_divider|Add0~31\ = CARRY((!\clk_divider|Add0~29\) # (!\clk_divider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(15),
	datad => VCC,
	cin => \clk_divider|Add0~29\,
	combout => \clk_divider|Add0~30_combout\,
	cout => \clk_divider|Add0~31\);

-- Location: LCCOMB_X55_Y70_N4
\clk_divider|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~3_combout\ = (\clk_divider|Add0~30_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~30_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~3_combout\);

-- Location: FF_X55_Y70_N5
\clk_divider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(15));

-- Location: LCCOMB_X54_Y70_N2
\clk_divider|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~32_combout\ = (\clk_divider|s_divCounter\(16) & (\clk_divider|Add0~31\ $ (GND))) # (!\clk_divider|s_divCounter\(16) & (!\clk_divider|Add0~31\ & VCC))
-- \clk_divider|Add0~33\ = CARRY((\clk_divider|s_divCounter\(16) & !\clk_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(16),
	datad => VCC,
	cin => \clk_divider|Add0~31\,
	combout => \clk_divider|Add0~32_combout\,
	cout => \clk_divider|Add0~33\);

-- Location: FF_X54_Y70_N3
\clk_divider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(16));

-- Location: LCCOMB_X54_Y70_N4
\clk_divider|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~34_combout\ = (\clk_divider|s_divCounter\(17) & (!\clk_divider|Add0~33\)) # (!\clk_divider|s_divCounter\(17) & ((\clk_divider|Add0~33\) # (GND)))
-- \clk_divider|Add0~35\ = CARRY((!\clk_divider|Add0~33\) # (!\clk_divider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(17),
	datad => VCC,
	cin => \clk_divider|Add0~33\,
	combout => \clk_divider|Add0~34_combout\,
	cout => \clk_divider|Add0~35\);

-- Location: LCCOMB_X55_Y70_N8
\clk_divider|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~2_combout\ = (\clk_divider|Add0~34_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~34_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~2_combout\);

-- Location: FF_X55_Y70_N9
\clk_divider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(17));

-- Location: LCCOMB_X54_Y70_N6
\clk_divider|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~36_combout\ = (\clk_divider|s_divCounter\(18) & (\clk_divider|Add0~35\ $ (GND))) # (!\clk_divider|s_divCounter\(18) & (!\clk_divider|Add0~35\ & VCC))
-- \clk_divider|Add0~37\ = CARRY((\clk_divider|s_divCounter\(18) & !\clk_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(18),
	datad => VCC,
	cin => \clk_divider|Add0~35\,
	combout => \clk_divider|Add0~36_combout\,
	cout => \clk_divider|Add0~37\);

-- Location: FF_X54_Y70_N7
\clk_divider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(18));

-- Location: LCCOMB_X54_Y70_N8
\clk_divider|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~38_combout\ = (\clk_divider|s_divCounter\(19) & (!\clk_divider|Add0~37\)) # (!\clk_divider|s_divCounter\(19) & ((\clk_divider|Add0~37\) # (GND)))
-- \clk_divider|Add0~39\ = CARRY((!\clk_divider|Add0~37\) # (!\clk_divider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(19),
	datad => VCC,
	cin => \clk_divider|Add0~37\,
	combout => \clk_divider|Add0~38_combout\,
	cout => \clk_divider|Add0~39\);

-- Location: LCCOMB_X53_Y70_N26
\clk_divider|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~7_combout\ = (\clk_divider|Add0~38_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~38_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~7_combout\);

-- Location: FF_X53_Y70_N27
\clk_divider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(19));

-- Location: LCCOMB_X53_Y70_N22
\clk_divider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~2_combout\ = (\clk_divider|s_divCounter\(12) & (\clk_divider|s_divCounter\(14) & (\clk_divider|s_divCounter\(19) & \clk_divider|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(12),
	datab => \clk_divider|s_divCounter\(14),
	datac => \clk_divider|s_divCounter\(19),
	datad => \clk_divider|s_divCounter\(13),
	combout => \clk_divider|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y70_N10
\clk_divider|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~40_combout\ = (\clk_divider|s_divCounter\(20) & (\clk_divider|Add0~39\ $ (GND))) # (!\clk_divider|s_divCounter\(20) & (!\clk_divider|Add0~39\ & VCC))
-- \clk_divider|Add0~41\ = CARRY((\clk_divider|s_divCounter\(20) & !\clk_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(20),
	datad => VCC,
	cin => \clk_divider|Add0~39\,
	combout => \clk_divider|Add0~40_combout\,
	cout => \clk_divider|Add0~41\);

-- Location: LCCOMB_X53_Y70_N14
\clk_divider|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~6_combout\ = (\clk_divider|Add0~40_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~40_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~6_combout\);

-- Location: FF_X53_Y70_N15
\clk_divider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(20));

-- Location: LCCOMB_X54_Y70_N12
\clk_divider|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~42_combout\ = (\clk_divider|s_divCounter\(21) & (!\clk_divider|Add0~41\)) # (!\clk_divider|s_divCounter\(21) & ((\clk_divider|Add0~41\) # (GND)))
-- \clk_divider|Add0~43\ = CARRY((!\clk_divider|Add0~41\) # (!\clk_divider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(21),
	datad => VCC,
	cin => \clk_divider|Add0~41\,
	combout => \clk_divider|Add0~42_combout\,
	cout => \clk_divider|Add0~43\);

-- Location: LCCOMB_X53_Y70_N16
\clk_divider|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~5_combout\ = (\clk_divider|Add0~42_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~42_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~5_combout\);

-- Location: FF_X53_Y70_N17
\clk_divider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(21));

-- Location: LCCOMB_X54_Y70_N14
\clk_divider|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~44_combout\ = (\clk_divider|s_divCounter\(22) & (\clk_divider|Add0~43\ $ (GND))) # (!\clk_divider|s_divCounter\(22) & (!\clk_divider|Add0~43\ & VCC))
-- \clk_divider|Add0~45\ = CARRY((\clk_divider|s_divCounter\(22) & !\clk_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(22),
	datad => VCC,
	cin => \clk_divider|Add0~43\,
	combout => \clk_divider|Add0~44_combout\,
	cout => \clk_divider|Add0~45\);

-- Location: LCCOMB_X53_Y70_N6
\clk_divider|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~4_combout\ = (\clk_divider|Add0~44_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~44_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~4_combout\);

-- Location: FF_X53_Y70_N7
\clk_divider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(22));

-- Location: LCCOMB_X54_Y70_N18
\clk_divider|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~48_combout\ = (\clk_divider|s_divCounter\(24) & (\clk_divider|Add0~47\ $ (GND))) # (!\clk_divider|s_divCounter\(24) & (!\clk_divider|Add0~47\ & VCC))
-- \clk_divider|Add0~49\ = CARRY((\clk_divider|s_divCounter\(24) & !\clk_divider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(24),
	datad => VCC,
	cin => \clk_divider|Add0~47\,
	combout => \clk_divider|Add0~48_combout\,
	cout => \clk_divider|Add0~49\);

-- Location: LCCOMB_X54_Y70_N20
\clk_divider|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~50_combout\ = (\clk_divider|s_divCounter\(25) & (!\clk_divider|Add0~49\)) # (!\clk_divider|s_divCounter\(25) & ((\clk_divider|Add0~49\) # (GND)))
-- \clk_divider|Add0~51\ = CARRY((!\clk_divider|Add0~49\) # (!\clk_divider|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(25),
	datad => VCC,
	cin => \clk_divider|Add0~49\,
	combout => \clk_divider|Add0~50_combout\,
	cout => \clk_divider|Add0~51\);

-- Location: LCCOMB_X54_Y70_N22
\clk_divider|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~52_combout\ = (\clk_divider|s_divCounter\(26) & (\clk_divider|Add0~51\ $ (GND))) # (!\clk_divider|s_divCounter\(26) & (!\clk_divider|Add0~51\ & VCC))
-- \clk_divider|Add0~53\ = CARRY((\clk_divider|s_divCounter\(26) & !\clk_divider|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(26),
	datad => VCC,
	cin => \clk_divider|Add0~51\,
	combout => \clk_divider|Add0~52_combout\,
	cout => \clk_divider|Add0~53\);

-- Location: FF_X54_Y70_N23
\clk_divider|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(26));

-- Location: LCCOMB_X53_Y70_N4
\clk_divider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~1_combout\ = (\clk_divider|s_divCounter\(22) & (\clk_divider|s_divCounter\(21) & (\clk_divider|s_divCounter\(20) & !\clk_divider|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(22),
	datab => \clk_divider|s_divCounter\(21),
	datac => \clk_divider|s_divCounter\(20),
	datad => \clk_divider|s_divCounter\(26),
	combout => \clk_divider|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y70_N24
\clk_divider|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~54_combout\ = (\clk_divider|s_divCounter\(27) & (!\clk_divider|Add0~53\)) # (!\clk_divider|s_divCounter\(27) & ((\clk_divider|Add0~53\) # (GND)))
-- \clk_divider|Add0~55\ = CARRY((!\clk_divider|Add0~53\) # (!\clk_divider|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(27),
	datad => VCC,
	cin => \clk_divider|Add0~53\,
	combout => \clk_divider|Add0~54_combout\,
	cout => \clk_divider|Add0~55\);

-- Location: FF_X54_Y70_N25
\clk_divider|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(27));

-- Location: LCCOMB_X54_Y70_N26
\clk_divider|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~56_combout\ = (\clk_divider|s_divCounter\(28) & (\clk_divider|Add0~55\ $ (GND))) # (!\clk_divider|s_divCounter\(28) & (!\clk_divider|Add0~55\ & VCC))
-- \clk_divider|Add0~57\ = CARRY((\clk_divider|s_divCounter\(28) & !\clk_divider|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(28),
	datad => VCC,
	cin => \clk_divider|Add0~55\,
	combout => \clk_divider|Add0~56_combout\,
	cout => \clk_divider|Add0~57\);

-- Location: FF_X54_Y70_N27
\clk_divider|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(28));

-- Location: LCCOMB_X54_Y70_N28
\clk_divider|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~58_combout\ = (\clk_divider|s_divCounter\(29) & (!\clk_divider|Add0~57\)) # (!\clk_divider|s_divCounter\(29) & ((\clk_divider|Add0~57\) # (GND)))
-- \clk_divider|Add0~59\ = CARRY((!\clk_divider|Add0~57\) # (!\clk_divider|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|s_divCounter\(29),
	datad => VCC,
	cin => \clk_divider|Add0~57\,
	combout => \clk_divider|Add0~58_combout\,
	cout => \clk_divider|Add0~59\);

-- Location: FF_X54_Y70_N29
\clk_divider|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(29));

-- Location: LCCOMB_X54_Y70_N30
\clk_divider|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~60_combout\ = \clk_divider|s_divCounter\(30) $ (!\clk_divider|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(30),
	cin => \clk_divider|Add0~59\,
	combout => \clk_divider|Add0~60_combout\);

-- Location: FF_X54_Y70_N31
\clk_divider|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(30));

-- Location: LCCOMB_X53_Y70_N8
\clk_divider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~0_combout\ = (!\clk_divider|s_divCounter\(30) & (!\clk_divider|s_divCounter\(29) & (!\clk_divider|s_divCounter\(27) & !\clk_divider|s_divCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(30),
	datab => \clk_divider|s_divCounter\(29),
	datac => \clk_divider|s_divCounter\(27),
	datad => \clk_divider|s_divCounter\(28),
	combout => \clk_divider|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y70_N10
\clk_divider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~3_combout\ = (!\clk_divider|s_divCounter\(7) & (!\clk_divider|s_divCounter\(8) & (!\clk_divider|s_divCounter\(9) & !\clk_divider|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(7),
	datab => \clk_divider|s_divCounter\(8),
	datac => \clk_divider|s_divCounter\(9),
	datad => \clk_divider|s_divCounter\(10),
	combout => \clk_divider|Equal0~3_combout\);

-- Location: LCCOMB_X53_Y70_N24
\clk_divider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~4_combout\ = (\clk_divider|Equal0~2_combout\ & (\clk_divider|Equal0~1_combout\ & (\clk_divider|Equal0~0_combout\ & \clk_divider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~2_combout\,
	datab => \clk_divider|Equal0~1_combout\,
	datac => \clk_divider|Equal0~0_combout\,
	datad => \clk_divider|Equal0~3_combout\,
	combout => \clk_divider|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y70_N30
\clk_divider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~6_combout\ = (\clk_divider|s_divCounter\(1) & (\clk_divider|s_divCounter\(0) & (\clk_divider|Equal0~5_combout\ & \clk_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(1),
	datab => \clk_divider|s_divCounter\(0),
	datac => \clk_divider|Equal0~5_combout\,
	datad => \clk_divider|Equal0~4_combout\,
	combout => \clk_divider|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y70_N16
\clk_divider|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~46_combout\ = (\clk_divider|s_divCounter\(23) & (!\clk_divider|Add0~45\)) # (!\clk_divider|s_divCounter\(23) & ((\clk_divider|Add0~45\) # (GND)))
-- \clk_divider|Add0~47\ = CARRY((!\clk_divider|Add0~45\) # (!\clk_divider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(23),
	datad => VCC,
	cin => \clk_divider|Add0~45\,
	combout => \clk_divider|Add0~46_combout\,
	cout => \clk_divider|Add0~47\);

-- Location: LCCOMB_X55_Y70_N2
\clk_divider|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~1_combout\ = (\clk_divider|Add0~46_combout\ & ((!\clk_divider|Equal0~9_combout\) # (!\clk_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datac => \clk_divider|Add0~46_combout\,
	datad => \clk_divider|Equal0~9_combout\,
	combout => \clk_divider|s_divCounter~1_combout\);

-- Location: FF_X55_Y70_N3
\clk_divider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(23));

-- Location: FF_X54_Y70_N19
\clk_divider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(24));

-- Location: LCCOMB_X55_Y70_N10
\clk_divider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~7_combout\ = (\clk_divider|s_divCounter\(25) & (!\clk_divider|s_divCounter\(24) & (!\clk_divider|s_divCounter\(18) & \clk_divider|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(25),
	datab => \clk_divider|s_divCounter\(24),
	datac => \clk_divider|s_divCounter\(18),
	datad => \clk_divider|s_divCounter\(23),
	combout => \clk_divider|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y70_N16
\clk_divider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~8_combout\ = (!\clk_divider|s_divCounter\(16) & (\clk_divider|s_divCounter\(17) & (\clk_divider|s_divCounter\(15) & !\clk_divider|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(16),
	datab => \clk_divider|s_divCounter\(17),
	datac => \clk_divider|s_divCounter\(15),
	datad => \clk_divider|s_divCounter\(11),
	combout => \clk_divider|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y70_N24
\clk_divider|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~9_combout\ = (\clk_divider|Equal0~7_combout\ & (\clk_divider|s_divCounter\(6) & \clk_divider|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~7_combout\,
	datac => \clk_divider|s_divCounter\(6),
	datad => \clk_divider|Equal0~8_combout\,
	combout => \clk_divider|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y70_N26
\clk_divider|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|s_divCounter~0_combout\ = (\clk_divider|Add0~50_combout\ & ((!\clk_divider|Equal0~6_combout\) # (!\clk_divider|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|Equal0~9_combout\,
	datac => \clk_divider|Equal0~6_combout\,
	datad => \clk_divider|Add0~50_combout\,
	combout => \clk_divider|s_divCounter~0_combout\);

-- Location: FF_X55_Y70_N27
\clk_divider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|s_divCounter\(25));

-- Location: LCCOMB_X55_Y70_N18
\clk_divider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~0_combout\ = (!\clk_divider|s_divCounter\(25) & (\clk_divider|s_divCounter\(24) & (\clk_divider|s_divCounter\(18) & !\clk_divider|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(25),
	datab => \clk_divider|s_divCounter\(24),
	datac => \clk_divider|s_divCounter\(18),
	datad => \clk_divider|s_divCounter\(23),
	combout => \clk_divider|clkOut~0_combout\);

-- Location: LCCOMB_X55_Y70_N0
\clk_divider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~1_combout\ = (\clk_divider|s_divCounter\(16) & (!\clk_divider|s_divCounter\(15) & (!\clk_divider|s_divCounter\(17) & \clk_divider|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|s_divCounter\(16),
	datab => \clk_divider|s_divCounter\(15),
	datac => \clk_divider|s_divCounter\(17),
	datad => \clk_divider|s_divCounter\(11),
	combout => \clk_divider|clkOut~1_combout\);

-- Location: LCCOMB_X55_Y70_N22
\clk_divider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~2_combout\ = (\clk_divider|clkOut~0_combout\ & (!\clk_divider|s_divCounter\(6) & \clk_divider|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clkOut~0_combout\,
	datac => \clk_divider|s_divCounter\(6),
	datad => \clk_divider|clkOut~1_combout\,
	combout => \clk_divider|clkOut~2_combout\);

-- Location: LCCOMB_X55_Y70_N12
\clk_divider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~3_combout\ = (\clk_divider|Equal0~6_combout\ & (!\clk_divider|Equal0~9_combout\ & ((\clk_divider|clkOut~2_combout\) # (\clk_divider|clkOut~q\)))) # (!\clk_divider|Equal0~6_combout\ & (((\clk_divider|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clkOut~2_combout\,
	datab => \clk_divider|Equal0~9_combout\,
	datac => \clk_divider|Equal0~6_combout\,
	datad => \clk_divider|clkOut~q\,
	combout => \clk_divider|clkOut~3_combout\);

-- Location: LCCOMB_X55_Y70_N20
\clk_divider|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider|clkOut~feeder_combout\ = \clk_divider|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|clkOut~3_combout\,
	combout => \clk_divider|clkOut~feeder_combout\);

-- Location: FF_X55_Y70_N21
\clk_divider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clkOut~q\);

-- Location: CLKCTRL_G14
\clk_divider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X96_Y72_N0
\shift_divider|s_dataOut[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_divider|s_dataOut[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \shift_divider|s_dataOut[0]~feeder_combout\);

-- Location: FF_X96_Y72_N1
\shift_divider|s_dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \shift_divider|s_dataOut[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_divider|s_dataOut\(0));

-- Location: LCCOMB_X96_Y72_N2
\shift_divider|s_dataOut[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_divider|s_dataOut[1]~feeder_combout\ = \shift_divider|s_dataOut\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift_divider|s_dataOut\(0),
	combout => \shift_divider|s_dataOut[1]~feeder_combout\);

-- Location: FF_X96_Y72_N3
\shift_divider|s_dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \shift_divider|s_dataOut[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_divider|s_dataOut\(1));

-- Location: LCCOMB_X96_Y72_N28
\shift_divider|s_dataOut[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_divider|s_dataOut[2]~feeder_combout\ = \shift_divider|s_dataOut\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift_divider|s_dataOut\(1),
	combout => \shift_divider|s_dataOut[2]~feeder_combout\);

-- Location: FF_X96_Y72_N29
\shift_divider|s_dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \shift_divider|s_dataOut[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_divider|s_dataOut\(2));

-- Location: LCCOMB_X96_Y72_N6
\shift_divider|s_dataOut[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_divider|s_dataOut[3]~feeder_combout\ = \shift_divider|s_dataOut\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shift_divider|s_dataOut\(2),
	combout => \shift_divider|s_dataOut[3]~feeder_combout\);

-- Location: FF_X96_Y72_N7
\shift_divider|s_dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|clkOut~clkctrl_outclk\,
	d => \shift_divider|s_dataOut[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift_divider|s_dataOut\(3));

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;
END structure;


