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

-- DATE "05/16/2024 13:48:47"

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

ENTITY 	BIT_SLICE IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	NA : IN std_logic;
	NB : IN std_logic;
	Cin : IN std_logic;
	AnB : IN std_logic;
	notB : IN std_logic;
	notA : IN std_logic;
	AxB : IN std_logic;
	AoB : IN std_logic;
	AmasB : IN std_logic;
	C : OUT std_logic;
	S : OUT std_logic
	);
END BIT_SLICE;

ARCHITECTURE structure OF BIT_SLICE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_NA : std_logic;
SIGNAL ww_NB : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_AnB : std_logic;
SIGNAL ww_notB : std_logic;
SIGNAL ww_notA : std_logic;
SIGNAL ww_AxB : std_logic;
SIGNAL ww_AoB : std_logic;
SIGNAL ww_AmasB : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \AmasB~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \NB~combout\ : std_logic;
SIGNAL \NA~combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \OR1~0_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \XOR1~combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \C~1_combout\ : std_logic;
SIGNAL \I0|S~combout\ : std_logic;
SIGNAL \A6~combout\ : std_logic;
SIGNAL \notB~combout\ : std_logic;
SIGNAL \AoB~combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \AnB~combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \notA~combout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \AxB~combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_NA <= NA;
ww_NB <= NB;
ww_Cin <= Cin;
ww_AnB <= AnB;
ww_notB <= notB;
ww_notA <= notA;
ww_AxB <= AxB;
ww_AoB <= AoB;
ww_AmasB <= AmasB;
C <= ww_C;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\AmasB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AmasB,
	combout => \AmasB~combout\);

\B~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

\NB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NB,
	combout => \NB~combout\);

\NA~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NA,
	combout => \NA~combout\);

\Cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Cin,
	combout => \Cin~combout\);

\OR1~0\ : maxii_lcell
-- Equation(s):
-- \OR1~0_combout\ = (\NA~combout\) # ((\Cin~combout\))

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
	dataa => \NA~combout\,
	datab => \Cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OR1~0_combout\);

\A~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

XOR1 : maxii_lcell
-- Equation(s):
-- \XOR1~combout\ = ((\NA~combout\ $ (\A~combout\)))

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
	datac => \NA~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \XOR1~combout\);

\C~0\ : maxii_lcell
-- Equation(s):
-- \C~0_combout\ = (\B~combout\ & ((\XOR1~combout\) # ((!\NB~combout\ & \OR1~0_combout\)))) # (!\B~combout\ & ((\NB~combout\) # ((\OR1~0_combout\ & \XOR1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\,
	datab => \NB~combout\,
	datac => \OR1~0_combout\,
	datad => \XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~0_combout\);

\C~1\ : maxii_lcell
-- Equation(s):
-- \C~1_combout\ = (\AmasB~combout\ & (\C~0_combout\ & (!\NA~combout\ & !\NB~combout\)))

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
	dataa => \AmasB~combout\,
	datab => \C~0_combout\,
	datac => \NA~combout\,
	datad => \NB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1_combout\);

\I0|S\ : maxii_lcell
-- Equation(s):
-- \I0|S~combout\ = \NA~combout\ $ (\NB~combout\ $ (\B~combout\ $ (\A~combout\)))

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
	dataa => \NA~combout\,
	datab => \NB~combout\,
	datac => \B~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \I0|S~combout\);

A6 : maxii_lcell
-- Equation(s):
-- \A6~combout\ = (\AmasB~combout\ & (\I0|S~combout\ $ (((\NB~combout\) # (\OR1~0_combout\)))))

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
	dataa => \AmasB~combout\,
	datab => \NB~combout\,
	datac => \OR1~0_combout\,
	datad => \I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A6~combout\);

\notB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_notB,
	combout => \notB~combout\);

\AoB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AoB,
	combout => \AoB~combout\);

\S~0\ : maxii_lcell
-- Equation(s):
-- \S~0_combout\ = (\notB~combout\ & ((\AoB~combout\) # (\NB~combout\ $ (!\B~combout\)))) # (!\notB~combout\ & (\AoB~combout\ & (\NB~combout\ $ (\B~combout\))))

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
	dataa => \notB~combout\,
	datab => \AoB~combout\,
	datac => \NB~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~0_combout\);

\AnB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AnB,
	combout => \AnB~combout\);

\S~1\ : maxii_lcell
-- Equation(s):
-- \S~1_combout\ = (\AoB~combout\) # ((\AnB~combout\ & (\NB~combout\ $ (\B~combout\))))

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
	dataa => \AoB~combout\,
	datab => \AnB~combout\,
	datac => \NB~combout\,
	datad => \B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~1_combout\);

\notA~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_notA,
	combout => \notA~combout\);

\S~2\ : maxii_lcell
-- Equation(s):
-- \S~2_combout\ = (\S~0_combout\) # ((\XOR1~combout\ & (\S~1_combout\)) # (!\XOR1~combout\ & ((\notA~combout\))))

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
	dataa => \S~0_combout\,
	datab => \S~1_combout\,
	datac => \notA~combout\,
	datad => \XOR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~2_combout\);

\AxB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AxB,
	combout => \AxB~combout\);

\S~3\ : maxii_lcell
-- Equation(s):
-- \S~3_combout\ = (\A6~combout\) # ((\S~2_combout\) # ((\AxB~combout\ & \I0|S~combout\)))

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
	dataa => \A6~combout\,
	datab => \S~2_combout\,
	datac => \AxB~combout\,
	datad => \I0|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~3_combout\);

\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \C~1_combout\,
	oe => VCC,
	padio => ww_C);

\S~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S~3_combout\,
	oe => VCC,
	padio => ww_S);
END structure;


