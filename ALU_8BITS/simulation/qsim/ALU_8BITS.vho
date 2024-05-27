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

-- DATE "05/16/2024 14:05:25"

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

ENTITY 	ALU_8BITS IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Cin : IN std_logic;
	contROL : IN std_logic_vector(7 DOWNTO 0);
	Sal : OUT std_logic_vector(7 DOWNTO 0);
	Cout : OUT std_logic;
	Ban : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU_8BITS;

ARCHITECTURE structure OF ALU_8BITS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_contROL : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sal : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ban : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \I1|OR1~0_combout\ : std_logic;
SIGNAL \I1|I0|S~combout\ : std_logic;
SIGNAL \I1|A6~combout\ : std_logic;
SIGNAL \I1|S~0_combout\ : std_logic;
SIGNAL \I1|S~1_combout\ : std_logic;
SIGNAL \I1|XOR1~combout\ : std_logic;
SIGNAL \I1|S~2_combout\ : std_logic;
SIGNAL \I1|S~3_combout\ : std_logic;
SIGNAL \I1|C~0_combout\ : std_logic;
SIGNAL \I2|OR1~0_combout\ : std_logic;
SIGNAL \I2|I0|S~combout\ : std_logic;
SIGNAL \I2|A6~combout\ : std_logic;
SIGNAL \I2|S~0_combout\ : std_logic;
SIGNAL \I2|S~1_combout\ : std_logic;
SIGNAL \I2|XOR1~combout\ : std_logic;
SIGNAL \I2|S~2_combout\ : std_logic;
SIGNAL \I2|S~3_combout\ : std_logic;
SIGNAL \I2|C~0_combout\ : std_logic;
SIGNAL \I3|OR1~0_combout\ : std_logic;
SIGNAL \I3|I0|S~combout\ : std_logic;
SIGNAL \I3|A6~combout\ : std_logic;
SIGNAL \I3|S~0_combout\ : std_logic;
SIGNAL \I3|S~1_combout\ : std_logic;
SIGNAL \I3|XOR1~combout\ : std_logic;
SIGNAL \I3|S~2_combout\ : std_logic;
SIGNAL \I3|S~3_combout\ : std_logic;
SIGNAL \I3|C~0_combout\ : std_logic;
SIGNAL \I4|OR1~0_combout\ : std_logic;
SIGNAL \I4|I0|S~combout\ : std_logic;
SIGNAL \I4|A6~combout\ : std_logic;
SIGNAL \I4|S~0_combout\ : std_logic;
SIGNAL \I4|S~1_combout\ : std_logic;
SIGNAL \I4|XOR1~combout\ : std_logic;
SIGNAL \I4|S~2_combout\ : std_logic;
SIGNAL \I4|S~3_combout\ : std_logic;
SIGNAL \I4|C~0_combout\ : std_logic;
SIGNAL \I5|OR1~0_combout\ : std_logic;
SIGNAL \I5|I0|S~combout\ : std_logic;
SIGNAL \I5|A6~combout\ : std_logic;
SIGNAL \I5|S~0_combout\ : std_logic;
SIGNAL \I5|S~1_combout\ : std_logic;
SIGNAL \I5|XOR1~combout\ : std_logic;
SIGNAL \I5|S~2_combout\ : std_logic;
SIGNAL \I5|S~3_combout\ : std_logic;
SIGNAL \I5|C~0_combout\ : std_logic;
SIGNAL \I6|OR1~0_combout\ : std_logic;
SIGNAL \I6|I0|S~combout\ : std_logic;
SIGNAL \I6|A6~combout\ : std_logic;
SIGNAL \I6|S~0_combout\ : std_logic;
SIGNAL \I6|S~1_combout\ : std_logic;
SIGNAL \I6|XOR1~combout\ : std_logic;
SIGNAL \I6|S~2_combout\ : std_logic;
SIGNAL \I6|S~3_combout\ : std_logic;
SIGNAL \I6|C~0_combout\ : std_logic;
SIGNAL \I7|OR1~0_combout\ : std_logic;
SIGNAL \I7|I0|S~combout\ : std_logic;
SIGNAL \I7|A6~combout\ : std_logic;
SIGNAL \I7|S~0_combout\ : std_logic;
SIGNAL \I7|S~1_combout\ : std_logic;
SIGNAL \I7|XOR1~combout\ : std_logic;
SIGNAL \I7|S~2_combout\ : std_logic;
SIGNAL \I7|S~3_combout\ : std_logic;
SIGNAL \I7|C~0_combout\ : std_logic;
SIGNAL \I8|OR1~0_combout\ : std_logic;
SIGNAL \I8|I0|S~combout\ : std_logic;
SIGNAL \I8|A6~combout\ : std_logic;
SIGNAL \I8|S~0_combout\ : std_logic;
SIGNAL \I8|S~1_combout\ : std_logic;
SIGNAL \I8|XOR1~combout\ : std_logic;
SIGNAL \I8|S~2_combout\ : std_logic;
SIGNAL \I8|S~3_combout\ : std_logic;
SIGNAL \I8|C~3_combout\ : std_logic;
SIGNAL \I8|C~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \I8|C~2_combout\ : std_logic;
SIGNAL \Ban~0_combout\ : std_logic;
SIGNAL \contROL~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
ww_contROL <= contROL;
Sal <= ww_Sal;
Cout <= ww_Cout;
Ban <= ww_Ban;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\contROL[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_contROL(0),
	combout => \contROL~combout\(0));

