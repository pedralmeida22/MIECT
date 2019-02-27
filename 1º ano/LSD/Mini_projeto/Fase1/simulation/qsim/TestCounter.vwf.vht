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
-- Generated on "04/09/2018 14:34:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerCounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerCounter_vhd_vec_tst IS
END TimerCounter_vhd_vec_tst;
ARCHITECTURE TimerCounter_arch OF TimerCounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL countOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL disp1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL disp2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL disp3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL disp4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL termCount : STD_LOGIC;
COMPONENT TimerCounter
	PORT (
	clk : IN STD_LOGIC;
	countOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	disp1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	disp2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	disp3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	disp4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	termCount : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TimerCounter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	countOut => countOut,
	disp1 => disp1,
	disp2 => disp2,
	disp3 => disp3,
	disp4 => disp4,
	enable => enable,
	reset => reset,
	start => start,
	termCount => termCount
	);

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 499
	LOOP
		clk <= '0';
		WAIT FOR 1000 ps;
		clk <= '1';
		WAIT FOR 1000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
	WAIT FOR 320000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 60000 ps;
	start <= '1';
	WAIT FOR 80000 ps;
	start <= '0';
	WAIT FOR 120000 ps;
	start <= '1';
	WAIT FOR 60000 ps;
	start <= '0';
	WAIT FOR 120000 ps;
	start <= '1';
	WAIT FOR 60000 ps;
	start <= '0';
	WAIT FOR 100000 ps;
	start <= '1';
	WAIT FOR 140000 ps;
	start <= '0';
	WAIT FOR 40000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END TimerCounter_arch;
