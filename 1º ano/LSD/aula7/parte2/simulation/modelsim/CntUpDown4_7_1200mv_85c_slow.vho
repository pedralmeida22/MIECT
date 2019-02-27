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

-- DATE "04/10/2018 10:53:59"

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

ENTITY 	CntUpDown4 IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	enable : IN std_logic;
	upDown_n : IN std_logic;
	cntOut : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END CntUpDown4;

-- Design Ports Information
-- cntOut[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntOut[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntOut[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cntOut[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upDown_n	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CntUpDown4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_upDown_n : std_logic;
SIGNAL ww_cntOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cntOut[0]~output_o\ : std_logic;
SIGNAL \cntOut[1]~output_o\ : std_logic;
SIGNAL \cntOut[2]~output_o\ : std_logic;
SIGNAL \cntOut[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_cntValue[0]~3_combout\ : std_logic;
SIGNAL \upDown_n~input_o\ : std_logic;
SIGNAL \s_cntValue[1]~5_cout\ : std_logic;
SIGNAL \s_cntValue[1]~6_combout\ : std_logic;
SIGNAL \s_cntValue[0]~8_combout\ : std_logic;
SIGNAL \s_cntValue[1]~7\ : std_logic;
SIGNAL \s_cntValue[2]~9_combout\ : std_logic;
SIGNAL \s_cntValue[2]~10\ : std_logic;
SIGNAL \s_cntValue[3]~11_combout\ : std_logic;
SIGNAL s_cntValue : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_enable <= enable;
ww_upDown_n <= upDown_n;
cntOut <= ww_cntOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y73_N23
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

-- Location: IOOBUF_X3_Y73_N9
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

-- Location: IOOBUF_X3_Y73_N2
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

-- Location: IOOBUF_X5_Y73_N23
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

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y73_N1
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X4_Y72_N4
\s_cntValue[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[0]~3_combout\ = (!\reset~input_o\ & (\enable~input_o\ $ (s_cntValue(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => s_cntValue(0),
	datad => \reset~input_o\,
	combout => \s_cntValue[0]~3_combout\);

-- Location: FF_X4_Y72_N5
\s_cntValue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_cntValue[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cntValue(0));

-- Location: IOIBUF_X1_Y73_N8
\upDown_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upDown_n,
	o => \upDown_n~input_o\);

-- Location: LCCOMB_X4_Y72_N6
\s_cntValue[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[1]~5_cout\ = CARRY(s_cntValue(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_cntValue(0),
	datad => VCC,
	cout => \s_cntValue[1]~5_cout\);

-- Location: LCCOMB_X4_Y72_N8
\s_cntValue[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[1]~6_combout\ = (\upDown_n~input_o\ & ((s_cntValue(1) & (!\s_cntValue[1]~5_cout\)) # (!s_cntValue(1) & ((\s_cntValue[1]~5_cout\) # (GND))))) # (!\upDown_n~input_o\ & ((s_cntValue(1) & (\s_cntValue[1]~5_cout\ & VCC)) # (!s_cntValue(1) & 
-- (!\s_cntValue[1]~5_cout\))))
-- \s_cntValue[1]~7\ = CARRY((\upDown_n~input_o\ & ((!\s_cntValue[1]~5_cout\) # (!s_cntValue(1)))) # (!\upDown_n~input_o\ & (!s_cntValue(1) & !\s_cntValue[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown_n~input_o\,
	datab => s_cntValue(1),
	datad => VCC,
	cin => \s_cntValue[1]~5_cout\,
	combout => \s_cntValue[1]~6_combout\,
	cout => \s_cntValue[1]~7\);

-- Location: LCCOMB_X4_Y72_N30
\s_cntValue[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[0]~8_combout\ = (\enable~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_cntValue[0]~8_combout\);

-- Location: FF_X4_Y72_N9
\s_cntValue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_cntValue[1]~6_combout\,
	sclr => \reset~input_o\,
	ena => \s_cntValue[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cntValue(1));

-- Location: LCCOMB_X4_Y72_N10
\s_cntValue[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[2]~9_combout\ = ((s_cntValue(2) $ (\upDown_n~input_o\ $ (\s_cntValue[1]~7\)))) # (GND)
-- \s_cntValue[2]~10\ = CARRY((s_cntValue(2) & ((!\s_cntValue[1]~7\) # (!\upDown_n~input_o\))) # (!s_cntValue(2) & (!\upDown_n~input_o\ & !\s_cntValue[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_cntValue(2),
	datab => \upDown_n~input_o\,
	datad => VCC,
	cin => \s_cntValue[1]~7\,
	combout => \s_cntValue[2]~9_combout\,
	cout => \s_cntValue[2]~10\);

-- Location: FF_X4_Y72_N11
\s_cntValue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_cntValue[2]~9_combout\,
	sclr => \reset~input_o\,
	ena => \s_cntValue[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cntValue(2));

-- Location: LCCOMB_X4_Y72_N12
\s_cntValue[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntValue[3]~11_combout\ = \upDown_n~input_o\ $ (\s_cntValue[2]~10\ $ (!s_cntValue(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \upDown_n~input_o\,
	datad => s_cntValue(3),
	cin => \s_cntValue[2]~10\,
	combout => \s_cntValue[3]~11_combout\);

-- Location: FF_X4_Y72_N13
\s_cntValue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_cntValue[3]~11_combout\,
	sclr => \reset~input_o\,
	ena => \s_cntValue[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cntValue(3));

ww_cntOut(0) <= \cntOut[0]~output_o\;

ww_cntOut(1) <= \cntOut[1]~output_o\;

ww_cntOut(2) <= \cntOut[2]~output_o\;

ww_cntOut(3) <= \cntOut[3]~output_o\;
END structure;


