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
-- Generated on "04/18/2024 19:11:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU_8BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_8BITS_vhd_vec_tst IS
END ALU_8BITS_vhd_vec_tst;
ARCHITECTURE ALU_8BITS_arch OF ALU_8BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;
SIGNAL contROL : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ALU_8BITS
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Cin : IN STD_LOGIC;
	contROL : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Cout : BUFFER STD_LOGIC;
	S : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU_8BITS
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	contROL => contROL,
	Cout => Cout,
	S => S
	);
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
WAIT;
END PROCESS t_prcs_Cin;
-- contROL[7]
t_prcs_contROL_7: PROCESS
BEGIN
	contROL(7) <= '0';
WAIT;
END PROCESS t_prcs_contROL_7;
-- contROL[6]
t_prcs_contROL_6: PROCESS
BEGIN
	contROL(6) <= '0';
WAIT;
END PROCESS t_prcs_contROL_6;
-- contROL[5]
t_prcs_contROL_5: PROCESS
BEGIN
	contROL(5) <= '0';
WAIT;
END PROCESS t_prcs_contROL_5;
-- contROL[4]
t_prcs_contROL_4: PROCESS
BEGIN
	contROL(4) <= '0';
WAIT;
END PROCESS t_prcs_contROL_4;
-- contROL[3]
t_prcs_contROL_3: PROCESS
BEGIN
	contROL(3) <= '0';
WAIT;
END PROCESS t_prcs_contROL_3;
-- contROL[2]
t_prcs_contROL_2: PROCESS
BEGIN
	contROL(2) <= '0';
WAIT;
END PROCESS t_prcs_contROL_2;
-- contROL[1]
t_prcs_contROL_1: PROCESS
BEGIN
	contROL(1) <= '0';
WAIT;
END PROCESS t_prcs_contROL_1;
-- contROL[0]
t_prcs_contROL_0: PROCESS
BEGIN
	contROL(0) <= '1';
WAIT;
END PROCESS t_prcs_contROL_0;
END ALU_8BITS_arch;
