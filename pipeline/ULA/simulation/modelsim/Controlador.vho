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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/16/2018 16:33:54"

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

ENTITY 	Controlador IS
    PORT (
	RegWrite : OUT std_logic;
	OpCode : IN std_logic_vector(5 DOWNTO 0);
	ReadMem : OUT std_logic;
	WriteMem : OUT std_logic;
	ALUSrc : OUT std_logic_vector(1 DOWNTO 0);
	Branch : OUT std_logic_vector(1 DOWNTO 0);
	MemToReg : OUT std_logic_vector(1 DOWNTO 0);
	OpALU : OUT std_logic_vector(2 DOWNTO 0);
	RegDST : OUT std_logic_vector(1 DOWNTO 0)
	);
END Controlador;

-- Design Ports Information
-- RegWrite	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ReadMem	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteMem	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUSrc[1]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUSrc[0]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Branch[1]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Branch[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemToReg[1]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemToReg[0]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpALU[2]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpALU[1]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpALU[0]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDST[1]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDST[0]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpCode[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[3]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[4]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[1]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[0]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Controlador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_OpCode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ReadMem : std_logic;
SIGNAL ww_WriteMem : std_logic;
SIGNAL ww_ALUSrc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Branch : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MemToReg : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OpALU : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RegDST : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst43~0_combout\ : std_logic;
SIGNAL \inst48~0_combout\ : std_logic;
SIGNAL \inst43~1_combout\ : std_logic;
SIGNAL \MemToReg0Jal~2_combout\ : std_logic;
SIGNAL \WriteMem_Sw~0_combout\ : std_logic;
SIGNAL \inst48~1_combout\ : std_logic;
SIGNAL \WriteMem_Sw~combout\ : std_logic;
SIGNAL \ALUSrc1Ori~0_combout\ : std_logic;
SIGNAL \ALUSrc1Ori~combout\ : std_logic;
SIGNAL \inst98~0_combout\ : std_logic;
SIGNAL \inst98~1_combout\ : std_logic;
SIGNAL \inst53~0_combout\ : std_logic;
SIGNAL \inst55~0_combout\ : std_logic;
SIGNAL \MemToReg0Jal~3_combout\ : std_logic;
SIGNAL \MemToReg1Jal~0_combout\ : std_logic;
SIGNAL \inst34~combout\ : std_logic;
SIGNAL \inst~4_combout\ : std_logic;
SIGNAL \inst56~2_combout\ : std_logic;
SIGNAL \inst56~3_combout\ : std_logic;
SIGNAL \inst57~3_combout\ : std_logic;
SIGNAL \inst57~combout\ : std_logic;
SIGNAL \Or3~2_combout\ : std_logic;
SIGNAL \Or3~3_combout\ : std_logic;
SIGNAL \MemToReg0Jal~combout\ : std_logic;
SIGNAL \MemToReg1Jal~combout\ : std_logic;
SIGNAL \OpCode~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

RegWrite <= ww_RegWrite;
ww_OpCode <= OpCode;
ReadMem <= ww_ReadMem;
WriteMem <= ww_WriteMem;
ALUSrc <= ww_ALUSrc;
Branch <= ww_Branch;
MemToReg <= ww_MemToReg;
OpALU <= ww_OpALU;
RegDST <= ww_RegDST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OpCode[5]~I\ : cycloneii_io
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
	padio => ww_OpCode(5),
	combout => \OpCode~combout\(5));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OpCode[0]~I\ : cycloneii_io
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
	padio => ww_OpCode(0),
	combout => \OpCode~combout\(0));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OpCode[1]~I\ : cycloneii_io
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
	padio => ww_OpCode(1),
	combout => \OpCode~combout\(1));

