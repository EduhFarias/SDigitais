-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/17/2018 16:31:57"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	CONTROLLER : IN std_logic_vector(2 DOWNTO 0);
	RESULT : OUT std_logic_vector(3 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- CONTROLLER[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESULT[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTROLLER[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CONTROLLER[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CONTROLLER : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RESULT : std_logic_vector(3 DOWNTO 0);
SIGNAL \SUB|Add0~0_combout\ : std_logic;
SIGNAL \SUB|Add0~1_combout\ : std_logic;
SIGNAL \SUB|Add0~3_cout\ : std_logic;
SIGNAL \SUB|Add0~4_combout\ : std_logic;
SIGNAL \SUB|Add0~6_combout\ : std_logic;
SIGNAL \SUB|Add0~7_combout\ : std_logic;
SIGNAL \SUB|Add0~8_combout\ : std_logic;
SIGNAL \SUB|Add0~5\ : std_logic;
SIGNAL \SUB|Add0~9_combout\ : std_logic;
SIGNAL \SUB|Add0~11_combout\ : std_logic;
SIGNAL \SUB|Add0~12_combout\ : std_logic;
SIGNAL \SUB|Add0~13_combout\ : std_logic;
SIGNAL \SUB|Add0~10\ : std_logic;
SIGNAL \SUB|Add0~14_combout\ : std_logic;
SIGNAL \SUB|Add0~16_combout\ : std_logic;
SIGNAL \SUB|Add0~17_combout\ : std_logic;
SIGNAL \SUB|Add0~18_combout\ : std_logic;
SIGNAL \SUB|Add0~15\ : std_logic;
SIGNAL \SUB|Add0~19_combout\ : std_logic;
SIGNAL \SUB|Add0~21_combout\ : std_logic;
SIGNAL \CONTROLLER~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_CONTROLLER <= CONTROLLER;
RESULT <= ww_RESULT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CONTROLLER[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CONTROLLER(0),
	combout => \CONTROLLER~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CONTROLLER[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CONTROLLER(1),
	combout => \CONTROLLER~combout\(1));

-- Location: LCCOMB_X1_Y12_N16
\SUB|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~0_combout\ = (\CONTROLLER~combout\(1) & ((\A~combout\(0) & ((\B~combout\(0)) # (\CONTROLLER~combout\(0)))) # (!\A~combout\(0) & (\B~combout\(0) & \CONTROLLER~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datac => \CONTROLLER~combout\(0),
	datad => \CONTROLLER~combout\(1),
	combout => \SUB|Add0~0_combout\);

-- Location: LCCOMB_X1_Y12_N2
\SUB|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~1_combout\ = \B~combout\(0) $ (\CONTROLLER~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \CONTROLLER~combout\(0),
	combout => \SUB|Add0~1_combout\);

-- Location: LCCOMB_X1_Y12_N18
\SUB|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~3_cout\ = CARRY(\CONTROLLER~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER~combout\(0),
	datad => VCC,
	cout => \SUB|Add0~3_cout\);

-- Location: LCCOMB_X1_Y12_N20
\SUB|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~4_combout\ = (\A~combout\(0) & ((\SUB|Add0~1_combout\ & (\SUB|Add0~3_cout\ & VCC)) # (!\SUB|Add0~1_combout\ & (!\SUB|Add0~3_cout\)))) # (!\A~combout\(0) & ((\SUB|Add0~1_combout\ & (!\SUB|Add0~3_cout\)) # (!\SUB|Add0~1_combout\ & 
-- ((\SUB|Add0~3_cout\) # (GND)))))
-- \SUB|Add0~5\ = CARRY((\A~combout\(0) & (!\SUB|Add0~1_combout\ & !\SUB|Add0~3_cout\)) # (!\A~combout\(0) & ((!\SUB|Add0~3_cout\) # (!\SUB|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \SUB|Add0~1_combout\,
	datad => VCC,
	cin => \SUB|Add0~3_cout\,
	combout => \SUB|Add0~4_combout\,
	cout => \SUB|Add0~5\);

-- Location: LCCOMB_X1_Y12_N4
\SUB|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~6_combout\ = (\SUB|Add0~0_combout\) # ((\SUB|Add0~4_combout\ & !\CONTROLLER~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|Add0~0_combout\,
	datac => \SUB|Add0~4_combout\,
	datad => \CONTROLLER~combout\(1),
	combout => \SUB|Add0~6_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X1_Y12_N6
\SUB|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~7_combout\ = (\CONTROLLER~combout\(1) & ((\B~combout\(1) & ((\CONTROLLER~combout\(0)) # (\A~combout\(1)))) # (!\B~combout\(1) & (\CONTROLLER~combout\(0) & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \CONTROLLER~combout\(1),
	datac => \CONTROLLER~combout\(0),
	datad => \A~combout\(1),
	combout => \SUB|Add0~7_combout\);

-- Location: LCCOMB_X1_Y12_N8
\SUB|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~8_combout\ = \B~combout\(1) $ (\CONTROLLER~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \CONTROLLER~combout\(0),
	combout => \SUB|Add0~8_combout\);

-- Location: LCCOMB_X1_Y12_N22
\SUB|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~9_combout\ = ((\A~combout\(1) $ (\SUB|Add0~8_combout\ $ (!\SUB|Add0~5\)))) # (GND)
-- \SUB|Add0~10\ = CARRY((\A~combout\(1) & ((\SUB|Add0~8_combout\) # (!\SUB|Add0~5\))) # (!\A~combout\(1) & (\SUB|Add0~8_combout\ & !\SUB|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \SUB|Add0~8_combout\,
	datad => VCC,
	cin => \SUB|Add0~5\,
	combout => \SUB|Add0~9_combout\,
	cout => \SUB|Add0~10\);

-- Location: LCCOMB_X1_Y12_N10
\SUB|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~11_combout\ = (\SUB|Add0~7_combout\) # ((\SUB|Add0~9_combout\ & !\CONTROLLER~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|Add0~7_combout\,
	datab => \SUB|Add0~9_combout\,
	datad => \CONTROLLER~combout\(1),
	combout => \SUB|Add0~11_combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X1_Y12_N28
\SUB|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~12_combout\ = (\CONTROLLER~combout\(1) & ((\CONTROLLER~combout\(0) & ((\A~combout\(2)) # (\B~combout\(2)))) # (!\CONTROLLER~combout\(0) & (\A~combout\(2) & \B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER~combout\(0),
	datab => \A~combout\(2),
	datac => \B~combout\(2),
	datad => \CONTROLLER~combout\(1),
	combout => \SUB|Add0~12_combout\);

-- Location: LCCOMB_X2_Y12_N0
\SUB|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~13_combout\ = \B~combout\(2) $ (\CONTROLLER~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datad => \CONTROLLER~combout\(0),
	combout => \SUB|Add0~13_combout\);

-- Location: LCCOMB_X1_Y12_N24
\SUB|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~14_combout\ = (\A~combout\(2) & ((\SUB|Add0~13_combout\ & (\SUB|Add0~10\ & VCC)) # (!\SUB|Add0~13_combout\ & (!\SUB|Add0~10\)))) # (!\A~combout\(2) & ((\SUB|Add0~13_combout\ & (!\SUB|Add0~10\)) # (!\SUB|Add0~13_combout\ & ((\SUB|Add0~10\) # 
-- (GND)))))
-- \SUB|Add0~15\ = CARRY((\A~combout\(2) & (!\SUB|Add0~13_combout\ & !\SUB|Add0~10\)) # (!\A~combout\(2) & ((!\SUB|Add0~10\) # (!\SUB|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \SUB|Add0~13_combout\,
	datad => VCC,
	cin => \SUB|Add0~10\,
	combout => \SUB|Add0~14_combout\,
	cout => \SUB|Add0~15\);

-- Location: LCCOMB_X1_Y12_N30
\SUB|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~16_combout\ = (\SUB|Add0~12_combout\) # ((\SUB|Add0~14_combout\ & !\CONTROLLER~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUB|Add0~12_combout\,
	datac => \SUB|Add0~14_combout\,
	datad => \CONTROLLER~combout\(1),
	combout => \SUB|Add0~16_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X1_Y12_N0
\SUB|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~17_combout\ = (\CONTROLLER~combout\(1) & ((\CONTROLLER~combout\(0) & ((\A~combout\(3)) # (\B~combout\(3)))) # (!\CONTROLLER~combout\(0) & (\A~combout\(3) & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER~combout\(0),
	datab => \A~combout\(3),
	datac => \B~combout\(3),
	datad => \CONTROLLER~combout\(1),
	combout => \SUB|Add0~17_combout\);

-- Location: LCCOMB_X1_Y12_N12
\SUB|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~18_combout\ = \CONTROLLER~combout\(0) $ (\B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLLER~combout\(0),
	datac => \B~combout\(3),
	combout => \SUB|Add0~18_combout\);

-- Location: LCCOMB_X1_Y12_N26
\SUB|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~19_combout\ = \A~combout\(3) $ (\SUB|Add0~15\ $ (!\SUB|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => \SUB|Add0~18_combout\,
	cin => \SUB|Add0~15\,
	combout => \SUB|Add0~19_combout\);

-- Location: LCCOMB_X1_Y12_N14
\SUB|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUB|Add0~21_combout\ = (\SUB|Add0~17_combout\) # ((\SUB|Add0~19_combout\ & !\CONTROLLER~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SUB|Add0~17_combout\,
	datac => \SUB|Add0~19_combout\,
	datad => \CONTROLLER~combout\(1),
	combout => \SUB|Add0~21_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CONTROLLER[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CONTROLLER(2));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SUB|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SUB|Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SUB|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SUB|Add0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(3));
END structure;


