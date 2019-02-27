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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/10/2018 18:15:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerCounter_v2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerCounter_v2_vhd_vec_tst IS
END TimerCounter_v2_vhd_vec_tst;
ARCHITECTURE TimerCounter_v2_arch OF TimerCounter_v2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL countOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL set : STD_LOGIC;
SIGNAL setM : STD_LOGIC;
SIGNAL setS : STD_LOGIC;
SIGNAL startStop : STD_LOGIC;
SIGNAL termCount : STD_LOGIC;
COMPONENT TimerCounter_v2
	PORT (
	clk : IN STD_LOGIC;
	countOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC;
	set : IN STD_LOGIC;
	setM : IN STD_LOGIC;
	setS : IN STD_LOGIC;
	startStop : IN STD_LOGIC;
	termCount : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TimerCounter_v2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	countOut => countOut,
	reset => reset,
	set => set,
	setM => setM,
	setS => setS,
	startStop => startStop,
	termCount => termCount
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 100 ps;
	clk <= '1';
	WAIT FOR 100 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
	WAIT FOR 320000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- set
t_prcs_set: PROCESS
BEGIN
	set <= '0';
	WAIT FOR 80000 ps;
	set <= '1';
	WAIT FOR 180000 ps;
	set <= '0';
WAIT;
END PROCESS t_prcs_set;

-- setM
t_prcs_setM: PROCESS
BEGIN
	setM <= '0';
	WAIT FOR 80000 ps;
	setM <= '1';
	WAIT FOR 100000 ps;
	setM <= '0';
WAIT;
END PROCESS t_prcs_setM;

-- setS
t_prcs_setS: PROCESS
BEGIN
	setS <= '0';
	WAIT FOR 180000 ps;
	setS <= '1';
	WAIT FOR 80000 ps;
	setS <= '0';
WAIT;
END PROCESS t_prcs_setS;

-- startStop
t_prcs_startStop: PROCESS
BEGIN
	startStop <= '0';
WAIT;
END PROCESS t_prcs_startStop;
END TimerCounter_v2_arch;
