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

-- DATE "05/07/2018 18:14:16"

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

ENTITY 	DrinksFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	coin20 : IN std_logic;
	coin50 : IN std_logic;
	drinkOut : OUT std_logic
	);
END DrinksFSM;

ARCHITECTURE structure OF DrinksFSM IS
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
SIGNAL ww_coin20 : std_logic;
SIGNAL ww_coin50 : std_logic;
SIGNAL ww_drinkOut : std_logic;
SIGNAL \drinkOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \coin20~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \coin50~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \s_nextState.CLEARED_571~combout\ : std_logic;
SIGNAL \s_currentState~16_combout\ : std_logic;
SIGNAL \s_currentState.CLEARED~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \s_nextState.E20_531~combout\ : std_logic;
SIGNAL \s_currentState~17_combout\ : std_logic;
SIGNAL \s_currentState.E20~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \s_nextState.E40_491~combout\ : std_logic;
SIGNAL \s_currentState~13_combout\ : std_logic;
SIGNAL \s_currentState.E40~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \s_nextState.E60_411~combout\ : std_logic;
SIGNAL \s_currentState~11_combout\ : std_logic;
SIGNAL \s_currentState.E60~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \s_nextState.E50_451~combout\ : std_logic;
SIGNAL \s_currentState~12_combout\ : std_logic;
SIGNAL \s_currentState.E50~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \s_nextState.E70_371~combout\ : std_logic;
SIGNAL \s_currentState~14_combout\ : std_logic;
SIGNAL \s_currentState.E70~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \s_nextState.E80_331~combout\ : std_logic;
SIGNAL \s_currentState~15_combout\ : std_logic;
SIGNAL \s_currentState.E80~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \s_nextState.DRINK_291~combout\ : std_logic;
SIGNAL \s_currentState~10_combout\ : std_logic;
SIGNAL \s_currentState.DRINK~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_coin20 <= coin20;
ww_coin50 <= coin50;
drinkOut <= ww_drinkOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\drinkOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentState.DRINK~q\,
	devoe => ww_devoe,
	o => \drinkOut~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\coin20~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin20,
	o => \coin20~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\s_currentState.DRINK~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.DRINK~q\,
	datab => \reset~input_o\,
	combout => \Selector1~0_combout\);

\coin50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin50,
	o => \coin50~input_o\);

\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\reset~input_o\) # ((!\s_currentState.DRINK~q\ & ((\coin20~input_o\) # (\coin50~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \coin20~input_o\,
	datac => \coin50~input_o\,
	datad => \s_currentState.DRINK~q\,
	combout => \Selector9~0_combout\);

\s_nextState.CLEARED_571\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.CLEARED_571~combout\ = (\Selector9~0_combout\ & (\Selector1~0_combout\)) # (!\Selector9~0_combout\ & ((\s_nextState.CLEARED_571~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => \s_nextState.CLEARED_571~combout\,
	datad => \Selector9~0_combout\,
	combout => \s_nextState.CLEARED_571~combout\);

\s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~16_combout\ = (!\reset~input_o\ & !\s_nextState.CLEARED_571~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_nextState.CLEARED_571~combout\,
	combout => \s_currentState~16_combout\);

\s_currentState.CLEARED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.CLEARED~q\);

\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\coin20~input_o\ & (!\reset~input_o\ & !\s_currentState.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin20~input_o\,
	datac => \reset~input_o\,
	datad => \s_currentState.CLEARED~q\,
	combout => \Selector2~0_combout\);

\s_nextState.E20_531\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E20_531~combout\ = (\Selector9~0_combout\ & (\Selector2~0_combout\)) # (!\Selector9~0_combout\ & ((\s_nextState.E20_531~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \s_nextState.E20_531~combout\,
	datad => \Selector9~0_combout\,
	combout => \s_nextState.E20_531~combout\);

\s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~17_combout\ = (\s_nextState.E20_531~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E20_531~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~17_combout\);

\s_currentState.E20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.E20~q\);

\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\coin20~input_o\ & (\s_currentState.E20~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin20~input_o\,
	datab => \s_currentState.E20~q\,
	datad => \reset~input_o\,
	combout => \Selector3~0_combout\);

\s_nextState.E40_491\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E40_491~combout\ = (\Selector9~0_combout\ & (\Selector3~0_combout\)) # (!\Selector9~0_combout\ & ((\s_nextState.E40_491~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~0_combout\,
	datac => \s_nextState.E40_491~combout\,
	datad => \Selector9~0_combout\,
	combout => \s_nextState.E40_491~combout\);

