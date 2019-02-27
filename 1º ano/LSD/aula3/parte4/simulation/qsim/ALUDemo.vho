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

-- DATE "03/07/2018 14:30:43"

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

ENTITY 	Bin2BCD IS
    PORT (
	bin : IN std_logic_vector(7 DOWNTO 0);
	bcd0 : OUT std_logic_vector(3 DOWNTO 0);
	bcd1 : OUT std_logic_vector(3 DOWNTO 0);
	bcd2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END Bin2BCD;

ARCHITECTURE structure OF Bin2BCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bcd0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bcd1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bcd2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin[0]~input_o\ : std_logic;
SIGNAL \bin[1]~input_o\ : std_logic;
SIGNAL \bin[2]~input_o\ : std_logic;
SIGNAL \bin[3]~input_o\ : std_logic;
SIGNAL \bin[4]~input_o\ : std_logic;
SIGNAL \bin[5]~input_o\ : std_logic;
SIGNAL \bin[6]~input_o\ : std_logic;
SIGNAL \bin[7]~input_o\ : std_logic;
SIGNAL \bcd0[0]~output_o\ : std_logic;
SIGNAL \bcd0[1]~output_o\ : std_logic;
SIGNAL \bcd0[2]~output_o\ : std_logic;
SIGNAL \bcd0[3]~output_o\ : std_logic;
SIGNAL \bcd1[0]~output_o\ : std_logic;
SIGNAL \bcd1[1]~output_o\ : std_logic;
SIGNAL \bcd1[2]~output_o\ : std_logic;
SIGNAL \bcd1[3]~output_o\ : std_logic;
SIGNAL \bcd2[0]~output_o\ : std_logic;
SIGNAL \bcd2[1]~output_o\ : std_logic;
SIGNAL \bcd2[2]~output_o\ : std_logic;
SIGNAL \bcd2[3]~output_o\ : std_logic;

BEGIN

ww_bin <= bin;
bcd0 <= ww_bcd0;
bcd1 <= ww_bcd1;
bcd2 <= ww_bcd2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bcd0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd0[0]~output_o\);

\bcd0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bcd0[1]~output_o\);

\bcd0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd0[2]~output_o\);

\bcd0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd0[3]~output_o\);

\bcd1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bcd1[0]~output_o\);

\bcd1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd1[1]~output_o\);

\bcd1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd1[2]~output_o\);

\bcd1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd1[3]~output_o\);

\bcd2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd2[0]~output_o\);

\bcd2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd2[1]~output_o\);

\bcd2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \bcd2[2]~output_o\);

\bcd2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bcd2[3]~output_o\);

\bin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(0),
	o => \bin[0]~input_o\);

\bin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(1),
	o => \bin[1]~input_o\);

\bin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(2),
	o => \bin[2]~input_o\);

\bin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(3),
	o => \bin[3]~input_o\);

\bin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(4),
	o => \bin[4]~input_o\);

\bin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(5),
	o => \bin[5]~input_o\);

\bin[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(6),
	o => \bin[6]~input_o\);

\bin[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(7),
	o => \bin[7]~input_o\);

ww_bcd0(0) <= \bcd0[0]~output_o\;

ww_bcd0(1) <= \bcd0[1]~output_o\;

ww_bcd0(2) <= \bcd0[2]~output_o\;

ww_bcd0(3) <= \bcd0[3]~output_o\;

ww_bcd1(0) <= \bcd1[0]~output_o\;

ww_bcd1(1) <= \bcd1[1]~output_o\;

ww_bcd1(2) <= \bcd1[2]~output_o\;

ww_bcd1(3) <= \bcd1[3]~output_o\;

ww_bcd2(0) <= \bcd2[0]~output_o\;

ww_bcd2(1) <= \bcd2[1]~output_o\;

ww_bcd2(2) <= \bcd2[2]~output_o\;

ww_bcd2(3) <= \bcd2[3]~output_o\;
END structure;


