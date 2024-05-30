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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/28/2024 21:00:01"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PROCESADOR IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	port_in_00 : IN std_logic_vector(7 DOWNTO 0);
	port_in_01 : IN std_logic_vector(7 DOWNTO 0);
	port_in_02 : IN std_logic_vector(7 DOWNTO 0);
	port_in_03 : IN std_logic_vector(7 DOWNTO 0);
	port_in_04 : IN std_logic_vector(7 DOWNTO 0);
	port_in_05 : IN std_logic_vector(7 DOWNTO 0);
	port_in_06 : IN std_logic_vector(7 DOWNTO 0);
	port_in_07 : IN std_logic_vector(7 DOWNTO 0);
	port_in_08 : IN std_logic_vector(7 DOWNTO 0);
	port_in_09 : IN std_logic_vector(7 DOWNTO 0);
	port_in_10 : IN std_logic_vector(7 DOWNTO 0);
	port_in_11 : IN std_logic_vector(7 DOWNTO 0);
	port_in_12 : IN std_logic_vector(7 DOWNTO 0);
	port_in_13 : IN std_logic_vector(7 DOWNTO 0);
	port_in_14 : IN std_logic_vector(7 DOWNTO 0);
	port_in_15 : IN std_logic_vector(7 DOWNTO 0);
	port_out_00 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_01 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_02 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_03 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_04 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_05 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_06 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_07 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_08 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_09 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_10 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_11 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_12 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_13 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_14 : OUT std_logic_vector(7 DOWNTO 0);
	port_out_15 : OUT std_logic_vector(7 DOWNTO 0);
	segments : OUT std_logic_vector(13 DOWNTO 0)
	);
END PROCESADOR;