-- Location: LCCOMB_X64_Y33_N10
\inst43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst43~0_combout\ = (\OpCode~combout\(0) & ((\OpCode~combout\(3)) # ((!\OpCode~combout\(1))))) # (!\OpCode~combout\(0) & (((\OpCode~combout\(5)) # (\OpCode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(5),
	datac => \OpCode~combout\(0),
	datad => \OpCode~combout\(1),
	combout => \inst43~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OpCode[2]~I\ : cycloneii_io
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
	padio => ww_OpCode(2),
	combout => \OpCode~combout\(2));

-- Location: LCCOMB_X64_Y33_N0
\inst48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48~0_combout\ = (\OpCode~combout\(3) & (!\OpCode~combout\(5) & \OpCode~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(5),
	datac => \OpCode~combout\(2),
	combout => \inst48~0_combout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OpCode[4]~I\ : cycloneii_io
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
	padio => ww_OpCode(4),
	combout => \OpCode~combout\(4));

-- Location: LCCOMB_X64_Y33_N28
\inst43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst43~1_combout\ = (!\OpCode~combout\(4) & ((\inst48~0_combout\) # ((!\inst43~0_combout\ & !\OpCode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43~0_combout\,
	datab => \inst48~0_combout\,
	datac => \OpCode~combout\(2),
	datad => \OpCode~combout\(4),
	combout => \inst43~1_combout\);

-- Location: LCCOMB_X64_Y33_N8
\MemToReg0Jal~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MemToReg0Jal~2_combout\ = (!\OpCode~combout\(3) & !\OpCode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datac => \OpCode~combout\(2),
	combout => \MemToReg0Jal~2_combout\);

-- Location: LCCOMB_X64_Y33_N14
\WriteMem_Sw~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WriteMem_Sw~0_combout\ = (\OpCode~combout\(1) & (\OpCode~combout\(0) & !\OpCode~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(1),
	datac => \OpCode~combout\(0),
	datad => \OpCode~combout\(4),
	combout => \WriteMem_Sw~0_combout\);

-- Location: LCCOMB_X64_Y33_N2
\inst48~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48~1_combout\ = (\WriteMem_Sw~0_combout\ & ((\inst48~0_combout\) # ((\OpCode~combout\(5) & \MemToReg0Jal~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(5),
	datab => \MemToReg0Jal~2_combout\,
	datac => \WriteMem_Sw~0_combout\,
	datad => \inst48~0_combout\,
	combout => \inst48~1_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OpCode[3]~I\ : cycloneii_io
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
	padio => ww_OpCode(3),
	combout => \OpCode~combout\(3));

-- Location: LCCOMB_X64_Y33_N4
WriteMem_Sw : cycloneii_lcell_comb
-- Equation(s):
-- \WriteMem_Sw~combout\ = (\OpCode~combout\(3) & (\OpCode~combout\(5) & (\WriteMem_Sw~0_combout\ & !\OpCode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(5),
	datac => \WriteMem_Sw~0_combout\,
	datad => \OpCode~combout\(2),
	combout => \WriteMem_Sw~combout\);

-- Location: LCCOMB_X64_Y34_N0
\ALUSrc1Ori~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUSrc1Ori~0_combout\ = (!\OpCode~combout\(1) & (!\OpCode~combout\(5) & !\OpCode~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OpCode~combout\(1),
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(4),
	combout => \ALUSrc1Ori~0_combout\);

-- Location: LCCOMB_X64_Y34_N2
ALUSrc1Ori : cycloneii_lcell_comb
-- Equation(s):
-- \ALUSrc1Ori~combout\ = (\OpCode~combout\(3) & (\OpCode~combout\(2) & (\OpCode~combout\(0) & \ALUSrc1Ori~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(2),
	datac => \OpCode~combout\(0),
	datad => \ALUSrc1Ori~0_combout\,
	combout => \ALUSrc1Ori~combout\);

-- Location: LCCOMB_X64_Y33_N22
\inst98~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst98~0_combout\ = (\OpCode~combout\(4) & (((!\OpCode~combout\(5))))) # (!\OpCode~combout\(4) & (\OpCode~combout\(1) & ((!\OpCode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(1),
	datab => \OpCode~combout\(5),
	datac => \OpCode~combout\(2),
	datad => \OpCode~combout\(4),
	combout => \inst98~0_combout\);

-- Location: LCCOMB_X64_Y33_N24
\inst98~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst98~1_combout\ = (\OpCode~combout\(5) & (((\OpCode~combout\(0) & \inst98~0_combout\)))) # (!\OpCode~combout\(5) & (\OpCode~combout\(3) & (!\OpCode~combout\(0) & !\inst98~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(5),
	datac => \OpCode~combout\(0),
	datad => \inst98~0_combout\,
	combout => \inst98~1_combout\);

-- Location: LCCOMB_X64_Y34_N28
\inst53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53~0_combout\ = (!\OpCode~combout\(3) & (\ALUSrc1Ori~0_combout\ & \OpCode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \ALUSrc1Ori~0_combout\,
	datac => \OpCode~combout\(0),
	combout => \inst53~0_combout\);

-- Location: LCCOMB_X64_Y34_N30
\inst55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst55~0_combout\ = (!\OpCode~combout\(3) & (\ALUSrc1Ori~0_combout\ & (\OpCode~combout\(2) $ (\OpCode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(2),
	datac => \OpCode~combout\(0),
	datad => \ALUSrc1Ori~0_combout\,
	combout => \inst55~0_combout\);

-- Location: LCCOMB_X64_Y33_N26
\MemToReg0Jal~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MemToReg0Jal~3_combout\ = (\OpCode~combout\(1) & (\OpCode~combout\(0) & (!\OpCode~combout\(5) & !\OpCode~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(1),
	datab => \OpCode~combout\(0),
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(4),
	combout => \MemToReg0Jal~3_combout\);

-- Location: LCCOMB_X64_Y33_N12
\MemToReg1Jal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MemToReg1Jal~0_combout\ = (!\OpCode~combout\(1) & (!\OpCode~combout\(0) & (!\OpCode~combout\(5) & !\OpCode~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(1),
	datab => \OpCode~combout\(0),
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(4),
	combout => \MemToReg1Jal~0_combout\);

-- Location: LCCOMB_X64_Y33_N6
inst34 : cycloneii_lcell_comb
-- Equation(s):
-- \inst34~combout\ = (\OpCode~combout\(3) & (\MemToReg0Jal~3_combout\ & (\OpCode~combout\(2)))) # (!\OpCode~combout\(3) & (((!\OpCode~combout\(2) & \MemToReg1Jal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \MemToReg0Jal~3_combout\,
	datac => \OpCode~combout\(2),
	datad => \MemToReg1Jal~0_combout\,
	combout => \inst34~combout\);

-- Location: LCCOMB_X64_Y33_N18
\inst~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~4_combout\ = (!\OpCode~combout\(3) & (\WriteMem_Sw~0_combout\ & !\OpCode~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \WriteMem_Sw~0_combout\,
	datac => \OpCode~combout\(2),
	combout => \inst~4_combout\);

-- Location: LCCOMB_X64_Y33_N16
\inst56~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56~2_combout\ = (\OpCode~combout\(3) & ((\OpCode~combout\(0) & (!\OpCode~combout\(1) & \OpCode~combout\(2))) # (!\OpCode~combout\(0) & ((\OpCode~combout\(2)) # (!\OpCode~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(0),
	datac => \OpCode~combout\(1),
	datad => \OpCode~combout\(2),
	combout => \inst56~2_combout\);

-- Location: LCCOMB_X64_Y32_N0
\inst56~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56~3_combout\ = (!\OpCode~combout\(5) & (\inst56~2_combout\ & !\OpCode~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(5),
	datac => \inst56~2_combout\,
	datad => \OpCode~combout\(4),
	combout => \inst56~3_combout\);

-- Location: LCCOMB_X64_Y33_N30
\inst57~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst57~3_combout\ = (\OpCode~combout\(3) & (\OpCode~combout\(2) & (\OpCode~combout\(0) $ (\OpCode~combout\(1))))) # (!\OpCode~combout\(3) & (!\OpCode~combout\(0) & (!\OpCode~combout\(1) & !\OpCode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(0),
	datac => \OpCode~combout\(1),
	datad => \OpCode~combout\(2),
	combout => \inst57~3_combout\);

-- Location: LCCOMB_X64_Y32_N28
inst57 : cycloneii_lcell_comb
-- Equation(s):
-- \inst57~combout\ = (!\OpCode~combout\(5) & (\inst57~3_combout\ & !\OpCode~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(5),
	datac => \inst57~3_combout\,
	datad => \OpCode~combout\(4),
	combout => \inst57~combout\);

-- Location: LCCOMB_X64_Y34_N18
\Or3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Or3~2_combout\ = (\OpCode~combout\(3) & (\OpCode~combout\(2) & (!\OpCode~combout\(0)))) # (!\OpCode~combout\(3) & (!\OpCode~combout\(1) & ((\OpCode~combout\(2)) # (\OpCode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(2),
	datac => \OpCode~combout\(0),
	datad => \OpCode~combout\(1),
	combout => \Or3~2_combout\);

-- Location: LCCOMB_X64_Y32_N18
\Or3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Or3~3_combout\ = (!\OpCode~combout\(5) & (\Or3~2_combout\ & !\OpCode~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(5),
	datab => \Or3~2_combout\,
	datad => \OpCode~combout\(4),
	combout => \Or3~3_combout\);

-- Location: LCCOMB_X64_Y33_N20
MemToReg0Jal : cycloneii_lcell_comb
-- Equation(s):
-- \MemToReg0Jal~combout\ = (!\OpCode~combout\(3) & (!\OpCode~combout\(2) & \MemToReg0Jal~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datac => \OpCode~combout\(2),
	datad => \MemToReg0Jal~3_combout\,
	combout => \MemToReg0Jal~combout\);

-- Location: LCCOMB_X64_Y34_N16
MemToReg1Jal : cycloneii_lcell_comb
-- Equation(s):
-- \MemToReg1Jal~combout\ = (!\OpCode~combout\(3) & (!\OpCode~combout\(2) & (!\OpCode~combout\(0) & \ALUSrc1Ori~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(3),
	datab => \OpCode~combout\(2),
	datac => \OpCode~combout\(0),
	datad => \ALUSrc1Ori~0_combout\,
	combout => \MemToReg1Jal~combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegWrite~I\ : cycloneii_io
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
	datain => \inst43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegWrite);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ReadMem~I\ : cycloneii_io
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
	datain => \inst48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ReadMem);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WriteMem~I\ : cycloneii_io
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
	datain => \WriteMem_Sw~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WriteMem);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUSrc[1]~I\ : cycloneii_io
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
	datain => \ALUSrc1Ori~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUSrc(1));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUSrc[0]~I\ : cycloneii_io
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
	datain => \inst98~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUSrc(0));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Branch[1]~I\ : cycloneii_io
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
	datain => \inst53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Branch(1));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Branch[0]~I\ : cycloneii_io
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
	datain => \inst55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Branch(0));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemToReg[1]~I\ : cycloneii_io
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
	datain => \inst34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MemToReg(1));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemToReg[0]~I\ : cycloneii_io
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
	datain => \inst~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MemToReg(0));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OpALU[2]~I\ : cycloneii_io
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
	datain => \inst56~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OpALU(2));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OpALU[1]~I\ : cycloneii_io
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
	datain => \inst57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OpALU(1));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OpALU[0]~I\ : cycloneii_io
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
	datain => \Or3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OpALU(0));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegDST[1]~I\ : cycloneii_io
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
	datain => \MemToReg0Jal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDST(1));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegDST[0]~I\ : cycloneii_io
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
	datain => \MemToReg1Jal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDST(0));
END structure;


