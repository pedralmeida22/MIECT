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

-- DATE "04/03/2018 21:55:39"

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

ENTITY 	SeqShiftUnit_Demo IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(13 DOWNTO 0)
	);
END SeqShiftUnit_Demo;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(13 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~11_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~10_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~9_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~8_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~3_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~2_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~7_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~6_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~5_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~4_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~1_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~51\ : std_logic;
SIGNAL \inst2|Add0~52_combout\ : std_logic;
SIGNAL \inst2|Add0~53\ : std_logic;
SIGNAL \inst2|Add0~54_combout\ : std_logic;
SIGNAL \inst2|Add0~55\ : std_logic;
SIGNAL \inst2|Add0~56_combout\ : std_logic;
SIGNAL \inst2|Add0~57\ : std_logic;
SIGNAL \inst2|Add0~58_combout\ : std_logic;
SIGNAL \inst2|Add0~59\ : std_logic;
SIGNAL \inst2|Add0~60_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~11_combout\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|s_divCounter~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~9_combout\ : std_logic;
SIGNAL \inst2|clkOut~1_combout\ : std_logic;
SIGNAL \inst2|clkOut~0_combout\ : std_logic;
SIGNAL \inst2|clkOut~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|clkOut~3_combout\ : std_logic;
SIGNAL \inst2|clkOut~q\ : std_logic;
SIGNAL \inst2|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[6]~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[3]~11_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[5]~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[4]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[3]~4_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[2]~5_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[1]~6_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~14_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~12_combout\ : std_logic;
SIGNAL \inst|s_shiftReg~13_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[0]~7_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~10_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~8_combout\ : std_logic;
SIGNAL \inst|s_shiftReg~9_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst2|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst2|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|clkOut~q\);
\inst2|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \inst2|clkOut~clkctrl_outclk\;
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
	i => \inst2|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(0),
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

-- Location: LCCOMB_X60_Y72_N2
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|s_divCounter\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: FF_X60_Y72_N3
\inst2|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(0));

-- Location: LCCOMB_X60_Y72_N4
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|s_divCounter\(1) & (!\inst2|Add0~1\)) # (!\inst2|s_divCounter\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X60_Y72_N5
\inst2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(1));

-- Location: LCCOMB_X59_Y71_N8
\inst2|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~10_combout\ = (\inst2|s_divCounter\(0) & \inst2|s_divCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_divCounter\(0),
	datad => \inst2|s_divCounter\(1),
	combout => \inst2|Equal0~10_combout\);

-- Location: LCCOMB_X60_Y72_N6
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|s_divCounter\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|s_divCounter\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|s_divCounter\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X60_Y72_N7
\inst2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(2));

-- Location: LCCOMB_X60_Y72_N8
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|s_divCounter\(3) & (!\inst2|Add0~5\)) # (!\inst2|s_divCounter\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X60_Y72_N9
\inst2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(3));

-- Location: LCCOMB_X60_Y72_N10
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|s_divCounter\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|s_divCounter\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|s_divCounter\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: FF_X60_Y72_N11
\inst2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(4));

-- Location: LCCOMB_X60_Y72_N12
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|s_divCounter\(5) & (!\inst2|Add0~9\)) # (!\inst2|s_divCounter\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X60_Y72_N13
\inst2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(5));

-- Location: LCCOMB_X59_Y72_N0
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|s_divCounter\(2) & (\inst2|s_divCounter\(4) & (\inst2|s_divCounter\(5) & \inst2|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(2),
	datab => \inst2|s_divCounter\(4),
	datac => \inst2|s_divCounter\(5),
	datad => \inst2|s_divCounter\(3),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X60_Y72_N14
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|s_divCounter\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|s_divCounter\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|s_divCounter\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X60_Y72_N15
\inst2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(6));

-- Location: LCCOMB_X60_Y72_N16
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|s_divCounter\(7) & (!\inst2|Add0~13\)) # (!\inst2|s_divCounter\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X59_Y72_N12
\inst2|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~11_combout\ = (\inst2|Add0~14_combout\ & !\inst2|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~14_combout\,
	datad => \inst2|Equal0~11_combout\,
	combout => \inst2|s_divCounter~11_combout\);

