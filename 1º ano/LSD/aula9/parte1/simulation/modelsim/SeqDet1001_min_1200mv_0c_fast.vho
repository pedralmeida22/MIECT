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

-- DATE "05/08/2018 13:35:35"

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

ENTITY 	SeqDet1001 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END SeqDet1001;

-- Design Ports Information
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDet1001 IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqDiv|Add2~0_combout\ : std_logic;
SIGNAL \freqDiv|Add2~1\ : std_logic;
SIGNAL \freqDiv|Add2~2_combout\ : std_logic;
SIGNAL \freqDiv|Add2~3\ : std_logic;
SIGNAL \freqDiv|Add2~4_combout\ : std_logic;
SIGNAL \freqDiv|Add2~5\ : std_logic;
SIGNAL \freqDiv|Add2~6_combout\ : std_logic;
SIGNAL \freqDiv|Add2~7\ : std_logic;
SIGNAL \freqDiv|Add2~8_combout\ : std_logic;
SIGNAL \freqDiv|Add2~9\ : std_logic;
SIGNAL \freqDiv|Add2~10_combout\ : std_logic;
SIGNAL \freqDiv|Add2~11\ : std_logic;
SIGNAL \freqDiv|Add2~12_combout\ : std_logic;
SIGNAL \freqDiv|Add2~13\ : std_logic;
SIGNAL \freqDiv|Add2~14_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~11_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~5_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~6_combout\ : std_logic;
SIGNAL \freqDiv|Add2~15\ : std_logic;
SIGNAL \freqDiv|Add2~16_combout\ : std_logic;
SIGNAL \freqDiv|Add2~17\ : std_logic;
SIGNAL \freqDiv|Add2~18_combout\ : std_logic;
SIGNAL \freqDiv|Add2~19\ : std_logic;
SIGNAL \freqDiv|Add2~20_combout\ : std_logic;
SIGNAL \freqDiv|Add2~21\ : std_logic;
SIGNAL \freqDiv|Add2~22_combout\ : std_logic;
SIGNAL \freqDiv|Add2~23\ : std_logic;
SIGNAL \freqDiv|Add2~24_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~10_combout\ : std_logic;
SIGNAL \freqDiv|Add2~25\ : std_logic;
SIGNAL \freqDiv|Add2~26_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~9_combout\ : std_logic;
SIGNAL \freqDiv|Add2~27\ : std_logic;
SIGNAL \freqDiv|Add2~28_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~8_combout\ : std_logic;
SIGNAL \freqDiv|Add2~29\ : std_logic;
SIGNAL \freqDiv|Add2~30_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~3_combout\ : std_logic;
SIGNAL \freqDiv|Add2~31\ : std_logic;
SIGNAL \freqDiv|Add2~32_combout\ : std_logic;
SIGNAL \freqDiv|Add2~33\ : std_logic;
SIGNAL \freqDiv|Add2~34_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~2_combout\ : std_logic;
SIGNAL \freqDiv|Add2~35\ : std_logic;
SIGNAL \freqDiv|Add2~36_combout\ : std_logic;
SIGNAL \freqDiv|Add2~37\ : std_logic;
SIGNAL \freqDiv|Add2~38_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~7_combout\ : std_logic;
SIGNAL \freqDiv|Add2~39\ : std_logic;
SIGNAL \freqDiv|Add2~40_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~6_combout\ : std_logic;
SIGNAL \freqDiv|Add2~41\ : std_logic;
SIGNAL \freqDiv|Add2~42_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~5_combout\ : std_logic;
SIGNAL \freqDiv|Add2~43\ : std_logic;
SIGNAL \freqDiv|Add2~44_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~4_combout\ : std_logic;
SIGNAL \freqDiv|Add2~45\ : std_logic;
SIGNAL \freqDiv|Add2~47\ : std_logic;
SIGNAL \freqDiv|Add2~48_combout\ : std_logic;
SIGNAL \freqDiv|Add2~49\ : std_logic;
SIGNAL \freqDiv|Add2~50_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~0_combout\ : std_logic;
SIGNAL \freqDiv|Add2~51\ : std_logic;
SIGNAL \freqDiv|Add2~52_combout\ : std_logic;
SIGNAL \freqDiv|Add2~53\ : std_logic;
SIGNAL \freqDiv|Add2~54_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv|Add2~55\ : std_logic;
SIGNAL \freqDiv|Add2~56_combout\ : std_logic;
SIGNAL \freqDiv|Add2~57\ : std_logic;
SIGNAL \freqDiv|Add2~58_combout\ : std_logic;
SIGNAL \freqDiv|Add2~59\ : std_logic;
SIGNAL \freqDiv|Add2~60_combout\ : std_logic;
SIGNAL \freqDiv|Add2~61\ : std_logic;
SIGNAL \freqDiv|Add2~62_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~3_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~11_combout\ : std_logic;
SIGNAL \freqDiv|Add2~46_combout\ : std_logic;
SIGNAL \freqDiv|s_counter~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~9_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~10_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~1_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~2_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~3_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SeqDet|s_presentState~8_combout\ : std_logic;
SIGNAL \SeqDet|s_presentState.ST_1~q\ : std_logic;
SIGNAL \SeqDet|s_presentState~7_combout\ : std_logic;
SIGNAL \SeqDet|s_presentState.ST_10~q\ : std_logic;
SIGNAL \SeqDet|s_presentState~6_combout\ : std_logic;
SIGNAL \SeqDet|s_presentState.ST_100~q\ : std_logic;
SIGNAL \SeqDet|yOut~1_combout\ : std_logic;
SIGNAL \freqDiv|s_counter\ : std_logic_vector(31 DOWNTO 0);

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

\freqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freqDiv|clkOut~q\,
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
	i => \SeqDet|yOut~1_combout\,
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

-- Location: LCCOMB_X53_Y71_N0
\freqDiv|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~0_combout\ = \freqDiv|s_counter\(0) $ (VCC)
-- \freqDiv|Add2~1\ = CARRY(\freqDiv|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(0),
	datad => VCC,
	combout => \freqDiv|Add2~0_combout\,
	cout => \freqDiv|Add2~1\);

-- Location: FF_X53_Y71_N1
\freqDiv|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(0));

-- Location: LCCOMB_X53_Y71_N2
\freqDiv|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~2_combout\ = (\freqDiv|s_counter\(1) & (!\freqDiv|Add2~1\)) # (!\freqDiv|s_counter\(1) & ((\freqDiv|Add2~1\) # (GND)))
-- \freqDiv|Add2~3\ = CARRY((!\freqDiv|Add2~1\) # (!\freqDiv|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(1),
	datad => VCC,
	cin => \freqDiv|Add2~1\,
	combout => \freqDiv|Add2~2_combout\,
	cout => \freqDiv|Add2~3\);

-- Location: FF_X53_Y71_N3
\freqDiv|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(1));

-- Location: LCCOMB_X53_Y71_N4
\freqDiv|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~4_combout\ = (\freqDiv|s_counter\(2) & (\freqDiv|Add2~3\ $ (GND))) # (!\freqDiv|s_counter\(2) & (!\freqDiv|Add2~3\ & VCC))
-- \freqDiv|Add2~5\ = CARRY((\freqDiv|s_counter\(2) & !\freqDiv|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(2),
	datad => VCC,
	cin => \freqDiv|Add2~3\,
	combout => \freqDiv|Add2~4_combout\,
	cout => \freqDiv|Add2~5\);

-- Location: FF_X53_Y71_N5
\freqDiv|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(2));

-- Location: LCCOMB_X53_Y71_N6
\freqDiv|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~6_combout\ = (\freqDiv|s_counter\(3) & (!\freqDiv|Add2~5\)) # (!\freqDiv|s_counter\(3) & ((\freqDiv|Add2~5\) # (GND)))
-- \freqDiv|Add2~7\ = CARRY((!\freqDiv|Add2~5\) # (!\freqDiv|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(3),
	datad => VCC,
	cin => \freqDiv|Add2~5\,
	combout => \freqDiv|Add2~6_combout\,
	cout => \freqDiv|Add2~7\);

-- Location: FF_X53_Y71_N7
\freqDiv|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(3));

-- Location: LCCOMB_X53_Y71_N8
\freqDiv|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~8_combout\ = (\freqDiv|s_counter\(4) & (\freqDiv|Add2~7\ $ (GND))) # (!\freqDiv|s_counter\(4) & (!\freqDiv|Add2~7\ & VCC))
-- \freqDiv|Add2~9\ = CARRY((\freqDiv|s_counter\(4) & !\freqDiv|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(4),
	datad => VCC,
	cin => \freqDiv|Add2~7\,
	combout => \freqDiv|Add2~8_combout\,
	cout => \freqDiv|Add2~9\);

-- Location: FF_X53_Y71_N9
\freqDiv|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(4));

-- Location: LCCOMB_X53_Y71_N10
\freqDiv|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~10_combout\ = (\freqDiv|s_counter\(5) & (!\freqDiv|Add2~9\)) # (!\freqDiv|s_counter\(5) & ((\freqDiv|Add2~9\) # (GND)))
-- \freqDiv|Add2~11\ = CARRY((!\freqDiv|Add2~9\) # (!\freqDiv|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(5),
	datad => VCC,
	cin => \freqDiv|Add2~9\,
	combout => \freqDiv|Add2~10_combout\,
	cout => \freqDiv|Add2~11\);

-- Location: FF_X53_Y71_N11
\freqDiv|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(5));