-- Design Ports Information
-- clk	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_00[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[3]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[5]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_01[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[0]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[5]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[6]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_02[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[3]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[6]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_03[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[1]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[2]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[4]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_04[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[1]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_05[7]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[5]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_06[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_07[7]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_08[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[4]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[5]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_09[7]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[0]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_10[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_11[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[6]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_12[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[4]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_13[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_14[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in_15[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[0]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_00[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[0]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[2]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[5]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_01[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[6]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_02[7]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[6]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_03[7]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[6]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_04[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[4]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_05[7]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_06[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[4]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[6]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_07[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_08[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[1]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_09[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[6]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_10[7]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_11[7]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[6]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_12[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[0]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[5]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_13[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_14[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[4]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[6]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out_15[7]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[8]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[9]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments[13]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PROCESADOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_port_in_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_03 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_04 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_05 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_06 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_07 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_08 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_09 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_15 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_03 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_04 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_05 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_06 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_07 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_08 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_09 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_15 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_segments : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \port_in_00[0]~input_o\ : std_logic;
SIGNAL \port_in_00[1]~input_o\ : std_logic;
SIGNAL \port_in_00[2]~input_o\ : std_logic;
SIGNAL \port_in_00[3]~input_o\ : std_logic;
SIGNAL \port_in_00[4]~input_o\ : std_logic;
SIGNAL \port_in_00[5]~input_o\ : std_logic;
SIGNAL \port_in_00[6]~input_o\ : std_logic;
SIGNAL \port_in_00[7]~input_o\ : std_logic;
SIGNAL \port_in_01[0]~input_o\ : std_logic;
SIGNAL \port_in_01[1]~input_o\ : std_logic;
SIGNAL \port_in_01[2]~input_o\ : std_logic;
SIGNAL \port_in_01[3]~input_o\ : std_logic;
SIGNAL \port_in_01[4]~input_o\ : std_logic;
SIGNAL \port_in_01[5]~input_o\ : std_logic;
SIGNAL \port_in_01[6]~input_o\ : std_logic;
SIGNAL \port_in_01[7]~input_o\ : std_logic;
SIGNAL \port_in_02[0]~input_o\ : std_logic;
SIGNAL \port_in_02[1]~input_o\ : std_logic;
SIGNAL \port_in_02[2]~input_o\ : std_logic;
SIGNAL \port_in_02[3]~input_o\ : std_logic;
SIGNAL \port_in_02[4]~input_o\ : std_logic;
SIGNAL \port_in_02[5]~input_o\ : std_logic;
SIGNAL \port_in_02[6]~input_o\ : std_logic;
SIGNAL \port_in_02[7]~input_o\ : std_logic;
SIGNAL \port_in_03[0]~input_o\ : std_logic;
SIGNAL \port_in_03[1]~input_o\ : std_logic;
SIGNAL \port_in_03[2]~input_o\ : std_logic;
SIGNAL \port_in_03[3]~input_o\ : std_logic;
SIGNAL \port_in_03[4]~input_o\ : std_logic;
SIGNAL \port_in_03[5]~input_o\ : std_logic;
SIGNAL \port_in_03[6]~input_o\ : std_logic;
SIGNAL \port_in_03[7]~input_o\ : std_logic;
SIGNAL \port_in_04[0]~input_o\ : std_logic;
SIGNAL \port_in_04[1]~input_o\ : std_logic;
SIGNAL \port_in_04[2]~input_o\ : std_logic;
SIGNAL \port_in_04[3]~input_o\ : std_logic;
SIGNAL \port_in_04[4]~input_o\ : std_logic;
SIGNAL \port_in_04[5]~input_o\ : std_logic;
SIGNAL \port_in_04[6]~input_o\ : std_logic;
SIGNAL \port_in_04[7]~input_o\ : std_logic;
SIGNAL \port_in_05[0]~input_o\ : std_logic;
SIGNAL \port_in_05[1]~input_o\ : std_logic;
SIGNAL \port_in_05[2]~input_o\ : std_logic;
SIGNAL \port_in_05[3]~input_o\ : std_logic;
SIGNAL \port_in_05[4]~input_o\ : std_logic;
SIGNAL \port_in_05[5]~input_o\ : std_logic;
SIGNAL \port_in_05[6]~input_o\ : std_logic;
SIGNAL \port_in_05[7]~input_o\ : std_logic;
SIGNAL \port_in_06[0]~input_o\ : std_logic;
SIGNAL \port_in_06[1]~input_o\ : std_logic;
SIGNAL \port_in_06[2]~input_o\ : std_logic;
SIGNAL \port_in_06[3]~input_o\ : std_logic;
SIGNAL \port_in_06[4]~input_o\ : std_logic;
SIGNAL \port_in_06[5]~input_o\ : std_logic;
SIGNAL \port_in_06[6]~input_o\ : std_logic;
SIGNAL \port_in_06[7]~input_o\ : std_logic;
SIGNAL \port_in_07[0]~input_o\ : std_logic;
SIGNAL \port_in_07[1]~input_o\ : std_logic;
SIGNAL \port_in_07[2]~input_o\ : std_logic;
SIGNAL \port_in_07[3]~input_o\ : std_logic;
SIGNAL \port_in_07[4]~input_o\ : std_logic;
SIGNAL \port_in_07[5]~input_o\ : std_logic;
SIGNAL \port_in_07[6]~input_o\ : std_logic;
SIGNAL \port_in_07[7]~input_o\ : std_logic;
SIGNAL \port_in_08[0]~input_o\ : std_logic;
SIGNAL \port_in_08[1]~input_o\ : std_logic;
SIGNAL \port_in_08[2]~input_o\ : std_logic;
SIGNAL \port_in_08[3]~input_o\ : std_logic;
SIGNAL \port_in_08[4]~input_o\ : std_logic;
SIGNAL \port_in_08[5]~input_o\ : std_logic;
SIGNAL \port_in_08[6]~input_o\ : std_logic;
SIGNAL \port_in_08[7]~input_o\ : std_logic;
SIGNAL \port_in_09[0]~input_o\ : std_logic;
SIGNAL \port_in_09[1]~input_o\ : std_logic;
SIGNAL \port_in_09[2]~input_o\ : std_logic;
SIGNAL \port_in_09[3]~input_o\ : std_logic;
SIGNAL \port_in_09[4]~input_o\ : std_logic;
SIGNAL \port_in_09[5]~input_o\ : std_logic;
SIGNAL \port_in_09[6]~input_o\ : std_logic;
SIGNAL \port_in_09[7]~input_o\ : std_logic;
SIGNAL \port_in_10[0]~input_o\ : std_logic;
SIGNAL \port_in_10[1]~input_o\ : std_logic;
SIGNAL \port_in_10[2]~input_o\ : std_logic;
SIGNAL \port_in_10[3]~input_o\ : std_logic;
SIGNAL \port_in_10[4]~input_o\ : std_logic;
SIGNAL \port_in_10[5]~input_o\ : std_logic;
SIGNAL \port_in_10[6]~input_o\ : std_logic;
SIGNAL \port_in_10[7]~input_o\ : std_logic;
SIGNAL \port_in_11[0]~input_o\ : std_logic;
SIGNAL \port_in_11[1]~input_o\ : std_logic;
SIGNAL \port_in_11[2]~input_o\ : std_logic;
SIGNAL \port_in_11[3]~input_o\ : std_logic;
SIGNAL \port_in_11[4]~input_o\ : std_logic;
SIGNAL \port_in_11[5]~input_o\ : std_logic;
SIGNAL \port_in_11[6]~input_o\ : std_logic;
SIGNAL \port_in_11[7]~input_o\ : std_logic;
SIGNAL \port_in_12[0]~input_o\ : std_logic;
SIGNAL \port_in_12[1]~input_o\ : std_logic;
SIGNAL \port_in_12[2]~input_o\ : std_logic;
SIGNAL \port_in_12[3]~input_o\ : std_logic;
SIGNAL \port_in_12[4]~input_o\ : std_logic;
SIGNAL \port_in_12[5]~input_o\ : std_logic;
SIGNAL \port_in_12[6]~input_o\ : std_logic;
SIGNAL \port_in_12[7]~input_o\ : std_logic;
SIGNAL \port_in_13[0]~input_o\ : std_logic;
SIGNAL \port_in_13[1]~input_o\ : std_logic;
SIGNAL \port_in_13[2]~input_o\ : std_logic;
SIGNAL \port_in_13[3]~input_o\ : std_logic;
SIGNAL \port_in_13[4]~input_o\ : std_logic;
SIGNAL \port_in_13[5]~input_o\ : std_logic;
SIGNAL \port_in_13[6]~input_o\ : std_logic;
SIGNAL \port_in_13[7]~input_o\ : std_logic;
SIGNAL \port_in_14[0]~input_o\ : std_logic;
SIGNAL \port_in_14[1]~input_o\ : std_logic;
SIGNAL \port_in_14[2]~input_o\ : std_logic;
SIGNAL \port_in_14[3]~input_o\ : std_logic;
SIGNAL \port_in_14[4]~input_o\ : std_logic;
SIGNAL \port_in_14[5]~input_o\ : std_logic;
SIGNAL \port_in_14[6]~input_o\ : std_logic;
SIGNAL \port_in_14[7]~input_o\ : std_logic;
SIGNAL \port_in_15[0]~input_o\ : std_logic;
SIGNAL \port_in_15[1]~input_o\ : std_logic;
SIGNAL \port_in_15[2]~input_o\ : std_logic;
SIGNAL \port_in_15[3]~input_o\ : std_logic;
SIGNAL \port_in_15[4]~input_o\ : std_logic;
SIGNAL \port_in_15[5]~input_o\ : std_logic;
SIGNAL \port_in_15[6]~input_o\ : std_logic;
SIGNAL \port_in_15[7]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \port_out_00[0]~output_o\ : std_logic;
SIGNAL \port_out_00[1]~output_o\ : std_logic;
SIGNAL \port_out_00[2]~output_o\ : std_logic;
SIGNAL \port_out_00[3]~output_o\ : std_logic;
SIGNAL \port_out_00[4]~output_o\ : std_logic;
SIGNAL \port_out_00[5]~output_o\ : std_logic;
SIGNAL \port_out_00[6]~output_o\ : std_logic;
SIGNAL \port_out_00[7]~output_o\ : std_logic;
SIGNAL \port_out_01[0]~output_o\ : std_logic;
SIGNAL \port_out_01[1]~output_o\ : std_logic;
SIGNAL \port_out_01[2]~output_o\ : std_logic;
SIGNAL \port_out_01[3]~output_o\ : std_logic;
SIGNAL \port_out_01[4]~output_o\ : std_logic;
SIGNAL \port_out_01[5]~output_o\ : std_logic;
SIGNAL \port_out_01[6]~output_o\ : std_logic;
SIGNAL \port_out_01[7]~output_o\ : std_logic;
SIGNAL \port_out_02[0]~output_o\ : std_logic;
SIGNAL \port_out_02[1]~output_o\ : std_logic;
SIGNAL \port_out_02[2]~output_o\ : std_logic;
SIGNAL \port_out_02[3]~output_o\ : std_logic;
SIGNAL \port_out_02[4]~output_o\ : std_logic;
SIGNAL \port_out_02[5]~output_o\ : std_logic;
SIGNAL \port_out_02[6]~output_o\ : std_logic;
SIGNAL \port_out_02[7]~output_o\ : std_logic;
SIGNAL \port_out_03[0]~output_o\ : std_logic;
SIGNAL \port_out_03[1]~output_o\ : std_logic;
SIGNAL \port_out_03[2]~output_o\ : std_logic;
SIGNAL \port_out_03[3]~output_o\ : std_logic;
SIGNAL \port_out_03[4]~output_o\ : std_logic;
SIGNAL \port_out_03[5]~output_o\ : std_logic;
SIGNAL \port_out_03[6]~output_o\ : std_logic;
SIGNAL \port_out_03[7]~output_o\ : std_logic;
SIGNAL \port_out_04[0]~output_o\ : std_logic;
SIGNAL \port_out_04[1]~output_o\ : std_logic;
SIGNAL \port_out_04[2]~output_o\ : std_logic;
SIGNAL \port_out_04[3]~output_o\ : std_logic;
SIGNAL \port_out_04[4]~output_o\ : std_logic;
SIGNAL \port_out_04[5]~output_o\ : std_logic;
SIGNAL \port_out_04[6]~output_o\ : std_logic;
SIGNAL \port_out_04[7]~output_o\ : std_logic;
SIGNAL \port_out_05[0]~output_o\ : std_logic;
SIGNAL \port_out_05[1]~output_o\ : std_logic;
SIGNAL \port_out_05[2]~output_o\ : std_logic;
SIGNAL \port_out_05[3]~output_o\ : std_logic;
SIGNAL \port_out_05[4]~output_o\ : std_logic;
SIGNAL \port_out_05[5]~output_o\ : std_logic;
SIGNAL \port_out_05[6]~output_o\ : std_logic;
SIGNAL \port_out_05[7]~output_o\ : std_logic;
SIGNAL \port_out_06[0]~output_o\ : std_logic;
SIGNAL \port_out_06[1]~output_o\ : std_logic;
SIGNAL \port_out_06[2]~output_o\ : std_logic;
SIGNAL \port_out_06[3]~output_o\ : std_logic;
SIGNAL \port_out_06[4]~output_o\ : std_logic;
SIGNAL \port_out_06[5]~output_o\ : std_logic;
SIGNAL \port_out_06[6]~output_o\ : std_logic;
SIGNAL \port_out_06[7]~output_o\ : std_logic;
SIGNAL \port_out_07[0]~output_o\ : std_logic;
SIGNAL \port_out_07[1]~output_o\ : std_logic;
SIGNAL \port_out_07[2]~output_o\ : std_logic;
SIGNAL \port_out_07[3]~output_o\ : std_logic;
SIGNAL \port_out_07[4]~output_o\ : std_logic;
SIGNAL \port_out_07[5]~output_o\ : std_logic;
SIGNAL \port_out_07[6]~output_o\ : std_logic;
SIGNAL \port_out_07[7]~output_o\ : std_logic;
SIGNAL \port_out_08[0]~output_o\ : std_logic;
SIGNAL \port_out_08[1]~output_o\ : std_logic;
SIGNAL \port_out_08[2]~output_o\ : std_logic;
SIGNAL \port_out_08[3]~output_o\ : std_logic;
SIGNAL \port_out_08[4]~output_o\ : std_logic;
SIGNAL \port_out_08[5]~output_o\ : std_logic;
SIGNAL \port_out_08[6]~output_o\ : std_logic;
SIGNAL \port_out_08[7]~output_o\ : std_logic;
SIGNAL \port_out_09[0]~output_o\ : std_logic;
SIGNAL \port_out_09[1]~output_o\ : std_logic;
SIGNAL \port_out_09[2]~output_o\ : std_logic;
SIGNAL \port_out_09[3]~output_o\ : std_logic;
SIGNAL \port_out_09[4]~output_o\ : std_logic;
SIGNAL \port_out_09[5]~output_o\ : std_logic;
SIGNAL \port_out_09[6]~output_o\ : std_logic;
SIGNAL \port_out_09[7]~output_o\ : std_logic;
SIGNAL \port_out_10[0]~output_o\ : std_logic;
SIGNAL \port_out_10[1]~output_o\ : std_logic;
SIGNAL \port_out_10[2]~output_o\ : std_logic;
SIGNAL \port_out_10[3]~output_o\ : std_logic;
SIGNAL \port_out_10[4]~output_o\ : std_logic;
SIGNAL \port_out_10[5]~output_o\ : std_logic;
SIGNAL \port_out_10[6]~output_o\ : std_logic;
SIGNAL \port_out_10[7]~output_o\ : std_logic;
SIGNAL \port_out_11[0]~output_o\ : std_logic;
SIGNAL \port_out_11[1]~output_o\ : std_logic;
SIGNAL \port_out_11[2]~output_o\ : std_logic;
SIGNAL \port_out_11[3]~output_o\ : std_logic;
SIGNAL \port_out_11[4]~output_o\ : std_logic;
SIGNAL \port_out_11[5]~output_o\ : std_logic;
SIGNAL \port_out_11[6]~output_o\ : std_logic;
SIGNAL \port_out_11[7]~output_o\ : std_logic;
SIGNAL \port_out_12[0]~output_o\ : std_logic;
SIGNAL \port_out_12[1]~output_o\ : std_logic;
SIGNAL \port_out_12[2]~output_o\ : std_logic;
SIGNAL \port_out_12[3]~output_o\ : std_logic;
SIGNAL \port_out_12[4]~output_o\ : std_logic;
SIGNAL \port_out_12[5]~output_o\ : std_logic;
SIGNAL \port_out_12[6]~output_o\ : std_logic;
SIGNAL \port_out_12[7]~output_o\ : std_logic;
SIGNAL \port_out_13[0]~output_o\ : std_logic;
SIGNAL \port_out_13[1]~output_o\ : std_logic;
SIGNAL \port_out_13[2]~output_o\ : std_logic;
SIGNAL \port_out_13[3]~output_o\ : std_logic;
SIGNAL \port_out_13[4]~output_o\ : std_logic;
SIGNAL \port_out_13[5]~output_o\ : std_logic;
SIGNAL \port_out_13[6]~output_o\ : std_logic;
SIGNAL \port_out_13[7]~output_o\ : std_logic;
SIGNAL \port_out_14[0]~output_o\ : std_logic;
SIGNAL \port_out_14[1]~output_o\ : std_logic;
SIGNAL \port_out_14[2]~output_o\ : std_logic;
SIGNAL \port_out_14[3]~output_o\ : std_logic;
SIGNAL \port_out_14[4]~output_o\ : std_logic;
SIGNAL \port_out_14[5]~output_o\ : std_logic;
SIGNAL \port_out_14[6]~output_o\ : std_logic;
SIGNAL \port_out_14[7]~output_o\ : std_logic;
SIGNAL \port_out_15[0]~output_o\ : std_logic;
SIGNAL \port_out_15[1]~output_o\ : std_logic;
SIGNAL \port_out_15[2]~output_o\ : std_logic;
SIGNAL \port_out_15[3]~output_o\ : std_logic;
SIGNAL \port_out_15[4]~output_o\ : std_logic;
SIGNAL \port_out_15[5]~output_o\ : std_logic;
SIGNAL \port_out_15[6]~output_o\ : std_logic;
SIGNAL \port_out_15[7]~output_o\ : std_logic;
SIGNAL \segments[0]~output_o\ : std_logic;
SIGNAL \segments[1]~output_o\ : std_logic;
SIGNAL \segments[2]~output_o\ : std_logic;
SIGNAL \segments[3]~output_o\ : std_logic;
SIGNAL \segments[4]~output_o\ : std_logic;
SIGNAL \segments[5]~output_o\ : std_logic;
SIGNAL \segments[6]~output_o\ : std_logic;
SIGNAL \segments[7]~output_o\ : std_logic;
SIGNAL \segments[8]~output_o\ : std_logic;
SIGNAL \segments[9]~output_o\ : std_logic;
SIGNAL \segments[10]~output_o\ : std_logic;
SIGNAL \segments[11]~output_o\ : std_logic;
SIGNAL \segments[12]~output_o\ : std_logic;
SIGNAL \segments[13]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_port_in_00 <= port_in_00;
ww_port_in_01 <= port_in_01;
ww_port_in_02 <= port_in_02;
ww_port_in_03 <= port_in_03;
ww_port_in_04 <= port_in_04;
ww_port_in_05 <= port_in_05;
ww_port_in_06 <= port_in_06;
ww_port_in_07 <= port_in_07;
ww_port_in_08 <= port_in_08;
ww_port_in_09 <= port_in_09;
ww_port_in_10 <= port_in_10;
ww_port_in_11 <= port_in_11;
ww_port_in_12 <= port_in_12;
ww_port_in_13 <= port_in_13;
ww_port_in_14 <= port_in_14;
ww_port_in_15 <= port_in_15;
port_out_00 <= ww_port_out_00;
port_out_01 <= ww_port_out_01;
port_out_02 <= ww_port_out_02;
port_out_03 <= ww_port_out_03;
port_out_04 <= ww_port_out_04;
port_out_05 <= ww_port_out_05;
port_out_06 <= ww_port_out_06;
port_out_07 <= ww_port_out_07;
port_out_08 <= ww_port_out_08;
port_out_09 <= ww_port_out_09;
port_out_10 <= ww_port_out_10;
port_out_11 <= ww_port_out_11;
port_out_12 <= ww_port_out_12;
port_out_13 <= ww_port_out_13;
port_out_14 <= ww_port_out_14;
port_out_15 <= ww_port_out_15;
segments <= ww_segments;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X18_Y0_N9
\port_out_00[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_00[0]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\port_out_00[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_00[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\port_out_00[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_00[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\port_out_00[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_00[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\port_out_00[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_00[4]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\port_out_00[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_00[5]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\port_out_00[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_00[6]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\port_out_00[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_00[7]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\port_out_01[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_01[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\port_out_01[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_01[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\port_out_01[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_01[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\port_out_01[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_01[3]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\port_out_01[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_01[4]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\port_out_01[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_01[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\port_out_01[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_01[6]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\port_out_01[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_01[7]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\port_out_02[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_02[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\port_out_02[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_02[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\port_out_02[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_02[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\port_out_02[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_02[3]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\port_out_02[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_02[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\port_out_02[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_02[5]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\port_out_02[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_02[6]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\port_out_02[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_02[7]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\port_out_03[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_03[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\port_out_03[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_03[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\port_out_03[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_03[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\port_out_03[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_03[3]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\port_out_03[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_03[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\port_out_03[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_03[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\port_out_03[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_03[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\port_out_03[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_03[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\port_out_04[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_04[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\port_out_04[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_04[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\port_out_04[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_04[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\port_out_04[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_04[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\port_out_04[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_04[4]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\port_out_04[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_04[5]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\port_out_04[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_04[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\port_out_04[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_04[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\port_out_05[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_05[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\port_out_05[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_05[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\port_out_05[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_05[2]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\port_out_05[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_05[3]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\port_out_05[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_05[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\port_out_05[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_05[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\port_out_05[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_05[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\port_out_05[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_05[7]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\port_out_06[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_06[0]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\port_out_06[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_06[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\port_out_06[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_06[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\port_out_06[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_06[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\port_out_06[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_06[4]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\port_out_06[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_06[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\port_out_06[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_06[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\port_out_06[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_06[7]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\port_out_07[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_07[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\port_out_07[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_07[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\port_out_07[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_07[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\port_out_07[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_07[3]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\port_out_07[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_07[4]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\port_out_07[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_07[5]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\port_out_07[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_07[6]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\port_out_07[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_07[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\port_out_08[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_08[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\port_out_08[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_08[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\port_out_08[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_08[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\port_out_08[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_08[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\port_out_08[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_08[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\port_out_08[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_08[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\port_out_08[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_08[6]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\port_out_08[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_08[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\port_out_09[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_09[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\port_out_09[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_09[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\port_out_09[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_09[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\port_out_09[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_09[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\port_out_09[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_09[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\port_out_09[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_09[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\port_out_09[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_09[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\port_out_09[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_09[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\port_out_10[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_10[0]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\port_out_10[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_10[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\port_out_10[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_10[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\port_out_10[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_10[3]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\port_out_10[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_10[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\port_out_10[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_10[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\port_out_10[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_10[6]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\port_out_10[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_10[7]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\port_out_11[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_11[0]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\port_out_11[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_11[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\port_out_11[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_11[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\port_out_11[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_11[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\port_out_11[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_11[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\port_out_11[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_11[5]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\port_out_11[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_11[6]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\port_out_11[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_11[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\port_out_12[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_12[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\port_out_12[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_12[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\port_out_12[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_12[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\port_out_12[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_12[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\port_out_12[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_12[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\port_out_12[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_12[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\port_out_12[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_12[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\port_out_12[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_12[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\port_out_13[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_13[0]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\port_out_13[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_13[1]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\port_out_13[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_13[2]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\port_out_13[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_13[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\port_out_13[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_13[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\port_out_13[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_13[5]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\port_out_13[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_13[6]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\port_out_13[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_13[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\port_out_14[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_14[0]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\port_out_14[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_14[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\port_out_14[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_14[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\port_out_14[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_14[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\port_out_14[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_14[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\port_out_14[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_14[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\port_out_14[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_14[6]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\port_out_14[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_14[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\port_out_15[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_15[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\port_out_15[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_15[1]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\port_out_15[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_15[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\port_out_15[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_15[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\port_out_15[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_15[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\port_out_15[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_15[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\port_out_15[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_15[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\port_out_15[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out_15[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\segments[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\segments[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\segments[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\segments[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\segments[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\segments[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\segments[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segments[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\segments[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[7]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\segments[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[8]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\segments[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[9]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\segments[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[10]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\segments[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[11]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\segments[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\segments[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segments[13]~output_o\);

-- Location: IOIBUF_X0_Y23_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\port_in_00[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(0),
	o => \port_in_00[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\port_in_00[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(1),
	o => \port_in_00[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\port_in_00[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(2),
	o => \port_in_00[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\port_in_00[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(3),
	o => \port_in_00[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\port_in_00[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(4),
	o => \port_in_00[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\port_in_00[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(5),
	o => \port_in_00[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\port_in_00[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(6),
	o => \port_in_00[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\port_in_00[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(7),
	o => \port_in_00[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\port_in_01[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(0),
	o => \port_in_01[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\port_in_01[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(1),
	o => \port_in_01[1]~input_o\);

-- Location: IOIBUF_X78_Y36_N23
\port_in_01[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(2),
	o => \port_in_01[2]~input_o\);

-- Location: IOIBUF_X78_Y42_N1
\port_in_01[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(3),
	o => \port_in_01[3]~input_o\);

-- Location: IOIBUF_X78_Y44_N15
\port_in_01[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(4),
	o => \port_in_01[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\port_in_01[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(5),
	o => \port_in_01[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\port_in_01[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(6),
	o => \port_in_01[6]~input_o\);

-- Location: IOIBUF_X0_Y37_N8
\port_in_01[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(7),
	o => \port_in_01[7]~input_o\);

-- Location: IOIBUF_X78_Y24_N23
\port_in_02[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(0),
	o => \port_in_02[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\port_in_02[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(1),
	o => \port_in_02[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\port_in_02[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(2),
	o => \port_in_02[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\port_in_02[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(3),
	o => \port_in_02[3]~input_o\);

-- Location: IOIBUF_X78_Y41_N1
\port_in_02[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(4),
	o => \port_in_02[4]~input_o\);

-- Location: IOIBUF_X78_Y18_N8
\port_in_02[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(5),
	o => \port_in_02[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\port_in_02[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(6),
	o => \port_in_02[6]~input_o\);

-- Location: IOIBUF_X78_Y20_N15
\port_in_02[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(7),
	o => \port_in_02[7]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\port_in_03[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(0),
	o => \port_in_03[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N29
\port_in_03[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(1),
	o => \port_in_03[1]~input_o\);

-- Location: IOIBUF_X69_Y54_N8
\port_in_03[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(2),
	o => \port_in_03[2]~input_o\);

-- Location: IOIBUF_X78_Y45_N8
\port_in_03[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(3),
	o => \port_in_03[3]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\port_in_03[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(4),
	o => \port_in_03[4]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\port_in_03[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(5),
	o => \port_in_03[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\port_in_03[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(6),
	o => \port_in_03[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\port_in_03[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(7),
	o => \port_in_03[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\port_in_04[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(0),
	o => \port_in_04[0]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\port_in_04[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(1),
	o => \port_in_04[1]~input_o\);

-- Location: IOIBUF_X78_Y15_N15
\port_in_04[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(2),
	o => \port_in_04[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\port_in_04[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(3),
	o => \port_in_04[3]~input_o\);

-- Location: IOIBUF_X78_Y17_N1
\port_in_04[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(4),
	o => \port_in_04[4]~input_o\);

-- Location: IOIBUF_X54_Y54_N8
\port_in_04[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(5),
	o => \port_in_04[5]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\port_in_04[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(6),
	o => \port_in_04[6]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\port_in_04[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(7),
	o => \port_in_04[7]~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\port_in_05[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(0),
	o => \port_in_05[0]~input_o\);

-- Location: IOIBUF_X78_Y42_N22
\port_in_05[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(1),
	o => \port_in_05[1]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\port_in_05[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(2),
	o => \port_in_05[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N29
\port_in_05[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(3),
	o => \port_in_05[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\port_in_05[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(4),
	o => \port_in_05[4]~input_o\);

-- Location: IOIBUF_X0_Y3_N22
\port_in_05[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(5),
	o => \port_in_05[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\port_in_05[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(6),
	o => \port_in_05[6]~input_o\);

-- Location: IOIBUF_X78_Y34_N8
\port_in_05[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(7),
	o => \port_in_05[7]~input_o\);

-- Location: IOIBUF_X78_Y36_N8
\port_in_06[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(0),
	o => \port_in_06[0]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\port_in_06[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(1),
	o => \port_in_06[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\port_in_06[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(2),
	o => \port_in_06[2]~input_o\);

-- Location: IOIBUF_X31_Y39_N8
\port_in_06[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(3),
	o => \port_in_06[3]~input_o\);

-- Location: IOIBUF_X78_Y15_N1
\port_in_06[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(4),
	o => \port_in_06[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\port_in_06[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(5),
	o => \port_in_06[5]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\port_in_06[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(6),
	o => \port_in_06[6]~input_o\);

-- Location: IOIBUF_X78_Y36_N15
\port_in_06[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(7),
	o => \port_in_06[7]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\port_in_07[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(0),
	o => \port_in_07[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\port_in_07[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(1),
	o => \port_in_07[1]~input_o\);

-- Location: IOIBUF_X78_Y18_N22
\port_in_07[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(2),
	o => \port_in_07[2]~input_o\);

-- Location: IOIBUF_X66_Y54_N22
\port_in_07[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(3),
	o => \port_in_07[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\port_in_07[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(4),
	o => \port_in_07[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\port_in_07[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(5),
	o => \port_in_07[5]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\port_in_07[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(6),
	o => \port_in_07[6]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\port_in_07[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(7),
	o => \port_in_07[7]~input_o\);

-- Location: IOIBUF_X78_Y43_N22
\port_in_08[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(0),
	o => \port_in_08[0]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\port_in_08[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(1),
	o => \port_in_08[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\port_in_08[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(2),
	o => \port_in_08[2]~input_o\);

-- Location: IOIBUF_X78_Y29_N1
\port_in_08[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(3),
	o => \port_in_08[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\port_in_08[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(4),
	o => \port_in_08[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\port_in_08[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(5),
	o => \port_in_08[5]~input_o\);

-- Location: IOIBUF_X78_Y30_N1
\port_in_08[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(6),
	o => \port_in_08[6]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\port_in_08[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(7),
	o => \port_in_08[7]~input_o\);

-- Location: IOIBUF_X60_Y54_N29
\port_in_09[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(0),
	o => \port_in_09[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\port_in_09[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(1),
	o => \port_in_09[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\port_in_09[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(2),
	o => \port_in_09[2]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\port_in_09[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(3),
	o => \port_in_09[3]~input_o\);

-- Location: IOIBUF_X78_Y34_N23
\port_in_09[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(4),
	o => \port_in_09[4]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\port_in_09[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(5),
	o => \port_in_09[5]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\port_in_09[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(6),
	o => \port_in_09[6]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\port_in_09[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(7),
	o => \port_in_09[7]~input_o\);

-- Location: IOIBUF_X78_Y44_N1
\port_in_10[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(0),
	o => \port_in_10[0]~input_o\);

-- Location: IOIBUF_X78_Y35_N8
\port_in_10[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(1),
	o => \port_in_10[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\port_in_10[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(2),
	o => \port_in_10[2]~input_o\);

-- Location: IOIBUF_X78_Y18_N15
\port_in_10[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(3),
	o => \port_in_10[3]~input_o\);

-- Location: IOIBUF_X0_Y18_N1
\port_in_10[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(4),
	o => \port_in_10[4]~input_o\);

-- Location: IOIBUF_X78_Y31_N22
\port_in_10[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(5),
	o => \port_in_10[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\port_in_10[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(6),
	o => \port_in_10[6]~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\port_in_10[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(7),
	o => \port_in_10[7]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\port_in_11[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(0),
	o => \port_in_11[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\port_in_11[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(1),
	o => \port_in_11[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
\port_in_11[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(2),
	o => \port_in_11[2]~input_o\);

-- Location: IOIBUF_X78_Y33_N22
\port_in_11[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(3),
	o => \port_in_11[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\port_in_11[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(4),
	o => \port_in_11[4]~input_o\);

-- Location: IOIBUF_X69_Y0_N15
\port_in_11[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(5),
	o => \port_in_11[5]~input_o\);

-- Location: IOIBUF_X78_Y21_N22
\port_in_11[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(6),
	o => \port_in_11[6]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\port_in_11[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(7),
	o => \port_in_11[7]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\port_in_12[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(0),
	o => \port_in_12[0]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\port_in_12[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(1),
	o => \port_in_12[1]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\port_in_12[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(2),
	o => \port_in_12[2]~input_o\);

-- Location: IOIBUF_X0_Y37_N1
\port_in_12[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(3),
	o => \port_in_12[3]~input_o\);

-- Location: IOIBUF_X78_Y25_N1
\port_in_12[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(4),
	o => \port_in_12[4]~input_o\);

-- Location: IOIBUF_X51_Y0_N15
\port_in_12[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(5),
	o => \port_in_12[5]~input_o\);

-- Location: IOIBUF_X71_Y54_N29
\port_in_12[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(6),
	o => \port_in_12[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\port_in_12[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(7),
	o => \port_in_12[7]~input_o\);

-- Location: IOIBUF_X78_Y20_N8
\port_in_13[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(0),
	o => \port_in_13[0]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\port_in_13[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(1),
	o => \port_in_13[1]~input_o\);

-- Location: IOIBUF_X51_Y0_N8
\port_in_13[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(2),
	o => \port_in_13[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\port_in_13[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(3),
	o => \port_in_13[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\port_in_13[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(4),
	o => \port_in_13[4]~input_o\);

-- Location: IOIBUF_X46_Y54_N15
\port_in_13[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(5),
	o => \port_in_13[5]~input_o\);

-- Location: IOIBUF_X78_Y25_N8
\port_in_13[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(6),
	o => \port_in_13[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\port_in_13[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(7),
	o => \port_in_13[7]~input_o\);

-- Location: IOIBUF_X78_Y23_N8
\port_in_14[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(0),
	o => \port_in_14[0]~input_o\);

-- Location: IOIBUF_X0_Y29_N1
\port_in_14[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(1),
	o => \port_in_14[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\port_in_14[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(2),
	o => \port_in_14[2]~input_o\);

-- Location: IOIBUF_X78_Y43_N15
\port_in_14[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(3),
	o => \port_in_14[3]~input_o\);

-- Location: IOIBUF_X78_Y3_N15
\port_in_14[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(4),
	o => \port_in_14[4]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\port_in_14[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(5),
	o => \port_in_14[5]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\port_in_14[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(6),
	o => \port_in_14[6]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\port_in_14[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(7),
	o => \port_in_14[7]~input_o\);

-- Location: IOIBUF_X78_Y21_N1
\port_in_15[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(0),
	o => \port_in_15[0]~input_o\);

-- Location: IOIBUF_X78_Y40_N15
\port_in_15[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(1),
	o => \port_in_15[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\port_in_15[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(2),
	o => \port_in_15[2]~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\port_in_15[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(3),
	o => \port_in_15[3]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\port_in_15[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(4),
	o => \port_in_15[4]~input_o\);

-- Location: IOIBUF_X78_Y44_N8
\port_in_15[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(5),
	o => \port_in_15[5]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\port_in_15[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(6),
	o => \port_in_15[6]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\port_in_15[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(7),
	o => \port_in_15[7]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_port_out_00(0) <= \port_out_00[0]~output_o\;

ww_port_out_00(1) <= \port_out_00[1]~output_o\;

ww_port_out_00(2) <= \port_out_00[2]~output_o\;

ww_port_out_00(3) <= \port_out_00[3]~output_o\;

ww_port_out_00(4) <= \port_out_00[4]~output_o\;

ww_port_out_00(5) <= \port_out_00[5]~output_o\;

ww_port_out_00(6) <= \port_out_00[6]~output_o\;

ww_port_out_00(7) <= \port_out_00[7]~output_o\;

ww_port_out_01(0) <= \port_out_01[0]~output_o\;

ww_port_out_01(1) <= \port_out_01[1]~output_o\;

ww_port_out_01(2) <= \port_out_01[2]~output_o\;

ww_port_out_01(3) <= \port_out_01[3]~output_o\;

ww_port_out_01(4) <= \port_out_01[4]~output_o\;

ww_port_out_01(5) <= \port_out_01[5]~output_o\;

ww_port_out_01(6) <= \port_out_01[6]~output_o\;

ww_port_out_01(7) <= \port_out_01[7]~output_o\;

ww_port_out_02(0) <= \port_out_02[0]~output_o\;

ww_port_out_02(1) <= \port_out_02[1]~output_o\;

ww_port_out_02(2) <= \port_out_02[2]~output_o\;

ww_port_out_02(3) <= \port_out_02[3]~output_o\;

ww_port_out_02(4) <= \port_out_02[4]~output_o\;

ww_port_out_02(5) <= \port_out_02[5]~output_o\;

ww_port_out_02(6) <= \port_out_02[6]~output_o\;

ww_port_out_02(7) <= \port_out_02[7]~output_o\;

ww_port_out_03(0) <= \port_out_03[0]~output_o\;

ww_port_out_03(1) <= \port_out_03[1]~output_o\;

ww_port_out_03(2) <= \port_out_03[2]~output_o\;

ww_port_out_03(3) <= \port_out_03[3]~output_o\;

ww_port_out_03(4) <= \port_out_03[4]~output_o\;

ww_port_out_03(5) <= \port_out_03[5]~output_o\;

ww_port_out_03(6) <= \port_out_03[6]~output_o\;

ww_port_out_03(7) <= \port_out_03[7]~output_o\;

ww_port_out_04(0) <= \port_out_04[0]~output_o\;

ww_port_out_04(1) <= \port_out_04[1]~output_o\;

ww_port_out_04(2) <= \port_out_04[2]~output_o\;

ww_port_out_04(3) <= \port_out_04[3]~output_o\;

ww_port_out_04(4) <= \port_out_04[4]~output_o\;

ww_port_out_04(5) <= \port_out_04[5]~output_o\;

ww_port_out_04(6) <= \port_out_04[6]~output_o\;

ww_port_out_04(7) <= \port_out_04[7]~output_o\;

ww_port_out_05(0) <= \port_out_05[0]~output_o\;

ww_port_out_05(1) <= \port_out_05[1]~output_o\;

ww_port_out_05(2) <= \port_out_05[2]~output_o\;

ww_port_out_05(3) <= \port_out_05[3]~output_o\;

ww_port_out_05(4) <= \port_out_05[4]~output_o\;

ww_port_out_05(5) <= \port_out_05[5]~output_o\;

ww_port_out_05(6) <= \port_out_05[6]~output_o\;

ww_port_out_05(7) <= \port_out_05[7]~output_o\;

ww_port_out_06(0) <= \port_out_06[0]~output_o\;

ww_port_out_06(1) <= \port_out_06[1]~output_o\;

ww_port_out_06(2) <= \port_out_06[2]~output_o\;

ww_port_out_06(3) <= \port_out_06[3]~output_o\;

ww_port_out_06(4) <= \port_out_06[4]~output_o\;

ww_port_out_06(5) <= \port_out_06[5]~output_o\;

ww_port_out_06(6) <= \port_out_06[6]~output_o\;

ww_port_out_06(7) <= \port_out_06[7]~output_o\;

ww_port_out_07(0) <= \port_out_07[0]~output_o\;

ww_port_out_07(1) <= \port_out_07[1]~output_o\;

ww_port_out_07(2) <= \port_out_07[2]~output_o\;

ww_port_out_07(3) <= \port_out_07[3]~output_o\;

ww_port_out_07(4) <= \port_out_07[4]~output_o\;

ww_port_out_07(5) <= \port_out_07[5]~output_o\;

ww_port_out_07(6) <= \port_out_07[6]~output_o\;

ww_port_out_07(7) <= \port_out_07[7]~output_o\;

ww_port_out_08(0) <= \port_out_08[0]~output_o\;

ww_port_out_08(1) <= \port_out_08[1]~output_o\;

ww_port_out_08(2) <= \port_out_08[2]~output_o\;

ww_port_out_08(3) <= \port_out_08[3]~output_o\;

ww_port_out_08(4) <= \port_out_08[4]~output_o\;

ww_port_out_08(5) <= \port_out_08[5]~output_o\;

ww_port_out_08(6) <= \port_out_08[6]~output_o\;

ww_port_out_08(7) <= \port_out_08[7]~output_o\;

ww_port_out_09(0) <= \port_out_09[0]~output_o\;

ww_port_out_09(1) <= \port_out_09[1]~output_o\;

ww_port_out_09(2) <= \port_out_09[2]~output_o\;

ww_port_out_09(3) <= \port_out_09[3]~output_o\;

ww_port_out_09(4) <= \port_out_09[4]~output_o\;

ww_port_out_09(5) <= \port_out_09[5]~output_o\;

ww_port_out_09(6) <= \port_out_09[6]~output_o\;

ww_port_out_09(7) <= \port_out_09[7]~output_o\;

ww_port_out_10(0) <= \port_out_10[0]~output_o\;

ww_port_out_10(1) <= \port_out_10[1]~output_o\;

ww_port_out_10(2) <= \port_out_10[2]~output_o\;

ww_port_out_10(3) <= \port_out_10[3]~output_o\;

ww_port_out_10(4) <= \port_out_10[4]~output_o\;

ww_port_out_10(5) <= \port_out_10[5]~output_o\;

ww_port_out_10(6) <= \port_out_10[6]~output_o\;

ww_port_out_10(7) <= \port_out_10[7]~output_o\;

ww_port_out_11(0) <= \port_out_11[0]~output_o\;

ww_port_out_11(1) <= \port_out_11[1]~output_o\;

ww_port_out_11(2) <= \port_out_11[2]~output_o\;

ww_port_out_11(3) <= \port_out_11[3]~output_o\;

ww_port_out_11(4) <= \port_out_11[4]~output_o\;

ww_port_out_11(5) <= \port_out_11[5]~output_o\;

ww_port_out_11(6) <= \port_out_11[6]~output_o\;

ww_port_out_11(7) <= \port_out_11[7]~output_o\;

ww_port_out_12(0) <= \port_out_12[0]~output_o\;

ww_port_out_12(1) <= \port_out_12[1]~output_o\;

ww_port_out_12(2) <= \port_out_12[2]~output_o\;

ww_port_out_12(3) <= \port_out_12[3]~output_o\;

ww_port_out_12(4) <= \port_out_12[4]~output_o\;

ww_port_out_12(5) <= \port_out_12[5]~output_o\;

ww_port_out_12(6) <= \port_out_12[6]~output_o\;

ww_port_out_12(7) <= \port_out_12[7]~output_o\;

ww_port_out_13(0) <= \port_out_13[0]~output_o\;

ww_port_out_13(1) <= \port_out_13[1]~output_o\;

ww_port_out_13(2) <= \port_out_13[2]~output_o\;

ww_port_out_13(3) <= \port_out_13[3]~output_o\;

ww_port_out_13(4) <= \port_out_13[4]~output_o\;

ww_port_out_13(5) <= \port_out_13[5]~output_o\;

ww_port_out_13(6) <= \port_out_13[6]~output_o\;

ww_port_out_13(7) <= \port_out_13[7]~output_o\;

ww_port_out_14(0) <= \port_out_14[0]~output_o\;

ww_port_out_14(1) <= \port_out_14[1]~output_o\;

ww_port_out_14(2) <= \port_out_14[2]~output_o\;

ww_port_out_14(3) <= \port_out_14[3]~output_o\;

ww_port_out_14(4) <= \port_out_14[4]~output_o\;

ww_port_out_14(5) <= \port_out_14[5]~output_o\;

ww_port_out_14(6) <= \port_out_14[6]~output_o\;

ww_port_out_14(7) <= \port_out_14[7]~output_o\;

ww_port_out_15(0) <= \port_out_15[0]~output_o\;

ww_port_out_15(1) <= \port_out_15[1]~output_o\;

ww_port_out_15(2) <= \port_out_15[2]~output_o\;

ww_port_out_15(3) <= \port_out_15[3]~output_o\;

ww_port_out_15(4) <= \port_out_15[4]~output_o\;

ww_port_out_15(5) <= \port_out_15[5]~output_o\;

ww_port_out_15(6) <= \port_out_15[6]~output_o\;

ww_port_out_15(7) <= \port_out_15[7]~output_o\;

ww_segments(0) <= \segments[0]~output_o\;

ww_segments(1) <= \segments[1]~output_o\;

ww_segments(2) <= \segments[2]~output_o\;

ww_segments(3) <= \segments[3]~output_o\;

ww_segments(4) <= \segments[4]~output_o\;

ww_segments(5) <= \segments[5]~output_o\;

ww_segments(6) <= \segments[6]~output_o\;

ww_segments(7) <= \segments[7]~output_o\;

ww_segments(8) <= \segments[8]~output_o\;

ww_segments(9) <= \segments[9]~output_o\;

ww_segments(10) <= \segments[10]~output_o\;

ww_segments(11) <= \segments[11]~output_o\;

ww_segments(12) <= \segments[12]~output_o\;

ww_segments(13) <= \segments[13]~output_o\;
END structure;