-- Location: FF_X59_Y72_N13
\inst2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(7));

-- Location: LCCOMB_X60_Y72_N18
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|s_divCounter\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|s_divCounter\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|s_divCounter\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: FF_X60_Y72_N19
\inst2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(8));

-- Location: LCCOMB_X60_Y72_N20
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|s_divCounter\(9) & (!\inst2|Add0~17\)) # (!\inst2|s_divCounter\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: FF_X60_Y72_N21
\inst2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(9));

-- Location: LCCOMB_X60_Y72_N22
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|s_divCounter\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|s_divCounter\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|s_divCounter\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: FF_X60_Y72_N23
\inst2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(10));

-- Location: LCCOMB_X59_Y72_N30
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|s_divCounter\(7) & (!\inst2|s_divCounter\(8) & (!\inst2|s_divCounter\(9) & !\inst2|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(7),
	datab => \inst2|s_divCounter\(8),
	datac => \inst2|s_divCounter\(9),
	datad => \inst2|s_divCounter\(10),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X60_Y72_N24
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|s_divCounter\(11) & (!\inst2|Add0~21\)) # (!\inst2|s_divCounter\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: FF_X60_Y72_N25
\inst2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(11));

-- Location: LCCOMB_X60_Y72_N26
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|s_divCounter\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|s_divCounter\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|s_divCounter\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X59_Y72_N6
\inst2|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~10_combout\ = (\inst2|Add0~24_combout\ & !\inst2|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~24_combout\,
	datad => \inst2|Equal0~11_combout\,
	combout => \inst2|s_divCounter~10_combout\);

-- Location: FF_X59_Y72_N7
\inst2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(12));

-- Location: LCCOMB_X60_Y72_N28
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|s_divCounter\(13) & (!\inst2|Add0~25\)) # (!\inst2|s_divCounter\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X59_Y72_N16
\inst2|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~9_combout\ = (\inst2|Add0~26_combout\ & !\inst2|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~26_combout\,
	datad => \inst2|Equal0~11_combout\,
	combout => \inst2|s_divCounter~9_combout\);

-- Location: FF_X59_Y72_N17
\inst2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(13));

-- Location: LCCOMB_X60_Y72_N30
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|s_divCounter\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|s_divCounter\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|s_divCounter\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X60_Y72_N0
\inst2|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~8_combout\ = (\inst2|Add0~28_combout\ & !\inst2|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|Equal0~11_combout\,
	combout => \inst2|s_divCounter~8_combout\);

-- Location: FF_X60_Y72_N1
\inst2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(14));

-- Location: LCCOMB_X60_Y71_N0
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|s_divCounter\(15) & (!\inst2|Add0~29\)) # (!\inst2|s_divCounter\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X59_Y71_N22
\inst2|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~3_combout\ = (!\inst2|Equal0~11_combout\ & \inst2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~11_combout\,
	datac => \inst2|Add0~30_combout\,
	combout => \inst2|s_divCounter~3_combout\);

-- Location: FF_X59_Y71_N23
\inst2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(15));

-- Location: LCCOMB_X60_Y71_N2
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|s_divCounter\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|s_divCounter\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|s_divCounter\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: FF_X60_Y71_N3
\inst2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(16));

-- Location: LCCOMB_X60_Y71_N4
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|s_divCounter\(17) & (!\inst2|Add0~33\)) # (!\inst2|s_divCounter\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X59_Y71_N14
\inst2|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~2_combout\ = (!\inst2|Equal0~11_combout\ & \inst2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~11_combout\,
	datad => \inst2|Add0~34_combout\,
	combout => \inst2|s_divCounter~2_combout\);

-- Location: FF_X59_Y71_N15
\inst2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(17));

-- Location: LCCOMB_X60_Y71_N6
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|s_divCounter\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|s_divCounter\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|s_divCounter\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: FF_X60_Y71_N7
\inst2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(18));

