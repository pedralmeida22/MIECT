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
-- Generated on "05/07/2018 18:14:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DrinksFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DrinksFSM_vhd_vec_tst IS
END DrinksFSM_vhd_vec_tst;
ARCHITECTURE DrinksFSM_arch OF DrinksFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL coin20 : STD_LOGIC;
SIGNAL coin50 : STD_LOGIC;
SIGNAL drinkOut : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT DrinksFSM
	PORT (
	clk : IN STD_LOGIC;
	coin20 : IN STD_LOGIC;
	coin50 : IN STD_LOGIC;
	drinkOut : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DrinksFSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	coin20 => coin20,
	coin50 => coin50,
	drinkOut => drinkOut,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk <= '0';
		WAIT FOR 30000 ps;
		clk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 30000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- coin20
t_prcs_coin20: PROCESS
BEGIN
	coin20 <= '0';
	WAIT FOR 20000 ps;
	coin20 <= '1';
	WAIT FOR 160000 ps;
	coin20 <= '0';
	WAIT FOR 200000 ps;
	coin20 <= '1';
	WAIT FOR 80000 ps;
	coin20 <= '0';
	WAIT FOR 400000 ps;
	coin20 <= '1';
	WAIT FOR 80000 ps;
	coin20 <= '0';
WAIT;
END PROCESS t_prcs_coin20;

-- coin50
t_prcs_coin50: PROCESS
BEGIN
	coin50 <= '0';
	WAIT FOR 200000 ps;
	coin50 <= '1';
	WAIT FOR 40000 ps;
	coin50 <= '0';
	WAIT FOR 80000 ps;
	coin50 <= '1';
	WAIT FOR 20000 ps;
	coin50 <= '0';
	WAIT FOR 280000 ps;
	coin50 <= '1';
	WAIT FOR 60000 ps;
	coin50 <= '0';
	WAIT FOR 120000 ps;
	coin50 <= '1';
	WAIT FOR 20000 ps;
	coin50 <= '0';
WAIT;
END PROCESS t_prcs_coin50;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 500000 ps;
	reset <= '1';
	WAIT FOR 100000 ps;
	reset <= '0';
	WAIT FOR 120000 ps;
	reset <= '1';
	WAIT FOR 60000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END DrinksFSM_arch;
