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

-- DATE "04/09/2018 14:34:52"

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

ENTITY 	TimerCounter IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	countOut : OUT std_logic_vector(15 DOWNTO 0);
	disp1 : OUT std_logic_vector(3 DOWNTO 0);
	disp2 : OUT std_logic_vector(3 DOWNTO 0);
	disp3 : OUT std_logic_vector(3 DOWNTO 0);
	disp4 : OUT std_logic_vector(3 DOWNTO 0);
	termCount : OUT std_logic
	);
END TimerCounter;

ARCHITECTURE structure OF TimerCounter IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_countOut : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_termCount : std_logic;
SIGNAL \countOut[0]~output_o\ : std_logic;
SIGNAL \countOut[1]~output_o\ : std_logic;
SIGNAL \countOut[2]~output_o\ : std_logic;
SIGNAL \countOut[3]~output_o\ : std_logic;
SIGNAL \countOut[4]~output_o\ : std_logic;
SIGNAL \countOut[5]~output_o\ : std_logic;
SIGNAL \countOut[6]~output_o\ : std_logic;
SIGNAL \countOut[7]~output_o\ : std_logic;
SIGNAL \countOut[8]~output_o\ : std_logic;
SIGNAL \countOut[9]~output_o\ : std_logic;
SIGNAL \countOut[10]~output_o\ : std_logic;
SIGNAL \countOut[11]~output_o\ : std_logic;
SIGNAL \countOut[12]~output_o\ : std_logic;
SIGNAL \countOut[13]~output_o\ : std_logic;
SIGNAL \countOut[14]~output_o\ : std_logic;
SIGNAL \countOut[15]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp3[0]~output_o\ : std_logic;
SIGNAL \disp3[1]~output_o\ : std_logic;
SIGNAL \disp3[2]~output_o\ : std_logic;
SIGNAL \disp3[3]~output_o\ : std_logic;
SIGNAL \disp4[0]~output_o\ : std_logic;
SIGNAL \disp4[1]~output_o\ : std_logic;
SIGNAL \disp4[2]~output_o\ : std_logic;
SIGNAL \disp4[3]~output_o\ : std_logic;
SIGNAL \termCount~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \s_count[0]~16_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_reset~q\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_count[0]~17\ : std_logic;
SIGNAL \s_count[1]~20\ : std_logic;
SIGNAL \s_count[2]~21_combout\ : std_logic;
SIGNAL \s_count[2]~22\ : std_logic;
SIGNAL \s_count[3]~23_combout\ : std_logic;
SIGNAL \s_count[3]~24\ : std_logic;
SIGNAL \s_count[4]~25_combout\ : std_logic;
SIGNAL \s_count[4]~26\ : std_logic;
SIGNAL \s_count[5]~28\ : std_logic;
SIGNAL \s_count[6]~29_combout\ : std_logic;
SIGNAL \s_count[6]~30\ : std_logic;
SIGNAL \s_count[7]~31_combout\ : std_logic;
SIGNAL \s_count[7]~32\ : std_logic;
SIGNAL \s_count[8]~33_combout\ : std_logic;
SIGNAL \s_count[8]~34\ : std_logic;
SIGNAL \s_count[9]~35_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \s_count[9]~36\ : std_logic;
SIGNAL \s_count[10]~37_combout\ : std_logic;
SIGNAL \s_count[10]~38\ : std_logic;
SIGNAL \s_count[11]~39_combout\ : std_logic;
SIGNAL \s_count[11]~40\ : std_logic;
SIGNAL \s_count[12]~41_combout\ : std_logic;
SIGNAL \s_count[12]~42\ : std_logic;
SIGNAL \s_count[13]~43_combout\ : std_logic;
SIGNAL \s_count[13]~44\ : std_logic;
SIGNAL \s_count[14]~45_combout\ : std_logic;
SIGNAL \s_count[14]~46\ : std_logic;
SIGNAL \s_count[15]~47_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \s_count[5]~27_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_count[1]~19_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \s_start~0_combout\ : std_logic;
SIGNAL \s_start~q\ : std_logic;
SIGNAL \s_count[0]~18_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \s_termCount~combout\ : std_logic;
SIGNAL s_count : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_s_reset~q\ : std_logic;
SIGNAL ALT_INV_s_count : std_logic_vector(14 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_start <= start;
countOut <= ww_countOut;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
disp4 <= ww_disp4;
termCount <= ww_termCount;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_s_reset~q\ <= NOT \s_reset~q\;
ALT_INV_s_count(14) <= NOT s_count(14);
ALT_INV_s_count(11) <= NOT s_count(11);
ALT_INV_s_count(8) <= NOT s_count(8);
ALT_INV_s_count(5) <= NOT s_count(5);
ALT_INV_s_count(0) <= NOT s_count(0);

\countOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(0),
	devoe => ww_devoe,
	o => \countOut[0]~output_o\);

\countOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(1),
	devoe => ww_devoe,
	o => \countOut[1]~output_o\);

\countOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(2),
	devoe => ww_devoe,
	o => \countOut[2]~output_o\);

\countOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(3),
	devoe => ww_devoe,
	o => \countOut[3]~output_o\);

\countOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(4),
	devoe => ww_devoe,
	o => \countOut[4]~output_o\);

\countOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(5),
	devoe => ww_devoe,
	o => \countOut[5]~output_o\);

\countOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(6),
	devoe => ww_devoe,
	o => \countOut[6]~output_o\);

\countOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(7),
	devoe => ww_devoe,
	o => \countOut[7]~output_o\);

\countOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(8),
	devoe => ww_devoe,
	o => \countOut[8]~output_o\);

\countOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(9),
	devoe => ww_devoe,
	o => \countOut[9]~output_o\);

\countOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(10),
	devoe => ww_devoe,
	o => \countOut[10]~output_o\);

\countOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(11),
	devoe => ww_devoe,
	o => \countOut[11]~output_o\);

\countOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(12),
	devoe => ww_devoe,
	o => \countOut[12]~output_o\);

\countOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(13),
	devoe => ww_devoe,
	o => \countOut[13]~output_o\);

\countOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(14),
	devoe => ww_devoe,
	o => \countOut[14]~output_o\);

\countOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(15),
	devoe => ww_devoe,
	o => \countOut[15]~output_o\);

\disp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(12),
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

\disp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(13),
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

\disp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(14),
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

\disp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(15),
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

\disp2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(8),
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

\disp2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(9),
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

\disp2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(10),
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

\disp2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(11),
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

\disp3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(4),
	devoe => ww_devoe,
	o => \disp3[0]~output_o\);

\disp3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(5),
	devoe => ww_devoe,
	o => \disp3[1]~output_o\);

\disp3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(6),
	devoe => ww_devoe,
	o => \disp3[2]~output_o\);

\disp3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(7),
	devoe => ww_devoe,
	o => \disp3[3]~output_o\);

\disp4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_count(0),
	devoe => ww_devoe,
	o => \disp4[0]~output_o\);

\disp4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(1),
	devoe => ww_devoe,
	o => \disp4[1]~output_o\);

\disp4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(2),
	devoe => ww_devoe,
	o => \disp4[2]~output_o\);

\disp4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_count(3),
	devoe => ww_devoe,
	o => \disp4[3]~output_o\);

\termCount~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_termCount~combout\,
	devoe => ww_devoe,
	o => \termCount~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\s_count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~16_combout\ = !s_count(0)