-- Location: LCCOMB_X60_Y71_N8
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|s_divCounter\(19) & (!\inst2|Add0~37\)) # (!\inst2|s_divCounter\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X61_Y71_N6
\inst2|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~7_combout\ = (!\inst2|Equal0~11_combout\ & \inst2|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~11_combout\,
	datad => \inst2|Add0~38_combout\,
	combout => \inst2|s_divCounter~7_combout\);

-- Location: FF_X61_Y71_N7
\inst2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(19));

-- Location: LCCOMB_X60_Y71_N10
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|s_divCounter\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|s_divCounter\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|s_divCounter\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X61_Y71_N26
\inst2|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~6_combout\ = (!\inst2|Equal0~11_combout\ & \inst2|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~11_combout\,
	datad => \inst2|Add0~40_combout\,
	combout => \inst2|s_divCounter~6_combout\);

-- Location: FF_X61_Y71_N27
\inst2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(20));

-- Location: LCCOMB_X60_Y71_N12
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|s_divCounter\(21) & (!\inst2|Add0~41\)) # (!\inst2|s_divCounter\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X61_Y71_N4
\inst2|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~5_combout\ = (!\inst2|Equal0~11_combout\ & \inst2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~11_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|s_divCounter~5_combout\);

-- Location: FF_X61_Y71_N5
\inst2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(21));

-- Location: LCCOMB_X60_Y71_N14
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|s_divCounter\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|s_divCounter\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|s_divCounter\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: LCCOMB_X61_Y71_N22
\inst2|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~4_combout\ = (!\inst2|Equal0~11_combout\ & \inst2|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~11_combout\,
	datad => \inst2|Add0~44_combout\,
	combout => \inst2|s_divCounter~4_combout\);

-- Location: FF_X61_Y71_N23
\inst2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(22));

-- Location: LCCOMB_X60_Y71_N16
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|s_divCounter\(23) & (!\inst2|Add0~45\)) # (!\inst2|s_divCounter\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: LCCOMB_X61_Y71_N12
\inst2|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~1_combout\ = (!\inst2|Equal0~11_combout\ & \inst2|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~11_combout\,
	datac => \inst2|Add0~46_combout\,
	combout => \inst2|s_divCounter~1_combout\);

-- Location: FF_X61_Y71_N13
\inst2|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(23));

-- Location: LCCOMB_X60_Y71_N18
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|s_divCounter\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|s_divCounter\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|s_divCounter\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: FF_X60_Y71_N19
\inst2|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(24));

-- Location: LCCOMB_X60_Y71_N20
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = (\inst2|s_divCounter\(25) & (!\inst2|Add0~49\)) # (!\inst2|s_divCounter\(25) & ((\inst2|Add0~49\) # (GND)))
-- \inst2|Add0~51\ = CARRY((!\inst2|Add0~49\) # (!\inst2|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(25),
	datad => VCC,
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\,
	cout => \inst2|Add0~51\);

-- Location: LCCOMB_X60_Y71_N22
\inst2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~52_combout\ = (\inst2|s_divCounter\(26) & (\inst2|Add0~51\ $ (GND))) # (!\inst2|s_divCounter\(26) & (!\inst2|Add0~51\ & VCC))
-- \inst2|Add0~53\ = CARRY((\inst2|s_divCounter\(26) & !\inst2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(26),
	datad => VCC,
	cin => \inst2|Add0~51\,
	combout => \inst2|Add0~52_combout\,
	cout => \inst2|Add0~53\);

-- Location: FF_X60_Y71_N23
\inst2|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(26));

-- Location: LCCOMB_X60_Y71_N24
\inst2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~54_combout\ = (\inst2|s_divCounter\(27) & (!\inst2|Add0~53\)) # (!\inst2|s_divCounter\(27) & ((\inst2|Add0~53\) # (GND)))
-- \inst2|Add0~55\ = CARRY((!\inst2|Add0~53\) # (!\inst2|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(27),
	datad => VCC,
	cin => \inst2|Add0~53\,
	combout => \inst2|Add0~54_combout\,
	cout => \inst2|Add0~55\);

