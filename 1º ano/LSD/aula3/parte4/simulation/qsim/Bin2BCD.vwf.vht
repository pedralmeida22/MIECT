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
-- Generated on "03/07/2018 14:30:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin2BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin2BCD_vhd_vec_tst IS
END Bin2BCD_vhd_vec_tst;
ARCHITECTURE Bin2BCD_arch OF Bin2BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL bcd1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL bcd2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL bin : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Bin2BCD
	PORT (
	bcd0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	bcd1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	bcd2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	bin : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin2BCD
	PORT MAP (
-- list connections between master ports and signals
	bcd0 => bcd0,
	bcd1 => bcd1,
	bcd2 => bcd2,
	bin => bin
	);
-- bin[7]
t_prcs_bin_7: PROCESS
BEGIN
	bin(7) <= '0';
	WAIT FOR 20000 ps;
	bin(7) <= '1';
	WAIT FOR 50000 ps;
	bin(7) <= '0';
	WAIT FOR 50000 ps;
	bin(7) <= '1';
	WAIT FOR 50000 ps;
	bin(7) <= '0';
	WAIT FOR 50000 ps;
	bin(7) <= '1';
	WAIT FOR 300000 ps;
	bin(7) <= '0';
	WAIT FOR 50000 ps;
	bin(7) <= '1';
	WAIT FOR 100000 ps;
	bin(7) <= '0';
	WAIT FOR 50000 ps;
	bin(7) <= '1';
	WAIT FOR 50000 ps;
	bin(7) <= '0';
	WAIT FOR 50000 ps;
	bin(7) <= '1';
	WAIT FOR 100000 ps;
	bin(7) <= '0';
	WAIT FOR 50000 ps;
	bin(7) <= '1';
WAIT;
END PROCESS t_prcs_bin_7;
-- bin[6]
t_prcs_bin_6: PROCESS
BEGIN
	bin(6) <= '0';
	WAIT FOR 170000 ps;
	bin(6) <= '1';
	WAIT FOR 100000 ps;
	bin(6) <= '0';
	WAIT FOR 50000 ps;
	bin(6) <= '1';
	WAIT FOR 100000 ps;
	bin(6) <= '0';
	WAIT FOR 50000 ps;
	bin(6) <= '1';
	WAIT FOR 100000 ps;
	bin(6) <= '0';
	WAIT FOR 100000 ps;
	bin(6) <= '1';
	WAIT FOR 50000 ps;
	bin(6) <= '0';
	WAIT FOR 50000 ps;
	bin(6) <= '1';
WAIT;
END PROCESS t_prcs_bin_6;
-- bin[5]
t_prcs_bin_5: PROCESS
BEGIN
	bin(5) <= '0';
	WAIT FOR 70000 ps;
	bin(5) <= '1';
	WAIT FOR 150000 ps;
	bin(5) <= '0';
	WAIT FOR 50000 ps;
	bin(5) <= '1';
	WAIT FOR 100000 ps;
	bin(5) <= '0';
	WAIT FOR 50000 ps;
	bin(5) <= '1';
	WAIT FOR 100000 ps;
	bin(5) <= '0';
	WAIT FOR 200000 ps;
	bin(5) <= '1';
	WAIT FOR 50000 ps;
	bin(5) <= '0';
	WAIT FOR 50000 ps;
	bin(5) <= '1';
	WAIT FOR 50000 ps;
	bin(5) <= '0';
	WAIT FOR 100000 ps;
	bin(5) <= '1';
WAIT;
END PROCESS t_prcs_bin_5;
-- bin[4]
t_prcs_bin_4: PROCESS
BEGIN
	bin(4) <= '0';
	WAIT FOR 20000 ps;
	bin(4) <= '1';
	WAIT FOR 100000 ps;
	bin(4) <= '0';
	WAIT FOR 50000 ps;
	bin(4) <= '1';
	WAIT FOR 50000 ps;
	bin(4) <= '0';
	WAIT FOR 50000 ps;
	bin(4) <= '1';
	WAIT FOR 200000 ps;
	bin(4) <= '0';
	WAIT FOR 150000 ps;
	bin(4) <= '1';
	WAIT FOR 100000 ps;
	bin(4) <= '0';
	WAIT FOR 150000 ps;
	bin(4) <= '1';
	WAIT FOR 50000 ps;
	bin(4) <= '0';
	WAIT FOR 50000 ps;
	bin(4) <= '1';
WAIT;
END PROCESS t_prcs_bin_4;
-- bin[3]
t_prcs_bin_3: PROCESS
BEGIN
	bin(3) <= '0';
	WAIT FOR 20000 ps;
	bin(3) <= '1';
	WAIT FOR 50000 ps;
	bin(3) <= '0';
	WAIT FOR 100000 ps;
	bin(3) <= '1';
	WAIT FOR 50000 ps;
	bin(3) <= '0';
	WAIT FOR 50000 ps;
	bin(3) <= '1';
	WAIT FOR 150000 ps;
	bin(3) <= '0';
	WAIT FOR 50000 ps;
	bin(3) <= '1';
	WAIT FOR 50000 ps;
	bin(3) <= '0';
	WAIT FOR 50000 ps;
	bin(3) <= '1';
	WAIT FOR 300000 ps;
	bin(3) <= '0';
	WAIT FOR 100000 ps;
	bin(3) <= '1';
WAIT;
END PROCESS t_prcs_bin_3;
-- bin[2]
t_prcs_bin_2: PROCESS
BEGIN
	bin(2) <= '0';
	WAIT FOR 20000 ps;
	bin(2) <= '1';
	WAIT FOR 150000 ps;
	bin(2) <= '0';
	WAIT FOR 100000 ps;
	bin(2) <= '1';
	WAIT FOR 100000 ps;
	bin(2) <= '0';
	WAIT FOR 50000 ps;
	bin(2) <= '1';
	WAIT FOR 50000 ps;
	bin(2) <= '0';
	WAIT FOR 100000 ps;
	bin(2) <= '1';
	WAIT FOR 50000 ps;
	bin(2) <= '0';
	WAIT FOR 250000 ps;
	bin(2) <= '1';
	WAIT FOR 50000 ps;
	bin(2) <= '0';
	WAIT FOR 50000 ps;
	bin(2) <= '1';
WAIT;
END PROCESS t_prcs_bin_2;
-- bin[1]
t_prcs_bin_1: PROCESS
BEGIN
	bin(1) <= '0';
	WAIT FOR 20000 ps;
	bin(1) <= '1';
	WAIT FOR 100000 ps;
	bin(1) <= '0';
	WAIT FOR 150000 ps;
	bin(1) <= '1';
	WAIT FOR 150000 ps;
	bin(1) <= '0';
	WAIT FOR 150000 ps;
	bin(1) <= '1';
	WAIT FOR 100000 ps;
	bin(1) <= '0';
	WAIT FOR 50000 ps;
	bin(1) <= '1';
	WAIT FOR 50000 ps;
	bin(1) <= '0';
	WAIT FOR 100000 ps;
	bin(1) <= '1';
	WAIT FOR 50000 ps;
	bin(1) <= '0';
WAIT;
END PROCESS t_prcs_bin_1;
-- bin[0]
t_prcs_bin_0: PROCESS
BEGIN
	bin(0) <= '0';
	WAIT FOR 70000 ps;
	bin(0) <= '1';
	WAIT FOR 50000 ps;
	bin(0) <= '0';
	WAIT FOR 50000 ps;
	bin(0) <= '1';
	WAIT FOR 50000 ps;
	bin(0) <= '0';
	WAIT FOR 100000 ps;
	bin(0) <= '1';
	WAIT FOR 50000 ps;
	bin(0) <= '0';
	WAIT FOR 150000 ps;
	bin(0) <= '1';
	WAIT FOR 100000 ps;
	bin(0) <= '0';
	WAIT FOR 50000 ps;
	bin(0) <= '1';
	WAIT FOR 150000 ps;
	bin(0) <= '0';
	WAIT FOR 50000 ps;
	bin(0) <= '1';
	WAIT FOR 50000 ps;
	bin(0) <= '0';
	WAIT FOR 50000 ps;
	bin(0) <= '1';
WAIT;
END PROCESS t_prcs_bin_0;
END Bin2BCD_arch;