\s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~13_combout\ = (\s_nextState.E40_491~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E40_491~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~13_combout\);

\s_currentState.E40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.E40~q\);

\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\coin20~input_o\ & (\s_currentState.E40~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin20~input_o\,
	datab => \s_currentState.E40~q\,
	datad => \reset~input_o\,
	combout => \Selector5~0_combout\);

\s_nextState.E60_411\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E60_411~combout\ = (\Selector9~0_combout\ & (\Selector5~0_combout\)) # (!\Selector9~0_combout\ & ((\s_nextState.E60_411~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~0_combout\,
	datac => \s_nextState.E60_411~combout\,
	datad => \Selector9~0_combout\,
	combout => \s_nextState.E60_411~combout\);

\s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~11_combout\ = (\s_nextState.E60_411~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E60_411~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~11_combout\);

\s_currentState.E60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.E60~q\);

\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\reset~input_o\) # ((\coin20~input_o\) # (\s_currentState.CLEARED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \coin20~input_o\,
	datac => \s_currentState.CLEARED~q\,
	combout => \Selector4~0_combout\);

\s_nextState.E50_451\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E50_451~combout\ = (\Selector9~0_combout\ & (!\Selector4~0_combout\)) # (!\Selector9~0_combout\ & ((\s_nextState.E50_451~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~0_combout\,
	datac => \s_nextState.E50_451~combout\,
	datad => \Selector9~0_combout\,
	combout => \s_nextState.E50_451~combout\);

\s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~12_combout\ = (\s_nextState.E50_451~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E50_451~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~12_combout\);

\s_currentState.E50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.E50~q\);

\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\coin20~input_o\ & ((\s_currentState.E60~q\) # ((\s_currentState.E50~q\) # (\s_currentState.E40~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.E60~q\,
	datab => \s_currentState.E50~q\,
	datac => \s_currentState.E40~q\,
	datad => \coin20~input_o\,
	combout => \Selector0~0_combout\);

\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\reset~input_o\ & ((\coin20~input_o\ & (\s_currentState.E50~q\)) # (!\coin20~input_o\ & ((\s_currentState.E20~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.E50~q\,
	datab => \s_currentState.E20~q\,
	datac => \coin20~input_o\,
	datad => \reset~input_o\,
	combout => \Selector6~0_combout\);

\s_nextState.E70_371\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E70_371~combout\ = (\Selector9~0_combout\ & (\Selector6~0_combout\)) # (!\Selector9~0_combout\ & ((\s_nextState.E70_371~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~0_combout\,
	datac => \s_nextState.E70_371~combout\,
	datad => \Selector9~0_combout\,
	combout => \s_nextState.E70_371~combout\);

\s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~14_combout\ = (\s_nextState.E70_371~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E70_371~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~14_combout\);

\s_currentState.E70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.E70~q\);

\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\coin20~input_o\ & (\s_currentState.E60~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin20~input_o\,
	datab => \s_currentState.E60~q\,
	datad => \reset~input_o\,
	combout => \Selector7~0_combout\);

\s_nextState.E80_331\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E80_331~combout\ = (\Selector9~0_combout\ & (\Selector7~0_combout\)) # (!\Selector9~0_combout\ & ((\s_nextState.E80_331~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector7~0_combout\,
	datac => \s_nextState.E80_331~combout\,
	datad => \Selector9~0_combout\,
	combout => \s_nextState.E80_331~combout\);

\s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~15_combout\ = (\s_nextState.E80_331~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E80_331~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~15_combout\);

\s_currentState.E80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.E80~q\);

\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\reset~input_o\ & ((\Selector0~0_combout\) # ((\s_currentState.E70~q\) # (\s_currentState.E80~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \s_currentState.E70~q\,
	datac => \s_currentState.E80~q\,
	datad => \reset~input_o\,
	combout => \Selector0~1_combout\);

\s_nextState.DRINK_291\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.DRINK_291~combout\ = (\Selector9~0_combout\ & (\Selector0~1_combout\)) # (!\Selector9~0_combout\ & ((\s_nextState.DRINK_291~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~1_combout\,
	datac => \s_nextState.DRINK_291~combout\,
	datad => \Selector9~0_combout\,
	combout => \s_nextState.DRINK_291~combout\);

\s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~10_combout\ = (\s_nextState.DRINK_291~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.DRINK_291~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~10_combout\);

\s_currentState.DRINK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.DRINK~q\);

ww_drinkOut <= \drinkOut~output_o\;
END structure;


