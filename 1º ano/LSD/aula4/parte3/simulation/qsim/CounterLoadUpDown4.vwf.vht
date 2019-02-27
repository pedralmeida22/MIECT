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
-- Generated on "03/12/2018 18:56:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CounterLoadUpDown4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CounterLoadUpDown4_vhd_vec_tst IS
END CounterLoadUpDown4_vhd_vec_tst;
ARCHITECTURE CounterLoadUpDown4_arch OF CounterLoadUpDown4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cntOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL upDown_n : STD_LOGIC;
COMPONENT CounterLoadUpDown4
	PORT (
	clk : IN STD_LOGIC;
	cntOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	enable : IN STD_LOGIC;
	load : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	upDown_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CounterLoadUpDown4
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cntOut => cntOut,
	dataIn => dataIn,
	enable => enable,
	load => load,
	reset => reset,
	upDown_n => upDown_n
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 220000 ps;
	clk <= '0';
	WAIT FOR 120000 ps;
	clk <= '1';
	WAIT FOR 220000 ps;
	clk <= '0';
	WAIT FOR 120000 ps;
	clk <= '1';
	WAIT FOR 80000 ps;
	clk <= '0';
	WAIT FOR 80000 ps;
	clk <= '1';
	WAIT FOR 80000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	dataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_0;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
	WAIT FOR 660000 ps;
	load <= '1';
	WAIT FOR 100000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 320000 ps;
	reset <= '1';
	WAIT FOR 100000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- upDown_n
t_prcs_upDown_n: PROCESS
BEGIN
	upDown_n <= '1';
	WAIT FOR 160000 ps;
	upDown_n <= '0';
WAIT;
END PROCESS t_prcs_upDown_n;
END CounterLoadUpDown4_arch;
