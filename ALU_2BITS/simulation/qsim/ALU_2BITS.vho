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

-- DATE "05/16/2024 13:55:55"

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

ENTITY 	ALU_2BITS IS
    PORT (
	A : IN std_logic_vector(1 DOWNTO 0);
	B : IN std_logic_vector(1 DOWNTO 0);
	Cin : IN std_logic;
	contROL : IN std_logic_vector(7 DOWNTO 0);
	S : BUFFER std_logic_vector(1 DOWNTO 0);
	Cout : BUFFER std_logic
	);
END ALU_2BITS;

ARCHITECTURE structure OF ALU_2BITS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_contROL : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
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
SIGNAL \I2|C~combout\ : std_logic;
SIGNAL \contROL~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
ww_contROL <= contROL;
S <= ww_S;
Cout <= ww_Cout;
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
-- \I2|OR1~0_combout\ = (\contROL~combout\(7)) # ((\contROL~combout\(0) & (\I1|C~0_combout\)))

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
	dataa => \contROL~combout\(7),
	datab => \contROL~combout\(0),
	datac => \I1|C~0_combout\,
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

\I2|C\ : maxii_lcell
-- Equation(s):
-- \I2|C~combout\ = (\contROL~combout\(0) & (\I2|C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \contROL~combout\(0),
	datab => \I2|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I2|C~combout\);

\S[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I1|S~3_combout\,
	oe => VCC,
	padio => ww_S(0));

\S[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I2|S~3_combout\,
	oe => VCC,
	padio => ww_S(1));

\Cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \I2|C~combout\,
	oe => VCC,
	padio => ww_Cout);
END structure;


