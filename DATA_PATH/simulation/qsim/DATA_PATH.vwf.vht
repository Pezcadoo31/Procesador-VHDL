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
-- Generated on "05/16/2024 12:02:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DATA_PATH
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DATA_PATH_vhd_vec_tst IS
END DATA_PATH_vhd_vec_tst;
ARCHITECTURE DATA_PATH_arch OF DATA_PATH_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_Load : STD_LOGIC;
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ALU_Sel : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B_Load : STD_LOGIC;
SIGNAL Bus1_Sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Bus2_Sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL CCR_Load : STD_LOGIC;
SIGNAL CCR_Result : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL from_memory : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IR_Load : STD_LOGIC;
SIGNAL MAR_Load : STD_LOGIC;
SIGNAL PC_Inc : STD_LOGIC;
SIGNAL PC_Load : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL to_memory : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT DATA_PATH
	PORT (
	A_Load : IN STD_LOGIC;
	address : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ALU_Sel : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	B_Load : IN STD_LOGIC;
	Bus1_Sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Bus2_Sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	CCR_Load : IN STD_LOGIC;
	CCR_Result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	from_memory : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	IR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IR_Load : IN STD_LOGIC;
	MAR_Load : IN STD_LOGIC;
	PC_Inc : IN STD_LOGIC;
	PC_Load : IN STD_LOGIC;
	RST : IN STD_LOGIC;
	to_memory : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DATA_PATH
	PORT MAP (
-- list connections between master ports and signals
	A_Load => A_Load,
	address => address,
	ALU_Sel => ALU_Sel,
	B_Load => B_Load,
	Bus1_Sel => Bus1_Sel,
	Bus2_Sel => Bus2_Sel,
	CCR_Load => CCR_Load,
	CCR_Result => CCR_Result,
	CLK => CLK,
	from_memory => from_memory,
	IR => IR,
	IR_Load => IR_Load,
	MAR_Load => MAR_Load,
	PC_Inc => PC_Inc,
	PC_Load => PC_Load,
	RST => RST,
	to_memory => to_memory
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		CLK <= '0';
		WAIT FOR 40000 ps;
		CLK <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- A_Load
t_prcs_A_Load: PROCESS
BEGIN
	A_Load <= '0';
	WAIT FOR 160000 ps;
	A_Load <= '1';
	WAIT FOR 80000 ps;
	A_Load <= '0';
WAIT;
END PROCESS t_prcs_A_Load;
-- ALU_Sel[7]
t_prcs_ALU_Sel_7: PROCESS
BEGIN
	ALU_Sel(7) <= '0';
WAIT;
END PROCESS t_prcs_ALU_Sel_7;
-- ALU_Sel[6]
t_prcs_ALU_Sel_6: PROCESS
BEGIN
	ALU_Sel(6) <= '0';
WAIT;
END PROCESS t_prcs_ALU_Sel_6;
-- ALU_Sel[5]
t_prcs_ALU_Sel_5: PROCESS
BEGIN
	ALU_Sel(5) <= '0';
WAIT;
END PROCESS t_prcs_ALU_Sel_5;
-- ALU_Sel[4]
t_prcs_ALU_Sel_4: PROCESS
BEGIN
	ALU_Sel(4) <= '0';
WAIT;
END PROCESS t_prcs_ALU_Sel_4;
-- ALU_Sel[3]
t_prcs_ALU_Sel_3: PROCESS
BEGIN
	ALU_Sel(3) <= '0';
WAIT;
END PROCESS t_prcs_ALU_Sel_3;
-- ALU_Sel[2]
t_prcs_ALU_Sel_2: PROCESS
BEGIN
	ALU_Sel(2) <= '0';
WAIT;
END PROCESS t_prcs_ALU_Sel_2;
-- ALU_Sel[1]
t_prcs_ALU_Sel_1: PROCESS
BEGIN
	ALU_Sel(1) <= '0';
WAIT;
END PROCESS t_prcs_ALU_Sel_1;
-- ALU_Sel[0]
t_prcs_ALU_Sel_0: PROCESS
BEGIN
	ALU_Sel(0) <= '0';
WAIT;
END PROCESS t_prcs_ALU_Sel_0;

-- B_Load
t_prcs_B_Load: PROCESS
BEGIN
	B_Load <= '0';
WAIT;
END PROCESS t_prcs_B_Load;
-- Bus1_Sel[1]
t_prcs_Bus1_Sel_1: PROCESS
BEGIN
	Bus1_Sel(1) <= '0';
WAIT;
END PROCESS t_prcs_Bus1_Sel_1;
-- Bus1_Sel[0]
t_prcs_Bus1_Sel_0: PROCESS
BEGIN
	Bus1_Sel(0) <= '0';
	WAIT FOR 240000 ps;
	Bus1_Sel(0) <= '1';
	WAIT FOR 280000 ps;
	Bus1_Sel(0) <= '0';
WAIT;
END PROCESS t_prcs_Bus1_Sel_0;
-- Bus2_Sel[1]
t_prcs_Bus2_Sel_1: PROCESS
BEGIN
	Bus2_Sel(1) <= '0';
	WAIT FOR 80000 ps;
	Bus2_Sel(1) <= '1';
	WAIT FOR 80000 ps;
	Bus2_Sel(1) <= '0';
WAIT;
END PROCESS t_prcs_Bus2_Sel_1;
-- Bus2_Sel[0]
t_prcs_Bus2_Sel_0: PROCESS
BEGIN
	Bus2_Sel(0) <= '0';
WAIT;
END PROCESS t_prcs_Bus2_Sel_0;

-- CCR_Load
t_prcs_CCR_Load: PROCESS
BEGIN
	CCR_Load <= '0';
WAIT;
END PROCESS t_prcs_CCR_Load;
-- from_memory[7]
t_prcs_from_memory_7: PROCESS
BEGIN
	from_memory(7) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_7;
-- from_memory[6]
t_prcs_from_memory_6: PROCESS
BEGIN
	from_memory(6) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_6;
-- from_memory[5]
t_prcs_from_memory_5: PROCESS
BEGIN
	from_memory(5) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_5;
-- from_memory[4]
t_prcs_from_memory_4: PROCESS
BEGIN
	from_memory(4) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_4;
-- from_memory[3]
t_prcs_from_memory_3: PROCESS
BEGIN
	from_memory(3) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_3;
-- from_memory[2]
t_prcs_from_memory_2: PROCESS
BEGIN
	from_memory(2) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_2;
-- from_memory[1]
t_prcs_from_memory_1: PROCESS
BEGIN
	from_memory(1) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_1;
-- from_memory[0]
t_prcs_from_memory_0: PROCESS
BEGIN
	from_memory(0) <= '1';
WAIT;
END PROCESS t_prcs_from_memory_0;

-- IR_Load
t_prcs_IR_Load: PROCESS
BEGIN
	IR_Load <= '0';
WAIT;
END PROCESS t_prcs_IR_Load;

-- MAR_Load
t_prcs_MAR_Load: PROCESS
BEGIN
	MAR_Load <= '0';
WAIT;
END PROCESS t_prcs_MAR_Load;

-- PC_Inc
t_prcs_PC_Inc: PROCESS
BEGIN
	PC_Inc <= '0';
WAIT;
END PROCESS t_prcs_PC_Inc;

-- PC_Load
t_prcs_PC_Load: PROCESS
BEGIN
	PC_Load <= '0';
WAIT;
END PROCESS t_prcs_PC_Load;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;
END DATA_PATH_arch;