-- Location: LCCOMB_X53_Y71_N12
\freqDiv|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~12_combout\ = (\freqDiv|s_counter\(6) & (\freqDiv|Add2~11\ $ (GND))) # (!\freqDiv|s_counter\(6) & (!\freqDiv|Add2~11\ & VCC))
-- \freqDiv|Add2~13\ = CARRY((\freqDiv|s_counter\(6) & !\freqDiv|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(6),
	datad => VCC,
	cin => \freqDiv|Add2~11\,
	combout => \freqDiv|Add2~12_combout\,
	cout => \freqDiv|Add2~13\);

-- Location: FF_X53_Y71_N13
\freqDiv|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(6));

-- Location: LCCOMB_X53_Y71_N14
\freqDiv|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~14_combout\ = (\freqDiv|s_counter\(7) & (!\freqDiv|Add2~13\)) # (!\freqDiv|s_counter\(7) & ((\freqDiv|Add2~13\) # (GND)))
-- \freqDiv|Add2~15\ = CARRY((!\freqDiv|Add2~13\) # (!\freqDiv|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(7),
	datad => VCC,
	cin => \freqDiv|Add2~13\,
	combout => \freqDiv|Add2~14_combout\,
	cout => \freqDiv|Add2~15\);

-- Location: LCCOMB_X54_Y71_N4
\freqDiv|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~11_combout\ = (\freqDiv|Add2~14_combout\ & !\freqDiv|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Add2~14_combout\,
	datad => \freqDiv|Equal0~11_combout\,
	combout => \freqDiv|s_counter~11_combout\);

-- Location: FF_X54_Y71_N5
\freqDiv|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(7));

