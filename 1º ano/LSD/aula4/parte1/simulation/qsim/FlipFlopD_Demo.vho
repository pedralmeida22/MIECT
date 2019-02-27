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

-- DATE "03/12/2018 15:17:35"

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

ENTITY 	FlipFlopDAsync IS
    PORT (
	clk : IN std_logic;
	d : IN std_logic;
	set : IN std_logic;
	reset : IN std_logic;
	q : OUT std_logic
	);
END FlipFlopDAsync;

ARCHITECTURE structure OF FlipFlopDAsync IS
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
SIGNAL ww_d : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \q~reg0_emulated_q\ : std_logic;
SIGNAL \q~2_combout\ : std_logic;
SIGNAL \ALT_INV_q~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_d <= d;
ww_set <= set;
ww_reset <= reset;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_q~0_combout\ <= NOT \q~0_combout\;

\q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q~2_combout\,
	devoe => ww_devoe,
	o => \q~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

\set~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~1_combout\ = (!\reset~input_o\ & ((\q~1_combout\) # (\set~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q~1_combout\,
	datac => \set~input_o\,
	datad => \reset~input_o\,
	combout => \q~1_combout\);

\q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~3_combout\ = \d~input_o\ $ (\q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~input_o\,
	datab => \q~1_combout\,
	combout => \q~3_combout\);

\q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~0_combout\ = (\reset~input_o\) # (\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \set~input_o\,
	combout => \q~0_combout\);

\q~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \q~3_combout\,
	clrn => \ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q~reg0_emulated_q\);

\q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~2_combout\ = (!\reset~input_o\ & ((\set~input_o\) # (\q~reg0_emulated_q\ $ (\q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~reg0_emulated_q\,
	datab => \q~1_combout\,
	datac => \set~input_o\,
	datad => \reset~input_o\,
	combout => \q~2_combout\);

ww_q <= \q~output_o\;
END structure;


