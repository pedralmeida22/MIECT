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

-- DATE "02/27/2018 11:19:47"

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

ENTITY 	Mux2_1 IS
    PORT (
	sel : IN std_logic;
	input0 : IN std_logic;
	input1 : IN std_logic;
	muxOut : BUFFER std_logic
	);
END Mux2_1;

ARCHITECTURE structure OF Mux2_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_input0 : std_logic;
SIGNAL ww_input1 : std_logic;
SIGNAL ww_muxOut : std_logic;
SIGNAL \muxOut~output_o\ : std_logic;
SIGNAL \input1~input_o\ : std_logic;
SIGNAL \input0~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \muxOut~0_combout\ : std_logic;

BEGIN

ww_sel <= sel;
ww_input0 <= input0;
ww_input1 <= input1;
muxOut <= ww_muxOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\muxOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \muxOut~0_combout\,
	devoe => ww_devoe,
	o => \muxOut~output_o\);

\input1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1,
	o => \input1~input_o\);

\input0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input0,
	o => \input0~input_o\);

\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

\muxOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxOut~0_combout\ = (\sel~input_o\ & (\input1~input_o\)) # (!\sel~input_o\ & ((\input0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input1~input_o\,
	datab => \input0~input_o\,
	datad => \sel~input_o\,
	combout => \muxOut~0_combout\);

ww_muxOut <= \muxOut~output_o\;
END structure;


