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

-- DATE "03/12/2018 18:56:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CounterLoadUpDown4 IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	upDown_n : IN std_logic;
	load : IN std_logic;
	dataIn : IN std_logic_vector(3 DOWNTO 0);
	cntOut : OUT std_logic_vector(3 DOWNTO 0)
	);
END CounterLoadUpDown4;

ARCHITECTURE structure OF CounterLoadUpDown4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_upDown_n : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_dataIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cntOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \cntOut[0]~output_o\ : std_logic;
SIGNAL \cntOut[1]~output_o\ : std_logic;
SIGNAL \cntOut[2]~output_o\ : std_logic;
SIGNAL \cntOut[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \s_cntValue~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_cntValue~4_combout\ : std_logic;
SIGNAL \upDown_n~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \s_cntValue[1]~6_cout\ : std_logic;
SIGNAL \s_cntValue[1]~7_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \s_cntValue~9_combout\ : std_logic;
SIGNAL \s_cntValue[1]~8\ : std_logic;
SIGNAL \s_cntValue[2]~10_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \s_cntValue[2]~11\ : std_logic;
SIGNAL \s_cntValue[3]~12_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL s_cntValue : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_upDown_n <= upDown_n;
ww_load <= load;
ww_dataIn <= dataIn;
cntOut <= ww_cntOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cntOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_cntValue(0),
	devoe => ww_devoe,
	o => \cntOut[0]~output_o\);

\cntOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_cntValue(1),
	devoe => ww_devoe,
	o => \cntOut[1]~output_o\);

\cntOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_cntValue(2),
	devoe => ww_devoe,
	o => \cntOut[2]~output_o\);

\cntOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_cntValue(3),
	devoe => ww_devoe,
	o => \cntOut[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

\s_cntValue~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue~3_combout\ = (\enable~input_o\ & ((\load~input_o\ & (\dataIn[0]~input_o\)) # (!\load~input_o\ & ((!s_cntValue(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \dataIn[0]~input_o\,
	datac => \load~input_o\,
	datad => s_cntValue(0),
	combout => \s_cntValue~3_combout\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_cntValue~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue~4_combout\ = (!\reset~input_o\ & ((\s_cntValue~3_combout\) # ((s_cntValue(0) & !\enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cntValue~3_combout\,
	datab => s_cntValue(0),
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_cntValue~4_combout\);

\s_cntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_cntValue~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cntValue(0));

\upDown_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upDown_n,
	o => \upDown_n~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (s_cntValue(0)) # (!\upDown_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cntValue(0),
	datad => \upDown_n~input_o\,
	combout => \Add0~0_combout\);

\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (s_cntValue(0) & !\upDown_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cntValue(0),
	datad => \upDown_n~input_o\,
	combout => \Add0~1_combout\);

\s_cntValue[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[1]~6_cout\ = CARRY((\Add0~1_combout\ & !\upDown_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \upDown_n~input_o\,
	datad => VCC,
	cout => \s_cntValue[1]~6_cout\);

\s_cntValue[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[1]~7_combout\ = (\Add0~0_combout\ & ((s_cntValue(1) & (\s_cntValue[1]~6_cout\ & VCC)) # (!s_cntValue(1) & (!\s_cntValue[1]~6_cout\)))) # (!\Add0~0_combout\ & ((s_cntValue(1) & (!\s_cntValue[1]~6_cout\)) # (!s_cntValue(1) & 
-- ((\s_cntValue[1]~6_cout\) # (GND)))))
-- \s_cntValue[1]~8\ = CARRY((\Add0~0_combout\ & (!s_cntValue(1) & !\s_cntValue[1]~6_cout\)) # (!\Add0~0_combout\ & ((!\s_cntValue[1]~6_cout\) # (!s_cntValue(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => s_cntValue(1),
	datad => VCC,
	cin => \s_cntValue[1]~6_cout\,
	combout => \s_cntValue[1]~7_combout\,
	cout => \s_cntValue[1]~8\);

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\s_cntValue~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue~9_combout\ = (\enable~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_cntValue~9_combout\);

\s_cntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_cntValue[1]~7_combout\,
	asdata => \dataIn[1]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \s_cntValue~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cntValue(1));

\s_cntValue[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[2]~10_combout\ = ((\upDown_n~input_o\ $ (s_cntValue(2) $ (\s_cntValue[1]~8\)))) # (GND)
-- \s_cntValue[2]~11\ = CARRY((\upDown_n~input_o\ & (s_cntValue(2) & !\s_cntValue[1]~8\)) # (!\upDown_n~input_o\ & ((s_cntValue(2)) # (!\s_cntValue[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown_n~input_o\,
	datab => s_cntValue(2),
	datad => VCC,
	cin => \s_cntValue[1]~8\,
	combout => \s_cntValue[2]~10_combout\,
	cout => \s_cntValue[2]~11\);

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\s_cntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_cntValue[2]~10_combout\,
	asdata => \dataIn[2]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \s_cntValue~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cntValue(2));

\s_cntValue[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[3]~12_combout\ = \upDown_n~input_o\ $ (s_cntValue(3) $ (!\s_cntValue[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown_n~input_o\,
	datab => s_cntValue(3),
	cin => \s_cntValue[2]~11\,
	combout => \s_cntValue[3]~12_combout\);

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\s_cntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_cntValue[3]~12_combout\,
	asdata => \dataIn[3]~input_o\,
	sclr => \reset~input_o\,
	sload => \load~input_o\,
	ena => \s_cntValue~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cntValue(3));

ww_cntOut(0) <= \cntOut[0]~output_o\;

ww_cntOut(1) <= \cntOut[1]~output_o\;

ww_cntOut(2) <= \cntOut[2]~output_o\;

ww_cntOut(3) <= \cntOut[3]~output_o\;
END structure;


