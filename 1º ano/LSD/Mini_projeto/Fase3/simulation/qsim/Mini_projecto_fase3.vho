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

-- DATE "04/10/2018 18:15:12"

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

ENTITY 	TimerCounter_v2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	startStop : IN std_logic;
	setM : IN std_logic;
	setS : IN std_logic;
	set : IN std_logic;
	countOut : OUT std_logic_vector(15 DOWNTO 0);
	termCount : OUT std_logic
	);
END TimerCounter_v2;

ARCHITECTURE structure OF TimerCounter_v2 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_startStop : std_logic;
SIGNAL ww_setM : std_logic;
SIGNAL ww_setS : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_countOut : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \termCount~output_o\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \s_count~11_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \s_startValue[0]~37_combout\ : std_logic;
SIGNAL \setS~input_o\ : std_logic;
SIGNAL \setM~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \startStop~input_o\ : std_logic;
SIGNAL \s_enable~0_combout\ : std_logic;
SIGNAL \s_enable~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_startValue[0]~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \s_startValue~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \s_startValue~3_combout\ : std_logic;
SIGNAL \s_freqCount[1]~0_combout\ : std_logic;
SIGNAL \s_freqCount[0]~2_combout\ : std_logic;
SIGNAL \s_freqCount[1]~1_combout\ : std_logic;
SIGNAL \s_termCount~0_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \s_count~17_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~5_cout\ : std_logic;
SIGNAL \Add0~7_cout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \s_startValue~5_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \s_startValue~7_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \s_startValue~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \s_startValue~6_combout\ : std_logic;
SIGNAL \s_count[5]~0_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \s_count[6]~18_combout\ : std_logic;
SIGNAL \s_count[6]~19_combout\ : std_logic;
SIGNAL \s_count[6]~20_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \s_count~21_combout\ : std_logic;
SIGNAL \s_count[7]~1_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \s_count~22_combout\ : std_logic;
SIGNAL \Add5~1_cout\ : std_logic;
SIGNAL \Add5~3_cout\ : std_logic;
SIGNAL \Add5~5_cout\ : std_logic;
SIGNAL \Add5~7_cout\ : std_logic;
SIGNAL \Add5~9_cout\ : std_logic;
SIGNAL \Add5~11_cout\ : std_logic;
SIGNAL \Add5~13_cout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \s_count~23_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \s_startValue~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \s_startValue~20_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \s_startValue~21_combout\ : std_logic;
SIGNAL \s_startValue[8]~16_combout\ : std_logic;
SIGNAL \s_startValue[8]~17_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \s_startValue~22_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \s_startValue~23_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~3_cout\ : std_logic;
SIGNAL \Add2~5_cout\ : std_logic;
SIGNAL \Add2~7_cout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \s_startValue~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \s_startValue~25_combout\ : std_logic;
SIGNAL \s_startValue~26_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \s_startValue~27_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \s_startValue~28_combout\ : std_logic;
SIGNAL \s_startValue~29_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \s_startValue~30_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \s_startValue~31_combout\ : std_logic;
SIGNAL \s_startValue~32_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \s_startValue~33_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \s_startValue~34_combout\ : std_logic;
SIGNAL \s_startValue~35_combout\ : std_logic;
SIGNAL \s_startValue[8]~13_combout\ : std_logic;
SIGNAL \s_startValue[8]~14_combout\ : std_logic;
SIGNAL \s_startValue~36_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \s_startValue~19_combout\ : std_logic;
SIGNAL \s_startValue[8]~9_combout\ : std_logic;
SIGNAL \s_startValue[8]~10_combout\ : std_logic;
SIGNAL \s_startValue[8]~11_combout\ : std_logic;
SIGNAL \s_startValue~12_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \s_startValue~15_combout\ : std_logic;
SIGNAL \s_count~24_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \s_count~25_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \s_count~26_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \s_count~27_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \s_count~28_combout\ : std_logic;
SIGNAL \s_count[12]~4_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \s_count[0]~8_combout\ : std_logic;
SIGNAL \s_count[12]~5_combout\ : std_logic;
SIGNAL \s_count[12]~10_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \s_count~29_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \s_count~30_combout\ : std_logic;
SIGNAL \s_count~31_combout\ : std_logic;
SIGNAL \Add4~1_cout\ : std_logic;
SIGNAL \Add4~3_cout\ : std_logic;
SIGNAL \Add4~5_cout\ : std_logic;
SIGNAL \Add4~7_cout\ : std_logic;
SIGNAL \Add4~9_cout\ : std_logic;
SIGNAL \Add4~11_cout\ : std_logic;
SIGNAL \Add4~13_cout\ : std_logic;
SIGNAL \Add4~15_cout\ : std_logic;
SIGNAL \Add4~17_cout\ : std_logic;
SIGNAL \Add4~19_cout\ : std_logic;
SIGNAL \Add4~21_cout\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \s_count~32_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \s_count~33_combout\ : std_logic;
SIGNAL \s_count~34_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \s_count~35_combout\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \s_count~36_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \s_count~37_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \s_count~38_combout\ : std_logic;
SIGNAL \s_count~39_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \s_count~40_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \s_count~41_combout\ : std_logic;
SIGNAL \s_count[12]~3_combout\ : std_logic;
SIGNAL \s_count[12]~9_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \s_count~12_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \s_count~13_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~3_cout\ : std_logic;
SIGNAL \Add6~5_cout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \s_count[4]~14_combout\ : std_logic;
SIGNAL \s_count[4]~15_combout\ : std_logic;
SIGNAL \s_count[4]~16_combout\ : std_logic;
SIGNAL \s_count[12]~2_combout\ : std_logic;
SIGNAL \s_count~6_combout\ : std_logic;
SIGNAL \s_count~7_combout\ : std_logic;
SIGNAL \countOut~0_combout\ : std_logic;
SIGNAL \countOut~1_combout\ : std_logic;
SIGNAL \countOut~2_combout\ : std_logic;
SIGNAL \countOut~3_combout\ : std_logic;
SIGNAL \countOut~4_combout\ : std_logic;
SIGNAL \countOut~5_combout\ : std_logic;
SIGNAL \countOut~6_combout\ : std_logic;
SIGNAL \countOut~7_combout\ : std_logic;
SIGNAL \countOut~8_combout\ : std_logic;
SIGNAL \countOut~9_combout\ : std_logic;
SIGNAL \countOut~10_combout\ : std_logic;
SIGNAL \countOut~11_combout\ : std_logic;
SIGNAL \countOut~12_combout\ : std_logic;
SIGNAL \countOut~13_combout\ : std_logic;
SIGNAL \countOut~14_combout\ : std_logic;
SIGNAL \countOut~15_combout\ : std_logic;
SIGNAL \s_termCount~1_combout\ : std_logic;
SIGNAL \s_termCount~q\ : std_logic;
SIGNAL \termCount~0_combout\ : std_logic;
SIGNAL s_count : std_logic_vector(15 DOWNTO 0);
SIGNAL s_startValue : std_logic_vector(15 DOWNTO 0);
SIGNAL s_freqCount : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_s_count[0]~8_combout\ : std_logic;
SIGNAL \ALT_INV_s_enable~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_startStop <= startStop;
ww_setM <= setM;
ww_setS <= setS;
ww_set <= set;
countOut <= ww_countOut;
termCount <= ww_termCount;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s_count[0]~8_combout\ <= NOT \s_count[0]~8_combout\;
\ALT_INV_s_enable~q\ <= NOT \s_enable~q\;

\countOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~0_combout\,
	devoe => ww_devoe,
	o => \countOut[0]~output_o\);

\countOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~1_combout\,
	devoe => ww_devoe,
	o => \countOut[1]~output_o\);

\countOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~2_combout\,
	devoe => ww_devoe,
	o => \countOut[2]~output_o\);

\countOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~3_combout\,
	devoe => ww_devoe,
	o => \countOut[3]~output_o\);

\countOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~4_combout\,
	devoe => ww_devoe,
	o => \countOut[4]~output_o\);

\countOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~5_combout\,
	devoe => ww_devoe,
	o => \countOut[5]~output_o\);

\countOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~6_combout\,
	devoe => ww_devoe,
	o => \countOut[6]~output_o\);

\countOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~7_combout\,
	devoe => ww_devoe,
	o => \countOut[7]~output_o\);

\countOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~8_combout\,
	devoe => ww_devoe,
	o => \countOut[8]~output_o\);

\countOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~9_combout\,
	devoe => ww_devoe,
	o => \countOut[9]~output_o\);

\countOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~10_combout\,
	devoe => ww_devoe,
	o => \countOut[10]~output_o\);

\countOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~11_combout\,
	devoe => ww_devoe,
	o => \countOut[11]~output_o\);

\countOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~12_combout\,
	devoe => ww_devoe,
	o => \countOut[12]~output_o\);

\countOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~13_combout\,
	devoe => ww_devoe,
	o => \countOut[13]~output_o\);

\countOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~14_combout\,
	devoe => ww_devoe,
	o => \countOut[14]~output_o\);

\countOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \countOut~15_combout\,
	devoe => ww_devoe,
	o => \countOut[15]~output_o\);

\termCount~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \termCount~0_combout\,
	devoe => ww_devoe,
	o => \termCount~output_o\);

