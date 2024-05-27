-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- Generated on "05/16/2024 13:48:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BIT_SLICE
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BIT_SLICE_vhd_vec_tst IS
END BIT_SLICE_vhd_vec_tst;
ARCHITECTURE BIT_SLICE_arch OF BIT_SLICE_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL AmasB : STD_LOGIC;
SIGNAL AnB : STD_LOGIC;
SIGNAL AoB : STD_LOGIC;
SIGNAL AxB : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL NA : STD_LOGIC;
SIGNAL NB : STD_LOGIC;
SIGNAL notA : STD_LOGIC;
SIGNAL notB : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT BIT_SLICE
	PORT (
	A : IN STD_LOGIC;
	AmasB : IN STD_LOGIC;
	AnB : IN STD_LOGIC;
	AoB : IN STD_LOGIC;
	AxB : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : OUT STD_LOGIC;
	Cin : IN STD_LOGIC;
	NA : IN STD_LOGIC;
	NB : IN STD_LOGIC;
	notA : IN STD_LOGIC;
	notB : IN STD_LOGIC;
	S : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BIT_SLICE
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AmasB => AmasB,
	AnB => AnB,
	AoB => AoB,
	AxB => AxB,
	B => B,
	C => C,
	Cin => Cin,
	NA => NA,
	NB => NB,
	notA => notA,
	notB => notB,
	S => S
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 5
	LOOP
		A <= '0';
		WAIT FOR 80000 ps;
		A <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A <= '0';
	WAIT FOR 80000 ps;
	A <= '1';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '1';
	WAIT FOR 160000 ps;
	FOR i IN 1 TO 2
	LOOP
		B <= '0';
		WAIT FOR 160000 ps;
		B <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	B <= '0';
	WAIT FOR 160000 ps;
	B <= '1';
WAIT;
END PROCESS t_prcs_B;

-- AmasB
t_prcs_AmasB: PROCESS
BEGIN
	AmasB <= '1';
	WAIT FOR 80000 ps;
	AmasB <= '0';
	WAIT FOR 240000 ps;
	AmasB <= '1';
	WAIT FOR 80000 ps;
	AmasB <= '0';
WAIT;
END PROCESS t_prcs_AmasB;

-- AnB
t_prcs_AnB: PROCESS
BEGIN
	AnB <= '0';
	WAIT FOR 80000 ps;
	AnB <= '1';
	WAIT FOR 80000 ps;
	AnB <= '0';
WAIT;
END PROCESS t_prcs_AnB;

-- AoB
t_prcs_AoB: PROCESS
BEGIN
	AoB <= '0';
	WAIT FOR 160000 ps;
	AoB <= '1';
	WAIT FOR 80000 ps;
	AoB <= '0';
WAIT;
END PROCESS t_prcs_AoB;

-- AxB
t_prcs_AxB: PROCESS
BEGIN
	AxB <= '0';
	WAIT FOR 240000 ps;
	AxB <= '1';
	WAIT FOR 80000 ps;
	AxB <= '0';
WAIT;
END PROCESS t_prcs_AxB;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;

-- NA
t_prcs_NA: PROCESS
BEGIN
	NA <= '0';
	WAIT FOR 320000 ps;
	NA <= '1';
	WAIT FOR 80000 ps;
	NA <= '0';
WAIT;
END PROCESS t_prcs_NA;

-- NB
t_prcs_NB: PROCESS
BEGIN
	NB <= '0';
WAIT;
END PROCESS t_prcs_NB;

-- notA
t_prcs_notA: PROCESS
BEGIN
	notA <= '0';
WAIT;
END PROCESS t_prcs_notA;

-- notB
t_prcs_notB: PROCESS
BEGIN
	notB <= '0';
WAIT;
END PROCESS t_prcs_notB;
END BIT_SLICE_arch;