-- Location: LCCOMB_X54_Y71_N30
\freqDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~5_combout\ = (\freqDiv|s_counter\(5) & (!\freqDiv|s_counter\(7) & (\freqDiv|s_counter\(3) & \freqDiv|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(5),
	datab => \freqDiv|s_counter\(7),
	datac => \freqDiv|s_counter\(3),
	datad => \freqDiv|s_counter\(4),
	combout => \freqDiv|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y71_N8
\freqDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~6_combout\ = (\freqDiv|s_counter\(0) & (\freqDiv|s_counter\(2) & \freqDiv|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(0),
	datac => \freqDiv|s_counter\(2),
	datad => \freqDiv|s_counter\(1),
	combout => \freqDiv|Equal0~6_combout\);

-- Location: LCCOMB_X53_Y71_N16
\freqDiv|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~16_combout\ = (\freqDiv|s_counter\(8) & (\freqDiv|Add2~15\ $ (GND))) # (!\freqDiv|s_counter\(8) & (!\freqDiv|Add2~15\ & VCC))
-- \freqDiv|Add2~17\ = CARRY((\freqDiv|s_counter\(8) & !\freqDiv|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(8),
	datad => VCC,
	cin => \freqDiv|Add2~15\,
	combout => \freqDiv|Add2~16_combout\,
	cout => \freqDiv|Add2~17\);

-- Location: FF_X53_Y71_N17
\freqDiv|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(8));

-- Location: LCCOMB_X53_Y71_N18
\freqDiv|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~18_combout\ = (\freqDiv|s_counter\(9) & (!\freqDiv|Add2~17\)) # (!\freqDiv|s_counter\(9) & ((\freqDiv|Add2~17\) # (GND)))
-- \freqDiv|Add2~19\ = CARRY((!\freqDiv|Add2~17\) # (!\freqDiv|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(9),
	datad => VCC,
	cin => \freqDiv|Add2~17\,
	combout => \freqDiv|Add2~18_combout\,
	cout => \freqDiv|Add2~19\);

-- Location: FF_X53_Y71_N19
\freqDiv|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(9));

-- Location: LCCOMB_X53_Y71_N20
\freqDiv|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~20_combout\ = (\freqDiv|s_counter\(10) & (\freqDiv|Add2~19\ $ (GND))) # (!\freqDiv|s_counter\(10) & (!\freqDiv|Add2~19\ & VCC))
-- \freqDiv|Add2~21\ = CARRY((\freqDiv|s_counter\(10) & !\freqDiv|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(10),
	datad => VCC,
	cin => \freqDiv|Add2~19\,
	combout => \freqDiv|Add2~20_combout\,
	cout => \freqDiv|Add2~21\);

-- Location: FF_X53_Y71_N21
\freqDiv|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(10));

-- Location: LCCOMB_X53_Y71_N22
\freqDiv|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~22_combout\ = (\freqDiv|s_counter\(11) & (!\freqDiv|Add2~21\)) # (!\freqDiv|s_counter\(11) & ((\freqDiv|Add2~21\) # (GND)))
-- \freqDiv|Add2~23\ = CARRY((!\freqDiv|Add2~21\) # (!\freqDiv|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(11),
	datad => VCC,
	cin => \freqDiv|Add2~21\,
	combout => \freqDiv|Add2~22_combout\,
	cout => \freqDiv|Add2~23\);

-- Location: FF_X53_Y71_N23
\freqDiv|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(11));

-- Location: LCCOMB_X53_Y71_N24
\freqDiv|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~24_combout\ = (\freqDiv|s_counter\(12) & (\freqDiv|Add2~23\ $ (GND))) # (!\freqDiv|s_counter\(12) & (!\freqDiv|Add2~23\ & VCC))
-- \freqDiv|Add2~25\ = CARRY((\freqDiv|s_counter\(12) & !\freqDiv|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(12),
	datad => VCC,
	cin => \freqDiv|Add2~23\,
	combout => \freqDiv|Add2~24_combout\,
	cout => \freqDiv|Add2~25\);

-- Location: LCCOMB_X52_Y70_N10
\freqDiv|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~10_combout\ = (!\freqDiv|Equal0~11_combout\ & \freqDiv|Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~11_combout\,
	datad => \freqDiv|Add2~24_combout\,
	combout => \freqDiv|s_counter~10_combout\);

-- Location: FF_X52_Y70_N11
\freqDiv|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(12));

-- Location: LCCOMB_X53_Y71_N26
\freqDiv|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~26_combout\ = (\freqDiv|s_counter\(13) & (!\freqDiv|Add2~25\)) # (!\freqDiv|s_counter\(13) & ((\freqDiv|Add2~25\) # (GND)))
-- \freqDiv|Add2~27\ = CARRY((!\freqDiv|Add2~25\) # (!\freqDiv|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(13),
	datad => VCC,
	cin => \freqDiv|Add2~25\,
	combout => \freqDiv|Add2~26_combout\,
	cout => \freqDiv|Add2~27\);

-- Location: LCCOMB_X52_Y70_N18
\freqDiv|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~9_combout\ = (\freqDiv|Add2~26_combout\ & !\freqDiv|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Add2~26_combout\,
	datad => \freqDiv|Equal0~11_combout\,
	combout => \freqDiv|s_counter~9_combout\);

-- Location: FF_X52_Y70_N19
\freqDiv|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(13));

-- Location: LCCOMB_X53_Y71_N28
\freqDiv|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~28_combout\ = (\freqDiv|s_counter\(14) & (\freqDiv|Add2~27\ $ (GND))) # (!\freqDiv|s_counter\(14) & (!\freqDiv|Add2~27\ & VCC))
-- \freqDiv|Add2~29\ = CARRY((\freqDiv|s_counter\(14) & !\freqDiv|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(14),
	datad => VCC,
	cin => \freqDiv|Add2~27\,
	combout => \freqDiv|Add2~28_combout\,
	cout => \freqDiv|Add2~29\);

-- Location: LCCOMB_X52_Y70_N24
\freqDiv|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~8_combout\ = (!\freqDiv|Equal0~11_combout\ & \freqDiv|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~11_combout\,
	datad => \freqDiv|Add2~28_combout\,
	combout => \freqDiv|s_counter~8_combout\);

-- Location: FF_X52_Y70_N25
\freqDiv|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(14));

-- Location: LCCOMB_X53_Y71_N30
\freqDiv|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~30_combout\ = (\freqDiv|s_counter\(15) & (!\freqDiv|Add2~29\)) # (!\freqDiv|s_counter\(15) & ((\freqDiv|Add2~29\) # (GND)))
-- \freqDiv|Add2~31\ = CARRY((!\freqDiv|Add2~29\) # (!\freqDiv|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(15),
	datad => VCC,
	cin => \freqDiv|Add2~29\,
	combout => \freqDiv|Add2~30_combout\,
	cout => \freqDiv|Add2~31\);

-- Location: LCCOMB_X54_Y70_N12
\freqDiv|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~3_combout\ = (!\freqDiv|Equal0~11_combout\ & \freqDiv|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~11_combout\,
	datad => \freqDiv|Add2~30_combout\,
	combout => \freqDiv|s_counter~3_combout\);

-- Location: FF_X54_Y70_N13
\freqDiv|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(15));

-- Location: LCCOMB_X53_Y70_N0
\freqDiv|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~32_combout\ = (\freqDiv|s_counter\(16) & (\freqDiv|Add2~31\ $ (GND))) # (!\freqDiv|s_counter\(16) & (!\freqDiv|Add2~31\ & VCC))
-- \freqDiv|Add2~33\ = CARRY((\freqDiv|s_counter\(16) & !\freqDiv|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(16),
	datad => VCC,
	cin => \freqDiv|Add2~31\,
	combout => \freqDiv|Add2~32_combout\,
	cout => \freqDiv|Add2~33\);

-- Location: FF_X53_Y70_N1
\freqDiv|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(16));