-- Location: FF_X60_Y71_N25
\inst2|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(27));

-- Location: LCCOMB_X60_Y71_N26
\inst2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~56_combout\ = (\inst2|s_divCounter\(28) & (\inst2|Add0~55\ $ (GND))) # (!\inst2|s_divCounter\(28) & (!\inst2|Add0~55\ & VCC))
-- \inst2|Add0~57\ = CARRY((\inst2|s_divCounter\(28) & !\inst2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(28),
	datad => VCC,
	cin => \inst2|Add0~55\,
	combout => \inst2|Add0~56_combout\,
	cout => \inst2|Add0~57\);

-- Location: FF_X60_Y71_N27
\inst2|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(28));

-- Location: LCCOMB_X60_Y71_N28
\inst2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~58_combout\ = (\inst2|s_divCounter\(29) & (!\inst2|Add0~57\)) # (!\inst2|s_divCounter\(29) & ((\inst2|Add0~57\) # (GND)))
-- \inst2|Add0~59\ = CARRY((!\inst2|Add0~57\) # (!\inst2|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_divCounter\(29),
	datad => VCC,
	cin => \inst2|Add0~57\,
	combout => \inst2|Add0~58_combout\,
	cout => \inst2|Add0~59\);

-- Location: FF_X60_Y71_N29
\inst2|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(29));

-- Location: LCCOMB_X60_Y71_N30
\inst2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~60_combout\ = \inst2|s_divCounter\(30) $ (!\inst2|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(30),
	cin => \inst2|Add0~59\,
	combout => \inst2|Add0~60_combout\);

-- Location: FF_X60_Y71_N31
\inst2|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(30));

