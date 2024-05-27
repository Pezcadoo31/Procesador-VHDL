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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/16/2024 12:02:35"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	DATA_PATH IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	A_Load : IN std_logic;
	B_Load : IN std_logic;
	CCR_Load : IN std_logic;
	IR_Load : IN std_logic;
	MAR_Load : IN std_logic;
	PC_Load : IN std_logic;
	PC_Inc : IN std_logic;
	ALU_Sel : IN std_logic_vector(7 DOWNTO 0);
	Bus1_Sel : IN std_logic_vector(1 DOWNTO 0);
	Bus2_Sel : IN std_logic_vector(1 DOWNTO 0);
	from_memory : IN std_logic_vector(7 DOWNTO 0);
	IR : OUT std_logic_vector(7 DOWNTO 0);
	address : OUT std_logic_vector(7 DOWNTO 0);
	to_memory : OUT std_logic_vector(7 DOWNTO 0);
	CCR_Result : OUT std_logic_vector(3 DOWNTO 0)
	);
END DATA_PATH;

ARCHITECTURE structure OF DATA_PATH IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_A_Load : std_logic;
SIGNAL ww_B_Load : std_logic;
SIGNAL ww_CCR_Load : std_logic;
SIGNAL ww_IR_Load : std_logic;
SIGNAL ww_MAR_Load : std_logic;
SIGNAL ww_PC_Load : std_logic;
SIGNAL ww_PC_Inc : std_logic;
SIGNAL ww_ALU_Sel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bus1_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Bus2_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_from_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_to_memory : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CCR_Result : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \RST~combout\ : std_logic;
SIGNAL \B_Load~combout\ : std_logic;
SIGNAL \A_Load~combout\ : std_logic;
SIGNAL \PC_Load~combout\ : std_logic;
SIGNAL \PC_Inc~combout\ : std_logic;
SIGNAL \PC[0]~16_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|XOR2~combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|I0|S~combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|OR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|S~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|XOR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|S~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|S~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|S~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \IR_Load~combout\ : std_logic;
SIGNAL \PC[0]~1\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I1|C~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|OR1~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|XOR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|I1|S~combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|XOR2~combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|I0|S~combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|S~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|S~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|S~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|S~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \PC[1]~3\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|XOR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|XOR2~combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|S~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|S~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|S~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I2|C~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|OR1~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|S~3_combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|S~4_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \PC[2]~5\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I3|C~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|OR1~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|A6~3_combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|A6~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|XOR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|XOR2~combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|S~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|S~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|S~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|S~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \PC[3]~7\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I4|C~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|OR1~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|A6~3_combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|A6~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|XOR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|XOR2~combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|S~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|S~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|S~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|S~3_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \PC[4]~9\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I5|C~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|OR1~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|A6~3_combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|A6~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|XOR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|XOR2~combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|S~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|S~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|S~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|S~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \PC[5]~11\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I6|C~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|OR1~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|A6~3_combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|A6~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|XOR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|XOR2~combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|S~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|S~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|S~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|S~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \PC[6]~13\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I7|C~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|OR1~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|A6~3_combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|A6~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|XOR1~combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|XOR2~combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|S~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|S~1_combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|S~2_combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|S~3_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \MAR_Load~combout\ : std_logic;
SIGNAL \ALU_UNIT|I8|C~0_combout\ : std_logic;
SIGNAL \CCR_Load~combout\ : std_logic;
SIGNAL \ALU_UNIT|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_UNIT|Mux0~1_combout\ : std_logic;
SIGNAL IR_REG : std_logic_vector(7 DOWNTO 0);
SIGNAL B_REG : std_logic_vector(7 DOWNTO 0);
SIGNAL MAR : std_logic_vector(7 DOWNTO 0);
SIGNAL A_REG : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bus1_Sel~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL PC : std_logic_vector(7 DOWNTO 0);
SIGNAL \from_memory~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL CCR : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU_Sel~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bus2_Sel~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_RST~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_A_Load <= A_Load;
ww_B_Load <= B_Load;
ww_CCR_Load <= CCR_Load;
ww_IR_Load <= IR_Load;
ww_MAR_Load <= MAR_Load;
ww_PC_Load <= PC_Load;
ww_PC_Inc <= PC_Inc;
ww_ALU_Sel <= ALU_Sel;
ww_Bus1_Sel <= Bus1_Sel;
ww_Bus2_Sel <= Bus2_Sel;
ww_from_memory <= from_memory;
IR <= ww_IR;
address <= ww_address;
to_memory <= ww_to_memory;
CCR_Result <= ww_CCR_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST~combout\ <= NOT \RST~combout\;

\CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

\from_memory[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_from_memory(0),
	combout => \from_memory~combout\(0));

\RST~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RST,
	combout => \RST~combout\);

\B_Load~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B_Load,
	combout => \B_Load~combout\);

\B_REG[0]\ : maxii_lcell
-- Equation(s):
-- B_REG(0) = DFFEAS((\Mux15~1_combout\), \CLK~combout\, \RST~combout\, , \B_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux15~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B_REG(0));

\A_Load~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A_Load,
	combout => \A_Load~combout\);

\A_REG[0]\ : maxii_lcell
-- Equation(s):
-- A_REG(0) = DFFEAS((\Mux15~1_combout\), \CLK~combout\, \RST~combout\, , \A_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux15~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A_REG(0));

\PC_Load~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC_Load,
	combout => \PC_Load~combout\);

\PC_Inc~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PC_Inc,
	combout => \PC_Inc~combout\);

\PC[0]~16\ : maxii_lcell
-- Equation(s):
-- \PC[0]~16_combout\ = (\PC_Load~combout\) # ((\PC_Inc~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_Load~combout\,
	datab => \PC_Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PC[0]~16_combout\);