-- Location: LCCOMB_X53_Y70_N2
\freqDiv|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~34_combout\ = (\freqDiv|s_counter\(17) & (!\freqDiv|Add2~33\)) # (!\freqDiv|s_counter\(17) & ((\freqDiv|Add2~33\) # (GND)))
-- \freqDiv|Add2~35\ = CARRY((!\freqDiv|Add2~33\) # (!\freqDiv|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(17),
	datad => VCC,
	cin => \freqDiv|Add2~33\,
	combout => \freqDiv|Add2~34_combout\,
	cout => \freqDiv|Add2~35\);

-- Location: LCCOMB_X54_Y70_N30
\freqDiv|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~2_combout\ = (!\freqDiv|Equal0~11_combout\ & \freqDiv|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~11_combout\,
	datad => \freqDiv|Add2~34_combout\,
	combout => \freqDiv|s_counter~2_combout\);

-- Location: FF_X54_Y70_N31
\freqDiv|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(17));

-- Location: LCCOMB_X53_Y70_N4
\freqDiv|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~36_combout\ = (\freqDiv|s_counter\(18) & (\freqDiv|Add2~35\ $ (GND))) # (!\freqDiv|s_counter\(18) & (!\freqDiv|Add2~35\ & VCC))
-- \freqDiv|Add2~37\ = CARRY((\freqDiv|s_counter\(18) & !\freqDiv|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(18),
	datad => VCC,
	cin => \freqDiv|Add2~35\,
	combout => \freqDiv|Add2~36_combout\,
	cout => \freqDiv|Add2~37\);

-- Location: FF_X53_Y70_N5
\freqDiv|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(18));

-- Location: LCCOMB_X53_Y70_N6
\freqDiv|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~38_combout\ = (\freqDiv|s_counter\(19) & (!\freqDiv|Add2~37\)) # (!\freqDiv|s_counter\(19) & ((\freqDiv|Add2~37\) # (GND)))
-- \freqDiv|Add2~39\ = CARRY((!\freqDiv|Add2~37\) # (!\freqDiv|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(19),
	datad => VCC,
	cin => \freqDiv|Add2~37\,
	combout => \freqDiv|Add2~38_combout\,
	cout => \freqDiv|Add2~39\);

-- Location: LCCOMB_X52_Y70_N14
\freqDiv|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~7_combout\ = (!\freqDiv|Equal0~11_combout\ & \freqDiv|Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~11_combout\,
	datad => \freqDiv|Add2~38_combout\,
	combout => \freqDiv|s_counter~7_combout\);

-- Location: FF_X52_Y70_N15
\freqDiv|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(19));

-- Location: LCCOMB_X53_Y70_N8
\freqDiv|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~40_combout\ = (\freqDiv|s_counter\(20) & (\freqDiv|Add2~39\ $ (GND))) # (!\freqDiv|s_counter\(20) & (!\freqDiv|Add2~39\ & VCC))
-- \freqDiv|Add2~41\ = CARRY((\freqDiv|s_counter\(20) & !\freqDiv|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(20),
	datad => VCC,
	cin => \freqDiv|Add2~39\,
	combout => \freqDiv|Add2~40_combout\,
	cout => \freqDiv|Add2~41\);

-- Location: LCCOMB_X52_Y70_N12
\freqDiv|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~6_combout\ = (\freqDiv|Add2~40_combout\ & !\freqDiv|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Add2~40_combout\,
	datad => \freqDiv|Equal0~11_combout\,
	combout => \freqDiv|s_counter~6_combout\);

-- Location: FF_X52_Y70_N13
\freqDiv|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(20));

-- Location: LCCOMB_X53_Y70_N10
\freqDiv|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~42_combout\ = (\freqDiv|s_counter\(21) & (!\freqDiv|Add2~41\)) # (!\freqDiv|s_counter\(21) & ((\freqDiv|Add2~41\) # (GND)))
-- \freqDiv|Add2~43\ = CARRY((!\freqDiv|Add2~41\) # (!\freqDiv|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(21),
	datad => VCC,
	cin => \freqDiv|Add2~41\,
	combout => \freqDiv|Add2~42_combout\,
	cout => \freqDiv|Add2~43\);

-- Location: LCCOMB_X52_Y70_N16
\freqDiv|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~5_combout\ = (\freqDiv|Add2~42_combout\ & !\freqDiv|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add2~42_combout\,
	datad => \freqDiv|Equal0~11_combout\,
	combout => \freqDiv|s_counter~5_combout\);

-- Location: FF_X52_Y70_N17
\freqDiv|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(21));

-- Location: LCCOMB_X53_Y70_N12
\freqDiv|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~44_combout\ = (\freqDiv|s_counter\(22) & (\freqDiv|Add2~43\ $ (GND))) # (!\freqDiv|s_counter\(22) & (!\freqDiv|Add2~43\ & VCC))
-- \freqDiv|Add2~45\ = CARRY((\freqDiv|s_counter\(22) & !\freqDiv|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(22),
	datad => VCC,
	cin => \freqDiv|Add2~43\,
	combout => \freqDiv|Add2~44_combout\,
	cout => \freqDiv|Add2~45\);

-- Location: LCCOMB_X52_Y70_N30
\freqDiv|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~4_combout\ = (\freqDiv|Add2~44_combout\ & !\freqDiv|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add2~44_combout\,
	datad => \freqDiv|Equal0~11_combout\,
	combout => \freqDiv|s_counter~4_combout\);

-- Location: FF_X52_Y70_N31
\freqDiv|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(22));