\set~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = s_count(0) $ (GND)
-- \Add7~1\ = CARRY(!s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (s_count(1) & (\Add7~1\ & VCC)) # (!s_count(1) & (!\Add7~1\))
-- \Add7~3\ = CARRY((!s_count(1) & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

\s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~11_combout\ = (\s_count[12]~9_combout\ & (\Add7~2_combout\ & !\s_count[12]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~9_combout\,
	datab => \Add7~2_combout\,
	datad => \s_count[12]~10_combout\,
	combout => \s_count~11_combout\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = s_startValue(0) $ (GND)
-- \Add1~1\ = CARRY(!s_startValue(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\s_startValue[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[0]~37_combout\ = !\Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	combout => \s_startValue[0]~37_combout\);

\setS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_setS,
	o => \setS~input_o\);

\setM~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_setM,
	o => \setM~input_o\);

\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\setS~input_o\ & !\setM~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setS~input_o\,
	datad => \setM~input_o\,
	combout => \process_0~0_combout\);

\startStop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startStop,
	o => \startStop~input_o\);

\s_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_enable~0_combout\ = !\s_enable~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~q\,
	combout => \s_enable~0_combout\);

s_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \startStop~input_o\,
	d => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_enable~q\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_startValue[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[0]~2_combout\ = (\set~input_o\ & (\process_0~0_combout\ & (!\s_enable~q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \process_0~0_combout\,
	datac => \s_enable~q\,
	datad => \reset~input_o\,
	combout => \s_startValue[0]~2_combout\);

\s_startValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue[0]~37_combout\,
	ena => \s_startValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(0));

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (s_startValue(1) & (!\Add1~1\)) # (!s_startValue(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!s_startValue(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (s_startValue(2) & (\Add1~3\ $ (GND))) # (!s_startValue(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((s_startValue(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\s_startValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~4_combout\,
	ena => \s_startValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(2));

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (s_startValue(3) & ((\Add1~5\) # (GND))) # (!s_startValue(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((s_startValue(3)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\s_startValue~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~4_combout\ = (\Equal1~0_combout\) # (!\Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_startValue~4_combout\);

\s_startValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~4_combout\,
	ena => \s_startValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(3));

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!s_startValue(0) & (!s_startValue(1) & (!s_startValue(2) & !s_startValue(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(0),
	datab => s_startValue(1),
	datac => s_startValue(2),
	datad => s_startValue(3),
	combout => \Equal1~0_combout\);

\s_startValue~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~3_combout\ = (\Add1~2_combout\ & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_startValue~3_combout\);

\s_startValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~3_combout\,
	ena => \s_startValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(1));

\s_freqCount[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_freqCount[1]~0_combout\ = (!\s_enable~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_enable~q\,
	datad => \reset~input_o\,
	combout => \s_freqCount[1]~0_combout\);

\s_freqCount[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_freqCount[0]~2_combout\ = s_freqCount(0) $ (((!\set~input_o\ & (!\s_enable~q\ & !\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_freqCount(0),
	datab => \set~input_o\,
	datac => \s_enable~q\,
	datad => \reset~input_o\,
	combout => \s_freqCount[0]~2_combout\);

\s_freqCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_freqCount[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_freqCount(0));

\s_freqCount[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_freqCount[1]~1_combout\ = s_freqCount(1) $ (((!\set~input_o\ & (\s_freqCount[1]~0_combout\ & s_freqCount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_freqCount(1),
	datab => \set~input_o\,
	datac => \s_freqCount[1]~0_combout\,
	datad => s_freqCount(0),
	combout => \s_freqCount[1]~1_combout\);

\s_freqCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_freqCount[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_freqCount(1));

\s_termCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_termCount~0_combout\ = (s_freqCount(1) & (s_freqCount(0) & !\set~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_freqCount(1),
	datab => s_freqCount(0),
	datad => \set~input_o\,
	combout => \s_termCount~0_combout\);

\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (s_count(4) & (!\Add6~5_cout\)) # (!s_count(4) & (\Add6~5_cout\ & VCC))
-- \Add6~7\ = CARRY((s_count(4) & !\Add6~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \Add6~5_cout\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (s_count(5) & ((GND) # (!\Add6~7\))) # (!s_count(5) & (\Add6~7\ $ (GND)))
-- \Add6~9\ = CARRY((s_count(5)) # (!\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (s_count(3) & (!\Add7~5\)) # (!s_count(3) & (\Add7~5\ & VCC))
-- \Add7~7\ = CARRY((s_count(3) & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (s_count(4) & (\Add7~7\ $ (GND))) # (!s_count(4) & ((GND) # (!\Add7~7\)))
-- \Add7~9\ = CARRY((!\Add7~7\) # (!s_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (s_count(5) & (\Add7~9\ & VCC)) # (!s_count(5) & (!\Add7~9\))
-- \Add7~11\ = CARRY((!s_count(5) & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

\s_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~17_combout\ = (\s_count[12]~9_combout\ & ((\s_count[12]~10_combout\ & (\Add6~8_combout\)) # (!\s_count[12]~10_combout\ & ((\Add7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~9_combout\,
	datab => \Add6~8_combout\,
	datac => \Add7~10_combout\,
	datad => \s_count[12]~10_combout\,
	combout => \s_count~17_combout\);

\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!s_startValue(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(0),
	datad => VCC,
	cout => \Add0~1_cout\);

\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY((!s_startValue(1) & !\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	cout => \Add0~3_cout\);

\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_cout\ = CARRY((s_startValue(2)) # (!\Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(2),
	datad => VCC,
	cin => \Add0~3_cout\,
	cout => \Add0~5_cout\);

\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_cout\ = CARRY((s_startValue(3)) # (!\Add0~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(3),
	datad => VCC,
	cin => \Add0~5_cout\,
	cout => \Add0~7_cout\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (s_startValue(4) & (!\Add0~7_cout\ & VCC)) # (!s_startValue(4) & (\Add0~7_cout\ $ (GND)))
-- \Add0~9\ = CARRY((!s_startValue(4) & !\Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(4),
	datad => VCC,
	cin => \Add0~7_cout\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (s_startValue(4) & (!\Add1~7\ & VCC)) # (!s_startValue(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!s_startValue(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\s_startValue~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~5_combout\ = (\Equal1~0_combout\ & (!\Add0~8_combout\)) # (!\Equal1~0_combout\ & ((!\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_startValue~5_combout\);

\s_startValue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~5_combout\,
	ena => \s_startValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(4));

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_startValue(5) & (!\Add0~9\)) # (!s_startValue(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!s_startValue(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (s_startValue(6) & (!\Add0~11\ & VCC)) # (!s_startValue(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((!s_startValue(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (s_startValue(5) & (!\Add1~9\)) # (!s_startValue(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!s_startValue(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (s_startValue(6) & (!\Add1~11\ & VCC)) # (!s_startValue(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((!s_startValue(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\s_startValue~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~7_combout\ = (\Equal1~0_combout\ & (((!\Add0~12_combout\)) # (!\Equal0~0_combout\))) # (!\Equal1~0_combout\ & (((!\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add0~12_combout\,
	datac => \Add1~12_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_startValue~7_combout\);

\s_startValue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~7_combout\,
	ena => \s_startValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(6));

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_startValue(7) & (!\Add0~13\)) # (!s_startValue(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!s_startValue(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (s_startValue(7) & (!\Add1~13\)) # (!s_startValue(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!s_startValue(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

\s_startValue~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~8_combout\ = (\Equal1~0_combout\ & (\Add0~14_combout\)) # (!\Equal1~0_combout\ & ((\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add1~14_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_startValue~8_combout\);

\s_startValue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~8_combout\,
	ena => \s_startValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(7));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (s_startValue(4)) # ((s_startValue(5)) # ((s_startValue(6)) # (s_startValue(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(4),
	datab => s_startValue(5),
	datac => s_startValue(6),
	datad => s_startValue(7),
	combout => \Equal0~0_combout\);

\s_startValue~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~6_combout\ = (\Equal1~0_combout\ & (\Add0~10_combout\ & (\Equal0~0_combout\))) # (!\Equal1~0_combout\ & (((\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add1~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_startValue~6_combout\);

\s_startValue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~6_combout\,
	ena => \s_startValue[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(5));

\s_count[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~0_combout\ = (\reset~input_o\ & ((s_startValue(5)))) # (!\reset~input_o\ & (\s_count~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~17_combout\,
	datab => s_startValue(5),
	datad => \reset~input_o\,
	combout => \s_count[5]~0_combout\);

\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[5]~0_combout\,
	asdata => s_count(5),
	sload => \ALT_INV_s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (s_count(6) & (!\Add6~9\)) # (!s_count(6) & (\Add6~9\ & VCC))
-- \Add6~11\ = CARRY((s_count(6) & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (s_count(6) & (\Add7~11\ $ (GND))) # (!s_count(6) & ((GND) # (!\Add7~11\)))
-- \Add7~13\ = CARRY((!\Add7~11\) # (!s_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

\s_count[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~18_combout\ = ((\s_count[12]~10_combout\ & (\Add6~10_combout\)) # (!\s_count[12]~10_combout\ & ((\Add7~12_combout\)))) # (!\s_count[12]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Add7~12_combout\,
	datac => \s_count[12]~10_combout\,
	datad => \s_count[12]~9_combout\,
	combout => \s_count[6]~18_combout\);

\s_count[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~19_combout\ = (\s_count[0]~8_combout\ & (\s_count[6]~18_combout\ & ((!\reset~input_o\)))) # (!\s_count[0]~8_combout\ & (((!s_count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[6]~18_combout\,
	datab => \s_count[0]~8_combout\,
	datac => s_count(6),
	datad => \reset~input_o\,
	combout => \s_count[6]~19_combout\);

\s_count[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~20_combout\ = (!\s_count[6]~19_combout\ & (((s_startValue(6)) # (\s_enable~q\)) # (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[6]~19_combout\,
	datab => \reset~input_o\,
	datac => s_startValue(6),
	datad => \s_enable~q\,
	combout => \s_count[6]~20_combout\);

\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (s_count(7) & ((GND) # (!\Add6~11\))) # (!s_count(7) & (\Add6~11\ $ (GND)))
-- \Add6~13\ = CARRY((s_count(7)) # (!\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (s_count(7) & (\Add7~13\ & VCC)) # (!s_count(7) & (!\Add7~13\))
-- \Add7~15\ = CARRY((!s_count(7) & !\Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

\s_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~21_combout\ = (\s_count[12]~9_combout\ & ((\s_count[12]~10_combout\ & (\Add6~12_combout\)) # (!\s_count[12]~10_combout\ & ((\Add7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~9_combout\,
	datab => \Add6~12_combout\,
	datac => \Add7~14_combout\,
	datad => \s_count[12]~10_combout\,
	combout => \s_count~21_combout\);

\s_count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[7]~1_combout\ = (\reset~input_o\ & ((s_startValue(7)))) # (!\reset~input_o\ & (\s_count~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~21_combout\,
	datab => s_startValue(7),
	datad => \reset~input_o\,
	combout => \s_count[7]~1_combout\);

\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[7]~1_combout\,
	asdata => s_count(7),
	sload => \ALT_INV_s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (s_count(8) & (!\Add6~13\)) # (!s_count(8) & (\Add6~13\ & VCC))
-- \Add6~15\ = CARRY((s_count(8) & !\Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (s_count(8) & (\Add7~15\ $ (GND))) # (!s_count(8) & ((GND) # (!\Add7~15\)))
-- \Add7~17\ = CARRY((!\Add7~15\) # (!s_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

\s_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~22_combout\ = (\s_count[12]~10_combout\ & ((\Add6~14_combout\) # ((!\s_count[12]~9_combout\)))) # (!\s_count[12]~10_combout\ & (((\Add7~16_combout\ & \s_count[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datab => \Add7~16_combout\,
	datac => \s_count[12]~10_combout\,
	datad => \s_count[12]~9_combout\,
	combout => \s_count~22_combout\);

\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_cout\ = CARRY((s_count(1) & !s_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => s_count(0),
	datad => VCC,
	cout => \Add5~1_cout\);

\Add5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~3_cout\ = CARRY((!\Add5~1_cout\) # (!s_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \Add5~1_cout\,
	cout => \Add5~3_cout\);

\Add5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~5_cout\ = CARRY((!\Add5~3_cout\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \Add5~3_cout\,
	cout => \Add5~5_cout\);

\Add5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~7_cout\ = CARRY((s_count(4) & !\Add5~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \Add5~5_cout\,
	cout => \Add5~7_cout\);

\Add5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~9_cout\ = CARRY((s_count(5) & !\Add5~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \Add5~7_cout\,
	cout => \Add5~9_cout\);

\Add5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~11_cout\ = CARRY((s_count(6) & !\Add5~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \Add5~9_cout\,
	cout => \Add5~11_cout\);

\Add5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~13_cout\ = CARRY((s_count(7) & !\Add5~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \Add5~11_cout\,
	cout => \Add5~13_cout\);

\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (s_count(8) & (!\Add5~13_cout\)) # (!s_count(8) & (\Add5~13_cout\ & VCC))
-- \Add5~15\ = CARRY((s_count(8) & !\Add5~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \Add5~13_cout\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

\s_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~23_combout\ = (!\reset~input_o\ & ((\s_count~22_combout\) # ((\Add5~14_combout\ & !\s_count[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~22_combout\,
	datab => \Add5~14_combout\,
	datac => \s_count[12]~9_combout\,
	datad => \reset~input_o\,
	combout => \s_count~23_combout\);

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_startValue(8) & (!\Add0~15\ & VCC)) # (!s_startValue(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((!s_startValue(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (s_startValue(8) & (!\Add1~15\ & VCC)) # (!s_startValue(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((!s_startValue(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (s_startValue(9) & (!\Add0~17\)) # (!s_startValue(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!s_startValue(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (s_startValue(9) & (!\Add1~17\)) # (!s_startValue(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!s_startValue(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

\s_startValue~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~18_combout\ = (\process_0~0_combout\ & ((\s_startValue[8]~11_combout\ & (\Add0~18_combout\)) # (!\s_startValue[8]~11_combout\ & ((\Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add0~18_combout\,
	datac => \Add1~18_combout\,
	datad => \s_startValue[8]~11_combout\,
	combout => \s_startValue~18_combout\);

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (s_startValue(10) & (\Add0~19\ $ (GND))) # (!s_startValue(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((s_startValue(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (s_startValue(10) & (\Add1~19\ $ (GND))) # (!s_startValue(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((s_startValue(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

\s_startValue~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~20_combout\ = (\process_0~0_combout\ & ((\s_startValue[8]~11_combout\ & (\Add0~20_combout\)) # (!\s_startValue[8]~11_combout\ & ((\Add1~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add0~20_combout\,
	datac => \Add1~20_combout\,
	datad => \s_startValue[8]~11_combout\,
	combout => \s_startValue~20_combout\);

\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = s_startValue(8) $ (GND)
-- \Add3~1\ = CARRY(!s_startValue(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(8),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (s_startValue(9) & (!\Add3~1\)) # (!s_startValue(9) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!s_startValue(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(9),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (s_startValue(10) & (\Add3~3\ $ (GND))) # (!s_startValue(10) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((s_startValue(10) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(10),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

\s_startValue~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~21_combout\ = (\s_startValue~20_combout\) # ((\s_startValue~36_combout\ & \Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue~20_combout\,
	datab => \s_startValue~36_combout\,
	datac => \Add3~4_combout\,
	combout => \s_startValue~21_combout\);

\s_startValue[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[8]~16_combout\ = (\setM~input_o\ & (((!\setS~input_o\)))) # (!\setM~input_o\ & (\setS~input_o\ & ((\Equal0~0_combout\) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \setM~input_o\,
	datad => \setS~input_o\,
	combout => \s_startValue[8]~16_combout\);

\s_startValue[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[8]~17_combout\ = (\set~input_o\ & (!\s_enable~q\ & (!\reset~input_o\ & \s_startValue[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \s_enable~q\,
	datac => \reset~input_o\,
	datad => \s_startValue[8]~16_combout\,
	combout => \s_startValue[8]~17_combout\);

\s_startValue[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~21_combout\,
	ena => \s_startValue[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(10));

\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_startValue(11) & ((\Add0~21\) # (GND))) # (!s_startValue(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((s_startValue(11)) # (!\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (s_startValue(11) & ((\Add1~21\) # (GND))) # (!s_startValue(11) & (!\Add1~21\))
-- \Add1~23\ = CARRY((s_startValue(11)) # (!\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

\s_startValue~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~22_combout\ = (\process_0~0_combout\ & ((\s_startValue[8]~11_combout\ & (\Add0~22_combout\)) # (!\s_startValue[8]~11_combout\ & ((\Add1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add0~22_combout\,
	datac => \Add1~22_combout\,
	datad => \s_startValue[8]~11_combout\,
	combout => \s_startValue~22_combout\);

\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (s_startValue(11) & ((\Add3~5\) # (GND))) # (!s_startValue(11) & (!\Add3~5\))
-- \Add3~7\ = CARRY((s_startValue(11)) # (!\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(11),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

\s_startValue~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~23_combout\ = (!\s_startValue~22_combout\ & ((!\Add3~6_combout\) # (!\s_startValue~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue~22_combout\,
	datab => \s_startValue~36_combout\,
	datac => \Add3~6_combout\,
	combout => \s_startValue~23_combout\);

\s_startValue[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~23_combout\,
	ena => \s_startValue[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(11));

\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY(!s_startValue(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(8),
	datad => VCC,
	cout => \Add2~1_cout\);

\Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~3_cout\ = CARRY((!s_startValue(9) & !\Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(9),
	datad => VCC,
	cin => \Add2~1_cout\,
	cout => \Add2~3_cout\);

\Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~5_cout\ = CARRY((s_startValue(10)) # (!\Add2~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(10),
	datad => VCC,
	cin => \Add2~3_cout\,
	cout => \Add2~5_cout\);

\Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~7_cout\ = CARRY((s_startValue(11)) # (!\Add2~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(11),
	datad => VCC,
	cin => \Add2~5_cout\,
	cout => \Add2~7_cout\);

\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (s_startValue(12) & (!\Add2~7_cout\ & VCC)) # (!s_startValue(12) & (\Add2~7_cout\ $ (GND)))
-- \Add2~9\ = CARRY((!s_startValue(12) & !\Add2~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(12),
	datad => VCC,
	cin => \Add2~7_cout\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (s_startValue(12) & (!\Add1~23\ & VCC)) # (!s_startValue(12) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((!s_startValue(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (s_startValue(12) & (!\Add3~7\ & VCC)) # (!s_startValue(12) & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((!s_startValue(12) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(12),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

\s_startValue~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~24_combout\ = (\s_startValue[8]~11_combout\ & (((\process_0~0_combout\)))) # (!\s_startValue[8]~11_combout\ & ((\process_0~0_combout\ & (\Add1~24_combout\)) # (!\process_0~0_combout\ & ((\Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue[8]~11_combout\,
	datab => \Add1~24_combout\,
	datac => \process_0~0_combout\,
	datad => \Add3~8_combout\,
	combout => \s_startValue~24_combout\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (s_startValue(12) & (!\Add0~23\ & VCC)) # (!s_startValue(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((!s_startValue(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\s_startValue~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~25_combout\ = (\s_startValue[8]~11_combout\ & ((\s_startValue~24_combout\ & ((\Add0~24_combout\))) # (!\s_startValue~24_combout\ & (\Add2~8_combout\)))) # (!\s_startValue[8]~11_combout\ & (((\s_startValue~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \s_startValue[8]~11_combout\,
	datac => \s_startValue~24_combout\,
	datad => \Add0~24_combout\,
	combout => \s_startValue~25_combout\);

\s_startValue~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~26_combout\ = (\s_startValue[8]~14_combout\) # (!\s_startValue~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue~25_combout\,
	datad => \s_startValue[8]~14_combout\,
	combout => \s_startValue~26_combout\);

\s_startValue[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~26_combout\,
	ena => \s_startValue[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(12));

\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (s_startValue(13) & (!\Add2~9\)) # (!s_startValue(13) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!s_startValue(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(13),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (s_startValue(13) & (!\Add1~25\)) # (!s_startValue(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!s_startValue(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (s_startValue(13) & (!\Add3~9\)) # (!s_startValue(13) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!s_startValue(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(13),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

\s_startValue~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~27_combout\ = (\s_startValue[8]~11_combout\ & (((\process_0~0_combout\)))) # (!\s_startValue[8]~11_combout\ & ((\process_0~0_combout\ & (\Add1~26_combout\)) # (!\process_0~0_combout\ & ((\Add3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue[8]~11_combout\,
	datab => \Add1~26_combout\,
	datac => \process_0~0_combout\,
	datad => \Add3~10_combout\,
	combout => \s_startValue~27_combout\);

\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (s_startValue(13) & (!\Add0~25\)) # (!s_startValue(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!s_startValue(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

\s_startValue~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~28_combout\ = (\s_startValue[8]~11_combout\ & ((\s_startValue~27_combout\ & ((\Add0~26_combout\))) # (!\s_startValue~27_combout\ & (\Add2~10_combout\)))) # (!\s_startValue[8]~11_combout\ & (((\s_startValue~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \s_startValue[8]~11_combout\,
	datac => \s_startValue~27_combout\,
	datad => \Add0~26_combout\,
	combout => \s_startValue~28_combout\);

\s_startValue~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~29_combout\ = (\s_startValue~28_combout\ & !\s_startValue[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue~28_combout\,
	datad => \s_startValue[8]~14_combout\,
	combout => \s_startValue~29_combout\);

\s_startValue[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~29_combout\,
	ena => \s_startValue[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(13));

\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (s_startValue(14) & (!\Add2~11\ & VCC)) # (!s_startValue(14) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((!s_startValue(14) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(14),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (s_startValue(14) & (!\Add3~11\ & VCC)) # (!s_startValue(14) & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((!s_startValue(14) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(14),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (s_startValue(14) & (!\Add1~27\ & VCC)) # (!s_startValue(14) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((!s_startValue(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

\s_startValue~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~30_combout\ = (\s_startValue[8]~11_combout\ & (\process_0~0_combout\)) # (!\s_startValue[8]~11_combout\ & ((\process_0~0_combout\ & ((\Add1~28_combout\))) # (!\process_0~0_combout\ & (\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue[8]~11_combout\,
	datab => \process_0~0_combout\,
	datac => \Add3~12_combout\,
	datad => \Add1~28_combout\,
	combout => \s_startValue~30_combout\);

\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (s_startValue(14) & (!\Add0~27\ & VCC)) # (!s_startValue(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((!s_startValue(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

\s_startValue~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~31_combout\ = (\s_startValue[8]~11_combout\ & ((!\s_startValue~30_combout\) # (!\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \s_startValue[8]~11_combout\,
	datac => \s_startValue~30_combout\,
	combout => \s_startValue~31_combout\);

\s_startValue~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~32_combout\ = (\s_startValue[8]~14_combout\) # ((\s_startValue~30_combout\ & ((\s_startValue~31_combout\))) # (!\s_startValue~30_combout\ & ((!\s_startValue~31_combout\) # (!\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \s_startValue[8]~14_combout\,
	datac => \s_startValue~30_combout\,
	datad => \s_startValue~31_combout\,
	combout => \s_startValue~32_combout\);

\s_startValue[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~32_combout\,
	ena => \s_startValue[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(14));

\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = s_startValue(15) $ (\Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(15),
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = s_startValue(15) $ (\Add3~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(15),
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = s_startValue(15) $ (\Add1~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(15),
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

\s_startValue~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~33_combout\ = (\s_startValue[8]~11_combout\ & (\process_0~0_combout\)) # (!\s_startValue[8]~11_combout\ & ((\process_0~0_combout\ & ((\Add1~30_combout\))) # (!\process_0~0_combout\ & (\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue[8]~11_combout\,
	datab => \process_0~0_combout\,
	datac => \Add3~14_combout\,
	datad => \Add1~30_combout\,
	combout => \s_startValue~33_combout\);

\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = s_startValue(15) $ (\Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

\s_startValue~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~34_combout\ = (\s_startValue[8]~11_combout\ & ((!\s_startValue~33_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \s_startValue[8]~11_combout\,
	datac => \s_startValue~33_combout\,
	combout => \s_startValue~34_combout\);

\s_startValue~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~35_combout\ = (!\s_startValue[8]~14_combout\ & ((\s_startValue~33_combout\ & ((!\s_startValue~34_combout\))) # (!\s_startValue~33_combout\ & (\Add2~14_combout\ & \s_startValue~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \s_startValue[8]~14_combout\,
	datac => \s_startValue~33_combout\,
	datad => \s_startValue~34_combout\,
	combout => \s_startValue~35_combout\);

\s_startValue[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~35_combout\,
	ena => \s_startValue[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(15));

\s_startValue[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[8]~13_combout\ = (!s_startValue(12) & (!s_startValue(13) & (!s_startValue(14) & !s_startValue(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(12),
	datab => s_startValue(13),
	datac => s_startValue(14),
	datad => s_startValue(15),
	combout => \s_startValue[8]~13_combout\);

\s_startValue[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[8]~14_combout\ = (\s_startValue[8]~9_combout\ & (\s_startValue[8]~13_combout\ & (!s_startValue(10) & !s_startValue(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue[8]~9_combout\,
	datab => \s_startValue[8]~13_combout\,
	datac => s_startValue(10),
	datad => s_startValue(11),
	combout => \s_startValue[8]~14_combout\);

\s_startValue~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~36_combout\ = (!\s_startValue[8]~14_combout\ & (!\s_startValue[8]~11_combout\ & ((\setM~input_o\) # (!\setS~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setS~input_o\,
	datab => \setM~input_o\,
	datac => \s_startValue[8]~14_combout\,
	datad => \s_startValue[8]~11_combout\,
	combout => \s_startValue~36_combout\);

\s_startValue~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~19_combout\ = (\s_startValue~18_combout\) # ((\s_startValue~36_combout\ & \Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue~18_combout\,
	datab => \s_startValue~36_combout\,
	datac => \Add3~2_combout\,
	combout => \s_startValue~19_combout\);

\s_startValue[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~19_combout\,
	ena => \s_startValue[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(9));

\s_startValue[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[8]~9_combout\ = (!s_startValue(8) & (!s_startValue(9) & ((\setM~input_o\) # (!\setS~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setM~input_o\,
	datab => \setS~input_o\,
	datac => s_startValue(8),
	datad => s_startValue(9),
	combout => \s_startValue[8]~9_combout\);

\s_startValue[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[8]~10_combout\ = (!s_startValue(10) & !s_startValue(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_startValue(10),
	datad => s_startValue(11),
	combout => \s_startValue[8]~10_combout\);

\s_startValue[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue[8]~11_combout\ = (\process_0~0_combout\ & ((\Equal1~0_combout\) # ((\s_startValue[8]~9_combout\ & \s_startValue[8]~10_combout\)))) # (!\process_0~0_combout\ & (\s_startValue[8]~9_combout\ & (\s_startValue[8]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \s_startValue[8]~9_combout\,
	datac => \s_startValue[8]~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_startValue[8]~11_combout\);

\s_startValue~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~12_combout\ = (\process_0~0_combout\ & ((\s_startValue[8]~11_combout\ & (\Add0~16_combout\)) # (!\s_startValue[8]~11_combout\ & ((\Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add0~16_combout\,
	datac => \Add1~16_combout\,
	datad => \s_startValue[8]~11_combout\,
	combout => \s_startValue~12_combout\);

\s_startValue~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startValue~15_combout\ = (!\s_startValue~12_combout\ & ((!\s_startValue~36_combout\) # (!\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startValue~12_combout\,
	datab => \Add3~0_combout\,
	datac => \s_startValue~36_combout\,
	combout => \s_startValue~15_combout\);

\s_startValue[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startValue~15_combout\,
	ena => \s_startValue[8]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_startValue(8));

\s_count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~24_combout\ = (!\s_count~23_combout\ & ((s_startValue(8)) # (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~23_combout\,
	datab => \reset~input_o\,
	datad => s_startValue(8),
	combout => \s_count~24_combout\);

\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~24_combout\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (s_count(9) & (\Add7~17\ & VCC)) # (!s_count(9) & (!\Add7~17\))
-- \Add7~19\ = CARRY((!s_count(9) & !\Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (s_count(9) & ((GND) # (!\Add5~15\))) # (!s_count(9) & (\Add5~15\ $ (GND)))
-- \Add5~17\ = CARRY((s_count(9)) # (!\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

\s_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~25_combout\ = (!\s_count[12]~10_combout\ & ((\s_count[12]~9_combout\ & (\Add7~18_combout\)) # (!\s_count[12]~9_combout\ & ((\Add5~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~18_combout\,
	datab => \Add5~16_combout\,
	datac => \s_count[12]~9_combout\,
	datad => \s_count[12]~10_combout\,
	combout => \s_count~25_combout\);

\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (s_count(9) & ((GND) # (!\Add6~15\))) # (!s_count(9) & (\Add6~15\ $ (GND)))
-- \Add6~17\ = CARRY((s_count(9)) # (!\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

\s_count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~26_combout\ = (\s_count~25_combout\) # ((\s_count[12]~9_combout\ & (\s_count[12]~10_combout\ & \Add6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~25_combout\,
	datab => \s_count[12]~9_combout\,
	datac => \s_count[12]~10_combout\,
	datad => \Add6~16_combout\,
	combout => \s_count~26_combout\);

\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~26_combout\,
	asdata => s_startValue(9),
	sload => \reset~input_o\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (s_count(10) & ((GND) # (!\Add7~19\))) # (!s_count(10) & (\Add7~19\ $ (GND)))
-- \Add7~21\ = CARRY((s_count(10)) # (!\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (s_count(10) & (\Add5~17\ & VCC)) # (!s_count(10) & (!\Add5~17\))
-- \Add5~19\ = CARRY((!s_count(10) & !\Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

\s_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~27_combout\ = (!\s_count[12]~10_combout\ & ((\s_count[12]~9_combout\ & (\Add7~20_combout\)) # (!\s_count[12]~9_combout\ & ((\Add5~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add5~18_combout\,
	datac => \s_count[12]~9_combout\,
	datad => \s_count[12]~10_combout\,
	combout => \s_count~27_combout\);

\Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (s_count(10) & (\Add6~17\ & VCC)) # (!s_count(10) & (!\Add6~17\))
-- \Add6~19\ = CARRY((!s_count(10) & !\Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

\s_count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~28_combout\ = (\s_count~27_combout\) # ((\s_count[12]~9_combout\ & (\s_count[12]~10_combout\ & \Add6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~27_combout\,
	datab => \s_count[12]~9_combout\,
	datac => \s_count[12]~10_combout\,
	datad => \Add6~18_combout\,
	combout => \s_count~28_combout\);

\s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~28_combout\,
	asdata => s_startValue(10),
	sload => \reset~input_o\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(10));

\s_count[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~4_combout\ = (s_count(8) & (s_count(11) & (!s_count(9) & !s_count(10))))

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
	combout => \s_count[12]~4_combout\);

\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\s_count[12]~2_combout\ & (\s_count[12]~5_combout\ & (\s_count[12]~3_combout\ & \s_count[12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~2_combout\,
	datab => \s_count[12]~5_combout\,
	datac => \s_count[12]~3_combout\,
	datad => \s_count[12]~4_combout\,
	combout => \Equal5~0_combout\);

\s_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~8_combout\ = (!\s_enable~q\ & ((\reset~input_o\) # ((\s_termCount~0_combout\ & !\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_termCount~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \s_enable~q\,
	combout => \s_count[0]~8_combout\);

\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~11_combout\,
	asdata => s_startValue(1),
	sload => \reset~input_o\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

\s_count[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~5_combout\ = (s_count(0) & (s_count(3) & (!s_count(1) & !s_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => s_count(3),
	datac => s_count(1),
	datad => s_count(2),
	combout => \s_count[12]~5_combout\);

\s_count[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~10_combout\ = (\s_count[12]~5_combout\ & (((\s_count[12]~4_combout\ & !\s_count[12]~3_combout\)) # (!\s_count[12]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~5_combout\,
	datab => \s_count[12]~4_combout\,
	datac => \s_count[12]~3_combout\,
	datad => \s_count[12]~2_combout\,
	combout => \s_count[12]~10_combout\);

\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (s_count(11) & (\Add5~19\ $ (GND))) # (!s_count(11) & ((GND) # (!\Add5~19\)))
-- \Add5~21\ = CARRY((!\Add5~19\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

\s_count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~29_combout\ = (!\reset~input_o\ & (!\s_count[12]~9_combout\ & ((\s_count[12]~10_combout\) # (\Add5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~10_combout\,
	datab => \Add5~20_combout\,
	datac => \reset~input_o\,
	datad => \s_count[12]~9_combout\,
	combout => \s_count~29_combout\);

\Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (s_count(11) & (\Add6~19\ $ (GND))) # (!s_count(11) & ((GND) # (!\Add6~19\)))
-- \Add6~21\ = CARRY((!\Add6~19\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (s_count(11) & (!\Add7~21\)) # (!s_count(11) & (\Add7~21\ & VCC))
-- \Add7~23\ = CARRY((s_count(11) & !\Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

\s_count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~30_combout\ = (\s_count[12]~10_combout\ & (\Add6~20_combout\)) # (!\s_count[12]~10_combout\ & (((\s_count[12]~9_combout\ & \Add7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datab => \s_count[12]~9_combout\,
	datac => \Add7~22_combout\,
	datad => \s_count[12]~10_combout\,
	combout => \s_count~30_combout\);

\s_count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~31_combout\ = (!\s_count~29_combout\ & ((\reset~input_o\ & ((s_startValue(11)))) # (!\reset~input_o\ & (!\s_count~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~29_combout\,
	datab => \s_count~30_combout\,
	datac => \reset~input_o\,
	datad => s_startValue(11),
	combout => \s_count~31_combout\);

\s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~31_combout\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(11));

\Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~1_cout\ = CARRY((s_count(1) & !s_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => s_count(0),
	datad => VCC,
	cout => \Add4~1_cout\);

\Add4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~3_cout\ = CARRY((!\Add4~1_cout\) # (!s_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \Add4~1_cout\,
	cout => \Add4~3_cout\);

\Add4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~5_cout\ = CARRY((!\Add4~3_cout\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \Add4~3_cout\,
	cout => \Add4~5_cout\);

\Add4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~7_cout\ = CARRY((s_count(4) & !\Add4~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \Add4~5_cout\,
	cout => \Add4~7_cout\);

\Add4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~9_cout\ = CARRY((s_count(5) & !\Add4~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \Add4~7_cout\,
	cout => \Add4~9_cout\);

\Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~11_cout\ = CARRY((s_count(6) & !\Add4~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \Add4~9_cout\,
	cout => \Add4~11_cout\);

\Add4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~13_cout\ = CARRY((s_count(7) & !\Add4~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \Add4~11_cout\,
	cout => \Add4~13_cout\);

\Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~15_cout\ = CARRY((s_count(8) & !\Add4~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \Add4~13_cout\,
	cout => \Add4~15_cout\);

\Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~17_cout\ = CARRY((s_count(9) & !\Add4~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \Add4~15_cout\,
	cout => \Add4~17_cout\);

\Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~19_cout\ = CARRY((!\Add4~17_cout\) # (!s_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \Add4~17_cout\,
	cout => \Add4~19_cout\);

\Add4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~21_cout\ = CARRY((!\Add4~19_cout\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \Add4~19_cout\,
	cout => \Add4~21_cout\);

\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (s_count(12) & (!\Add4~21_cout\)) # (!s_count(12) & (\Add4~21_cout\ & VCC))
-- \Add4~23\ = CARRY((s_count(12) & !\Add4~21_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \Add4~21_cout\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (s_count(12) & (\Add7~23\ $ (GND))) # (!s_count(12) & ((GND) # (!\Add7~23\)))
-- \Add7~25\ = CARRY((!\Add7~23\) # (!s_count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (s_count(12) & (!\Add5~21\)) # (!s_count(12) & (\Add5~21\ & VCC))
-- \Add5~23\ = CARRY((s_count(12) & !\Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

\s_count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~32_combout\ = (\s_count[12]~10_combout\ & (((\s_count[12]~9_combout\)))) # (!\s_count[12]~10_combout\ & ((\s_count[12]~9_combout\ & (\Add7~24_combout\)) # (!\s_count[12]~9_combout\ & ((\Add5~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~10_combout\,
	datab => \Add7~24_combout\,
	datac => \s_count[12]~9_combout\,
	datad => \Add5~22_combout\,
	combout => \s_count~32_combout\);

\Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (s_count(12) & (!\Add6~21\)) # (!s_count(12) & (\Add6~21\ & VCC))
-- \Add6~23\ = CARRY((s_count(12) & !\Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

\s_count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~33_combout\ = (\s_count[12]~10_combout\ & ((\s_count~32_combout\ & ((\Add6~22_combout\))) # (!\s_count~32_combout\ & (\Add4~22_combout\)))) # (!\s_count[12]~10_combout\ & (((\s_count~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~22_combout\,
	datab => \s_count[12]~10_combout\,
	datac => \s_count~32_combout\,
	datad => \Add6~22_combout\,
	combout => \s_count~33_combout\);

\s_count~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~34_combout\ = (\reset~input_o\ & ((s_startValue(12)))) # (!\reset~input_o\ & (!\s_count~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~33_combout\,
	datac => \reset~input_o\,
	datad => s_startValue(12),
	combout => \s_count~34_combout\);

\s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~34_combout\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(12));

\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (s_count(13) & (\Add7~25\ & VCC)) # (!s_count(13) & (!\Add7~25\))
-- \Add7~27\ = CARRY((!s_count(13) & !\Add7~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (s_count(13) & ((GND) # (!\Add4~23\))) # (!s_count(13) & (\Add4~23\ $ (GND)))
-- \Add4~25\ = CARRY((s_count(13)) # (!\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (s_count(13) & ((GND) # (!\Add5~23\))) # (!s_count(13) & (\Add5~23\ $ (GND)))
-- \Add5~25\ = CARRY((s_count(13)) # (!\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

\s_count~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~35_combout\ = (\s_count[12]~9_combout\ & (((\s_count[12]~10_combout\)))) # (!\s_count[12]~9_combout\ & ((\s_count[12]~10_combout\ & (\Add4~24_combout\)) # (!\s_count[12]~10_combout\ & ((\Add5~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~9_combout\,
	datab => \Add4~24_combout\,
	datac => \s_count[12]~10_combout\,
	datad => \Add5~24_combout\,
	combout => \s_count~35_combout\);

\Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (s_count(13) & ((GND) # (!\Add6~23\))) # (!s_count(13) & (\Add6~23\ $ (GND)))
-- \Add6~25\ = CARRY((s_count(13)) # (!\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

\s_count~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~36_combout\ = (\s_count[12]~9_combout\ & ((\s_count~35_combout\ & ((\Add6~24_combout\))) # (!\s_count~35_combout\ & (\Add7~26_combout\)))) # (!\s_count[12]~9_combout\ & (((\s_count~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~26_combout\,
	datab => \s_count[12]~9_combout\,
	datac => \s_count~35_combout\,
	datad => \Add6~24_combout\,
	combout => \s_count~36_combout\);

\s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~36_combout\,
	asdata => s_startValue(13),
	sload => \reset~input_o\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(13));

\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (s_count(14) & (!\Add4~25\)) # (!s_count(14) & (\Add4~25\ & VCC))
-- \Add4~27\ = CARRY((s_count(14) & !\Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (s_count(14) & (\Add7~27\ $ (GND))) # (!s_count(14) & ((GND) # (!\Add7~27\)))
-- \Add7~29\ = CARRY((!\Add7~27\) # (!s_count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

\Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (s_count(14) & (!\Add5~25\)) # (!s_count(14) & (\Add5~25\ & VCC))
-- \Add5~27\ = CARRY((s_count(14) & !\Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

\s_count~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~37_combout\ = (\s_count[12]~10_combout\ & (((\s_count[12]~9_combout\)))) # (!\s_count[12]~10_combout\ & ((\s_count[12]~9_combout\ & (\Add7~28_combout\)) # (!\s_count[12]~9_combout\ & ((\Add5~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~10_combout\,
	datab => \Add7~28_combout\,
	datac => \s_count[12]~9_combout\,
	datad => \Add5~26_combout\,
	combout => \s_count~37_combout\);

\Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (s_count(14) & (!\Add6~25\)) # (!s_count(14) & (\Add6~25\ & VCC))
-- \Add6~27\ = CARRY((s_count(14) & !\Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

\s_count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~38_combout\ = (\s_count[12]~10_combout\ & ((\s_count~37_combout\ & ((\Add6~26_combout\))) # (!\s_count~37_combout\ & (\Add4~26_combout\)))) # (!\s_count[12]~10_combout\ & (((\s_count~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datab => \s_count[12]~10_combout\,
	datac => \s_count~37_combout\,
	datad => \Add6~26_combout\,
	combout => \s_count~38_combout\);

\s_count~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~39_combout\ = (\reset~input_o\ & ((s_startValue(14)))) # (!\reset~input_o\ & (!\s_count~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count~38_combout\,
	datac => \reset~input_o\,
	datad => s_startValue(14),
	combout => \s_count~39_combout\);

\s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~39_combout\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(14));

\Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = s_count(15) $ (!\Add7~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	cin => \Add7~29\,
	combout => \Add7~30_combout\);

\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = s_count(15) $ (\Add4~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	cin => \Add4~27\,
	combout => \Add4~28_combout\);

\Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = s_count(15) $ (\Add5~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	cin => \Add5~27\,
	combout => \Add5~28_combout\);

\s_count~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~40_combout\ = (\s_count[12]~9_combout\ & (((\s_count[12]~10_combout\)))) # (!\s_count[12]~9_combout\ & ((\s_count[12]~10_combout\ & (\Add4~28_combout\)) # (!\s_count[12]~10_combout\ & ((\Add5~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~9_combout\,
	datab => \Add4~28_combout\,
	datac => \s_count[12]~10_combout\,
	datad => \Add5~28_combout\,
	combout => \s_count~40_combout\);

\Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = s_count(15) $ (\Add6~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	cin => \Add6~27\,
	combout => \Add6~28_combout\);

\s_count~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~41_combout\ = (\s_count[12]~9_combout\ & ((\s_count~40_combout\ & ((\Add6~28_combout\))) # (!\s_count~40_combout\ & (\Add7~30_combout\)))) # (!\s_count[12]~9_combout\ & (((\s_count~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~30_combout\,
	datab => \s_count[12]~9_combout\,
	datac => \s_count~40_combout\,
	datad => \Add6~28_combout\,
	combout => \s_count~41_combout\);

\s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~41_combout\,
	asdata => s_startValue(15),
	sload => \reset~input_o\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(15));

\s_count[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~3_combout\ = (s_count(12) & (s_count(14) & (!s_count(13) & !s_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datab => s_count(14),
	datac => s_count(13),
	datad => s_count(15),
	combout => \s_count[12]~3_combout\);

\s_count[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~9_combout\ = (((\s_count[12]~3_combout\ & \s_count[12]~4_combout\)) # (!\s_count[12]~5_combout\)) # (!\s_count[12]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~3_combout\,
	datab => \s_count[12]~4_combout\,
	datac => \s_count[12]~2_combout\,
	datad => \s_count[12]~5_combout\,
	combout => \s_count[12]~9_combout\);

\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (s_count(2) & ((GND) # (!\Add7~3\))) # (!s_count(2) & (\Add7~3\ $ (GND)))
-- \Add7~5\ = CARRY((s_count(2)) # (!\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

\s_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~12_combout\ = (\s_count[12]~9_combout\ & (\Add7~4_combout\ & !\s_count[12]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~9_combout\,
	datab => \Add7~4_combout\,
	datad => \s_count[12]~10_combout\,
	combout => \s_count~12_combout\);

\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~12_combout\,
	asdata => s_startValue(2),
	sload => \reset~input_o\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

\s_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~13_combout\ = (\reset~input_o\ & (((s_startValue(3))))) # (!\reset~input_o\ & (!\Add7~6_combout\ & (\s_count~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \s_count~6_combout\,
	datac => \reset~input_o\,
	datad => s_startValue(3),
	combout => \s_count~13_combout\);

\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~13_combout\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY((s_count(1) & !s_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => s_count(0),
	datad => VCC,
	cout => \Add6~1_cout\);

\Add6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~3_cout\ = CARRY((!\Add6~1_cout\) # (!s_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \Add6~1_cout\,
	cout => \Add6~3_cout\);

\Add6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~5_cout\ = CARRY((!\Add6~3_cout\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \Add6~3_cout\,
	cout => \Add6~5_cout\);

\s_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~14_combout\ = ((\s_count[12]~10_combout\ & (\Add6~6_combout\)) # (!\s_count[12]~10_combout\ & ((\Add7~8_combout\)))) # (!\s_count[12]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => \Add7~8_combout\,
	datac => \s_count[12]~10_combout\,
	datad => \s_count[12]~9_combout\,
	combout => \s_count[4]~14_combout\);

\s_count[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~15_combout\ = (\s_count[0]~8_combout\ & (\s_count[4]~14_combout\ & ((!\reset~input_o\)))) # (!\s_count[0]~8_combout\ & (((!s_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[4]~14_combout\,
	datab => \s_count[0]~8_combout\,
	datac => s_count(4),
	datad => \reset~input_o\,
	combout => \s_count[4]~15_combout\);

\s_count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~16_combout\ = (!\s_count[4]~15_combout\ & (((s_startValue(4)) # (\s_enable~q\)) # (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[4]~15_combout\,
	datab => \reset~input_o\,
	datac => s_startValue(4),
	datad => \s_enable~q\,
	combout => \s_count[4]~16_combout\);

\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

\s_count[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~2_combout\ = (s_count(4) & (s_count(6) & (!s_count(5) & !s_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datab => s_count(6),
	datac => s_count(5),
	datad => s_count(7),
	combout => \s_count[12]~2_combout\);

\s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~6_combout\ = ((\s_count[12]~2_combout\ & (\s_count[12]~3_combout\ & \s_count[12]~4_combout\))) # (!\s_count[12]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[12]~2_combout\,
	datab => \s_count[12]~3_combout\,
	datac => \s_count[12]~4_combout\,
	datad => \s_count[12]~5_combout\,
	combout => \s_count~6_combout\);

\s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~7_combout\ = (\reset~input_o\ & (((s_startValue(0))))) # (!\reset~input_o\ & (!\Add7~0_combout\ & (\s_count~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \s_count~6_combout\,
	datac => \reset~input_o\,
	datad => s_startValue(0),
	combout => \s_count~7_combout\);

\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count~7_combout\,
	ena => \s_count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

\countOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~0_combout\ = (\set~input_o\ & ((!s_startValue(0)))) # (!\set~input_o\ & (!s_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	datac => s_count(0),
	datad => s_startValue(0),
	combout => \countOut~0_combout\);

\countOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~1_combout\ = (\set~input_o\ & (s_startValue(1))) # (!\set~input_o\ & ((s_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(1),
	datab => s_count(1),
	datad => \set~input_o\,
	combout => \countOut~1_combout\);

\countOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~2_combout\ = (\set~input_o\ & (s_startValue(2))) # (!\set~input_o\ & ((s_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(2),
	datab => s_count(2),
	datad => \set~input_o\,
	combout => \countOut~2_combout\);

\countOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~3_combout\ = (\set~input_o\ & ((!s_startValue(3)))) # (!\set~input_o\ & (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	datac => s_count(3),
	datad => s_startValue(3),
	combout => \countOut~3_combout\);

\countOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~4_combout\ = (\set~input_o\ & ((!s_startValue(4)))) # (!\set~input_o\ & (!s_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	datac => s_count(4),
	datad => s_startValue(4),
	combout => \countOut~4_combout\);

\countOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~5_combout\ = (\set~input_o\ & (s_startValue(5))) # (!\set~input_o\ & ((s_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(5),
	datab => s_count(5),
	datad => \set~input_o\,
	combout => \countOut~5_combout\);

\countOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~6_combout\ = (\set~input_o\ & ((!s_startValue(6)))) # (!\set~input_o\ & (!s_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	datac => s_count(6),
	datad => s_startValue(6),
	combout => \countOut~6_combout\);

\countOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~7_combout\ = (\set~input_o\ & (s_startValue(7))) # (!\set~input_o\ & ((s_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(7),
	datab => s_count(7),
	datad => \set~input_o\,
	combout => \countOut~7_combout\);

\countOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~8_combout\ = (\set~input_o\ & ((!s_startValue(8)))) # (!\set~input_o\ & (!s_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	datac => s_count(8),
	datad => s_startValue(8),
	combout => \countOut~8_combout\);

\countOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~9_combout\ = (\set~input_o\ & (s_startValue(9))) # (!\set~input_o\ & ((s_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(9),
	datab => s_count(9),
	datad => \set~input_o\,
	combout => \countOut~9_combout\);

\countOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~10_combout\ = (\set~input_o\ & (s_startValue(10))) # (!\set~input_o\ & ((s_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(10),
	datab => s_count(10),
	datad => \set~input_o\,
	combout => \countOut~10_combout\);

\countOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~11_combout\ = (\set~input_o\ & ((!s_startValue(11)))) # (!\set~input_o\ & (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	datac => s_count(11),
	datad => s_startValue(11),
	combout => \countOut~11_combout\);

\countOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~12_combout\ = (\set~input_o\ & ((!s_startValue(12)))) # (!\set~input_o\ & (!s_count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	datac => s_count(12),
	datad => s_startValue(12),
	combout => \countOut~12_combout\);

\countOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~13_combout\ = (\set~input_o\ & (s_startValue(13))) # (!\set~input_o\ & ((s_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(13),
	datab => s_count(13),
	datad => \set~input_o\,
	combout => \countOut~13_combout\);

\countOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~14_combout\ = (\set~input_o\ & ((!s_startValue(14)))) # (!\set~input_o\ & (!s_count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \set~input_o\,
	datac => s_count(14),
	datad => s_startValue(14),
	combout => \countOut~14_combout\);

\countOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \countOut~15_combout\ = (\set~input_o\ & (s_startValue(15))) # (!\set~input_o\ & ((s_count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_startValue(15),
	datab => s_count(15),
	datad => \set~input_o\,
	combout => \countOut~15_combout\);

\s_termCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_termCount~1_combout\ = (\s_termCount~q\) # ((\Equal5~0_combout\ & \s_termCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_termCount~q\,
	datab => \Equal5~0_combout\,
	datac => \s_termCount~0_combout\,
	combout => \s_termCount~1_combout\);

s_termCount : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_termCount~1_combout\,
	sclr => \reset~input_o\,
	ena => \ALT_INV_s_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_termCount~q\);

\termCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \termCount~0_combout\ = (\s_termCount~q\ & !\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_termCount~q\,
	datad => \set~input_o\,
	combout => \termCount~0_combout\);

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

ww_termCount <= \termCount~output_o\;
END structure;