\PC[0]\ : maxii_lcell
-- Equation(s):
-- PC(0) = DFFEAS((!PC(0)), \CLK~combout\, \RST~combout\, , \PC[0]~16_combout\, \Mux15~1_combout\, , , \PC_Load~combout\)
-- \PC[0]~1\ = CARRY((PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => PC(0),
	datac => \Mux15~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => \PC_Load~combout\,
	ena => \PC[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(0),
	cout => \PC[0]~1\);

\Bus1_Sel[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Bus1_Sel(0),
	combout => \Bus1_Sel~combout\(0));

\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = ((\Bus1_Sel~combout\(0) & (A_REG(0))) # (!\Bus1_Sel~combout\(0) & ((PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => A_REG(0),
	datab => PC(0),
	datad => \Bus1_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

\Bus1_Sel[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Bus1_Sel(1),
	combout => \Bus1_Sel~combout\(1));

\Mux7~1\ : maxii_lcell
-- Equation(s):
-- \Mux7~1_combout\ = ((\Bus1_Sel~combout\(1) & (B_REG(0))) # (!\Bus1_Sel~combout\(1) & ((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(0),
	datab => \Mux7~0_combout\,
	datad => \Bus1_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1_combout\);

\ALU_Sel[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Sel(2),
	combout => \ALU_Sel~combout\(2));

\ALU_Sel[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Sel(0),
	combout => \ALU_Sel~combout\(0));

\ALU_Sel[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Sel(7),
	combout => \ALU_Sel~combout\(7));

\ALU_Sel[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Sel(6),
	combout => \ALU_Sel~combout\(6));

\ALU_UNIT|I1|XOR2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|XOR2~combout\ = \ALU_Sel~combout\(6) $ (((\Bus1_Sel~combout\(1) & ((B_REG(0)))) # (!\Bus1_Sel~combout\(1) & (\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel~combout\(1),
	datab => \Mux7~0_combout\,
	datac => B_REG(0),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|XOR2~combout\);

\ALU_UNIT|I1|I0|S\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|I0|S~combout\ = B_REG(0) $ (\ALU_Sel~combout\(7) $ ((\ALU_UNIT|I1|XOR2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(0),
	datab => \ALU_Sel~combout\(7),
	datac => \ALU_UNIT|I1|XOR2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|I0|S~combout\);

\ALU_UNIT|I1|OR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|OR1~combout\ = (\ALU_Sel~combout\(7)) # ((\ALU_Sel~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(7),
	datab => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|OR1~combout\);

\ALU_UNIT|I1|S~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|S~0_combout\ = (\ALU_UNIT|I1|I0|S~combout\ & ((\ALU_Sel~combout\(2)) # ((\ALU_Sel~combout\(0) & !\ALU_UNIT|I1|OR1~combout\)))) # (!\ALU_UNIT|I1|I0|S~combout\ & (((\ALU_Sel~combout\(0) & \ALU_UNIT|I1|OR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ace0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(2),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I1|I0|S~combout\,
	datad => \ALU_UNIT|I1|OR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|S~0_combout\);

\ALU_UNIT|I1|XOR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|XOR1~combout\ = ((B_REG(0) $ (\ALU_Sel~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => B_REG(0),
	datad => \ALU_Sel~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|XOR1~combout\);

\ALU_Sel[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Sel(1),
	combout => \ALU_Sel~combout\(1));

\ALU_Sel[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Sel(5),
	combout => \ALU_Sel~combout\(5));

\ALU_UNIT|I1|S~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|S~1_combout\ = (\ALU_UNIT|I1|XOR1~combout\ & ((\ALU_Sel~combout\(1)) # ((\ALU_UNIT|I1|XOR2~combout\ & \ALU_Sel~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I1|XOR1~combout\,
	datab => \ALU_Sel~combout\(1),
	datac => \ALU_UNIT|I1|XOR2~combout\,
	datad => \ALU_Sel~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|S~1_combout\);

\ALU_Sel[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Sel(3),
	combout => \ALU_Sel~combout\(3));

\ALU_UNIT|I1|S~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|S~2_combout\ = (\ALU_UNIT|I1|XOR2~combout\ & ((\ALU_Sel~combout\(1)) # ((\ALU_Sel~combout\(3) & !\ALU_UNIT|I1|XOR1~combout\)))) # (!\ALU_UNIT|I1|XOR2~combout\ & (((\ALU_Sel~combout\(3) & !\ALU_UNIT|I1|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I1|XOR2~combout\,
	datab => \ALU_Sel~combout\(1),
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_UNIT|I1|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|S~2_combout\);

\ALU_Sel[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Sel(4),
	combout => \ALU_Sel~combout\(4));

\ALU_UNIT|I1|S~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|S~3_combout\ = (\ALU_UNIT|I1|S~1_combout\) # ((\ALU_UNIT|I1|S~2_combout\) # ((\ALU_Sel~combout\(4) & !\ALU_UNIT|I1|XOR2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I1|S~1_combout\,
	datab => \ALU_UNIT|I1|S~2_combout\,
	datac => \ALU_Sel~combout\(4),
	datad => \ALU_UNIT|I1|XOR2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|S~3_combout\);

\Bus2_Sel[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Bus2_Sel(0),
	combout => \Bus2_Sel~combout\(0));

\Mux15~0\ : maxii_lcell
-- Equation(s):
-- \Mux15~0_combout\ = (\Bus2_Sel~combout\(0) & (\Mux7~1_combout\)) # (!\Bus2_Sel~combout\(0) & (((\ALU_UNIT|I1|S~0_combout\) # (\ALU_UNIT|I1|S~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \ALU_UNIT|I1|S~0_combout\,
	datac => \ALU_UNIT|I1|S~3_combout\,
	datad => \Bus2_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~0_combout\);

\Bus2_Sel[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Bus2_Sel(1),
	combout => \Bus2_Sel~combout\(1));

\Mux15~1\ : maxii_lcell
-- Equation(s):
-- \Mux15~1_combout\ = ((\Bus2_Sel~combout\(1) & (\from_memory~combout\(0))) # (!\Bus2_Sel~combout\(1) & ((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory~combout\(0),
	datab => \Mux15~0_combout\,
	datad => \Bus2_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~1_combout\);

\IR_Load~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR_Load,
	combout => \IR_Load~combout\);

\IR_REG[0]\ : maxii_lcell
-- Equation(s):
-- IR_REG(0) = DFFEAS((\Mux15~1_combout\), \CLK~combout\, \RST~combout\, , \IR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux15~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => IR_REG(0));

\from_memory[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_from_memory(1),
	combout => \from_memory~combout\(1));

\B_REG[1]\ : maxii_lcell
-- Equation(s):
-- B_REG(1) = DFFEAS((\Mux14~1_combout\), \CLK~combout\, \RST~combout\, , \B_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux14~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B_REG(1));

\A_REG[1]\ : maxii_lcell
-- Equation(s):
-- A_REG(1) = DFFEAS((\Mux14~1_combout\), \CLK~combout\, \RST~combout\, , \A_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux14~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A_REG(1));

\PC[1]\ : maxii_lcell
-- Equation(s):
-- PC(1) = DFFEAS(PC(1) $ ((((\PC[0]~1\)))), \CLK~combout\, \RST~combout\, , \PC[0]~16_combout\, \Mux14~1_combout\, , , \PC_Load~combout\)
-- \PC[1]~3\ = CARRY(((!\PC[0]~1\)) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => PC(1),
	datac => \Mux14~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => \PC_Load~combout\,
	ena => \PC[0]~16_combout\,
	cin => \PC[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(1),
	cout => \PC[1]~3\);

\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = ((\Bus1_Sel~combout\(0) & (A_REG(1))) # (!\Bus1_Sel~combout\(0) & ((PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => A_REG(1),
	datab => PC(1),
	datad => \Bus1_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

\Mux6~1\ : maxii_lcell
-- Equation(s):
-- \Mux6~1_combout\ = ((\Bus1_Sel~combout\(1) & (B_REG(1))) # (!\Bus1_Sel~combout\(1) & ((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(1),
	datab => \Mux6~0_combout\,
	datad => \Bus1_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1_combout\);

\ALU_UNIT|I1|C~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I1|C~0_combout\ = (\ALU_Sel~combout\(7) & ((\Mux7~1_combout\ $ (\ALU_Sel~combout\(6))) # (!B_REG(0)))) # (!\ALU_Sel~combout\(7) & ((\Mux7~1_combout\ & (B_REG(0))) # (!\Mux7~1_combout\ & ((\ALU_Sel~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(0),
	datab => \Mux7~1_combout\,
	datac => \ALU_Sel~combout\(7),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I1|C~0_combout\);

\ALU_UNIT|I2|OR1~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|OR1~0_combout\ = (\ALU_Sel~combout\(7)) # ((\ALU_Sel~combout\(0) & (\ALU_UNIT|I1|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(7),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|OR1~0_combout\);

\ALU_UNIT|I2|XOR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|XOR1~combout\ = ((B_REG(1) $ (\ALU_Sel~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => B_REG(1),
	datad => \ALU_Sel~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|XOR1~combout\);

\ALU_UNIT|I2|I1|S\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|I1|S~combout\ = \Mux6~1_combout\ $ (\ALU_UNIT|I2|XOR1~combout\ $ (((\ALU_UNIT|I2|OR1~0_combout\ & !\ALU_Sel~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2dd2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I2|OR1~0_combout\,
	datab => \ALU_Sel~combout\(6),
	datac => \Mux6~1_combout\,
	datad => \ALU_UNIT|I2|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|I1|S~combout\);

\ALU_UNIT|I2|XOR2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|XOR2~combout\ = \ALU_Sel~combout\(6) $ (((\Bus1_Sel~combout\(1) & ((B_REG(1)))) # (!\Bus1_Sel~combout\(1) & (\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel~combout\(1),
	datab => \Mux6~0_combout\,
	datac => B_REG(1),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|XOR2~combout\);

\ALU_UNIT|I2|I0|S\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|I0|S~combout\ = B_REG(1) $ (\ALU_Sel~combout\(7) $ ((\ALU_UNIT|I2|XOR2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(1),
	datab => \ALU_Sel~combout\(7),
	datac => \ALU_UNIT|I2|XOR2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|I0|S~combout\);

\ALU_UNIT|I2|S~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|S~0_combout\ = (\ALU_Sel~combout\(2) & ((\ALU_UNIT|I2|I0|S~combout\) # ((\ALU_Sel~combout\(0) & \ALU_UNIT|I2|I1|S~combout\)))) # (!\ALU_Sel~combout\(2) & (\ALU_Sel~combout\(0) & (\ALU_UNIT|I2|I1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(2),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I2|I1|S~combout\,
	datad => \ALU_UNIT|I2|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|S~0_combout\);

\ALU_UNIT|I2|S~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|S~1_combout\ = (\ALU_UNIT|I2|XOR1~combout\ & ((\ALU_Sel~combout\(1)) # ((\ALU_Sel~combout\(5) & \ALU_UNIT|I2|XOR2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I2|XOR1~combout\,
	datab => \ALU_Sel~combout\(1),
	datac => \ALU_Sel~combout\(5),
	datad => \ALU_UNIT|I2|XOR2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|S~1_combout\);

\ALU_UNIT|I2|S~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|S~2_combout\ = (\ALU_Sel~combout\(1) & ((\ALU_UNIT|I2|XOR2~combout\) # ((\ALU_Sel~combout\(3) & !\ALU_UNIT|I2|XOR1~combout\)))) # (!\ALU_Sel~combout\(1) & (((\ALU_Sel~combout\(3) & !\ALU_UNIT|I2|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(1),
	datab => \ALU_UNIT|I2|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_UNIT|I2|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|S~2_combout\);

\ALU_UNIT|I2|S~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|S~3_combout\ = (\ALU_UNIT|I2|S~1_combout\) # ((\ALU_UNIT|I2|S~2_combout\) # ((\ALU_Sel~combout\(4) & !\ALU_UNIT|I2|XOR2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I2|S~1_combout\,
	datab => \ALU_UNIT|I2|S~2_combout\,
	datac => \ALU_Sel~combout\(4),
	datad => \ALU_UNIT|I2|XOR2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|S~3_combout\);

\Mux14~0\ : maxii_lcell
-- Equation(s):
-- \Mux14~0_combout\ = (\Bus2_Sel~combout\(0) & (\Mux6~1_combout\)) # (!\Bus2_Sel~combout\(0) & (((\ALU_UNIT|I2|S~0_combout\) # (\ALU_UNIT|I2|S~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \ALU_UNIT|I2|S~0_combout\,
	datac => \ALU_UNIT|I2|S~3_combout\,
	datad => \Bus2_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0_combout\);

\Mux14~1\ : maxii_lcell
-- Equation(s):
-- \Mux14~1_combout\ = ((\Bus2_Sel~combout\(1) & (\from_memory~combout\(1))) # (!\Bus2_Sel~combout\(1) & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory~combout\(1),
	datab => \Mux14~0_combout\,
	datad => \Bus2_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~1_combout\);

\IR_REG[1]\ : maxii_lcell
-- Equation(s):
-- IR_REG(1) = DFFEAS((\Mux14~1_combout\), \CLK~combout\, \RST~combout\, , \IR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux14~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => IR_REG(1));

\from_memory[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_from_memory(2),
	combout => \from_memory~combout\(2));

\B_REG[2]\ : maxii_lcell
-- Equation(s):
-- B_REG(2) = DFFEAS((\Mux13~1_combout\), \CLK~combout\, \RST~combout\, , \B_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux13~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B_REG(2));

\A_REG[2]\ : maxii_lcell
-- Equation(s):
-- A_REG(2) = DFFEAS((\Mux13~1_combout\), \CLK~combout\, \RST~combout\, , \A_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux13~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A_REG(2));

\PC[2]\ : maxii_lcell
-- Equation(s):
-- PC(2) = DFFEAS(PC(2) $ ((((!\PC[1]~3\)))), \CLK~combout\, \RST~combout\, , \PC[0]~16_combout\, \Mux13~1_combout\, , , \PC_Load~combout\)
-- \PC[2]~5\ = CARRY((PC(2) & ((!\PC[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => PC(2),
	datac => \Mux13~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => \PC_Load~combout\,
	ena => \PC[0]~16_combout\,
	cin => \PC[1]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(2),
	cout => \PC[2]~5\);

\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = ((\Bus1_Sel~combout\(0) & (A_REG(2))) # (!\Bus1_Sel~combout\(0) & ((PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => A_REG(2),
	datab => PC(2),
	datad => \Bus1_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

\Mux5~1\ : maxii_lcell
-- Equation(s):
-- \Mux5~1_combout\ = ((\Bus1_Sel~combout\(1) & (B_REG(2))) # (!\Bus1_Sel~combout\(1) & ((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(2),
	datab => \Mux5~0_combout\,
	datad => \Bus1_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~1_combout\);

\ALU_UNIT|I3|XOR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|XOR1~combout\ = ((B_REG(2) $ (\ALU_Sel~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => B_REG(2),
	datad => \ALU_Sel~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|XOR1~combout\);

\ALU_UNIT|I3|XOR2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|XOR2~combout\ = \ALU_Sel~combout\(6) $ (((\Bus1_Sel~combout\(1) & ((B_REG(2)))) # (!\Bus1_Sel~combout\(1) & (\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel~combout\(1),
	datab => \Mux5~0_combout\,
	datac => B_REG(2),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|XOR2~combout\);

\ALU_UNIT|I3|S~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|S~0_combout\ = (\ALU_UNIT|I3|XOR1~combout\ & (!\ALU_UNIT|I3|XOR2~combout\)) # (!\ALU_UNIT|I3|XOR1~combout\ & ((\ALU_UNIT|I3|XOR2~combout\) # ((\ALU_Sel~combout\(3)) # (\ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7776",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I3|XOR1~combout\,
	datab => \ALU_UNIT|I3|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|S~0_combout\);

\ALU_UNIT|I3|S~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|S~1_combout\ = (\ALU_UNIT|I3|XOR1~combout\ & ((\ALU_UNIT|I3|XOR2~combout\) # ((\ALU_Sel~combout\(4))))) # (!\ALU_UNIT|I3|XOR1~combout\ & ((\ALU_Sel~combout\(3)) # ((!\ALU_UNIT|I3|XOR2~combout\ & \ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I3|XOR1~combout\,
	datab => \ALU_UNIT|I3|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|S~1_combout\);

\ALU_UNIT|I3|S~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|S~2_combout\ = (\ALU_Sel~combout\(1) & (((\ALU_UNIT|I3|S~0_combout\) # (\ALU_UNIT|I3|S~1_combout\)))) # (!\ALU_Sel~combout\(1) & (\ALU_UNIT|I3|S~1_combout\ & ((\ALU_Sel~combout\(5)) # (\ALU_UNIT|I3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(1),
	datab => \ALU_Sel~combout\(5),
	datac => \ALU_UNIT|I3|S~0_combout\,
	datad => \ALU_UNIT|I3|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|S~2_combout\);

\ALU_UNIT|I2|C~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I2|C~0_combout\ = (\Mux6~1_combout\ & ((\ALU_UNIT|I2|XOR1~combout\) # ((\ALU_UNIT|I2|OR1~0_combout\ & !\ALU_Sel~combout\(6))))) # (!\Mux6~1_combout\ & ((\ALU_Sel~combout\(6)) # ((\ALU_UNIT|I2|OR1~0_combout\ & \ALU_UNIT|I2|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \ALU_UNIT|I2|OR1~0_combout\,
	datac => \ALU_Sel~combout\(6),
	datad => \ALU_UNIT|I2|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I2|C~0_combout\);

\ALU_UNIT|I3|OR1~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|OR1~0_combout\ = (\ALU_Sel~combout\(7)) # ((\ALU_Sel~combout\(0) & (\ALU_UNIT|I2|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(7),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|OR1~0_combout\);

\ALU_UNIT|I3|S~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|S~3_combout\ = (\ALU_Sel~combout\(0) & (\ALU_UNIT|I3|S~0_combout\ $ (((\ALU_Sel~combout\(6)) # (\ALU_UNIT|I3|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(6),
	datab => \ALU_UNIT|I3|OR1~0_combout\,
	datac => \ALU_Sel~combout\(0),
	datad => \ALU_UNIT|I3|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|S~3_combout\);

\ALU_UNIT|I3|S~4\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|S~4_combout\ = (\ALU_UNIT|I3|S~2_combout\) # ((\ALU_UNIT|I3|S~3_combout\) # ((\ALU_Sel~combout\(2) & \ALU_UNIT|I3|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(2),
	datab => \ALU_UNIT|I3|S~2_combout\,
	datac => \ALU_UNIT|I3|S~0_combout\,
	datad => \ALU_UNIT|I3|S~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|S~4_combout\);

\Mux13~0\ : maxii_lcell
-- Equation(s):
-- \Mux13~0_combout\ = ((\Bus2_Sel~combout\(0) & (\Mux5~1_combout\)) # (!\Bus2_Sel~combout\(0) & ((\ALU_UNIT|I3|S~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \ALU_UNIT|I3|S~4_combout\,
	datad => \Bus2_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0_combout\);

\Mux13~1\ : maxii_lcell
-- Equation(s):
-- \Mux13~1_combout\ = ((\Bus2_Sel~combout\(1) & (\from_memory~combout\(2))) # (!\Bus2_Sel~combout\(1) & ((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory~combout\(2),
	datab => \Mux13~0_combout\,
	datad => \Bus2_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~1_combout\);

\IR_REG[2]\ : maxii_lcell
-- Equation(s):
-- IR_REG(2) = DFFEAS((\Mux13~1_combout\), \CLK~combout\, \RST~combout\, , \IR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux13~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => IR_REG(2));

\from_memory[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_from_memory(3),
	combout => \from_memory~combout\(3));

\B_REG[3]\ : maxii_lcell
-- Equation(s):
-- B_REG(3) = DFFEAS((\Mux12~1_combout\), \CLK~combout\, \RST~combout\, , \B_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux12~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B_REG(3));

\A_REG[3]\ : maxii_lcell
-- Equation(s):
-- A_REG(3) = DFFEAS((\Mux12~1_combout\), \CLK~combout\, \RST~combout\, , \A_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux12~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A_REG(3));

\PC[3]\ : maxii_lcell
-- Equation(s):
-- PC(3) = DFFEAS(PC(3) $ ((((\PC[2]~5\)))), \CLK~combout\, \RST~combout\, , \PC[0]~16_combout\, \Mux12~1_combout\, , , \PC_Load~combout\)
-- \PC[3]~7\ = CARRY(((!\PC[2]~5\)) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => PC(3),
	datac => \Mux12~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => \PC_Load~combout\,
	ena => \PC[0]~16_combout\,
	cin => \PC[2]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(3),
	cout => \PC[3]~7\);

\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = ((\Bus1_Sel~combout\(0) & (A_REG(3))) # (!\Bus1_Sel~combout\(0) & ((PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => A_REG(3),
	datab => PC(3),
	datad => \Bus1_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

\Mux4~1\ : maxii_lcell
-- Equation(s):
-- \Mux4~1_combout\ = ((\Bus1_Sel~combout\(1) & (B_REG(3))) # (!\Bus1_Sel~combout\(1) & ((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(3),
	datab => \Mux4~0_combout\,
	datad => \Bus1_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

\ALU_UNIT|I3|C~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I3|C~0_combout\ = (\Mux5~1_combout\ & ((\ALU_UNIT|I3|XOR1~combout\) # ((\ALU_UNIT|I3|OR1~0_combout\ & !\ALU_Sel~combout\(6))))) # (!\Mux5~1_combout\ & ((\ALU_Sel~combout\(6)) # ((\ALU_UNIT|I3|OR1~0_combout\ & \ALU_UNIT|I3|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \ALU_UNIT|I3|OR1~0_combout\,
	datac => \ALU_Sel~combout\(6),
	datad => \ALU_UNIT|I3|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I3|C~0_combout\);

\ALU_UNIT|I4|OR1~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|OR1~0_combout\ = (\ALU_Sel~combout\(7)) # ((\ALU_Sel~combout\(0) & (\ALU_UNIT|I3|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(7),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I3|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|OR1~0_combout\);

\ALU_UNIT|I4|A6~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|A6~3_combout\ = \ALU_Sel~combout\(7) $ (((!\Bus1_Sel~combout\(1) & (B_REG(3) $ (\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(3),
	datab => \ALU_Sel~combout\(7),
	datac => \Bus1_Sel~combout\(1),
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|A6~3_combout\);

\ALU_UNIT|I4|A6~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|A6~2_combout\ = (\ALU_Sel~combout\(0) & (\ALU_UNIT|I4|A6~3_combout\ $ (((!\ALU_Sel~combout\(6) & \ALU_UNIT|I4|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(6),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I4|OR1~0_combout\,
	datad => \ALU_UNIT|I4|A6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|A6~2_combout\);

\ALU_UNIT|I4|XOR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|XOR1~combout\ = ((B_REG(3) $ (\ALU_Sel~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => B_REG(3),
	datad => \ALU_Sel~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|XOR1~combout\);

\ALU_UNIT|I4|XOR2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|XOR2~combout\ = \ALU_Sel~combout\(6) $ (((\Bus1_Sel~combout\(1) & ((B_REG(3)))) # (!\Bus1_Sel~combout\(1) & (\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel~combout\(1),
	datab => \Mux4~0_combout\,
	datac => B_REG(3),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|XOR2~combout\);

\ALU_UNIT|I4|S~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|S~0_combout\ = (\ALU_UNIT|I4|XOR1~combout\ & (!\ALU_UNIT|I4|XOR2~combout\)) # (!\ALU_UNIT|I4|XOR1~combout\ & ((\ALU_UNIT|I4|XOR2~combout\) # ((\ALU_Sel~combout\(3)) # (\ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7776",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I4|XOR1~combout\,
	datab => \ALU_UNIT|I4|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|S~0_combout\);

\ALU_UNIT|I4|S~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|S~1_combout\ = (\ALU_UNIT|I4|XOR1~combout\ & ((\ALU_UNIT|I4|XOR2~combout\) # ((\ALU_Sel~combout\(4))))) # (!\ALU_UNIT|I4|XOR1~combout\ & ((\ALU_Sel~combout\(3)) # ((!\ALU_UNIT|I4|XOR2~combout\ & \ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I4|XOR1~combout\,
	datab => \ALU_UNIT|I4|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|S~1_combout\);

\ALU_UNIT|I4|S~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|S~2_combout\ = (\ALU_Sel~combout\(1)) # ((\ALU_UNIT|I4|S~1_combout\ & (\ALU_Sel~combout\(5))) # (!\ALU_UNIT|I4|S~1_combout\ & ((\ALU_Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(1),
	datab => \ALU_Sel~combout\(5),
	datac => \ALU_Sel~combout\(2),
	datad => \ALU_UNIT|I4|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|S~2_combout\);

\ALU_UNIT|I4|S~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|S~3_combout\ = (\ALU_UNIT|I4|A6~2_combout\) # ((\ALU_UNIT|I4|S~0_combout\ & ((\ALU_UNIT|I4|S~1_combout\) # (\ALU_UNIT|I4|S~2_combout\))) # (!\ALU_UNIT|I4|S~0_combout\ & (\ALU_UNIT|I4|S~1_combout\ & \ALU_UNIT|I4|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I4|A6~2_combout\,
	datab => \ALU_UNIT|I4|S~0_combout\,
	datac => \ALU_UNIT|I4|S~1_combout\,
	datad => \ALU_UNIT|I4|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|S~3_combout\);

\Mux12~0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0_combout\ = ((\Bus2_Sel~combout\(0) & (\Mux4~1_combout\)) # (!\Bus2_Sel~combout\(0) & ((\ALU_UNIT|I4|S~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \ALU_UNIT|I4|S~3_combout\,
	datad => \Bus2_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

\Mux12~1\ : maxii_lcell
-- Equation(s):
-- \Mux12~1_combout\ = ((\Bus2_Sel~combout\(1) & (\from_memory~combout\(3))) # (!\Bus2_Sel~combout\(1) & ((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory~combout\(3),
	datab => \Mux12~0_combout\,
	datad => \Bus2_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~1_combout\);

\IR_REG[3]\ : maxii_lcell
-- Equation(s):
-- IR_REG(3) = DFFEAS((\Mux12~1_combout\), \CLK~combout\, \RST~combout\, , \IR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux12~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => IR_REG(3));

\from_memory[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_from_memory(4),
	combout => \from_memory~combout\(4));

\B_REG[4]\ : maxii_lcell
-- Equation(s):
-- B_REG(4) = DFFEAS((\Mux11~1_combout\), \CLK~combout\, \RST~combout\, , \B_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux11~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B_REG(4));

\A_REG[4]\ : maxii_lcell
-- Equation(s):
-- A_REG(4) = DFFEAS((\Mux11~1_combout\), \CLK~combout\, \RST~combout\, , \A_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux11~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A_REG(4));

\PC[4]\ : maxii_lcell
-- Equation(s):
-- PC(4) = DFFEAS(PC(4) $ ((((!\PC[3]~7\)))), \CLK~combout\, \RST~combout\, , \PC[0]~16_combout\, \Mux11~1_combout\, , , \PC_Load~combout\)
-- \PC[4]~9\ = CARRY((PC(4) & ((!\PC[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => PC(4),
	datac => \Mux11~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => \PC_Load~combout\,
	ena => \PC[0]~16_combout\,
	cin => \PC[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(4),
	cout => \PC[4]~9\);

\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = ((\Bus1_Sel~combout\(0) & (A_REG(4))) # (!\Bus1_Sel~combout\(0) & ((PC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => A_REG(4),
	datab => PC(4),
	datad => \Bus1_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

\Mux3~1\ : maxii_lcell
-- Equation(s):
-- \Mux3~1_combout\ = ((\Bus1_Sel~combout\(1) & (B_REG(4))) # (!\Bus1_Sel~combout\(1) & ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(4),
	datab => \Mux3~0_combout\,
	datad => \Bus1_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

\ALU_UNIT|I4|C~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I4|C~0_combout\ = (\Mux4~1_combout\ & ((\ALU_UNIT|I4|XOR1~combout\) # ((\ALU_UNIT|I4|OR1~0_combout\ & !\ALU_Sel~combout\(6))))) # (!\Mux4~1_combout\ & ((\ALU_Sel~combout\(6)) # ((\ALU_UNIT|I4|OR1~0_combout\ & \ALU_UNIT|I4|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \ALU_UNIT|I4|OR1~0_combout\,
	datac => \ALU_Sel~combout\(6),
	datad => \ALU_UNIT|I4|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I4|C~0_combout\);

\ALU_UNIT|I5|OR1~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|OR1~0_combout\ = (\ALU_Sel~combout\(7)) # ((\ALU_Sel~combout\(0) & (\ALU_UNIT|I4|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(7),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I4|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|OR1~0_combout\);

\ALU_UNIT|I5|A6~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|A6~3_combout\ = \ALU_Sel~combout\(7) $ (((!\Bus1_Sel~combout\(1) & (B_REG(4) $ (\Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(4),
	datab => \ALU_Sel~combout\(7),
	datac => \Bus1_Sel~combout\(1),
	datad => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|A6~3_combout\);

\ALU_UNIT|I5|A6~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|A6~2_combout\ = (\ALU_Sel~combout\(0) & (\ALU_UNIT|I5|A6~3_combout\ $ (((!\ALU_Sel~combout\(6) & \ALU_UNIT|I5|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(6),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I5|OR1~0_combout\,
	datad => \ALU_UNIT|I5|A6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|A6~2_combout\);

\ALU_UNIT|I5|XOR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|XOR1~combout\ = ((B_REG(4) $ (\ALU_Sel~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => B_REG(4),
	datad => \ALU_Sel~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|XOR1~combout\);

\ALU_UNIT|I5|XOR2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|XOR2~combout\ = \ALU_Sel~combout\(6) $ (((\Bus1_Sel~combout\(1) & ((B_REG(4)))) # (!\Bus1_Sel~combout\(1) & (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel~combout\(1),
	datab => \Mux3~0_combout\,
	datac => B_REG(4),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|XOR2~combout\);

\ALU_UNIT|I5|S~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|S~0_combout\ = (\ALU_UNIT|I5|XOR1~combout\ & (!\ALU_UNIT|I5|XOR2~combout\)) # (!\ALU_UNIT|I5|XOR1~combout\ & ((\ALU_UNIT|I5|XOR2~combout\) # ((\ALU_Sel~combout\(3)) # (\ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7776",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I5|XOR1~combout\,
	datab => \ALU_UNIT|I5|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|S~0_combout\);

\ALU_UNIT|I5|S~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|S~1_combout\ = (\ALU_UNIT|I5|XOR1~combout\ & ((\ALU_UNIT|I5|XOR2~combout\) # ((\ALU_Sel~combout\(4))))) # (!\ALU_UNIT|I5|XOR1~combout\ & ((\ALU_Sel~combout\(3)) # ((!\ALU_UNIT|I5|XOR2~combout\ & \ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I5|XOR1~combout\,
	datab => \ALU_UNIT|I5|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|S~1_combout\);

\ALU_UNIT|I5|S~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|S~2_combout\ = (\ALU_Sel~combout\(1)) # ((\ALU_UNIT|I5|S~1_combout\ & (\ALU_Sel~combout\(5))) # (!\ALU_UNIT|I5|S~1_combout\ & ((\ALU_Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(1),
	datab => \ALU_Sel~combout\(5),
	datac => \ALU_Sel~combout\(2),
	datad => \ALU_UNIT|I5|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|S~2_combout\);

\ALU_UNIT|I5|S~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|S~3_combout\ = (\ALU_UNIT|I5|A6~2_combout\) # ((\ALU_UNIT|I5|S~0_combout\ & ((\ALU_UNIT|I5|S~1_combout\) # (\ALU_UNIT|I5|S~2_combout\))) # (!\ALU_UNIT|I5|S~0_combout\ & (\ALU_UNIT|I5|S~1_combout\ & \ALU_UNIT|I5|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I5|A6~2_combout\,
	datab => \ALU_UNIT|I5|S~0_combout\,
	datac => \ALU_UNIT|I5|S~1_combout\,
	datad => \ALU_UNIT|I5|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|S~3_combout\);

\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = ((\Bus2_Sel~combout\(0) & (\Mux3~1_combout\)) # (!\Bus2_Sel~combout\(0) & ((\ALU_UNIT|I5|S~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \ALU_UNIT|I5|S~3_combout\,
	datad => \Bus2_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

\Mux11~1\ : maxii_lcell
-- Equation(s):
-- \Mux11~1_combout\ = ((\Bus2_Sel~combout\(1) & (\from_memory~combout\(4))) # (!\Bus2_Sel~combout\(1) & ((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory~combout\(4),
	datab => \Mux11~0_combout\,
	datad => \Bus2_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~1_combout\);

\IR_REG[4]\ : maxii_lcell
-- Equation(s):
-- IR_REG(4) = DFFEAS((\Mux11~1_combout\), \CLK~combout\, \RST~combout\, , \IR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux11~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => IR_REG(4));

\from_memory[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_from_memory(5),
	combout => \from_memory~combout\(5));

\B_REG[5]\ : maxii_lcell
-- Equation(s):
-- B_REG(5) = DFFEAS((\Mux10~1_combout\), \CLK~combout\, \RST~combout\, , \B_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux10~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B_REG(5));

\A_REG[5]\ : maxii_lcell
-- Equation(s):
-- A_REG(5) = DFFEAS((\Mux10~1_combout\), \CLK~combout\, \RST~combout\, , \A_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux10~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A_REG(5));

\PC[5]\ : maxii_lcell
-- Equation(s):
-- PC(5) = DFFEAS(PC(5) $ ((((\PC[4]~9\)))), \CLK~combout\, \RST~combout\, , \PC[0]~16_combout\, \Mux10~1_combout\, , , \PC_Load~combout\)
-- \PC[5]~11\ = CARRY(((!\PC[4]~9\)) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => PC(5),
	datac => \Mux10~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => \PC_Load~combout\,
	ena => \PC[0]~16_combout\,
	cin => \PC[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(5),
	cout => \PC[5]~11\);

\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = ((\Bus1_Sel~combout\(0) & (A_REG(5))) # (!\Bus1_Sel~combout\(0) & ((PC(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => A_REG(5),
	datab => PC(5),
	datad => \Bus1_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

\Mux2~1\ : maxii_lcell
-- Equation(s):
-- \Mux2~1_combout\ = ((\Bus1_Sel~combout\(1) & (B_REG(5))) # (!\Bus1_Sel~combout\(1) & ((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(5),
	datab => \Mux2~0_combout\,
	datad => \Bus1_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

\ALU_UNIT|I5|C~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I5|C~0_combout\ = (\Mux3~1_combout\ & ((\ALU_UNIT|I5|XOR1~combout\) # ((\ALU_UNIT|I5|OR1~0_combout\ & !\ALU_Sel~combout\(6))))) # (!\Mux3~1_combout\ & ((\ALU_Sel~combout\(6)) # ((\ALU_UNIT|I5|OR1~0_combout\ & \ALU_UNIT|I5|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \ALU_UNIT|I5|OR1~0_combout\,
	datac => \ALU_Sel~combout\(6),
	datad => \ALU_UNIT|I5|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I5|C~0_combout\);

\ALU_UNIT|I6|OR1~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|OR1~0_combout\ = (\ALU_Sel~combout\(7)) # ((\ALU_Sel~combout\(0) & (\ALU_UNIT|I5|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(7),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I5|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|OR1~0_combout\);

\ALU_UNIT|I6|A6~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|A6~3_combout\ = \ALU_Sel~combout\(7) $ (((!\Bus1_Sel~combout\(1) & (B_REG(5) $ (\Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(5),
	datab => \ALU_Sel~combout\(7),
	datac => \Bus1_Sel~combout\(1),
	datad => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|A6~3_combout\);

\ALU_UNIT|I6|A6~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|A6~2_combout\ = (\ALU_Sel~combout\(0) & (\ALU_UNIT|I6|A6~3_combout\ $ (((!\ALU_Sel~combout\(6) & \ALU_UNIT|I6|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(6),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I6|OR1~0_combout\,
	datad => \ALU_UNIT|I6|A6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|A6~2_combout\);

\ALU_UNIT|I6|XOR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|XOR1~combout\ = ((B_REG(5) $ (\ALU_Sel~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => B_REG(5),
	datad => \ALU_Sel~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|XOR1~combout\);

\ALU_UNIT|I6|XOR2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|XOR2~combout\ = \ALU_Sel~combout\(6) $ (((\Bus1_Sel~combout\(1) & ((B_REG(5)))) # (!\Bus1_Sel~combout\(1) & (\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel~combout\(1),
	datab => \Mux2~0_combout\,
	datac => B_REG(5),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|XOR2~combout\);

\ALU_UNIT|I6|S~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|S~0_combout\ = (\ALU_UNIT|I6|XOR1~combout\ & (!\ALU_UNIT|I6|XOR2~combout\)) # (!\ALU_UNIT|I6|XOR1~combout\ & ((\ALU_UNIT|I6|XOR2~combout\) # ((\ALU_Sel~combout\(3)) # (\ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7776",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I6|XOR1~combout\,
	datab => \ALU_UNIT|I6|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|S~0_combout\);

\ALU_UNIT|I6|S~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|S~1_combout\ = (\ALU_UNIT|I6|XOR1~combout\ & ((\ALU_UNIT|I6|XOR2~combout\) # ((\ALU_Sel~combout\(4))))) # (!\ALU_UNIT|I6|XOR1~combout\ & ((\ALU_Sel~combout\(3)) # ((!\ALU_UNIT|I6|XOR2~combout\ & \ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I6|XOR1~combout\,
	datab => \ALU_UNIT|I6|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|S~1_combout\);

\ALU_UNIT|I6|S~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|S~2_combout\ = (\ALU_Sel~combout\(1)) # ((\ALU_UNIT|I6|S~1_combout\ & (\ALU_Sel~combout\(5))) # (!\ALU_UNIT|I6|S~1_combout\ & ((\ALU_Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(1),
	datab => \ALU_Sel~combout\(5),
	datac => \ALU_Sel~combout\(2),
	datad => \ALU_UNIT|I6|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|S~2_combout\);

\ALU_UNIT|I6|S~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|S~3_combout\ = (\ALU_UNIT|I6|A6~2_combout\) # ((\ALU_UNIT|I6|S~0_combout\ & ((\ALU_UNIT|I6|S~1_combout\) # (\ALU_UNIT|I6|S~2_combout\))) # (!\ALU_UNIT|I6|S~0_combout\ & (\ALU_UNIT|I6|S~1_combout\ & \ALU_UNIT|I6|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I6|A6~2_combout\,
	datab => \ALU_UNIT|I6|S~0_combout\,
	datac => \ALU_UNIT|I6|S~1_combout\,
	datad => \ALU_UNIT|I6|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|S~3_combout\);

\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = ((\Bus2_Sel~combout\(0) & (\Mux2~1_combout\)) # (!\Bus2_Sel~combout\(0) & ((\ALU_UNIT|I6|S~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \ALU_UNIT|I6|S~3_combout\,
	datad => \Bus2_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

\Mux10~1\ : maxii_lcell
-- Equation(s):
-- \Mux10~1_combout\ = ((\Bus2_Sel~combout\(1) & (\from_memory~combout\(5))) # (!\Bus2_Sel~combout\(1) & ((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory~combout\(5),
	datab => \Mux10~0_combout\,
	datad => \Bus2_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~1_combout\);

\IR_REG[5]\ : maxii_lcell
-- Equation(s):
-- IR_REG(5) = DFFEAS((\Mux10~1_combout\), \CLK~combout\, \RST~combout\, , \IR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux10~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => IR_REG(5));

\from_memory[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_from_memory(6),
	combout => \from_memory~combout\(6));

\B_REG[6]\ : maxii_lcell
-- Equation(s):
-- B_REG(6) = DFFEAS((\Mux9~1_combout\), \CLK~combout\, \RST~combout\, , \B_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux9~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B_REG(6));

\A_REG[6]\ : maxii_lcell
-- Equation(s):
-- A_REG(6) = DFFEAS((\Mux9~1_combout\), \CLK~combout\, \RST~combout\, , \A_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux9~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A_REG(6));

\PC[6]\ : maxii_lcell
-- Equation(s):
-- PC(6) = DFFEAS(PC(6) $ ((((!\PC[5]~11\)))), \CLK~combout\, \RST~combout\, , \PC[0]~16_combout\, \Mux9~1_combout\, , , \PC_Load~combout\)
-- \PC[6]~13\ = CARRY((PC(6) & ((!\PC[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => PC(6),
	datac => \Mux9~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => \PC_Load~combout\,
	ena => \PC[0]~16_combout\,
	cin => \PC[5]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(6),
	cout => \PC[6]~13\);

\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = ((\Bus1_Sel~combout\(0) & (A_REG(6))) # (!\Bus1_Sel~combout\(0) & ((PC(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => A_REG(6),
	datab => PC(6),
	datad => \Bus1_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

\Mux1~1\ : maxii_lcell
-- Equation(s):
-- \Mux1~1_combout\ = ((\Bus1_Sel~combout\(1) & (B_REG(6))) # (!\Bus1_Sel~combout\(1) & ((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(6),
	datab => \Mux1~0_combout\,
	datad => \Bus1_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

\ALU_UNIT|I6|C~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I6|C~0_combout\ = (\Mux2~1_combout\ & ((\ALU_UNIT|I6|XOR1~combout\) # ((\ALU_UNIT|I6|OR1~0_combout\ & !\ALU_Sel~combout\(6))))) # (!\Mux2~1_combout\ & ((\ALU_Sel~combout\(6)) # ((\ALU_UNIT|I6|OR1~0_combout\ & \ALU_UNIT|I6|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \ALU_UNIT|I6|OR1~0_combout\,
	datac => \ALU_Sel~combout\(6),
	datad => \ALU_UNIT|I6|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I6|C~0_combout\);

\ALU_UNIT|I7|OR1~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|OR1~0_combout\ = (\ALU_Sel~combout\(7)) # ((\ALU_Sel~combout\(0) & (\ALU_UNIT|I6|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(7),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I6|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|OR1~0_combout\);

\ALU_UNIT|I7|A6~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|A6~3_combout\ = \ALU_Sel~combout\(7) $ (((!\Bus1_Sel~combout\(1) & (B_REG(6) $ (\Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(6),
	datab => \ALU_Sel~combout\(7),
	datac => \Bus1_Sel~combout\(1),
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|A6~3_combout\);

\ALU_UNIT|I7|A6~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|A6~2_combout\ = (\ALU_Sel~combout\(0) & (\ALU_UNIT|I7|A6~3_combout\ $ (((!\ALU_Sel~combout\(6) & \ALU_UNIT|I7|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(6),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I7|OR1~0_combout\,
	datad => \ALU_UNIT|I7|A6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|A6~2_combout\);

\ALU_UNIT|I7|XOR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|XOR1~combout\ = ((B_REG(6) $ (\ALU_Sel~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => B_REG(6),
	datad => \ALU_Sel~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|XOR1~combout\);

\ALU_UNIT|I7|XOR2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|XOR2~combout\ = \ALU_Sel~combout\(6) $ (((\Bus1_Sel~combout\(1) & ((B_REG(6)))) # (!\Bus1_Sel~combout\(1) & (\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel~combout\(1),
	datab => \Mux1~0_combout\,
	datac => B_REG(6),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|XOR2~combout\);

\ALU_UNIT|I7|S~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|S~0_combout\ = (\ALU_UNIT|I7|XOR1~combout\ & (!\ALU_UNIT|I7|XOR2~combout\)) # (!\ALU_UNIT|I7|XOR1~combout\ & ((\ALU_UNIT|I7|XOR2~combout\) # ((\ALU_Sel~combout\(3)) # (\ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7776",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I7|XOR1~combout\,
	datab => \ALU_UNIT|I7|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|S~0_combout\);

\ALU_UNIT|I7|S~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|S~1_combout\ = (\ALU_UNIT|I7|XOR1~combout\ & ((\ALU_UNIT|I7|XOR2~combout\) # ((\ALU_Sel~combout\(4))))) # (!\ALU_UNIT|I7|XOR1~combout\ & ((\ALU_Sel~combout\(3)) # ((!\ALU_UNIT|I7|XOR2~combout\ & \ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I7|XOR1~combout\,
	datab => \ALU_UNIT|I7|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|S~1_combout\);

\ALU_UNIT|I7|S~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|S~2_combout\ = (\ALU_Sel~combout\(1)) # ((\ALU_UNIT|I7|S~1_combout\ & (\ALU_Sel~combout\(5))) # (!\ALU_UNIT|I7|S~1_combout\ & ((\ALU_Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(1),
	datab => \ALU_Sel~combout\(5),
	datac => \ALU_Sel~combout\(2),
	datad => \ALU_UNIT|I7|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|S~2_combout\);

\ALU_UNIT|I7|S~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|S~3_combout\ = (\ALU_UNIT|I7|A6~2_combout\) # ((\ALU_UNIT|I7|S~0_combout\ & ((\ALU_UNIT|I7|S~1_combout\) # (\ALU_UNIT|I7|S~2_combout\))) # (!\ALU_UNIT|I7|S~0_combout\ & (\ALU_UNIT|I7|S~1_combout\ & \ALU_UNIT|I7|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I7|A6~2_combout\,
	datab => \ALU_UNIT|I7|S~0_combout\,
	datac => \ALU_UNIT|I7|S~1_combout\,
	datad => \ALU_UNIT|I7|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|S~3_combout\);

\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = ((\Bus2_Sel~combout\(0) & (\Mux1~1_combout\)) # (!\Bus2_Sel~combout\(0) & ((\ALU_UNIT|I7|S~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \ALU_UNIT|I7|S~3_combout\,
	datad => \Bus2_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

\Mux9~1\ : maxii_lcell
-- Equation(s):
-- \Mux9~1_combout\ = ((\Bus2_Sel~combout\(1) & (\from_memory~combout\(6))) # (!\Bus2_Sel~combout\(1) & ((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory~combout\(6),
	datab => \Mux9~0_combout\,
	datad => \Bus2_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~1_combout\);

\IR_REG[6]\ : maxii_lcell
-- Equation(s):
-- IR_REG(6) = DFFEAS((\Mux9~1_combout\), \CLK~combout\, \RST~combout\, , \IR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux9~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => IR_REG(6));

\from_memory[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_from_memory(7),
	combout => \from_memory~combout\(7));

\B_REG[7]\ : maxii_lcell
-- Equation(s):
-- B_REG(7) = DFFEAS((\Mux8~1_combout\), \CLK~combout\, \RST~combout\, , \B_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux8~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \B_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B_REG(7));

\A_REG[7]\ : maxii_lcell
-- Equation(s):
-- A_REG(7) = DFFEAS((\Mux8~1_combout\), \CLK~combout\, \RST~combout\, , \A_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux8~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \A_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A_REG(7));

\PC[7]\ : maxii_lcell
-- Equation(s):
-- PC(7) = DFFEAS(PC(7) $ ((((\PC[6]~13\)))), \CLK~combout\, \RST~combout\, , \PC[0]~16_combout\, \Mux8~1_combout\, , , \PC_Load~combout\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => PC(7),
	datac => \Mux8~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	sload => \PC_Load~combout\,
	ena => \PC[0]~16_combout\,
	cin => \PC[6]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => PC(7));

\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = ((\Bus1_Sel~combout\(0) & (A_REG(7))) # (!\Bus1_Sel~combout\(0) & ((PC(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => A_REG(7),
	datab => PC(7),
	datad => \Bus1_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = ((\Bus1_Sel~combout\(1) & (B_REG(7))) # (!\Bus1_Sel~combout\(1) & ((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(7),
	datab => \Mux0~0_combout\,
	datad => \Bus1_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (\Bus2_Sel~combout\(1) & (\from_memory~combout\(7))) # (!\Bus2_Sel~combout\(1) & (((\Mux0~1_combout\ & \Bus2_Sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \from_memory~combout\(7),
	datab => \Mux0~1_combout\,
	datac => \Bus2_Sel~combout\(0),
	datad => \Bus2_Sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

\ALU_UNIT|I7|C~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I7|C~0_combout\ = (\Mux1~1_combout\ & ((\ALU_UNIT|I7|XOR1~combout\) # ((\ALU_UNIT|I7|OR1~0_combout\ & !\ALU_Sel~combout\(6))))) # (!\Mux1~1_combout\ & ((\ALU_Sel~combout\(6)) # ((\ALU_UNIT|I7|OR1~0_combout\ & \ALU_UNIT|I7|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \ALU_UNIT|I7|OR1~0_combout\,
	datac => \ALU_Sel~combout\(6),
	datad => \ALU_UNIT|I7|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I7|C~0_combout\);

\ALU_UNIT|I8|OR1~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|OR1~0_combout\ = (\ALU_Sel~combout\(7)) # ((\ALU_Sel~combout\(0) & (\ALU_UNIT|I7|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(7),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I7|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|OR1~0_combout\);

\ALU_UNIT|I8|A6~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|A6~3_combout\ = \ALU_Sel~combout\(7) $ (((!\Bus1_Sel~combout\(1) & (B_REG(7) $ (\Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c9c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => B_REG(7),
	datab => \ALU_Sel~combout\(7),
	datac => \Bus1_Sel~combout\(1),
	datad => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|A6~3_combout\);

\ALU_UNIT|I8|A6~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|A6~2_combout\ = (\ALU_Sel~combout\(0) & (\ALU_UNIT|I8|A6~3_combout\ $ (((!\ALU_Sel~combout\(6) & \ALU_UNIT|I8|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(6),
	datab => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I8|OR1~0_combout\,
	datad => \ALU_UNIT|I8|A6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|A6~2_combout\);

\ALU_UNIT|I8|XOR1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|XOR1~combout\ = ((B_REG(7) $ (\ALU_Sel~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => B_REG(7),
	datad => \ALU_Sel~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|XOR1~combout\);

\ALU_UNIT|I8|XOR2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|XOR2~combout\ = \ALU_Sel~combout\(6) $ (((\Bus1_Sel~combout\(1) & ((B_REG(7)))) # (!\Bus1_Sel~combout\(1) & (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Bus1_Sel~combout\(1),
	datab => \Mux0~0_combout\,
	datac => B_REG(7),
	datad => \ALU_Sel~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|XOR2~combout\);

\ALU_UNIT|I8|S~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|S~0_combout\ = (\ALU_UNIT|I8|XOR1~combout\ & (!\ALU_UNIT|I8|XOR2~combout\)) # (!\ALU_UNIT|I8|XOR1~combout\ & ((\ALU_UNIT|I8|XOR2~combout\) # ((\ALU_Sel~combout\(3)) # (\ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7776",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I8|XOR1~combout\,
	datab => \ALU_UNIT|I8|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|S~0_combout\);

\ALU_UNIT|I8|S~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|S~1_combout\ = (\ALU_UNIT|I8|XOR1~combout\ & ((\ALU_UNIT|I8|XOR2~combout\) # ((\ALU_Sel~combout\(4))))) # (!\ALU_UNIT|I8|XOR1~combout\ & ((\ALU_Sel~combout\(3)) # ((!\ALU_UNIT|I8|XOR2~combout\ & \ALU_Sel~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I8|XOR1~combout\,
	datab => \ALU_UNIT|I8|XOR2~combout\,
	datac => \ALU_Sel~combout\(3),
	datad => \ALU_Sel~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|S~1_combout\);

\ALU_UNIT|I8|S~2\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|S~2_combout\ = (\ALU_Sel~combout\(1)) # ((\ALU_UNIT|I8|S~1_combout\ & (\ALU_Sel~combout\(5))) # (!\ALU_UNIT|I8|S~1_combout\ & ((\ALU_Sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel~combout\(1),
	datab => \ALU_Sel~combout\(5),
	datac => \ALU_Sel~combout\(2),
	datad => \ALU_UNIT|I8|S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|S~2_combout\);

\ALU_UNIT|I8|S~3\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|S~3_combout\ = (\ALU_UNIT|I8|A6~2_combout\) # ((\ALU_UNIT|I8|S~0_combout\ & ((\ALU_UNIT|I8|S~1_combout\) # (\ALU_UNIT|I8|S~2_combout\))) # (!\ALU_UNIT|I8|S~0_combout\ & (\ALU_UNIT|I8|S~1_combout\ & \ALU_UNIT|I8|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I8|A6~2_combout\,
	datab => \ALU_UNIT|I8|S~0_combout\,
	datac => \ALU_UNIT|I8|S~1_combout\,
	datad => \ALU_UNIT|I8|S~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|S~3_combout\);

\Mux8~1\ : maxii_lcell
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((\ALU_UNIT|I8|S~3_combout\ & (!\Bus2_Sel~combout\(1) & !\Bus2_Sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \ALU_UNIT|I8|S~3_combout\,
	datac => \Bus2_Sel~combout\(1),
	datad => \Bus2_Sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~1_combout\);

\IR_REG[7]\ : maxii_lcell
-- Equation(s):
-- IR_REG(7) = DFFEAS((\Mux8~1_combout\), \CLK~combout\, \RST~combout\, , \IR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux8~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \IR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => IR_REG(7));

\MAR_Load~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MAR_Load,
	combout => \MAR_Load~combout\);

\MAR[0]\ : maxii_lcell
-- Equation(s):
-- MAR(0) = DFFEAS((\Mux15~1_combout\), \CLK~combout\, \RST~combout\, , \MAR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux15~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => MAR(0));

\MAR[1]\ : maxii_lcell
-- Equation(s):
-- MAR(1) = DFFEAS((\Mux14~1_combout\), \CLK~combout\, \RST~combout\, , \MAR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux14~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => MAR(1));

\MAR[2]\ : maxii_lcell
-- Equation(s):
-- MAR(2) = DFFEAS((\Mux13~1_combout\), \CLK~combout\, \RST~combout\, , \MAR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux13~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => MAR(2));

\MAR[3]\ : maxii_lcell
-- Equation(s):
-- MAR(3) = DFFEAS((\Mux12~1_combout\), \CLK~combout\, \RST~combout\, , \MAR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux12~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => MAR(3));

\MAR[4]\ : maxii_lcell
-- Equation(s):
-- MAR(4) = DFFEAS((\Mux11~1_combout\), \CLK~combout\, \RST~combout\, , \MAR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux11~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => MAR(4));

\MAR[5]\ : maxii_lcell
-- Equation(s):
-- MAR(5) = DFFEAS((\Mux10~1_combout\), \CLK~combout\, \RST~combout\, , \MAR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux10~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => MAR(5));

\MAR[6]\ : maxii_lcell
-- Equation(s):
-- MAR(6) = DFFEAS((\Mux9~1_combout\), \CLK~combout\, \RST~combout\, , \MAR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux9~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => MAR(6));

\MAR[7]\ : maxii_lcell
-- Equation(s):
-- MAR(7) = DFFEAS((\Mux8~1_combout\), \CLK~combout\, \RST~combout\, , \MAR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Mux8~1_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \MAR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => MAR(7));

\ALU_UNIT|I8|C~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|I8|C~0_combout\ = (\Mux0~1_combout\ & ((\ALU_UNIT|I8|XOR1~combout\) # ((\ALU_UNIT|I8|OR1~0_combout\ & !\ALU_Sel~combout\(6))))) # (!\Mux0~1_combout\ & ((\ALU_Sel~combout\(6)) # ((\ALU_UNIT|I8|OR1~0_combout\ & \ALU_UNIT|I8|XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \ALU_UNIT|I8|OR1~0_combout\,
	datac => \ALU_Sel~combout\(6),
	datad => \ALU_UNIT|I8|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|I8|C~0_combout\);

\CCR_Load~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CCR_Load,
	combout => \CCR_Load~combout\);

\CCR[0]\ : maxii_lcell
-- Equation(s):
-- CCR(0) = DFFEAS((\ALU_Sel~combout\(0) & (\ALU_UNIT|I8|C~0_combout\ & ((\ALU_Sel~combout\(7)) # (\ALU_Sel~combout\(6))))), \CLK~combout\, \RST~combout\, , \CCR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8880",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \ALU_Sel~combout\(0),
	datab => \ALU_UNIT|I8|C~0_combout\,
	datac => \ALU_Sel~combout\(7),
	datad => \ALU_Sel~combout\(6),
	aclr => \ALT_INV_RST~combout\,
	ena => \CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CCR(0));

\ALU_UNIT|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|Mux0~0_combout\ = (!\ALU_UNIT|I1|S~0_combout\ & (!\ALU_UNIT|I1|S~3_combout\ & (!\ALU_UNIT|I2|S~0_combout\ & !\ALU_UNIT|I2|S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I1|S~0_combout\,
	datab => \ALU_UNIT|I1|S~3_combout\,
	datac => \ALU_UNIT|I2|S~0_combout\,
	datad => \ALU_UNIT|I2|S~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|Mux0~0_combout\);

\ALU_UNIT|Mux0~1\ : maxii_lcell
-- Equation(s):
-- \ALU_UNIT|Mux0~1_combout\ = (!\ALU_UNIT|I5|S~3_combout\ & (!\ALU_UNIT|I6|S~3_combout\ & (!\ALU_UNIT|I7|S~3_combout\ & !\ALU_UNIT|I8|S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_UNIT|I5|S~3_combout\,
	datab => \ALU_UNIT|I6|S~3_combout\,
	datac => \ALU_UNIT|I7|S~3_combout\,
	datad => \ALU_UNIT|I8|S~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_UNIT|Mux0~1_combout\);

\CCR[1]\ : maxii_lcell
-- Equation(s):
-- CCR(1) = DFFEAS((\ALU_UNIT|Mux0~0_combout\ & (\ALU_UNIT|Mux0~1_combout\ & (!\ALU_UNIT|I3|S~4_combout\ & !\ALU_UNIT|I4|S~3_combout\))), \CLK~combout\, \RST~combout\, , \CCR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \ALU_UNIT|Mux0~0_combout\,
	datab => \ALU_UNIT|Mux0~1_combout\,
	datac => \ALU_UNIT|I3|S~4_combout\,
	datad => \ALU_UNIT|I4|S~3_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CCR(1));

\CCR[2]\ : maxii_lcell
-- Equation(s):
-- CCR(2) = DFFEAS((\ALU_Sel~combout\(0) & ((\ALU_UNIT|I7|C~0_combout\ $ (\ALU_UNIT|I8|C~0_combout\)))), \CLK~combout\, \RST~combout\, , \CCR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \ALU_Sel~combout\(0),
	datac => \ALU_UNIT|I7|C~0_combout\,
	datad => \ALU_UNIT|I8|C~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CCR(2));

\CCR[3]\ : maxii_lcell
-- Equation(s):
-- CCR(3) = DFFEAS((\ALU_Sel~combout\(0) & (\ALU_UNIT|I8|C~0_combout\)), \CLK~combout\, \RST~combout\, , \CCR_Load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \ALU_Sel~combout\(0),
	datab => \ALU_UNIT|I8|C~0_combout\,
	aclr => \ALT_INV_RST~combout\,
	ena => \CCR_Load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => CCR(3));

\IR[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => IR_REG(0),
	oe => VCC,
	padio => ww_IR(0));

\IR[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => IR_REG(1),
	oe => VCC,
	padio => ww_IR(1));

\IR[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => IR_REG(2),
	oe => VCC,
	padio => ww_IR(2));

\IR[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => IR_REG(3),
	oe => VCC,
	padio => ww_IR(3));

\IR[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => IR_REG(4),
	oe => VCC,
	padio => ww_IR(4));

\IR[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => IR_REG(5),
	oe => VCC,
	padio => ww_IR(5));

\IR[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => IR_REG(6),
	oe => VCC,
	padio => ww_IR(6));

\IR[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => IR_REG(7),
	oe => VCC,
	padio => ww_IR(7));

\address[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => MAR(0),
	oe => VCC,
	padio => ww_address(0));

\address[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => MAR(1),
	oe => VCC,
	padio => ww_address(1));

\address[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => MAR(2),
	oe => VCC,
	padio => ww_address(2));

\address[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => MAR(3),
	oe => VCC,
	padio => ww_address(3));

\address[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => MAR(4),
	oe => VCC,
	padio => ww_address(4));

\address[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => MAR(5),
	oe => VCC,
	padio => ww_address(5));

\address[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => MAR(6),
	oe => VCC,
	padio => ww_address(6));

\address[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => MAR(7),
	oe => VCC,
	padio => ww_address(7));

\to_memory[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~1_combout\,
	oe => VCC,
	padio => ww_to_memory(0));

\to_memory[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~1_combout\,
	oe => VCC,
	padio => ww_to_memory(1));

\to_memory[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~1_combout\,
	oe => VCC,
	padio => ww_to_memory(2));

\to_memory[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~1_combout\,
	oe => VCC,
	padio => ww_to_memory(3));

\to_memory[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~1_combout\,
	oe => VCC,
	padio => ww_to_memory(4));

\to_memory[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~1_combout\,
	oe => VCC,
	padio => ww_to_memory(5));

\to_memory[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~1_combout\,
	oe => VCC,
	padio => ww_to_memory(6));

\to_memory[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~1_combout\,
	oe => VCC,
	padio => ww_to_memory(7));

\CCR_Result[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => CCR(0),
	oe => VCC,
	padio => ww_CCR_Result(0));

\CCR_Result[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => CCR(1),
	oe => VCC,
	padio => ww_CCR_Result(1));

\CCR_Result[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => CCR(2),
	oe => VCC,
	padio => ww_CCR_Result(2));

\CCR_Result[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => CCR(3),
	oe => VCC,
	padio => ww_CCR_Result(3));
END structure;


