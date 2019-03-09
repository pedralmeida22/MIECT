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
-- Generated on "11/05/2018 16:19:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PCupdate
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PCupdate_vhd_vec_tst IS
END PCupdate_vhd_vec_tst;
ARCHITECTURE PCupdate_arch OF PCupdate_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL branch : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL jAddr26 : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL jump : STD_LOGIC;
SIGNAL offset32 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL zero : STD_LOGIC;
COMPONENT PCupdate
	PORT (
	branch : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	jAddr26 : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
	jump : IN STD_LOGIC;
	offset32 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC;
	zero : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PCupdate
	PORT MAP (
-- list connections between master ports and signals
	branch => branch,
	clock => clock,
	jAddr26 => jAddr26,
	jump => jump,
	offset32 => offset32,
	PC => PC,
	reset => reset,
	zero => zero
	);

-- branch
t_prcs_branch: PROCESS
BEGIN
	branch <= '0';
	WAIT FOR 270000 ps;
	branch <= '1';
	WAIT FOR 10000 ps;
	branch <= '0';
	WAIT FOR 40000 ps;
	branch <= '1';
	WAIT FOR 10000 ps;
	branch <= '0';
WAIT;
END PROCESS t_prcs_branch;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- jAddr26[25]
t_prcs_jAddr26_25: PROCESS
BEGIN
	jAddr26(25) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_25;
-- jAddr26[24]
t_prcs_jAddr26_24: PROCESS
BEGIN
	jAddr26(24) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_24;
-- jAddr26[23]
t_prcs_jAddr26_23: PROCESS
BEGIN
	jAddr26(23) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_23;
-- jAddr26[22]
t_prcs_jAddr26_22: PROCESS
BEGIN
	jAddr26(22) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_22;
-- jAddr26[21]
t_prcs_jAddr26_21: PROCESS
BEGIN
	jAddr26(21) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_21;
-- jAddr26[20]
t_prcs_jAddr26_20: PROCESS
BEGIN
	jAddr26(20) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_20;
-- jAddr26[19]
t_prcs_jAddr26_19: PROCESS
BEGIN
	jAddr26(19) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_19;
-- jAddr26[18]
t_prcs_jAddr26_18: PROCESS
BEGIN
	jAddr26(18) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_18;
-- jAddr26[17]
t_prcs_jAddr26_17: PROCESS
BEGIN
	jAddr26(17) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_17;
-- jAddr26[16]
t_prcs_jAddr26_16: PROCESS
BEGIN
	jAddr26(16) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_16;
-- jAddr26[15]
t_prcs_jAddr26_15: PROCESS
BEGIN
	jAddr26(15) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_15;
-- jAddr26[14]
t_prcs_jAddr26_14: PROCESS
BEGIN
	jAddr26(14) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_14;
-- jAddr26[13]
t_prcs_jAddr26_13: PROCESS
BEGIN
	jAddr26(13) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_13;
-- jAddr26[12]
t_prcs_jAddr26_12: PROCESS
BEGIN
	jAddr26(12) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_12;
-- jAddr26[11]
t_prcs_jAddr26_11: PROCESS
BEGIN
	jAddr26(11) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_11;
-- jAddr26[10]
t_prcs_jAddr26_10: PROCESS
BEGIN
	jAddr26(10) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_10;
-- jAddr26[9]
t_prcs_jAddr26_9: PROCESS
BEGIN
	jAddr26(9) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_9;
-- jAddr26[8]
t_prcs_jAddr26_8: PROCESS
BEGIN
	jAddr26(8) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_8;
-- jAddr26[7]
t_prcs_jAddr26_7: PROCESS
BEGIN
	jAddr26(7) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_7;
-- jAddr26[6]
t_prcs_jAddr26_6: PROCESS
BEGIN
	jAddr26(6) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_6;
-- jAddr26[5]
t_prcs_jAddr26_5: PROCESS
BEGIN
	jAddr26(5) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_5;
-- jAddr26[4]
t_prcs_jAddr26_4: PROCESS
BEGIN
	jAddr26(4) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_4;
-- jAddr26[3]
t_prcs_jAddr26_3: PROCESS
BEGIN
	jAddr26(3) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_3;
-- jAddr26[2]
t_prcs_jAddr26_2: PROCESS
BEGIN
	jAddr26(2) <= '1';
WAIT;
END PROCESS t_prcs_jAddr26_2;
-- jAddr26[1]
t_prcs_jAddr26_1: PROCESS
BEGIN
	jAddr26(1) <= '0';
WAIT;
END PROCESS t_prcs_jAddr26_1;
-- jAddr26[0]
t_prcs_jAddr26_0: PROCESS
BEGIN
	jAddr26(0) <= '1';
WAIT;
END PROCESS t_prcs_jAddr26_0;
-- offset32[31]
t_prcs_offset32_31: PROCESS
BEGIN
	offset32(31) <= '0';
WAIT;
END PROCESS t_prcs_offset32_31;
-- offset32[30]
t_prcs_offset32_30: PROCESS
BEGIN
	offset32(30) <= '0';
WAIT;
END PROCESS t_prcs_offset32_30;
-- offset32[29]
t_prcs_offset32_29: PROCESS
BEGIN
	offset32(29) <= '0';
WAIT;
END PROCESS t_prcs_offset32_29;
-- offset32[28]
t_prcs_offset32_28: PROCESS
BEGIN
	offset32(28) <= '0';
WAIT;
END PROCESS t_prcs_offset32_28;
-- offset32[27]
t_prcs_offset32_27: PROCESS
BEGIN
	offset32(27) <= '0';
WAIT;
END PROCESS t_prcs_offset32_27;
-- offset32[26]
t_prcs_offset32_26: PROCESS
BEGIN
	offset32(26) <= '0';
WAIT;
END PROCESS t_prcs_offset32_26;
-- offset32[25]
t_prcs_offset32_25: PROCESS
BEGIN
	offset32(25) <= '0';
WAIT;
END PROCESS t_prcs_offset32_25;
-- offset32[24]
t_prcs_offset32_24: PROCESS
BEGIN
	offset32(24) <= '0';
WAIT;
END PROCESS t_prcs_offset32_24;
-- offset32[23]
t_prcs_offset32_23: PROCESS
BEGIN
	offset32(23) <= '0';
WAIT;
END PROCESS t_prcs_offset32_23;
-- offset32[22]
t_prcs_offset32_22: PROCESS
BEGIN
	offset32(22) <= '0';
WAIT;
END PROCESS t_prcs_offset32_22;
-- offset32[21]
t_prcs_offset32_21: PROCESS
BEGIN
	offset32(21) <= '0';
WAIT;
END PROCESS t_prcs_offset32_21;
-- offset32[20]
t_prcs_offset32_20: PROCESS
BEGIN
	offset32(20) <= '0';
WAIT;
END PROCESS t_prcs_offset32_20;
-- offset32[19]
t_prcs_offset32_19: PROCESS
BEGIN
	offset32(19) <= '0';
WAIT;
END PROCESS t_prcs_offset32_19;
-- offset32[18]
t_prcs_offset32_18: PROCESS
BEGIN
	offset32(18) <= '0';
WAIT;
END PROCESS t_prcs_offset32_18;
-- offset32[17]
t_prcs_offset32_17: PROCESS
BEGIN
	offset32(17) <= '0';
WAIT;
END PROCESS t_prcs_offset32_17;
-- offset32[16]
t_prcs_offset32_16: PROCESS
BEGIN
	offset32(16) <= '0';
WAIT;
END PROCESS t_prcs_offset32_16;
-- offset32[15]
t_prcs_offset32_15: PROCESS
BEGIN
	offset32(15) <= '0';
WAIT;
END PROCESS t_prcs_offset32_15;
-- offset32[14]
t_prcs_offset32_14: PROCESS
BEGIN
	offset32(14) <= '0';
WAIT;
END PROCESS t_prcs_offset32_14;
-- offset32[13]
t_prcs_offset32_13: PROCESS
BEGIN
	offset32(13) <= '0';
WAIT;
END PROCESS t_prcs_offset32_13;
-- offset32[12]
t_prcs_offset32_12: PROCESS
BEGIN
	offset32(12) <= '0';
WAIT;
END PROCESS t_prcs_offset32_12;
-- offset32[11]
t_prcs_offset32_11: PROCESS
BEGIN
	offset32(11) <= '0';
WAIT;
END PROCESS t_prcs_offset32_11;
-- offset32[10]
t_prcs_offset32_10: PROCESS
BEGIN
	offset32(10) <= '0';
WAIT;
END PROCESS t_prcs_offset32_10;
-- offset32[9]
t_prcs_offset32_9: PROCESS
BEGIN
	offset32(9) <= '0';
WAIT;
END PROCESS t_prcs_offset32_9;
-- offset32[8]
t_prcs_offset32_8: PROCESS
BEGIN
	offset32(8) <= '0';
WAIT;
END PROCESS t_prcs_offset32_8;
-- offset32[7]
t_prcs_offset32_7: PROCESS
BEGIN
	offset32(7) <= '0';
WAIT;
END PROCESS t_prcs_offset32_7;
-- offset32[6]
t_prcs_offset32_6: PROCESS
BEGIN
	offset32(6) <= '0';
WAIT;
END PROCESS t_prcs_offset32_6;
-- offset32[5]
t_prcs_offset32_5: PROCESS
BEGIN
	offset32(5) <= '0';
WAIT;
END PROCESS t_prcs_offset32_5;
-- offset32[4]
t_prcs_offset32_4: PROCESS
BEGIN
	offset32(4) <= '0';
WAIT;
END PROCESS t_prcs_offset32_4;
-- offset32[3]
t_prcs_offset32_3: PROCESS
BEGIN
	offset32(3) <= '0';
WAIT;
END PROCESS t_prcs_offset32_3;
-- offset32[2]
t_prcs_offset32_2: PROCESS
BEGIN
	offset32(2) <= '0';
WAIT;
END PROCESS t_prcs_offset32_2;
-- offset32[1]
t_prcs_offset32_1: PROCESS
BEGIN
	offset32(1) <= '0';
WAIT;
END PROCESS t_prcs_offset32_1;
-- offset32[0]
t_prcs_offset32_0: PROCESS
BEGIN
	offset32(0) <= '0';
WAIT;
END PROCESS t_prcs_offset32_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 120000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- zero
t_prcs_zero: PROCESS
BEGIN
	zero <= '0';
	WAIT FOR 320000 ps;
	zero <= '1';
	WAIT FOR 10000 ps;
	zero <= '0';
WAIT;
END PROCESS t_prcs_zero;

-- jump
t_prcs_jump: PROCESS
BEGIN
	jump <= '0';
	WAIT FOR 170000 ps;
	jump <= '1';
	WAIT FOR 10000 ps;
	jump <= '0';
WAIT;
END PROCESS t_prcs_jump;
END PCupdate_arch;