-- \s_count[0]~17\ = CARRY(!s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	combout => \s_count[0]~16_combout\,
	cout => \s_count[0]~17\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

s_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_reset~input_o\,
	d => VCC,
	clrn => \ALT_INV_s_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_reset~q\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\s_count[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~19_combout\ = (\Add0~2_combout\ & ((s_count(1) & (\s_count[0]~17\ & VCC)) # (!s_count(1) & (!\s_count[0]~17\)))) # (!\Add0~2_combout\ & ((s_count(1) & (!\s_count[0]~17\)) # (!s_count(1) & ((\s_count[0]~17\) # (GND)))))
-- \s_count[1]~20\ = CARRY((\Add0~2_combout\ & (!s_count(1) & !\s_count[0]~17\)) # (!\Add0~2_combout\ & ((!\s_count[0]~17\) # (!s_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => s_count(1),
	datad => VCC,
	cin => \s_count[0]~17\,
	combout => \s_count[1]~19_combout\,
	cout => \s_count[1]~20\);

\s_count[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[2]~21_combout\ = ((\Add0~2_combout\ $ (s_count(2) $ (!\s_count[1]~20\)))) # (GND)
-- \s_count[2]~22\ = CARRY((\Add0~2_combout\ & ((s_count(2)) # (!\s_count[1]~20\))) # (!\Add0~2_combout\ & (s_count(2) & !\s_count[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => s_count(2),
	datad => VCC,
	cin => \s_count[1]~20\,
	combout => \s_count[2]~21_combout\,
	cout => \s_count[2]~22\);

\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[2]~21_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

\s_count[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[3]~23_combout\ = (s_count(3) & (\s_count[2]~22\ & VCC)) # (!s_count(3) & (!\s_count[2]~22\))
-- \s_count[3]~24\ = CARRY((!s_count(3) & !\s_count[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \s_count[2]~22\,
	combout => \s_count[3]~23_combout\,
	cout => \s_count[3]~24\);

\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[3]~23_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

\s_count[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~25_combout\ = (s_count(4) & ((GND) # (!\s_count[3]~24\))) # (!s_count(4) & (\s_count[3]~24\ $ (GND)))
-- \s_count[4]~26\ = CARRY((s_count(4)) # (!\s_count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \s_count[3]~24\,
	combout => \s_count[4]~25_combout\,
	cout => \s_count[4]~26\);

\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[4]~25_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

\s_count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~27_combout\ = ((\Add0~3_combout\ $ (s_count(5) $ (\s_count[4]~26\)))) # (GND)
-- \s_count[5]~28\ = CARRY((\Add0~3_combout\ & (s_count(5) & !\s_count[4]~26\)) # (!\Add0~3_combout\ & ((s_count(5)) # (!\s_count[4]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => s_count(5),
	datad => VCC,
	cin => \s_count[4]~26\,
	combout => \s_count[5]~27_combout\,
	cout => \s_count[5]~28\);

\s_count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~29_combout\ = (s_count(6) & ((GND) # (!\s_count[5]~28\))) # (!s_count(6) & (\s_count[5]~28\ $ (GND)))
-- \s_count[6]~30\ = CARRY((s_count(6)) # (!\s_count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \s_count[5]~28\,
	combout => \s_count[6]~29_combout\,
	cout => \s_count[6]~30\);

\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[6]~29_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

\s_count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[7]~31_combout\ = (\Add0~3_combout\ & ((s_count(7) & (\s_count[6]~30\ & VCC)) # (!s_count(7) & (!\s_count[6]~30\)))) # (!\Add0~3_combout\ & ((s_count(7) & (!\s_count[6]~30\)) # (!s_count(7) & ((\s_count[6]~30\) # (GND)))))
-- \s_count[7]~32\ = CARRY((\Add0~3_combout\ & (!s_count(7) & !\s_count[6]~30\)) # (!\Add0~3_combout\ & ((!\s_count[6]~30\) # (!s_count(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => s_count(7),
	datad => VCC,
	cin => \s_count[6]~30\,
	combout => \s_count[7]~31_combout\,
	cout => \s_count[7]~32\);

\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[7]~31_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

\s_count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[8]~33_combout\ = (s_count(8) & (!\s_count[7]~32\)) # (!s_count(8) & ((\s_count[7]~32\) # (GND)))
-- \s_count[8]~34\ = CARRY((!\s_count[7]~32\) # (!s_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \s_count[7]~32\,
	combout => \s_count[8]~33_combout\,
	cout => \s_count[8]~34\);

\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[8]~33_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

\s_count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[9]~35_combout\ = (s_count(9) & ((\process_0~1_combout\ & (!\s_count[8]~34\)) # (!\process_0~1_combout\ & (\s_count[8]~34\ & VCC)))) # (!s_count(9) & ((\process_0~1_combout\ & ((\s_count[8]~34\) # (GND))) # (!\process_0~1_combout\ & 
-- (!\s_count[8]~34\))))
-- \s_count[9]~36\ = CARRY((s_count(9) & (\process_0~1_combout\ & !\s_count[8]~34\)) # (!s_count(9) & ((\process_0~1_combout\) # (!\s_count[8]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datab => \process_0~1_combout\,
	datad => VCC,
	cin => \s_count[8]~34\,
	combout => \s_count[9]~35_combout\,
	cout => \s_count[9]~36\);

\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[9]~35_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (s_count(8) & (s_count(11) & (!s_count(9) & !s_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datab => s_count(11),
	datac => s_count(9),
	datad => s_count(10),
	combout => \process_0~0_combout\);

\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\Add0~0_combout\ & (\Add0~1_combout\ & (\process_0~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \process_0~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \process_0~1_combout\);

\s_count[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[10]~37_combout\ = ((s_count(10) $ (\process_0~1_combout\ $ (\s_count[9]~36\)))) # (GND)
-- \s_count[10]~38\ = CARRY((s_count(10) & ((!\s_count[9]~36\) # (!\process_0~1_combout\))) # (!s_count(10) & (!\process_0~1_combout\ & !\s_count[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datab => \process_0~1_combout\,
	datad => VCC,
	cin => \s_count[9]~36\,
	combout => \s_count[10]~37_combout\,
	cout => \s_count[10]~38\);

\s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[10]~37_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(10));

\s_count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[11]~39_combout\ = (s_count(11) & (\s_count[10]~38\ $ (GND))) # (!s_count(11) & (!\s_count[10]~38\ & VCC))
-- \s_count[11]~40\ = CARRY((s_count(11) & !\s_count[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \s_count[10]~38\,
	combout => \s_count[11]~39_combout\,
	cout => \s_count[11]~40\);

\s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[11]~39_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(11));

\s_count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~41_combout\ = (s_count(12) & ((GND) # (!\s_count[11]~40\))) # (!s_count(12) & (\s_count[11]~40\ $ (GND)))
-- \s_count[12]~42\ = CARRY((s_count(12)) # (!\s_count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \s_count[11]~40\,
	combout => \s_count[12]~41_combout\,
	cout => \s_count[12]~42\);

\s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[12]~41_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(12));

\s_count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[13]~43_combout\ = (s_count(13) & (\s_count[12]~42\ & VCC)) # (!s_count(13) & (!\s_count[12]~42\))
-- \s_count[13]~44\ = CARRY((!s_count(13) & !\s_count[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \s_count[12]~42\,
	combout => \s_count[13]~43_combout\,
	cout => \s_count[13]~44\);

\s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[13]~43_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(13));

\s_count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[14]~45_combout\ = (s_count(14) & (!\s_count[13]~44\)) # (!s_count(14) & ((\s_count[13]~44\) # (GND)))
-- \s_count[14]~46\ = CARRY((!\s_count[13]~44\) # (!s_count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \s_count[13]~44\,
	combout => \s_count[14]~45_combout\,
	cout => \s_count[14]~46\);

\s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[14]~45_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(14));

\s_count[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[15]~47_combout\ = s_count(15) $ (!\s_count[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	cin => \s_count[14]~46\,
	combout => \s_count[15]~47_combout\);

\s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[15]~47_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(15));

\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (s_count(14) & (!s_count(12) & (!s_count(13) & !s_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datab => s_count(12),
	datac => s_count(13),
	datad => s_count(15),
	combout => \Equal2~0_combout\);

\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (((\Equal2~0_combout\ & \process_0~0_combout\)) # (!\Add0~1_combout\)) # (!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \process_0~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~1_combout\,
	combout => \Add0~3_combout\);

\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[5]~27_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (s_count(5) & (!s_count(4) & (!s_count(6) & !s_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datab => s_count(4),
	datac => s_count(6),
	datad => s_count(7),
	combout => \Add0~1_combout\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ((\Add0~1_combout\ & (\Equal2~0_combout\ & \process_0~0_combout\))) # (!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \process_0~0_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~2_combout\);

\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[1]~19_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (s_count(0) & (!s_count(1) & (!s_count(2) & !s_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => s_count(1),
	datac => s_count(2),
	datad => s_count(3),
	combout => \Add0~0_combout\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~0_combout\ & (\Add0~1_combout\ & (\Equal2~0_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \process_0~0_combout\,
	combout => \Equal0~0_combout\);

\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\s_start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_start~0_combout\ = !\s_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_start~q\,
	combout => \s_start~0_combout\);

s_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_start~input_o\,
	d => \s_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_start~q\);

\s_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~18_combout\ = (\enable~input_o\ & (!\Equal0~0_combout\ & !\s_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \Equal0~0_combout\,
	datad => \s_start~q\,
	combout => \s_count[0]~18_combout\);

\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[0]~16_combout\,
	clrn => \ALT_INV_s_reset~q\,
	ena => \s_count[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\s_reset~q\ & !\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset~q\,
	datad => \Equal0~0_combout\,
	combout => \comb~0_combout\);

s_termCount : cycloneive_lcell_comb
-- Equation(s):
-- \s_termCount~combout\ = (!\comb~0_combout\ & ((\s_termCount~combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_termCount~combout\,
	datac => \Equal0~0_combout\,
	datad => \comb~0_combout\,
	combout => \s_termCount~combout\);

ww_countOut(0) <= \countOut[0]~output_o\;

ww_countOut(1) <= \countOut[1]~output_o\;

ww_countOut(2) <= \countOut[2]~output_o\;

ww_countOut(3) <= \countOut[3]~output_o\;

ww_countOut(4) <= \countOut[4]~output_o\;

ww_countOut(5) <= \countOut[5]~output_o\;

ww_countOut(6) <= \countOut[6]~output_o\;

ww_countOut(7) <= \countOut[7]~output_o\;

ww_countOut(8) <= \countOut[8]~output_o\;

ww_countOut(9) <= \countOut[9]~output_o\;

ww_countOut(10) <= \countOut[10]~output_o\;

ww_countOut(11) <= \countOut[11]~output_o\;

ww_countOut(12) <= \countOut[12]~output_o\;

ww_countOut(13) <= \countOut[13]~output_o\;

ww_countOut(14) <= \countOut[14]~output_o\;

ww_countOut(15) <= \countOut[15]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp3(0) <= \disp3[0]~output_o\;

ww_disp3(1) <= \disp3[1]~output_o\;

ww_disp3(2) <= \disp3[2]~output_o\;

ww_disp3(3) <= \disp3[3]~output_o\;

ww_disp4(0) <= \disp4[0]~output_o\;

ww_disp4(1) <= \disp4[1]~output_o\;

ww_disp4(2) <= \disp4[2]~output_o\;

ww_disp4(3) <= \disp4[3]~output_o\;

ww_termCount <= \termCount~output_o\;
END structure;