-- Location: LCCOMB_X53_Y70_N14
\freqDiv|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~46_combout\ = (\freqDiv|s_counter\(23) & (!\freqDiv|Add2~45\)) # (!\freqDiv|s_counter\(23) & ((\freqDiv|Add2~45\) # (GND)))
-- \freqDiv|Add2~47\ = CARRY((!\freqDiv|Add2~45\) # (!\freqDiv|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(23),
	datad => VCC,
	cin => \freqDiv|Add2~45\,
	combout => \freqDiv|Add2~46_combout\,
	cout => \freqDiv|Add2~47\);

-- Location: LCCOMB_X53_Y70_N16
\freqDiv|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~48_combout\ = (\freqDiv|s_counter\(24) & (\freqDiv|Add2~47\ $ (GND))) # (!\freqDiv|s_counter\(24) & (!\freqDiv|Add2~47\ & VCC))
-- \freqDiv|Add2~49\ = CARRY((\freqDiv|s_counter\(24) & !\freqDiv|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(24),
	datad => VCC,
	cin => \freqDiv|Add2~47\,
	combout => \freqDiv|Add2~48_combout\,
	cout => \freqDiv|Add2~49\);

-- Location: FF_X53_Y70_N17
\freqDiv|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(24));

-- Location: LCCOMB_X53_Y70_N18
\freqDiv|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~50_combout\ = (\freqDiv|s_counter\(25) & (!\freqDiv|Add2~49\)) # (!\freqDiv|s_counter\(25) & ((\freqDiv|Add2~49\) # (GND)))
-- \freqDiv|Add2~51\ = CARRY((!\freqDiv|Add2~49\) # (!\freqDiv|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(25),
	datad => VCC,
	cin => \freqDiv|Add2~49\,
	combout => \freqDiv|Add2~50_combout\,
	cout => \freqDiv|Add2~51\);

-- Location: LCCOMB_X54_Y70_N24
\freqDiv|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~0_combout\ = (!\freqDiv|Equal0~11_combout\ & \freqDiv|Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~11_combout\,
	datad => \freqDiv|Add2~50_combout\,
	combout => \freqDiv|s_counter~0_combout\);

-- Location: FF_X54_Y70_N25
\freqDiv|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(25));

-- Location: LCCOMB_X53_Y70_N20
\freqDiv|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~52_combout\ = (\freqDiv|s_counter\(26) & (\freqDiv|Add2~51\ $ (GND))) # (!\freqDiv|s_counter\(26) & (!\freqDiv|Add2~51\ & VCC))
-- \freqDiv|Add2~53\ = CARRY((\freqDiv|s_counter\(26) & !\freqDiv|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(26),
	datad => VCC,
	cin => \freqDiv|Add2~51\,
	combout => \freqDiv|Add2~52_combout\,
	cout => \freqDiv|Add2~53\);

-- Location: FF_X53_Y70_N21
\freqDiv|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(26));

-- Location: LCCOMB_X53_Y70_N22
\freqDiv|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~54_combout\ = (\freqDiv|s_counter\(27) & (!\freqDiv|Add2~53\)) # (!\freqDiv|s_counter\(27) & ((\freqDiv|Add2~53\) # (GND)))
-- \freqDiv|Add2~55\ = CARRY((!\freqDiv|Add2~53\) # (!\freqDiv|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(27),
	datad => VCC,
	cin => \freqDiv|Add2~53\,
	combout => \freqDiv|Add2~54_combout\,
	cout => \freqDiv|Add2~55\);

-- Location: FF_X53_Y70_N23
\freqDiv|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(27));

