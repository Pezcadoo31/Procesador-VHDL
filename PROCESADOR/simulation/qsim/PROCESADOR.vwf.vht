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
-- Generated on "05/20/2024 09:33:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PROCESADOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PROCESADOR_vhd_vec_tst IS
END PROCESADOR_vhd_vec_tst;
ARCHITECTURE PROCESADOR_arch OF PROCESADOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL port_in_00 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_01 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_02 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_03 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_04 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_05 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_06 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_07 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_08 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_09 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_10 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_11 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_12 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_13 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_14 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_in_15 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_00 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_01 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_02 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_03 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_04 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_05 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_06 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_07 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_08 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_09 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_10 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_11 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_12 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_13 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_14 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_15 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT PROCESADOR
	PORT (
	clk : IN STD_LOGIC;
	port_in_00 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_01 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_02 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_03 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_04 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_05 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_06 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_07 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_08 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_09 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_10 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_11 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_12 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_13 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_14 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_in_15 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_00 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_01 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_02 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_03 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_04 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_05 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_06 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_07 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_08 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_09 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_10 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_11 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_12 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_13 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_14 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_15 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PROCESADOR
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	port_in_00 => port_in_00,
	port_in_01 => port_in_01,
	port_in_02 => port_in_02,
	port_in_03 => port_in_03,
	port_in_04 => port_in_04,
	port_in_05 => port_in_05,
	port_in_06 => port_in_06,
	port_in_07 => port_in_07,
	port_in_08 => port_in_08,
	port_in_09 => port_in_09,
	port_in_10 => port_in_10,
	port_in_11 => port_in_11,
	port_in_12 => port_in_12,
	port_in_13 => port_in_13,
	port_in_14 => port_in_14,
	port_in_15 => port_in_15,
	port_out_00 => port_out_00,
	port_out_01 => port_out_01,
	port_out_02 => port_out_02,
	port_out_03 => port_out_03,
	port_out_04 => port_out_04,
	port_out_05 => port_out_05,
	port_out_06 => port_out_06,
	port_out_07 => port_out_07,
	port_out_08 => port_out_08,
	port_out_09 => port_out_09,
	port_out_10 => port_out_10,
	port_out_11 => port_out_11,
	port_out_12 => port_out_12,
	port_out_13 => port_out_13,
	port_out_14 => port_out_14,
	port_out_15 => port_out_15,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- port_in_00[7]
t_prcs_port_in_00_7: PROCESS
BEGIN
	port_in_00(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_00_7;
-- port_in_00[6]
t_prcs_port_in_00_6: PROCESS
BEGIN
	port_in_00(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_00_6;
-- port_in_00[5]
t_prcs_port_in_00_5: PROCESS
BEGIN
	port_in_00(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_00_5;
-- port_in_00[4]
t_prcs_port_in_00_4: PROCESS
BEGIN
	port_in_00(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_00_4;
-- port_in_00[3]
t_prcs_port_in_00_3: PROCESS
BEGIN
	port_in_00(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_00_3;
-- port_in_00[2]
t_prcs_port_in_00_2: PROCESS
BEGIN
	port_in_00(2) <= '1';
WAIT;
END PROCESS t_prcs_port_in_00_2;
-- port_in_00[1]
t_prcs_port_in_00_1: PROCESS
BEGIN
	port_in_00(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_00_1;
-- port_in_00[0]
t_prcs_port_in_00_0: PROCESS
BEGIN
	port_in_00(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_00_0;
-- port_in_01[7]
t_prcs_port_in_01_7: PROCESS
BEGIN
	port_in_01(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_01_7;
-- port_in_01[6]
t_prcs_port_in_01_6: PROCESS
BEGIN
	port_in_01(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_01_6;
-- port_in_01[5]
t_prcs_port_in_01_5: PROCESS
BEGIN
	port_in_01(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_01_5;
-- port_in_01[4]
t_prcs_port_in_01_4: PROCESS
BEGIN
	port_in_01(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_01_4;
-- port_in_01[3]
t_prcs_port_in_01_3: PROCESS
BEGIN
	port_in_01(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_01_3;
-- port_in_01[2]
t_prcs_port_in_01_2: PROCESS
BEGIN
	port_in_01(2) <= '1';
WAIT;
END PROCESS t_prcs_port_in_01_2;
-- port_in_01[1]
t_prcs_port_in_01_1: PROCESS
BEGIN
	port_in_01(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_01_1;
-- port_in_01[0]
t_prcs_port_in_01_0: PROCESS
BEGIN
	port_in_01(0) <= '1';
WAIT;
END PROCESS t_prcs_port_in_01_0;
-- port_in_02[7]
t_prcs_port_in_02_7: PROCESS
BEGIN
	port_in_02(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_02_7;
-- port_in_02[6]
t_prcs_port_in_02_6: PROCESS
BEGIN
	port_in_02(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_02_6;
-- port_in_02[5]
t_prcs_port_in_02_5: PROCESS
BEGIN
	port_in_02(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_02_5;
-- port_in_02[4]
t_prcs_port_in_02_4: PROCESS
BEGIN
	port_in_02(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_02_4;
-- port_in_02[3]
t_prcs_port_in_02_3: PROCESS
BEGIN
	port_in_02(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_02_3;
-- port_in_02[2]
t_prcs_port_in_02_2: PROCESS
BEGIN
	port_in_02(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_02_2;
-- port_in_02[1]
t_prcs_port_in_02_1: PROCESS
BEGIN
	port_in_02(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_02_1;
-- port_in_02[0]
t_prcs_port_in_02_0: PROCESS
BEGIN
	port_in_02(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_02_0;
-- port_in_03[7]
t_prcs_port_in_03_7: PROCESS
BEGIN
	port_in_03(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_03_7;
-- port_in_03[6]
t_prcs_port_in_03_6: PROCESS
BEGIN
	port_in_03(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_03_6;
-- port_in_03[5]
t_prcs_port_in_03_5: PROCESS
BEGIN
	port_in_03(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_03_5;
-- port_in_03[4]
t_prcs_port_in_03_4: PROCESS
BEGIN
	port_in_03(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_03_4;
-- port_in_03[3]
t_prcs_port_in_03_3: PROCESS
BEGIN
	port_in_03(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_03_3;
-- port_in_03[2]
t_prcs_port_in_03_2: PROCESS
BEGIN
	port_in_03(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_03_2;
-- port_in_03[1]
t_prcs_port_in_03_1: PROCESS
BEGIN
	port_in_03(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_03_1;
-- port_in_03[0]
t_prcs_port_in_03_0: PROCESS
BEGIN
	port_in_03(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_03_0;
-- port_in_04[7]
t_prcs_port_in_04_7: PROCESS
BEGIN
	port_in_04(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_04_7;
-- port_in_04[6]
t_prcs_port_in_04_6: PROCESS
BEGIN
	port_in_04(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_04_6;
-- port_in_04[5]
t_prcs_port_in_04_5: PROCESS
BEGIN
	port_in_04(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_04_5;
-- port_in_04[4]
t_prcs_port_in_04_4: PROCESS
BEGIN
	port_in_04(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_04_4;
-- port_in_04[3]
t_prcs_port_in_04_3: PROCESS
BEGIN
	port_in_04(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_04_3;
-- port_in_04[2]
t_prcs_port_in_04_2: PROCESS
BEGIN
	port_in_04(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_04_2;
-- port_in_04[1]
t_prcs_port_in_04_1: PROCESS
BEGIN
	port_in_04(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_04_1;
-- port_in_04[0]
t_prcs_port_in_04_0: PROCESS
BEGIN
	port_in_04(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_04_0;
-- port_in_05[7]
t_prcs_port_in_05_7: PROCESS
BEGIN
	port_in_05(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_05_7;
-- port_in_05[6]
t_prcs_port_in_05_6: PROCESS
BEGIN
	port_in_05(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_05_6;
-- port_in_05[5]
t_prcs_port_in_05_5: PROCESS
BEGIN
	port_in_05(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_05_5;
-- port_in_05[4]
t_prcs_port_in_05_4: PROCESS
BEGIN
	port_in_05(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_05_4;
-- port_in_05[3]
t_prcs_port_in_05_3: PROCESS
BEGIN
	port_in_05(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_05_3;
-- port_in_05[2]
t_prcs_port_in_05_2: PROCESS
BEGIN
	port_in_05(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_05_2;
-- port_in_05[1]
t_prcs_port_in_05_1: PROCESS
BEGIN
	port_in_05(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_05_1;
-- port_in_05[0]
t_prcs_port_in_05_0: PROCESS
BEGIN
	port_in_05(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_05_0;
-- port_in_06[7]
t_prcs_port_in_06_7: PROCESS
BEGIN
	port_in_06(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_06_7;
-- port_in_06[6]
t_prcs_port_in_06_6: PROCESS
BEGIN
	port_in_06(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_06_6;
-- port_in_06[5]
t_prcs_port_in_06_5: PROCESS
BEGIN
	port_in_06(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_06_5;
-- port_in_06[4]
t_prcs_port_in_06_4: PROCESS
BEGIN
	port_in_06(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_06_4;
-- port_in_06[3]
t_prcs_port_in_06_3: PROCESS
BEGIN
	port_in_06(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_06_3;
-- port_in_06[2]
t_prcs_port_in_06_2: PROCESS
BEGIN
	port_in_06(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_06_2;
-- port_in_06[1]
t_prcs_port_in_06_1: PROCESS
BEGIN
	port_in_06(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_06_1;
-- port_in_06[0]
t_prcs_port_in_06_0: PROCESS
BEGIN
	port_in_06(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_06_0;
-- port_in_07[7]
t_prcs_port_in_07_7: PROCESS
BEGIN
	port_in_07(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_07_7;
-- port_in_07[6]
t_prcs_port_in_07_6: PROCESS
BEGIN
	port_in_07(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_07_6;
-- port_in_07[5]
t_prcs_port_in_07_5: PROCESS
BEGIN
	port_in_07(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_07_5;
-- port_in_07[4]
t_prcs_port_in_07_4: PROCESS
BEGIN
	port_in_07(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_07_4;
-- port_in_07[3]
t_prcs_port_in_07_3: PROCESS
BEGIN
	port_in_07(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_07_3;
-- port_in_07[2]
t_prcs_port_in_07_2: PROCESS
BEGIN
	port_in_07(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_07_2;
-- port_in_07[1]
t_prcs_port_in_07_1: PROCESS
BEGIN
	port_in_07(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_07_1;
-- port_in_07[0]
t_prcs_port_in_07_0: PROCESS
BEGIN
	port_in_07(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_07_0;
-- port_in_08[7]
t_prcs_port_in_08_7: PROCESS
BEGIN
	port_in_08(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_08_7;
-- port_in_08[6]
t_prcs_port_in_08_6: PROCESS
BEGIN
	port_in_08(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_08_6;
-- port_in_08[5]
t_prcs_port_in_08_5: PROCESS
BEGIN
	port_in_08(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_08_5;
-- port_in_08[4]
t_prcs_port_in_08_4: PROCESS
BEGIN
	port_in_08(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_08_4;
-- port_in_08[3]
t_prcs_port_in_08_3: PROCESS
BEGIN
	port_in_08(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_08_3;
-- port_in_08[2]
t_prcs_port_in_08_2: PROCESS
BEGIN
	port_in_08(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_08_2;
-- port_in_08[1]
t_prcs_port_in_08_1: PROCESS
BEGIN
	port_in_08(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_08_1;
-- port_in_08[0]
t_prcs_port_in_08_0: PROCESS
BEGIN
	port_in_08(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_08_0;
-- port_in_09[7]
t_prcs_port_in_09_7: PROCESS
BEGIN
	port_in_09(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_09_7;
-- port_in_09[6]
t_prcs_port_in_09_6: PROCESS
BEGIN
	port_in_09(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_09_6;
-- port_in_09[5]
t_prcs_port_in_09_5: PROCESS
BEGIN
	port_in_09(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_09_5;
-- port_in_09[4]
t_prcs_port_in_09_4: PROCESS
BEGIN
	port_in_09(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_09_4;
-- port_in_09[3]
t_prcs_port_in_09_3: PROCESS
BEGIN
	port_in_09(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_09_3;
-- port_in_09[2]
t_prcs_port_in_09_2: PROCESS
BEGIN
	port_in_09(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_09_2;
-- port_in_09[1]
t_prcs_port_in_09_1: PROCESS
BEGIN
	port_in_09(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_09_1;
-- port_in_09[0]
t_prcs_port_in_09_0: PROCESS
BEGIN
	port_in_09(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_09_0;
-- port_in_10[7]
t_prcs_port_in_10_7: PROCESS
BEGIN
	port_in_10(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_10_7;
-- port_in_10[6]
t_prcs_port_in_10_6: PROCESS
BEGIN
	port_in_10(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_10_6;
-- port_in_10[5]
t_prcs_port_in_10_5: PROCESS
BEGIN
	port_in_10(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_10_5;
-- port_in_10[4]
t_prcs_port_in_10_4: PROCESS
BEGIN
	port_in_10(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_10_4;
-- port_in_10[3]
t_prcs_port_in_10_3: PROCESS
BEGIN
	port_in_10(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_10_3;
-- port_in_10[2]
t_prcs_port_in_10_2: PROCESS
BEGIN
	port_in_10(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_10_2;
-- port_in_10[1]
t_prcs_port_in_10_1: PROCESS
BEGIN
	port_in_10(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_10_1;
-- port_in_10[0]
t_prcs_port_in_10_0: PROCESS
BEGIN
	port_in_10(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_10_0;
-- port_in_11[7]
t_prcs_port_in_11_7: PROCESS
BEGIN
	port_in_11(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_11_7;
-- port_in_11[6]
t_prcs_port_in_11_6: PROCESS
BEGIN
	port_in_11(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_11_6;
-- port_in_11[5]
t_prcs_port_in_11_5: PROCESS
BEGIN
	port_in_11(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_11_5;
-- port_in_11[4]
t_prcs_port_in_11_4: PROCESS
BEGIN
	port_in_11(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_11_4;
-- port_in_11[3]
t_prcs_port_in_11_3: PROCESS
BEGIN
	port_in_11(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_11_3;
-- port_in_11[2]
t_prcs_port_in_11_2: PROCESS
BEGIN
	port_in_11(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_11_2;
-- port_in_11[1]
t_prcs_port_in_11_1: PROCESS
BEGIN
	port_in_11(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_11_1;
-- port_in_11[0]
t_prcs_port_in_11_0: PROCESS
BEGIN
	port_in_11(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_11_0;
-- port_in_12[7]
t_prcs_port_in_12_7: PROCESS
BEGIN
	port_in_12(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_12_7;
-- port_in_12[6]
t_prcs_port_in_12_6: PROCESS
BEGIN
	port_in_12(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_12_6;
-- port_in_12[5]
t_prcs_port_in_12_5: PROCESS
BEGIN
	port_in_12(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_12_5;
-- port_in_12[4]
t_prcs_port_in_12_4: PROCESS
BEGIN
	port_in_12(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_12_4;
-- port_in_12[3]
t_prcs_port_in_12_3: PROCESS
BEGIN
	port_in_12(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_12_3;
-- port_in_12[2]
t_prcs_port_in_12_2: PROCESS
BEGIN
	port_in_12(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_12_2;
-- port_in_12[1]
t_prcs_port_in_12_1: PROCESS
BEGIN
	port_in_12(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_12_1;
-- port_in_12[0]
t_prcs_port_in_12_0: PROCESS
BEGIN
	port_in_12(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_12_0;
-- port_in_13[7]
t_prcs_port_in_13_7: PROCESS
BEGIN
	port_in_13(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_13_7;
-- port_in_13[6]
t_prcs_port_in_13_6: PROCESS
BEGIN
	port_in_13(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_13_6;
-- port_in_13[5]
t_prcs_port_in_13_5: PROCESS
BEGIN
	port_in_13(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_13_5;
-- port_in_13[4]
t_prcs_port_in_13_4: PROCESS
BEGIN
	port_in_13(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_13_4;
-- port_in_13[3]
t_prcs_port_in_13_3: PROCESS
BEGIN
	port_in_13(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_13_3;
-- port_in_13[2]
t_prcs_port_in_13_2: PROCESS
BEGIN
	port_in_13(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_13_2;
-- port_in_13[1]
t_prcs_port_in_13_1: PROCESS
BEGIN
	port_in_13(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_13_1;
-- port_in_13[0]
t_prcs_port_in_13_0: PROCESS
BEGIN
	port_in_13(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_13_0;
-- port_in_14[7]
t_prcs_port_in_14_7: PROCESS
BEGIN
	port_in_14(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_14_7;
-- port_in_14[6]
t_prcs_port_in_14_6: PROCESS
BEGIN
	port_in_14(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_14_6;
-- port_in_14[5]
t_prcs_port_in_14_5: PROCESS
BEGIN
	port_in_14(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_14_5;
-- port_in_14[4]
t_prcs_port_in_14_4: PROCESS
BEGIN
	port_in_14(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_14_4;
-- port_in_14[3]
t_prcs_port_in_14_3: PROCESS
BEGIN
	port_in_14(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_14_3;
-- port_in_14[2]
t_prcs_port_in_14_2: PROCESS
BEGIN
	port_in_14(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_14_2;
-- port_in_14[1]
t_prcs_port_in_14_1: PROCESS
BEGIN
	port_in_14(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_14_1;
-- port_in_14[0]
t_prcs_port_in_14_0: PROCESS
BEGIN
	port_in_14(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_14_0;
-- port_in_15[7]
t_prcs_port_in_15_7: PROCESS
BEGIN
	port_in_15(7) <= '0';
WAIT;
END PROCESS t_prcs_port_in_15_7;
-- port_in_15[6]
t_prcs_port_in_15_6: PROCESS
BEGIN
	port_in_15(6) <= '0';
WAIT;
END PROCESS t_prcs_port_in_15_6;
-- port_in_15[5]
t_prcs_port_in_15_5: PROCESS
BEGIN
	port_in_15(5) <= '0';
WAIT;
END PROCESS t_prcs_port_in_15_5;
-- port_in_15[4]
t_prcs_port_in_15_4: PROCESS
BEGIN
	port_in_15(4) <= '0';
WAIT;
END PROCESS t_prcs_port_in_15_4;
-- port_in_15[3]
t_prcs_port_in_15_3: PROCESS
BEGIN
	port_in_15(3) <= '0';
WAIT;
END PROCESS t_prcs_port_in_15_3;
-- port_in_15[2]
t_prcs_port_in_15_2: PROCESS
BEGIN
	port_in_15(2) <= '0';
WAIT;
END PROCESS t_prcs_port_in_15_2;
-- port_in_15[1]
t_prcs_port_in_15_1: PROCESS
BEGIN
	port_in_15(1) <= '0';
WAIT;
END PROCESS t_prcs_port_in_15_1;
-- port_in_15[0]
t_prcs_port_in_15_0: PROCESS
BEGIN
	port_in_15(0) <= '0';
WAIT;
END PROCESS t_prcs_port_in_15_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END PROCESADOR_arch;