-- Location: LCCOMB_X59_Y71_N16
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|s_divCounter\(30) & (!\inst2|s_divCounter\(29) & (!\inst2|s_divCounter\(28) & !\inst2|s_divCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(30),
	datab => \inst2|s_divCounter\(29),
	datac => \inst2|s_divCounter\(28),
	datad => \inst2|s_divCounter\(27),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y71_N16
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|s_divCounter\(22) & (\inst2|s_divCounter\(21) & (\inst2|s_divCounter\(20) & !\inst2|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(22),
	datab => \inst2|s_divCounter\(21),
	datac => \inst2|s_divCounter\(20),
	datad => \inst2|s_divCounter\(26),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y71_N20
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|s_divCounter\(12) & (\inst2|s_divCounter\(19) & (\inst2|s_divCounter\(13) & \inst2|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(12),
	datab => \inst2|s_divCounter\(19),
	datac => \inst2|s_divCounter\(13),
	datad => \inst2|s_divCounter\(14),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X59_Y71_N2
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~3_combout\ & (\inst2|Equal0~0_combout\ & (\inst2|Equal0~1_combout\ & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X59_Y71_N4
\inst2|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~11_combout\ = (\inst2|Equal0~9_combout\ & (\inst2|Equal0~10_combout\ & (\inst2|Equal0~5_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~9_combout\,
	datab => \inst2|Equal0~10_combout\,
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~11_combout\);

-- Location: LCCOMB_X59_Y71_N6
\inst2|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_divCounter~0_combout\ = (!\inst2|Equal0~11_combout\ & \inst2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~11_combout\,
	datac => \inst2|Add0~50_combout\,
	combout => \inst2|s_divCounter~0_combout\);

-- Location: FF_X59_Y71_N7
\inst2|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_divCounter\(25));

-- Location: LCCOMB_X59_Y71_N30
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (\inst2|s_divCounter\(25) & (!\inst2|s_divCounter\(24) & (\inst2|s_divCounter\(23) & !\inst2|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(25),
	datab => \inst2|s_divCounter\(24),
	datac => \inst2|s_divCounter\(23),
	datad => \inst2|s_divCounter\(18),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X59_Y71_N12
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (!\inst2|s_divCounter\(16) & (\inst2|s_divCounter\(17) & (\inst2|s_divCounter\(15) & !\inst2|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(16),
	datab => \inst2|s_divCounter\(17),
	datac => \inst2|s_divCounter\(15),
	datad => \inst2|s_divCounter\(11),
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X59_Y71_N26
\inst2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~9_combout\ = (\inst2|Equal0~7_combout\ & (\inst2|s_divCounter\(6) & \inst2|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~7_combout\,
	datab => \inst2|s_divCounter\(6),
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|Equal0~9_combout\);

-- Location: LCCOMB_X59_Y71_N10
\inst2|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~1_combout\ = (\inst2|s_divCounter\(16) & (!\inst2|s_divCounter\(17) & (!\inst2|s_divCounter\(15) & \inst2|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(16),
	datab => \inst2|s_divCounter\(17),
	datac => \inst2|s_divCounter\(15),
	datad => \inst2|s_divCounter\(11),
	combout => \inst2|clkOut~1_combout\);

-- Location: LCCOMB_X59_Y71_N28
\inst2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~0_combout\ = (!\inst2|s_divCounter\(25) & (\inst2|s_divCounter\(24) & (!\inst2|s_divCounter\(23) & \inst2|s_divCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(25),
	datab => \inst2|s_divCounter\(24),
	datac => \inst2|s_divCounter\(23),
	datad => \inst2|s_divCounter\(18),
	combout => \inst2|clkOut~0_combout\);

-- Location: LCCOMB_X59_Y71_N24
\inst2|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~2_combout\ = (\inst2|clkOut~1_combout\ & (!\inst2|s_divCounter\(6) & \inst2|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkOut~1_combout\,
	datab => \inst2|s_divCounter\(6),
	datad => \inst2|clkOut~0_combout\,
	combout => \inst2|clkOut~2_combout\);

-- Location: LCCOMB_X59_Y71_N18
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (\inst2|s_divCounter\(0) & (\inst2|s_divCounter\(1) & (\inst2|Equal0~5_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_divCounter\(0),
	datab => \inst2|s_divCounter\(1),
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X59_Y71_N0
\inst2|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkOut~3_combout\ = (\inst2|Equal0~6_combout\ & (!\inst2|Equal0~9_combout\ & ((\inst2|clkOut~2_combout\) # (\inst2|clkOut~q\)))) # (!\inst2|Equal0~6_combout\ & (((\inst2|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~9_combout\,
	datab => \inst2|clkOut~2_combout\,
	datac => \inst2|clkOut~q\,
	datad => \inst2|Equal0~6_combout\,
	combout => \inst2|clkOut~3_combout\);

-- Location: FF_X59_Y71_N25
\inst2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|clkOut~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkOut~q\);

-- Location: CLKCTRL_G14
\inst2|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X114_Y15_N2
\inst|s_shiftReg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[6]~1_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(5)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(7),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(5),
	combout => \inst|s_shiftReg[6]~1_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y15_N22
\inst|s_shiftReg[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[3]~11_combout\ = (\SW[13]~input_o\) # ((\SW[10]~input_o\) # (\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[10]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_shiftReg[3]~11_combout\);

-- Location: FF_X114_Y15_N3
\inst|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[6]~1_combout\,
	asdata => \SW[6]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(6));

-- Location: LCCOMB_X114_Y15_N16
\inst|s_shiftReg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[5]~2_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(4))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(4),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(6),
	combout => \inst|s_shiftReg[5]~2_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X114_Y15_N17
\inst|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[5]~2_combout\,
	asdata => \SW[5]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(5));

-- Location: LCCOMB_X114_Y15_N10
\inst|s_shiftReg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[4]~3_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(3)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(5),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(3),
	combout => \inst|s_shiftReg[4]~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X114_Y15_N11
\inst|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[4]~3_combout\,
	asdata => \SW[4]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(4));

-- Location: LCCOMB_X114_Y15_N20
\inst|s_shiftReg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[3]~4_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(2))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(2),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(4),
	combout => \inst|s_shiftReg[3]~4_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X114_Y15_N21
\inst|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[3]~4_combout\,
	asdata => \SW[3]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(3));

-- Location: LCCOMB_X114_Y15_N26
\inst|s_shiftReg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[2]~5_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(1))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(1),
	datab => \inst|s_shiftReg\(3),
	datad => \SW[12]~input_o\,
	combout => \inst|s_shiftReg[2]~5_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X114_Y15_N27
\inst|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[2]~5_combout\,
	asdata => \SW[2]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(2));

-- Location: LCCOMB_X114_Y15_N12
\inst|s_shiftReg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[1]~6_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(0))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(0),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(2),
	combout => \inst|s_shiftReg[1]~6_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X114_Y15_N13
\inst|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[1]~6_combout\,
	asdata => \SW[1]~input_o\,
	sload => \SW[10]~input_o\,
	ena => \inst|s_shiftReg[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(1));

-- Location: LCCOMB_X114_Y15_N4
\inst|s_shiftReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~14_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(7)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(1),
	datab => \SW[12]~input_o\,
	datac => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg~14_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X114_Y15_N24
\inst|s_shiftReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~12_combout\ = (\SW[13]~input_o\ & (!\SW[12]~input_o\)) # (!\SW[13]~input_o\ & (\SW[12]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_shiftReg~12_combout\);

-- Location: LCCOMB_X114_Y15_N18
\inst|s_shiftReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~13_combout\ = (\inst|s_shiftReg~12_combout\ & ((\inst|s_shiftReg\(1)) # ((\SW[12]~input_o\)))) # (!\inst|s_shiftReg~12_combout\ & (((\inst|s_shiftReg\(0) & !\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(1),
	datab => \inst|s_shiftReg~12_combout\,
	datac => \inst|s_shiftReg\(0),
	datad => \SW[12]~input_o\,
	combout => \inst|s_shiftReg~13_combout\);

-- Location: LCCOMB_X114_Y15_N30
\inst|s_shiftReg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[0]~7_combout\ = (\SW[11]~input_o\ & (\inst|s_shiftReg~14_combout\)) # (!\SW[11]~input_o\ & ((\inst|s_shiftReg~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \inst|s_shiftReg~14_combout\,
	datad => \inst|s_shiftReg~13_combout\,
	combout => \inst|s_shiftReg[0]~7_combout\);

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

-- Location: FF_X114_Y15_N31
\inst|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[0]~7_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(0));

-- Location: LCCOMB_X114_Y15_N28
\inst|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~10_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(6)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \inst|s_shiftReg\(0),
	datad => \inst|s_shiftReg\(6),
	combout => \inst|s_shiftReg~10_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y15_N0
\inst|s_shiftReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~8_combout\ = (\SW[13]~input_o\ & (\SW[12]~input_o\ & ((\inst|s_shiftReg\(6))))) # (!\SW[13]~input_o\ & (!\SW[12]~input_o\ & (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \inst|s_shiftReg\(6),
	combout => \inst|s_shiftReg~8_combout\);

-- Location: LCCOMB_X114_Y15_N6
\inst|s_shiftReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~9_combout\ = (\inst|s_shiftReg~8_combout\) # ((\inst|s_shiftReg\(7) & (\SW[13]~input_o\ $ (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \inst|s_shiftReg\(7),
	datad => \inst|s_shiftReg~8_combout\,
	combout => \inst|s_shiftReg~9_combout\);

-- Location: LCCOMB_X114_Y15_N8
\inst|s_shiftReg[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~0_combout\ = (\SW[11]~input_o\ & (\inst|s_shiftReg~10_combout\)) # (!\SW[11]~input_o\ & ((\inst|s_shiftReg~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \inst|s_shiftReg~10_combout\,
	datad => \inst|s_shiftReg~9_combout\,
	combout => \inst|s_shiftReg[7]~0_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X114_Y15_N9
\inst|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[7]~0_combout\,
	asdata => \SW[7]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(7));

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


