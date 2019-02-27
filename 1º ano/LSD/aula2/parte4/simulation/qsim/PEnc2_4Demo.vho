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

-- DATE "02/27/2018 19:46:40"

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

ENTITY 	PEnc2_4 IS
    PORT (
	decodedIn : IN std_logic_vector(3 DOWNTO 0);
	encodedOut : OUT std_logic_vector(1 DOWNTO 0);
	validOut : OUT std_logic
	);
END PEnc2_4;

ARCHITECTURE structure OF PEnc2_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_decodedIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_encodedOut : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_validOut : std_logic;
SIGNAL \encodedOut[0]~output_o\ : std_logic;
SIGNAL \encodedOut[1]~output_o\ : std_logic;
SIGNAL \validOut~output_o\ : std_logic;
SIGNAL \decodedIn[3]~input_o\ : std_logic;
SIGNAL \decodedIn[1]~input_o\ : std_logic;
SIGNAL \decodedIn[2]~input_o\ : std_logic;
SIGNAL \encodedOut~0_combout\ : std_logic;
SIGNAL \encodedOut~1_combout\ : std_logic;
SIGNAL \decodedIn[0]~input_o\ : std_logic;
SIGNAL \validOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_encodedOut~1_combout\ : std_logic;

BEGIN

ww_decodedIn <= decodedIn;
encodedOut <= ww_encodedOut;
validOut <= ww_validOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_encodedOut~1_combout\ <= NOT \encodedOut~1_combout\;

\encodedOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut~0_combout\,
	devoe => ww_devoe,
	o => \encodedOut[0]~output_o\);

\encodedOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_encodedOut~1_combout\,
	devoe => ww_devoe,
	o => \encodedOut[1]~output_o\);

\validOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \validOut~0_combout\,
	devoe => ww_devoe,
	o => \validOut~output_o\);

\decodedIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(3),
	o => \decodedIn[3]~input_o\);

\decodedIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(1),
	o => \decodedIn[1]~input_o\);

\decodedIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(2),
	o => \decodedIn[2]~input_o\);

\encodedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~0_combout\ = (\decodedIn[3]~input_o\) # ((\decodedIn[1]~input_o\ & !\decodedIn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[3]~input_o\,
	datab => \decodedIn[1]~input_o\,
	datad => \decodedIn[2]~input_o\,
	combout => \encodedOut~0_combout\);

\encodedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~1_combout\ = (!\decodedIn[3]~input_o\ & !\decodedIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodedIn[3]~input_o\,
	datad => \decodedIn[2]~input_o\,
	combout => \encodedOut~1_combout\);

\decodedIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedIn(0),
	o => \decodedIn[0]~input_o\);

\validOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \validOut~0_combout\ = (\decodedIn[3]~input_o\) # ((\decodedIn[1]~input_o\) # ((\decodedIn[2]~input_o\) # (\decodedIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedIn[3]~input_o\,
	datab => \decodedIn[1]~input_o\,
	datac => \decodedIn[2]~input_o\,
	datad => \decodedIn[0]~input_o\,
	combout => \validOut~0_combout\);

ww_encodedOut(0) <= \encodedOut[0]~output_o\;

ww_encodedOut(1) <= \encodedOut[1]~output_o\;

ww_validOut <= \validOut~output_o\;
END structure;