\contROL[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_contROL(6),
	combout => \contROL~combout\(6));

\contROL[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_contROL(7),
	combout => \contROL~combout\(7));

\Cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cin,
	combout => \Cin~combout\);

\I1|OR1~0\ : maxii_lcell
-- Equation(s):
-- \I1|OR1~0_combout\ = (\contROL~combout\(7)) # ((\Cin~combout\))

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
	dataa => \contROL~combout\(7),
	datab => \Cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|OR1~0_combout\);

\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

\I1|I0|S\ : maxii_lcell
-- Equation(s):
-- \I1|I0|S~combout\ = \A~combout\(0) $ (\contROL~combout\(7) $ (\B~combout\(0) $ (\contROL~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \contROL~combout\(7),
	datac => \B~combout\(0),
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|I0|S~combout\);

\I1|A6\ : maxii_lcell
-- Equation(s):
-- \I1|A6~combout\ = (\contROL~combout\(0) & (\I1|I0|S~combout\ $ (((\contROL~combout\(6)) # (\I1|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I1|OR1~0_combout\,
	datad => \I1|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|A6~combout\);

\contROL[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_contROL(4),
	combout => \contROL~combout\(4));

\contROL[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_contROL(1),
	combout => \contROL~combout\(1));

\I1|S~0\ : maxii_lcell
-- Equation(s):
-- \I1|S~0_combout\ = (\contROL~combout\(4) & ((\contROL~combout\(1)) # (\B~combout\(0) $ (!\contROL~combout\(6))))) # (!\contROL~combout\(4) & (\contROL~combout\(1) & (\B~combout\(0) $ (\contROL~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(4),
	datab => \contROL~combout\(1),
	datac => \B~combout\(0),
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|S~0_combout\);

\contROL[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_contROL(5),
	combout => \contROL~combout\(5));

\I1|S~1\ : maxii_lcell
-- Equation(s):
-- \I1|S~1_combout\ = (\contROL~combout\(1)) # ((\contROL~combout\(5) & (\B~combout\(0) $ (\contROL~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(1),
	datab => \contROL~combout\(5),
	datac => \B~combout\(0),
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|S~1_combout\);

\contROL[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_contROL(3),
	combout => \contROL~combout\(3));

\I1|XOR1\ : maxii_lcell
-- Equation(s):
-- \I1|XOR1~combout\ = ((\A~combout\(0) $ (\contROL~combout\(7))))

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
	datac => \A~combout\(0),
	datad => \contROL~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|XOR1~combout\);

\I1|S~2\ : maxii_lcell
-- Equation(s):
-- \I1|S~2_combout\ = (\I1|S~0_combout\) # ((\I1|XOR1~combout\ & (\I1|S~1_combout\)) # (!\I1|XOR1~combout\ & ((\contROL~combout\(3)))))

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
	dataa => \I1|S~0_combout\,
	datab => \I1|S~1_combout\,
	datac => \contROL~combout\(3),
	datad => \I1|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|S~2_combout\);

\contROL[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_contROL(2),
	combout => \contROL~combout\(2));

\I1|S~3\ : maxii_lcell
-- Equation(s):
-- \I1|S~3_combout\ = (\I1|A6~combout\) # ((\I1|S~2_combout\) # ((\contROL~combout\(2) & \I1|I0|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I1|A6~combout\,
	datab => \I1|S~2_combout\,
	datac => \contROL~combout\(2),
	datad => \I1|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|S~3_combout\);

\I1|C~0\ : maxii_lcell
-- Equation(s):
-- \I1|C~0_combout\ = (\B~combout\(0) & ((\I1|XOR1~combout\) # ((\I1|OR1~0_combout\ & !\contROL~combout\(6))))) # (!\B~combout\(0) & ((\contROL~combout\(6)) # ((\I1|OR1~0_combout\ & \I1|XOR1~combout\))))

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
	dataa => \B~combout\(0),
	datab => \I1|OR1~0_combout\,
	datac => \contROL~combout\(6),
	datad => \I1|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I1|C~0_combout\);

\I2|OR1~0\ : maxii_lcell
-- Equation(s):
-- \I2|OR1~0_combout\ = (\contROL~combout\(7)) # ((\contROL~combout\(0) & (\I1|C~0_combout\ & !\contROL~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(0),
	datac => \I1|C~0_combout\,
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|OR1~0_combout\);

\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

\I2|I0|S\ : maxii_lcell
-- Equation(s):
-- \I2|I0|S~combout\ = \contROL~combout\(7) $ (\contROL~combout\(6) $ (\A~combout\(1) $ (\B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(6),
	datac => \A~combout\(1),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|I0|S~combout\);

\I2|A6\ : maxii_lcell
-- Equation(s):
-- \I2|A6~combout\ = (\contROL~combout\(0) & (\I2|I0|S~combout\ $ (((\contROL~combout\(6)) # (\I2|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I2|OR1~0_combout\,
	datad => \I2|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|A6~combout\);

\I2|S~0\ : maxii_lcell
-- Equation(s):
-- \I2|S~0_combout\ = (\contROL~combout\(4) & ((\contROL~combout\(1)) # (\contROL~combout\(6) $ (!\B~combout\(1))))) # (!\contROL~combout\(4) & (\contROL~combout\(1) & (\contROL~combout\(6) $ (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(4),
	datab => \contROL~combout\(1),
	datac => \contROL~combout\(6),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|S~0_combout\);

\I2|S~1\ : maxii_lcell
-- Equation(s):
-- \I2|S~1_combout\ = (\contROL~combout\(1)) # ((\contROL~combout\(5) & (\contROL~combout\(6) $ (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(1),
	datab => \contROL~combout\(5),
	datac => \contROL~combout\(6),
	datad => \B~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|S~1_combout\);

\I2|XOR1\ : maxii_lcell
-- Equation(s):
-- \I2|XOR1~combout\ = ((\contROL~combout\(7) $ (\A~combout\(1))))

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
	datac => \contROL~combout\(7),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|XOR1~combout\);

\I2|S~2\ : maxii_lcell
-- Equation(s):
-- \I2|S~2_combout\ = (\I2|S~0_combout\) # ((\I2|XOR1~combout\ & (\I2|S~1_combout\)) # (!\I2|XOR1~combout\ & ((\contROL~combout\(3)))))

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
	dataa => \I2|S~0_combout\,
	datab => \I2|S~1_combout\,
	datac => \contROL~combout\(3),
	datad => \I2|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|S~2_combout\);

\I2|S~3\ : maxii_lcell
-- Equation(s):
-- \I2|S~3_combout\ = (\I2|A6~combout\) # ((\I2|S~2_combout\) # ((\contROL~combout\(2) & \I2|I0|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2|A6~combout\,
	datab => \I2|S~2_combout\,
	datac => \contROL~combout\(2),
	datad => \I2|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|S~3_combout\);

\I2|C~0\ : maxii_lcell
-- Equation(s):
-- \I2|C~0_combout\ = (\B~combout\(1) & ((\I2|XOR1~combout\) # ((\I2|OR1~0_combout\ & !\contROL~combout\(6))))) # (!\B~combout\(1) & ((\contROL~combout\(6)) # ((\I2|OR1~0_combout\ & \I2|XOR1~combout\))))

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
	dataa => \B~combout\(1),
	datab => \I2|OR1~0_combout\,
	datac => \contROL~combout\(6),
	datad => \I2|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|C~0_combout\);

\I3|OR1~0\ : maxii_lcell
-- Equation(s):
-- \I3|OR1~0_combout\ = (\contROL~combout\(7)) # ((\contROL~combout\(0) & (\I2|C~0_combout\ & !\contROL~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(0),
	datac => \I2|C~0_combout\,
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|OR1~0_combout\);

\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

\I3|I0|S\ : maxii_lcell
-- Equation(s):
-- \I3|I0|S~combout\ = \contROL~combout\(7) $ (\contROL~combout\(6) $ (\A~combout\(2) $ (\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(6),
	datac => \A~combout\(2),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|I0|S~combout\);

\I3|A6\ : maxii_lcell
-- Equation(s):
-- \I3|A6~combout\ = (\contROL~combout\(0) & (\I3|I0|S~combout\ $ (((\contROL~combout\(6)) # (\I3|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I3|OR1~0_combout\,
	datad => \I3|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|A6~combout\);

\I3|S~0\ : maxii_lcell
-- Equation(s):
-- \I3|S~0_combout\ = (\contROL~combout\(4) & ((\contROL~combout\(1)) # (\contROL~combout\(6) $ (!\B~combout\(2))))) # (!\contROL~combout\(4) & (\contROL~combout\(1) & (\contROL~combout\(6) $ (\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(4),
	datab => \contROL~combout\(1),
	datac => \contROL~combout\(6),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|S~0_combout\);

\I3|S~1\ : maxii_lcell
-- Equation(s):
-- \I3|S~1_combout\ = (\contROL~combout\(1)) # ((\contROL~combout\(5) & (\contROL~combout\(6) $ (\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(1),
	datab => \contROL~combout\(5),
	datac => \contROL~combout\(6),
	datad => \B~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|S~1_combout\);

\I3|XOR1\ : maxii_lcell
-- Equation(s):
-- \I3|XOR1~combout\ = ((\contROL~combout\(7) $ (\A~combout\(2))))

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
	datac => \contROL~combout\(7),
	datad => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|XOR1~combout\);

\I3|S~2\ : maxii_lcell
-- Equation(s):
-- \I3|S~2_combout\ = (\I3|S~0_combout\) # ((\I3|XOR1~combout\ & (\I3|S~1_combout\)) # (!\I3|XOR1~combout\ & ((\contROL~combout\(3)))))

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
	dataa => \I3|S~0_combout\,
	datab => \I3|S~1_combout\,
	datac => \contROL~combout\(3),
	datad => \I3|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|S~2_combout\);

\I3|S~3\ : maxii_lcell
-- Equation(s):
-- \I3|S~3_combout\ = (\I3|A6~combout\) # ((\I3|S~2_combout\) # ((\contROL~combout\(2) & \I3|I0|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I3|A6~combout\,
	datab => \I3|S~2_combout\,
	datac => \contROL~combout\(2),
	datad => \I3|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|S~3_combout\);

\I3|C~0\ : maxii_lcell
-- Equation(s):
-- \I3|C~0_combout\ = (\B~combout\(2) & ((\I3|XOR1~combout\) # ((\I3|OR1~0_combout\ & !\contROL~combout\(6))))) # (!\B~combout\(2) & ((\contROL~combout\(6)) # ((\I3|OR1~0_combout\ & \I3|XOR1~combout\))))

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
	dataa => \B~combout\(2),
	datab => \I3|OR1~0_combout\,
	datac => \contROL~combout\(6),
	datad => \I3|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I3|C~0_combout\);

\I4|OR1~0\ : maxii_lcell
-- Equation(s):
-- \I4|OR1~0_combout\ = (\contROL~combout\(7)) # ((\contROL~combout\(0) & (\I3|C~0_combout\ & !\contROL~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(0),
	datac => \I3|C~0_combout\,
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|OR1~0_combout\);

\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

\I4|I0|S\ : maxii_lcell
-- Equation(s):
-- \I4|I0|S~combout\ = \contROL~combout\(7) $ (\contROL~combout\(6) $ (\A~combout\(3) $ (\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(6),
	datac => \A~combout\(3),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|I0|S~combout\);

\I4|A6\ : maxii_lcell
-- Equation(s):
-- \I4|A6~combout\ = (\contROL~combout\(0) & (\I4|I0|S~combout\ $ (((\contROL~combout\(6)) # (\I4|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I4|OR1~0_combout\,
	datad => \I4|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|A6~combout\);

\I4|S~0\ : maxii_lcell
-- Equation(s):
-- \I4|S~0_combout\ = (\contROL~combout\(4) & ((\contROL~combout\(1)) # (\contROL~combout\(6) $ (!\B~combout\(3))))) # (!\contROL~combout\(4) & (\contROL~combout\(1) & (\contROL~combout\(6) $ (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(4),
	datab => \contROL~combout\(1),
	datac => \contROL~combout\(6),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|S~0_combout\);

\I4|S~1\ : maxii_lcell
-- Equation(s):
-- \I4|S~1_combout\ = (\contROL~combout\(1)) # ((\contROL~combout\(5) & (\contROL~combout\(6) $ (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(1),
	datab => \contROL~combout\(5),
	datac => \contROL~combout\(6),
	datad => \B~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|S~1_combout\);

\I4|XOR1\ : maxii_lcell
-- Equation(s):
-- \I4|XOR1~combout\ = ((\contROL~combout\(7) $ (\A~combout\(3))))

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
	datac => \contROL~combout\(7),
	datad => \A~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|XOR1~combout\);

\I4|S~2\ : maxii_lcell
-- Equation(s):
-- \I4|S~2_combout\ = (\I4|S~0_combout\) # ((\I4|XOR1~combout\ & (\I4|S~1_combout\)) # (!\I4|XOR1~combout\ & ((\contROL~combout\(3)))))

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
	dataa => \I4|S~0_combout\,
	datab => \I4|S~1_combout\,
	datac => \contROL~combout\(3),
	datad => \I4|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|S~2_combout\);

\I4|S~3\ : maxii_lcell
-- Equation(s):
-- \I4|S~3_combout\ = (\I4|A6~combout\) # ((\I4|S~2_combout\) # ((\contROL~combout\(2) & \I4|I0|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I4|A6~combout\,
	datab => \I4|S~2_combout\,
	datac => \contROL~combout\(2),
	datad => \I4|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|S~3_combout\);

\I4|C~0\ : maxii_lcell
-- Equation(s):
-- \I4|C~0_combout\ = (\B~combout\(3) & ((\I4|XOR1~combout\) # ((\I4|OR1~0_combout\ & !\contROL~combout\(6))))) # (!\B~combout\(3) & ((\contROL~combout\(6)) # ((\I4|OR1~0_combout\ & \I4|XOR1~combout\))))

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
	dataa => \B~combout\(3),
	datab => \I4|OR1~0_combout\,
	datac => \contROL~combout\(6),
	datad => \I4|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I4|C~0_combout\);

\I5|OR1~0\ : maxii_lcell
-- Equation(s):
-- \I5|OR1~0_combout\ = (\contROL~combout\(7)) # ((\contROL~combout\(0) & (\I4|C~0_combout\ & !\contROL~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(0),
	datac => \I4|C~0_combout\,
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|OR1~0_combout\);

\A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

\B[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

\I5|I0|S\ : maxii_lcell
-- Equation(s):
-- \I5|I0|S~combout\ = \contROL~combout\(7) $ (\contROL~combout\(6) $ (\A~combout\(4) $ (\B~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(6),
	datac => \A~combout\(4),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|I0|S~combout\);

\I5|A6\ : maxii_lcell
-- Equation(s):
-- \I5|A6~combout\ = (\contROL~combout\(0) & (\I5|I0|S~combout\ $ (((\contROL~combout\(6)) # (\I5|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I5|OR1~0_combout\,
	datad => \I5|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|A6~combout\);

\I5|S~0\ : maxii_lcell
-- Equation(s):
-- \I5|S~0_combout\ = (\contROL~combout\(4) & ((\contROL~combout\(1)) # (\contROL~combout\(6) $ (!\B~combout\(4))))) # (!\contROL~combout\(4) & (\contROL~combout\(1) & (\contROL~combout\(6) $ (\B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(4),
	datab => \contROL~combout\(1),
	datac => \contROL~combout\(6),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|S~0_combout\);

\I5|S~1\ : maxii_lcell
-- Equation(s):
-- \I5|S~1_combout\ = (\contROL~combout\(1)) # ((\contROL~combout\(5) & (\contROL~combout\(6) $ (\B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(1),
	datab => \contROL~combout\(5),
	datac => \contROL~combout\(6),
	datad => \B~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|S~1_combout\);

\I5|XOR1\ : maxii_lcell
-- Equation(s):
-- \I5|XOR1~combout\ = ((\contROL~combout\(7) $ (\A~combout\(4))))

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
	datac => \contROL~combout\(7),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|XOR1~combout\);

\I5|S~2\ : maxii_lcell
-- Equation(s):
-- \I5|S~2_combout\ = (\I5|S~0_combout\) # ((\I5|XOR1~combout\ & (\I5|S~1_combout\)) # (!\I5|XOR1~combout\ & ((\contROL~combout\(3)))))

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
	dataa => \I5|S~0_combout\,
	datab => \I5|S~1_combout\,
	datac => \contROL~combout\(3),
	datad => \I5|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|S~2_combout\);

\I5|S~3\ : maxii_lcell
-- Equation(s):
-- \I5|S~3_combout\ = (\I5|A6~combout\) # ((\I5|S~2_combout\) # ((\contROL~combout\(2) & \I5|I0|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I5|A6~combout\,
	datab => \I5|S~2_combout\,
	datac => \contROL~combout\(2),
	datad => \I5|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|S~3_combout\);

\I5|C~0\ : maxii_lcell
-- Equation(s):
-- \I5|C~0_combout\ = (\B~combout\(4) & ((\I5|XOR1~combout\) # ((\I5|OR1~0_combout\ & !\contROL~combout\(6))))) # (!\B~combout\(4) & ((\contROL~combout\(6)) # ((\I5|OR1~0_combout\ & \I5|XOR1~combout\))))

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
	dataa => \B~combout\(4),
	datab => \I5|OR1~0_combout\,
	datac => \contROL~combout\(6),
	datad => \I5|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I5|C~0_combout\);

\I6|OR1~0\ : maxii_lcell
-- Equation(s):
-- \I6|OR1~0_combout\ = (\contROL~combout\(7)) # ((\contROL~combout\(0) & (\I5|C~0_combout\ & !\contROL~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(0),
	datac => \I5|C~0_combout\,
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|OR1~0_combout\);

\A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

\B[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

\I6|I0|S\ : maxii_lcell
-- Equation(s):
-- \I6|I0|S~combout\ = \contROL~combout\(7) $ (\contROL~combout\(6) $ (\A~combout\(5) $ (\B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(6),
	datac => \A~combout\(5),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|I0|S~combout\);

\I6|A6\ : maxii_lcell
-- Equation(s):
-- \I6|A6~combout\ = (\contROL~combout\(0) & (\I6|I0|S~combout\ $ (((\contROL~combout\(6)) # (\I6|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I6|OR1~0_combout\,
	datad => \I6|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|A6~combout\);

\I6|S~0\ : maxii_lcell
-- Equation(s):
-- \I6|S~0_combout\ = (\contROL~combout\(4) & ((\contROL~combout\(1)) # (\contROL~combout\(6) $ (!\B~combout\(5))))) # (!\contROL~combout\(4) & (\contROL~combout\(1) & (\contROL~combout\(6) $ (\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(4),
	datab => \contROL~combout\(1),
	datac => \contROL~combout\(6),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|S~0_combout\);

\I6|S~1\ : maxii_lcell
-- Equation(s):
-- \I6|S~1_combout\ = (\contROL~combout\(1)) # ((\contROL~combout\(5) & (\contROL~combout\(6) $ (\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(1),
	datab => \contROL~combout\(5),
	datac => \contROL~combout\(6),
	datad => \B~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|S~1_combout\);

\I6|XOR1\ : maxii_lcell
-- Equation(s):
-- \I6|XOR1~combout\ = ((\contROL~combout\(7) $ (\A~combout\(5))))

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
	datac => \contROL~combout\(7),
	datad => \A~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|XOR1~combout\);

\I6|S~2\ : maxii_lcell
-- Equation(s):
-- \I6|S~2_combout\ = (\I6|S~0_combout\) # ((\I6|XOR1~combout\ & (\I6|S~1_combout\)) # (!\I6|XOR1~combout\ & ((\contROL~combout\(3)))))

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
	dataa => \I6|S~0_combout\,
	datab => \I6|S~1_combout\,
	datac => \contROL~combout\(3),
	datad => \I6|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|S~2_combout\);

\I6|S~3\ : maxii_lcell
-- Equation(s):
-- \I6|S~3_combout\ = (\I6|A6~combout\) # ((\I6|S~2_combout\) # ((\contROL~combout\(2) & \I6|I0|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I6|A6~combout\,
	datab => \I6|S~2_combout\,
	datac => \contROL~combout\(2),
	datad => \I6|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|S~3_combout\);

\I6|C~0\ : maxii_lcell
-- Equation(s):
-- \I6|C~0_combout\ = (\B~combout\(5) & ((\I6|XOR1~combout\) # ((\I6|OR1~0_combout\ & !\contROL~combout\(6))))) # (!\B~combout\(5) & ((\contROL~combout\(6)) # ((\I6|OR1~0_combout\ & \I6|XOR1~combout\))))

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
	dataa => \B~combout\(5),
	datab => \I6|OR1~0_combout\,
	datac => \contROL~combout\(6),
	datad => \I6|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I6|C~0_combout\);

\I7|OR1~0\ : maxii_lcell
-- Equation(s):
-- \I7|OR1~0_combout\ = (\contROL~combout\(7)) # ((\contROL~combout\(0) & (\I6|C~0_combout\ & !\contROL~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(0),
	datac => \I6|C~0_combout\,
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|OR1~0_combout\);

\A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

\B[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

\I7|I0|S\ : maxii_lcell
-- Equation(s):
-- \I7|I0|S~combout\ = \contROL~combout\(7) $ (\contROL~combout\(6) $ (\A~combout\(6) $ (\B~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(6),
	datac => \A~combout\(6),
	datad => \B~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|I0|S~combout\);

\I7|A6\ : maxii_lcell
-- Equation(s):
-- \I7|A6~combout\ = (\contROL~combout\(0) & (\I7|I0|S~combout\ $ (((\contROL~combout\(6)) # (\I7|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I7|OR1~0_combout\,
	datad => \I7|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|A6~combout\);

\I7|S~0\ : maxii_lcell
-- Equation(s):
-- \I7|S~0_combout\ = (\contROL~combout\(4) & ((\contROL~combout\(1)) # (\contROL~combout\(6) $ (!\B~combout\(6))))) # (!\contROL~combout\(4) & (\contROL~combout\(1) & (\contROL~combout\(6) $ (\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(4),
	datab => \contROL~combout\(1),
	datac => \contROL~combout\(6),
	datad => \B~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|S~0_combout\);

\I7|S~1\ : maxii_lcell
-- Equation(s):
-- \I7|S~1_combout\ = (\contROL~combout\(1)) # ((\contROL~combout\(5) & (\contROL~combout\(6) $ (\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(1),
	datab => \contROL~combout\(5),
	datac => \contROL~combout\(6),
	datad => \B~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|S~1_combout\);

\I7|XOR1\ : maxii_lcell
-- Equation(s):
-- \I7|XOR1~combout\ = ((\contROL~combout\(7) $ (\A~combout\(6))))

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
	datac => \contROL~combout\(7),
	datad => \A~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|XOR1~combout\);

\I7|S~2\ : maxii_lcell
-- Equation(s):
-- \I7|S~2_combout\ = (\I7|S~0_combout\) # ((\I7|XOR1~combout\ & (\I7|S~1_combout\)) # (!\I7|XOR1~combout\ & ((\contROL~combout\(3)))))

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
	dataa => \I7|S~0_combout\,
	datab => \I7|S~1_combout\,
	datac => \contROL~combout\(3),
	datad => \I7|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|S~2_combout\);

\I7|S~3\ : maxii_lcell
-- Equation(s):
-- \I7|S~3_combout\ = (\I7|A6~combout\) # ((\I7|S~2_combout\) # ((\contROL~combout\(2) & \I7|I0|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I7|A6~combout\,
	datab => \I7|S~2_combout\,
	datac => \contROL~combout\(2),
	datad => \I7|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|S~3_combout\);

\I7|C~0\ : maxii_lcell
-- Equation(s):
-- \I7|C~0_combout\ = (\B~combout\(6) & ((\I7|XOR1~combout\) # ((\I7|OR1~0_combout\ & !\contROL~combout\(6))))) # (!\B~combout\(6) & ((\contROL~combout\(6)) # ((\I7|OR1~0_combout\ & \I7|XOR1~combout\))))

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
	dataa => \B~combout\(6),
	datab => \I7|OR1~0_combout\,
	datac => \contROL~combout\(6),
	datad => \I7|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I7|C~0_combout\);

\I8|OR1~0\ : maxii_lcell
-- Equation(s):
-- \I8|OR1~0_combout\ = (\contROL~combout\(7)) # ((\contROL~combout\(0) & (\I7|C~0_combout\ & !\contROL~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(0),
	datac => \I7|C~0_combout\,
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|OR1~0_combout\);

\A[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

\B[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

\I8|I0|S\ : maxii_lcell
-- Equation(s):
-- \I8|I0|S~combout\ = \contROL~combout\(7) $ (\contROL~combout\(6) $ (\A~combout\(7) $ (\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(6),
	datac => \A~combout\(7),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|I0|S~combout\);

\I8|A6\ : maxii_lcell
-- Equation(s):
-- \I8|A6~combout\ = (\contROL~combout\(0) & (\I8|I0|S~combout\ $ (((\contROL~combout\(6)) # (\I8|OR1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I8|OR1~0_combout\,
	datad => \I8|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|A6~combout\);

\I8|S~0\ : maxii_lcell
-- Equation(s):
-- \I8|S~0_combout\ = (\contROL~combout\(4) & ((\contROL~combout\(1)) # (\contROL~combout\(6) $ (!\B~combout\(7))))) # (!\contROL~combout\(4) & (\contROL~combout\(1) & (\contROL~combout\(6) $ (\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(4),
	datab => \contROL~combout\(1),
	datac => \contROL~combout\(6),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|S~0_combout\);

\I8|S~1\ : maxii_lcell
-- Equation(s):
-- \I8|S~1_combout\ = (\contROL~combout\(1)) # ((\contROL~combout\(5) & (\contROL~combout\(6) $ (\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(1),
	datab => \contROL~combout\(5),
	datac => \contROL~combout\(6),
	datad => \B~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|S~1_combout\);

\I8|XOR1\ : maxii_lcell
-- Equation(s):
-- \I8|XOR1~combout\ = ((\contROL~combout\(7) $ (\A~combout\(7))))

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
	datac => \contROL~combout\(7),
	datad => \A~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|XOR1~combout\);

\I8|S~2\ : maxii_lcell
-- Equation(s):
-- \I8|S~2_combout\ = (\I8|S~0_combout\) # ((\I8|XOR1~combout\ & (\I8|S~1_combout\)) # (!\I8|XOR1~combout\ & ((\contROL~combout\(3)))))

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
	dataa => \I8|S~0_combout\,
	datab => \I8|S~1_combout\,
	datac => \contROL~combout\(3),
	datad => \I8|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|S~2_combout\);

\I8|S~3\ : maxii_lcell
-- Equation(s):
-- \I8|S~3_combout\ = (\I8|A6~combout\) # ((\I8|S~2_combout\) # ((\contROL~combout\(2) & \I8|I0|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I8|A6~combout\,
	datab => \I8|S~2_combout\,
	datac => \contROL~combout\(2),
	datad => \I8|I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|S~3_combout\);

\I8|C~3\ : maxii_lcell
-- Equation(s):
-- \I8|C~3_combout\ = (\B~combout\(7) & ((\I8|XOR1~combout\) # ((\I8|OR1~0_combout\ & !\contROL~combout\(6))))) # (!\B~combout\(7) & ((\contROL~combout\(6)) # ((\I8|OR1~0_combout\ & \I8|XOR1~combout\))))

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
	dataa => \B~combout\(7),
	datab => \I8|OR1~0_combout\,
	datac => \contROL~combout\(6),
	datad => \I8|XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|C~3_combout\);

\I8|C\ : maxii_lcell
-- Equation(s):
-- \I8|C~combout\ = (\contROL~combout\(0) & (!\contROL~combout\(6) & (\I8|C~3_combout\ & !\contROL~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \contROL~combout\(6),
	datac => \I8|C~3_combout\,
	datad => \contROL~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|C~combout\);

\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (!\I1|S~3_combout\ & (!\I2|S~3_combout\ & (!\I3|S~3_combout\ & !\I4|S~3_combout\)))

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
	dataa => \I1|S~3_combout\,
	datab => \I2|S~3_combout\,
	datac => \I3|S~3_combout\,
	datad => \I4|S~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (((!\I5|S~3_combout\ & !\I6|S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \I5|S~3_combout\,
	datad => \I6|S~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

\Mux0~2\ : maxii_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~0_combout\ & (\Mux0~1_combout\ & (!\I7|S~3_combout\ & !\I8|S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \I7|S~3_combout\,
	datad => \I8|S~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

\I8|C~2\ : maxii_lcell
-- Equation(s):
-- \I8|C~2_combout\ = (\contROL~combout\(0) & (((!\contROL~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datad => \contROL~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I8|C~2_combout\);

\Ban~0\ : maxii_lcell
-- Equation(s):
-- \Ban~0_combout\ = (\I8|C~2_combout\ & (!\contROL~combout\(7) & (\I7|C~0_combout\ $ (\I8|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0028",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I8|C~2_combout\,
	datab => \I7|C~0_combout\,
	datac => \I8|C~3_combout\,
	datad => \contROL~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ban~0_combout\);

\Sal[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1|S~3_combout\,
	oe => VCC,
	padio => ww_Sal(0));

\Sal[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I2|S~3_combout\,
	oe => VCC,
	padio => ww_Sal(1));

\Sal[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I3|S~3_combout\,
	oe => VCC,
	padio => ww_Sal(2));

\Sal[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I4|S~3_combout\,
	oe => VCC,
	padio => ww_Sal(3));

\Sal[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I5|S~3_combout\,
	oe => VCC,
	padio => ww_Sal(4));

\Sal[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I6|S~3_combout\,
	oe => VCC,
	padio => ww_Sal(5));

\Sal[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I7|S~3_combout\,
	oe => VCC,
	padio => ww_Sal(6));

\Sal[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I8|S~3_combout\,
	oe => VCC,
	padio => ww_Sal(7));

\Cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I8|C~combout\,
	oe => VCC,
	padio => ww_Cout);

\Ban[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Ban(0));

\Ban[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~2_combout\,
	oe => VCC,
	padio => ww_Ban(1));

\Ban[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ban~0_combout\,
	oe => VCC,
	padio => ww_Ban(2));

\Ban[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I8|C~combout\,
	oe => VCC,
	padio => ww_Ban(3));
END structure;