-- Location: LCCOMB_X52_Y70_N22
\freqDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~1_combout\ = (\freqDiv|s_counter\(22) & (\freqDiv|s_counter\(21) & (!\freqDiv|s_counter\(26) & !\freqDiv|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(22),
	datab => \freqDiv|s_counter\(21),
	datac => \freqDiv|s_counter\(26),
	datad => \freqDiv|s_counter\(27),
	combout => \freqDiv|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y70_N28
\freqDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~2_combout\ = (\freqDiv|s_counter\(20) & (\freqDiv|s_counter\(14) & (\freqDiv|s_counter\(19) & \freqDiv|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(20),
	datab => \freqDiv|s_counter\(14),
	datac => \freqDiv|s_counter\(19),
	datad => \freqDiv|s_counter\(13),
	combout => \freqDiv|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y70_N24
\freqDiv|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~56_combout\ = (\freqDiv|s_counter\(28) & (\freqDiv|Add2~55\ $ (GND))) # (!\freqDiv|s_counter\(28) & (!\freqDiv|Add2~55\ & VCC))
-- \freqDiv|Add2~57\ = CARRY((\freqDiv|s_counter\(28) & !\freqDiv|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(28),
	datad => VCC,
	cin => \freqDiv|Add2~55\,
	combout => \freqDiv|Add2~56_combout\,
	cout => \freqDiv|Add2~57\);

-- Location: FF_X53_Y70_N25
\freqDiv|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(28));

-- Location: LCCOMB_X53_Y70_N26
\freqDiv|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~58_combout\ = (\freqDiv|s_counter\(29) & (!\freqDiv|Add2~57\)) # (!\freqDiv|s_counter\(29) & ((\freqDiv|Add2~57\) # (GND)))
-- \freqDiv|Add2~59\ = CARRY((!\freqDiv|Add2~57\) # (!\freqDiv|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(29),
	datad => VCC,
	cin => \freqDiv|Add2~57\,
	combout => \freqDiv|Add2~58_combout\,
	cout => \freqDiv|Add2~59\);

-- Location: FF_X53_Y70_N27
\freqDiv|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(29));

-- Location: LCCOMB_X53_Y70_N28
\freqDiv|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~60_combout\ = (\freqDiv|s_counter\(30) & (\freqDiv|Add2~59\ $ (GND))) # (!\freqDiv|s_counter\(30) & (!\freqDiv|Add2~59\ & VCC))
-- \freqDiv|Add2~61\ = CARRY((\freqDiv|s_counter\(30) & !\freqDiv|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_counter\(30),
	datad => VCC,
	cin => \freqDiv|Add2~59\,
	combout => \freqDiv|Add2~60_combout\,
	cout => \freqDiv|Add2~61\);

-- Location: FF_X53_Y70_N29
\freqDiv|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(30));

-- Location: LCCOMB_X53_Y70_N30
\freqDiv|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add2~62_combout\ = \freqDiv|s_counter\(31) $ (\freqDiv|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(31),
	cin => \freqDiv|Add2~61\,
	combout => \freqDiv|Add2~62_combout\);

-- Location: FF_X53_Y70_N31
\freqDiv|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(31));

-- Location: LCCOMB_X52_Y70_N8
\freqDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~0_combout\ = (!\freqDiv|s_counter\(31) & (!\freqDiv|s_counter\(30) & (!\freqDiv|s_counter\(29) & !\freqDiv|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(31),
	datab => \freqDiv|s_counter\(30),
	datac => \freqDiv|s_counter\(29),
	datad => \freqDiv|s_counter\(28),
	combout => \freqDiv|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y70_N20
\freqDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~3_combout\ = (\freqDiv|s_counter\(12) & (!\freqDiv|s_counter\(8) & (!\freqDiv|s_counter\(10) & !\freqDiv|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(12),
	datab => \freqDiv|s_counter\(8),
	datac => \freqDiv|s_counter\(10),
	datad => \freqDiv|s_counter\(9),
	combout => \freqDiv|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y70_N26
\freqDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~4_combout\ = (\freqDiv|Equal0~1_combout\ & (\freqDiv|Equal0~2_combout\ & (\freqDiv|Equal0~0_combout\ & \freqDiv|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~1_combout\,
	datab => \freqDiv|Equal0~2_combout\,
	datac => \freqDiv|Equal0~0_combout\,
	datad => \freqDiv|Equal0~3_combout\,
	combout => \freqDiv|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y70_N8
\freqDiv|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~11_combout\ = (\freqDiv|Equal0~5_combout\ & (\freqDiv|Equal0~6_combout\ & (\freqDiv|Equal0~4_combout\ & \freqDiv|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~5_combout\,
	datab => \freqDiv|Equal0~6_combout\,
	datac => \freqDiv|Equal0~4_combout\,
	datad => \freqDiv|Equal0~10_combout\,
	combout => \freqDiv|Equal0~11_combout\);

-- Location: LCCOMB_X54_Y70_N6
\freqDiv|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_counter~1_combout\ = (!\freqDiv|Equal0~11_combout\ & \freqDiv|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~11_combout\,
	datad => \freqDiv|Add2~46_combout\,
	combout => \freqDiv|s_counter~1_combout\);

-- Location: FF_X54_Y70_N7
\freqDiv|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_counter\(23));

-- Location: LCCOMB_X54_Y70_N10
\freqDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~8_combout\ = (\freqDiv|s_counter\(23) & (!\freqDiv|s_counter\(18) & (!\freqDiv|s_counter\(24) & \freqDiv|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(23),
	datab => \freqDiv|s_counter\(18),
	datac => \freqDiv|s_counter\(24),
	datad => \freqDiv|s_counter\(25),
	combout => \freqDiv|Equal0~8_combout\);

-- Location: LCCOMB_X54_Y70_N20
\freqDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~9_combout\ = (\freqDiv|s_counter\(17) & (!\freqDiv|s_counter\(11) & (!\freqDiv|s_counter\(16) & \freqDiv|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(17),
	datab => \freqDiv|s_counter\(11),
	datac => \freqDiv|s_counter\(16),
	datad => \freqDiv|s_counter\(15),
	combout => \freqDiv|Equal0~9_combout\);

-- Location: LCCOMB_X54_Y70_N18
\freqDiv|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~10_combout\ = (\freqDiv|Equal0~8_combout\ & (\freqDiv|s_counter\(6) & \freqDiv|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~8_combout\,
	datac => \freqDiv|s_counter\(6),
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|Equal0~10_combout\);

-- Location: LCCOMB_X54_Y70_N14
\freqDiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~1_combout\ = (!\freqDiv|s_counter\(17) & (\freqDiv|s_counter\(11) & (\freqDiv|s_counter\(16) & !\freqDiv|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(17),
	datab => \freqDiv|s_counter\(11),
	datac => \freqDiv|s_counter\(16),
	datad => \freqDiv|s_counter\(15),
	combout => \freqDiv|clkOut~1_combout\);

-- Location: LCCOMB_X54_Y70_N28
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|s_counter\(24) & (!\freqDiv|s_counter\(25) & (\freqDiv|s_counter\(18) & !\freqDiv|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(24),
	datab => \freqDiv|s_counter\(25),
	datac => \freqDiv|s_counter\(18),
	datad => \freqDiv|s_counter\(23),
	combout => \freqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X54_Y70_N16
\freqDiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~2_combout\ = (!\freqDiv|s_counter\(6) & (\freqDiv|clkOut~1_combout\ & \freqDiv|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_counter\(6),
	datac => \freqDiv|clkOut~1_combout\,
	datad => \freqDiv|clkOut~0_combout\,
	combout => \freqDiv|clkOut~2_combout\);

-- Location: LCCOMB_X55_Y70_N18
\freqDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~7_combout\ = (\freqDiv|Equal0~6_combout\ & (\freqDiv|Equal0~5_combout\ & \freqDiv|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~6_combout\,
	datac => \freqDiv|Equal0~5_combout\,
	datad => \freqDiv|Equal0~4_combout\,
	combout => \freqDiv|Equal0~7_combout\);

-- Location: LCCOMB_X55_Y70_N22
\freqDiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~3_combout\ = (\freqDiv|Equal0~7_combout\ & (!\freqDiv|Equal0~10_combout\ & ((\freqDiv|clkOut~q\) # (\freqDiv|clkOut~2_combout\)))) # (!\freqDiv|Equal0~7_combout\ & (\freqDiv|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~q\,
	datab => \freqDiv|Equal0~10_combout\,
	datac => \freqDiv|clkOut~2_combout\,
	datad => \freqDiv|Equal0~7_combout\,
	combout => \freqDiv|clkOut~3_combout\);

-- Location: LCCOMB_X55_Y70_N14
\freqDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~feeder_combout\ = \freqDiv|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|clkOut~3_combout\,
	combout => \freqDiv|clkOut~feeder_combout\);

-- Location: FF_X55_Y70_N15
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: CLKCTRL_G11
\freqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDiv|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y17_N18
\SeqDet|s_presentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|s_presentState~8_combout\ = (!\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SeqDet|s_presentState~8_combout\);

-- Location: FF_X114_Y17_N19
\SeqDet|s_presentState.ST_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \SeqDet|s_presentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDet|s_presentState.ST_1~q\);

-- Location: LCCOMB_X114_Y17_N12
\SeqDet|s_presentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|s_presentState~7_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \SeqDet|s_presentState.ST_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SeqDet|s_presentState.ST_1~q\,
	combout => \SeqDet|s_presentState~7_combout\);

-- Location: FF_X114_Y17_N13
\SeqDet|s_presentState.ST_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \SeqDet|s_presentState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDet|s_presentState.ST_10~q\);

-- Location: LCCOMB_X114_Y17_N28
\SeqDet|s_presentState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|s_presentState~6_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \SeqDet|s_presentState.ST_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SeqDet|s_presentState.ST_10~q\,
	combout => \SeqDet|s_presentState~6_combout\);

-- Location: FF_X114_Y17_N29
\SeqDet|s_presentState.ST_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \SeqDet|s_presentState~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDet|s_presentState.ST_100~q\);

-- Location: LCCOMB_X114_Y17_N6
\SeqDet|yOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDet|yOut~1_combout\ = (\SeqDet|s_presentState.ST_100~q\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SeqDet|s_presentState.ST_100~q\,
	datad => \SW[0]~input_o\,
	combout => \SeqDet|yOut~1_combout\);

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


