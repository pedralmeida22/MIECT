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

-- DATE "03/13/2018 10:01:56"

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

ENTITY 	Counter_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 1);
	SW : IN std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0)
	);
END Counter_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|s_cntValue[0]~10_combout\ : std_logic;
SIGNAL \inst|s_cntValue[0]~11_combout\ : std_logic;
SIGNAL \inst|s_cntValue[1]~4_cout\ : std_logic;
SIGNAL \inst|s_cntValue[1]~5_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_cntValue[3]~9_combout\ : std_logic;
SIGNAL \inst|s_cntValue[1]~6\ : std_logic;
SIGNAL \inst|s_cntValue[2]~7_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|s_cntValue[2]~8\ : std_logic;
SIGNAL \inst|s_cntValue[3]~12_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst2|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst2|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst2|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst2|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst2|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst2|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst|s_cntValue\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntValue\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntValue\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntValue\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntValue\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

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

-- Location: LCCOMB_X114_Y53_N4
\inst|s_cntValue[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntValue[0]~10_combout\ = (!\SW[1]~input_o\ & ((\SW[3]~input_o\ & (\SW[4]~input_o\)) # (!\SW[3]~input_o\ & ((!\inst|s_cntValue\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \inst|s_cntValue\(0),
	datad => \SW[1]~input_o\,
	combout => \inst|s_cntValue[0]~10_combout\);

-- Location: LCCOMB_X113_Y53_N16
\inst|s_cntValue[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntValue[0]~11_combout\ = (\SW[0]~input_o\ & (((\inst|s_cntValue[0]~10_combout\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\inst|s_cntValue[0]~10_combout\))) # (!\SW[1]~input_o\ & (\inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|s_cntValue\(0),
	datad => \inst|s_cntValue[0]~10_combout\,
	combout => \inst|s_cntValue[0]~11_combout\);

-- Location: FF_X113_Y53_N17
\inst|s_cntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst|s_cntValue[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntValue\(0));

-- Location: LCCOMB_X114_Y53_N22
\inst|s_cntValue[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntValue[1]~4_cout\ = CARRY(\inst|s_cntValue\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(0),
	datad => VCC,
	cout => \inst|s_cntValue[1]~4_cout\);

-- Location: LCCOMB_X114_Y53_N24
\inst|s_cntValue[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntValue[1]~5_combout\ = (\SW[2]~input_o\ & ((\inst|s_cntValue\(1) & (!\inst|s_cntValue[1]~4_cout\)) # (!\inst|s_cntValue\(1) & ((\inst|s_cntValue[1]~4_cout\) # (GND))))) # (!\SW[2]~input_o\ & ((\inst|s_cntValue\(1) & (\inst|s_cntValue[1]~4_cout\ 
-- & VCC)) # (!\inst|s_cntValue\(1) & (!\inst|s_cntValue[1]~4_cout\))))
-- \inst|s_cntValue[1]~6\ = CARRY((\SW[2]~input_o\ & ((!\inst|s_cntValue[1]~4_cout\) # (!\inst|s_cntValue\(1)))) # (!\SW[2]~input_o\ & (!\inst|s_cntValue\(1) & !\inst|s_cntValue[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|s_cntValue\(1),
	datad => VCC,
	cin => \inst|s_cntValue[1]~4_cout\,
	combout => \inst|s_cntValue[1]~5_combout\,
	cout => \inst|s_cntValue[1]~6\);

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

-- Location: LCCOMB_X113_Y53_N6
\inst|s_cntValue[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntValue[3]~9_combout\ = (\SW[1]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst|s_cntValue[3]~9_combout\);

-- Location: FF_X114_Y53_N25
\inst|s_cntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst|s_cntValue[1]~5_combout\,
	asdata => \SW[5]~input_o\,
	sclr => \SW[1]~input_o\,
	sload => \SW[3]~input_o\,
	ena => \inst|s_cntValue[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntValue\(1));

-- Location: LCCOMB_X114_Y53_N26
\inst|s_cntValue[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntValue[2]~7_combout\ = ((\inst|s_cntValue\(2) $ (\SW[2]~input_o\ $ (\inst|s_cntValue[1]~6\)))) # (GND)
-- \inst|s_cntValue[2]~8\ = CARRY((\inst|s_cntValue\(2) & ((!\inst|s_cntValue[1]~6\) # (!\SW[2]~input_o\))) # (!\inst|s_cntValue\(2) & (!\SW[2]~input_o\ & !\inst|s_cntValue[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(2),
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|s_cntValue[1]~6\,
	combout => \inst|s_cntValue[2]~7_combout\,
	cout => \inst|s_cntValue[2]~8\);

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

-- Location: FF_X114_Y53_N27
\inst|s_cntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst|s_cntValue[2]~7_combout\,
	asdata => \SW[6]~input_o\,
	sclr => \SW[1]~input_o\,
	sload => \SW[3]~input_o\,
	ena => \inst|s_cntValue[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntValue\(2));

-- Location: LCCOMB_X114_Y53_N28
\inst|s_cntValue[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntValue[3]~12_combout\ = \inst|s_cntValue\(3) $ (\inst|s_cntValue[2]~8\ $ (!\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_cntValue\(3),
	datad => \SW[2]~input_o\,
	cin => \inst|s_cntValue[2]~8\,
	combout => \inst|s_cntValue[3]~12_combout\);

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

-- Location: FF_X114_Y53_N29
\inst|s_cntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \inst|s_cntValue[3]~12_combout\,
	asdata => \SW[7]~input_o\,
	sclr => \SW[1]~input_o\,
	sload => \SW[3]~input_o\,
	ena => \inst|s_cntValue[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntValue\(3));

-- Location: LCCOMB_X108_Y62_N0
\inst2|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~0_combout\ = (\inst|s_cntValue\(0) & (!\inst|s_cntValue\(3) & (\inst|s_cntValue\(1) $ (!\inst|s_cntValue\(2))))) # (!\inst|s_cntValue\(0) & (!\inst|s_cntValue\(1) & (\inst|s_cntValue\(3) $ (!\inst|s_cntValue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(3),
	datab => \inst|s_cntValue\(1),
	datac => \inst|s_cntValue\(0),
	datad => \inst|s_cntValue\(2),
	combout => \inst2|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X108_Y62_N26
\inst2|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[5]~1_combout\ = (\inst|s_cntValue\(1) & (!\inst|s_cntValue\(3) & ((\inst|s_cntValue\(0)) # (!\inst|s_cntValue\(2))))) # (!\inst|s_cntValue\(1) & (\inst|s_cntValue\(0) & (\inst|s_cntValue\(3) $ (!\inst|s_cntValue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(3),
	datab => \inst|s_cntValue\(1),
	datac => \inst|s_cntValue\(0),
	datad => \inst|s_cntValue\(2),
	combout => \inst2|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y53_N0
\inst2|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[4]~2_combout\ = (\inst|s_cntValue\(1) & (\inst|s_cntValue\(0) & ((!\inst|s_cntValue\(3))))) # (!\inst|s_cntValue\(1) & ((\inst|s_cntValue\(2) & ((!\inst|s_cntValue\(3)))) # (!\inst|s_cntValue\(2) & (\inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(0),
	datab => \inst|s_cntValue\(1),
	datac => \inst|s_cntValue\(2),
	datad => \inst|s_cntValue\(3),
	combout => \inst2|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y53_N14
\inst2|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~3_combout\ = (\inst|s_cntValue\(1) & ((\inst|s_cntValue\(0) & (\inst|s_cntValue\(2))) # (!\inst|s_cntValue\(0) & (!\inst|s_cntValue\(2) & \inst|s_cntValue\(3))))) # (!\inst|s_cntValue\(1) & (!\inst|s_cntValue\(3) & (\inst|s_cntValue\(0) 
-- $ (\inst|s_cntValue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(0),
	datab => \inst|s_cntValue\(1),
	datac => \inst|s_cntValue\(2),
	datad => \inst|s_cntValue\(3),
	combout => \inst2|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X108_Y62_N12
\inst2|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[2]~4_combout\ = (\inst|s_cntValue\(3) & (\inst|s_cntValue\(2) & ((\inst|s_cntValue\(1)) # (!\inst|s_cntValue\(0))))) # (!\inst|s_cntValue\(3) & (\inst|s_cntValue\(1) & (!\inst|s_cntValue\(0) & !\inst|s_cntValue\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(3),
	datab => \inst|s_cntValue\(1),
	datac => \inst|s_cntValue\(0),
	datad => \inst|s_cntValue\(2),
	combout => \inst2|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X108_Y62_N10
\inst2|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[1]~5_combout\ = (\inst|s_cntValue\(3) & ((\inst|s_cntValue\(0) & (\inst|s_cntValue\(1))) # (!\inst|s_cntValue\(0) & ((\inst|s_cntValue\(2)))))) # (!\inst|s_cntValue\(3) & (\inst|s_cntValue\(2) & (\inst|s_cntValue\(1) $ 
-- (\inst|s_cntValue\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(3),
	datab => \inst|s_cntValue\(1),
	datac => \inst|s_cntValue\(0),
	datad => \inst|s_cntValue\(2),
	combout => \inst2|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X108_Y62_N4
\inst2|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[0]~6_combout\ = (\inst|s_cntValue\(3) & (\inst|s_cntValue\(0) & (\inst|s_cntValue\(1) $ (\inst|s_cntValue\(2))))) # (!\inst|s_cntValue\(3) & (!\inst|s_cntValue\(1) & (\inst|s_cntValue\(0) $ (\inst|s_cntValue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntValue\(3),
	datab => \inst|s_cntValue\(1),
	datac => \inst|s_cntValue\(0),
	datad => \inst|s_cntValue\(2),
	combout => \inst2|decOut_n[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


