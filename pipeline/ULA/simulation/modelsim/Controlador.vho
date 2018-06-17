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

-- DATE "06/17/2018 13:38:46"

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
	Unsigned : OUT std_logic;
	\Function\ : IN std_logic_vector(5 DOWNTO 0);
	MemToReg : OUT std_logic;
	ALUSrc : OUT std_logic;
	Branch : OUT std_logic_vector(1 DOWNTO 0);
	OpALU : OUT std_logic_vector(2 DOWNTO 0);
	RegDST : OUT std_logic_vector(1 DOWNTO 0)
	);
END Controlador;

-- Design Ports Information
-- RegWrite	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ReadMem	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WriteMem	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Unsigned	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Function[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MemToReg	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ALUSrc	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Branch[1]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Branch[0]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpALU[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpALU[1]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpALU[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDST[1]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDST[0]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpCode[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[3]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[4]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OpCode[0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Function[0]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Function[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Function[4]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Function[3]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Function[2]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_Unsigned : std_logic;
SIGNAL \ww_Function\ : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_MemToReg : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_Branch : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OpALU : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RegDST : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst43~1_combout\ : std_logic;
SIGNAL \inst43~0_combout\ : std_logic;
SIGNAL \inst43~2_combout\ : std_logic;
SIGNAL \WriteMem_Sw~0_combout\ : std_logic;
SIGNAL \inst48~0_combout\ : std_logic;
SIGNAL \WriteMem_Sw~combout\ : std_logic;
SIGNAL \inst5~1_combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \OpALU1TipoR~0_combout\ : std_logic;
SIGNAL \inst5~2_combout\ : std_logic;
SIGNAL \inst98~2_combout\ : std_logic;
SIGNAL \inst86~0_combout\ : std_logic;
SIGNAL \inst86~1_combout\ : std_logic;
SIGNAL \inst86~2_combout\ : std_logic;
SIGNAL \inst53~0_combout\ : std_logic;
SIGNAL \inst55~0_combout\ : std_logic;
SIGNAL \inst56~0_combout\ : std_logic;
SIGNAL \inst56~1_combout\ : std_logic;
SIGNAL \inst57~0_combout\ : std_logic;
SIGNAL \inst57~1_combout\ : std_logic;
SIGNAL \Or3~0_combout\ : std_logic;
SIGNAL \Or3~1_combout\ : std_logic;
SIGNAL \MemToReg1Jal~combout\ : std_logic;
SIGNAL \OpALU1TipoR~combout\ : std_logic;
SIGNAL \OpCode~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Function~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

RegWrite <= ww_RegWrite;
ww_OpCode <= OpCode;
ReadMem <= ww_ReadMem;
WriteMem <= ww_WriteMem;
Unsigned <= ww_Unsigned;
\ww_Function\ <= \Function\;
MemToReg <= ww_MemToReg;
ALUSrc <= ww_ALUSrc;
Branch <= ww_Branch;
OpALU <= ww_OpALU;
RegDST <= ww_RegDST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Function[1]~I\ : cycloneii_io
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
	padio => \ww_Function\(1),
	combout => \Function~combout\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X50_Y33_N26
\inst43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst43~1_combout\ = (\OpCode~combout\(0) & (((\OpCode~combout\(3))) # (!\OpCode~combout\(1)))) # (!\OpCode~combout\(0) & ((\OpCode~combout\(1)) # ((\OpCode~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(0),
	datab => \OpCode~combout\(1),
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(3),
	combout => \inst43~1_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X50_Y33_N0
\inst43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst43~0_combout\ = (\OpCode~combout\(2) & (!\OpCode~combout\(5) & \OpCode~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(3),
	combout => \inst43~0_combout\);

-- Location: LCCOMB_X50_Y33_N20
\inst43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst43~2_combout\ = (!\OpCode~combout\(4) & ((\inst43~0_combout\) # ((!\OpCode~combout\(2) & !\inst43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datab => \inst43~1_combout\,
	datac => \OpCode~combout\(4),
	datad => \inst43~0_combout\,
	combout => \inst43~2_combout\);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X50_Y33_N30
\WriteMem_Sw~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WriteMem_Sw~0_combout\ = (!\OpCode~combout\(4) & (\OpCode~combout\(1) & \OpCode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OpCode~combout\(4),
	datac => \OpCode~combout\(1),
	datad => \OpCode~combout\(0),
	combout => \WriteMem_Sw~0_combout\);

-- Location: LCCOMB_X50_Y33_N16
\inst48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48~0_combout\ = (\WriteMem_Sw~0_combout\ & ((\OpCode~combout\(2) & (!\OpCode~combout\(5) & \OpCode~combout\(3))) # (!\OpCode~combout\(2) & (\OpCode~combout\(5) & !\OpCode~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datab => \WriteMem_Sw~0_combout\,
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(3),
	combout => \inst48~0_combout\);

-- Location: LCCOMB_X50_Y33_N2
WriteMem_Sw : cycloneii_lcell_comb
-- Equation(s):
-- \WriteMem_Sw~combout\ = (!\OpCode~combout\(2) & (\WriteMem_Sw~0_combout\ & (\OpCode~combout\(5) & \OpCode~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datab => \WriteMem_Sw~0_combout\,
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(3),
	combout => \WriteMem_Sw~combout\);

-- Location: LCCOMB_X61_Y33_N10
\inst5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5~1_combout\ = (!\OpCode~combout\(2) & !\OpCode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OpCode~combout\(2),
	datad => \OpCode~combout\(0),
	combout => \inst5~1_combout\);

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Function[3]~I\ : cycloneii_io
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
	padio => \ww_Function\(3),
	combout => \Function~combout\(3));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Function[2]~I\ : cycloneii_io
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
	padio => \ww_Function\(2),
	combout => \Function~combout\(2));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Function[4]~I\ : cycloneii_io
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
	padio => \ww_Function\(4),
	combout => \Function~combout\(4));

-- Location: LCCOMB_X61_Y33_N8
\inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\Function~combout\(1) & (!\Function~combout\(3) & (!\Function~combout\(2) & !\Function~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Function~combout\(1),
	datab => \Function~combout\(3),
	datac => \Function~combout\(2),
	datad => \Function~combout\(4),
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X50_Y33_N12
\OpALU1TipoR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \OpALU1TipoR~0_combout\ = (!\OpCode~combout\(5) & (!\OpCode~combout\(4) & (!\OpCode~combout\(1) & !\OpCode~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(5),
	datab => \OpCode~combout\(4),
	datac => \OpCode~combout\(1),
	datad => \OpCode~combout\(3),
	combout => \OpALU1TipoR~0_combout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Function[0]~I\ : cycloneii_io
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
	padio => \ww_Function\(0),
	combout => \Function~combout\(0));

-- Location: LCCOMB_X61_Y33_N4
\inst5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5~2_combout\ = (\inst5~1_combout\ & (\inst5~0_combout\ & (\OpALU1TipoR~0_combout\ & \Function~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~1_combout\,
	datab => \inst5~0_combout\,
	datac => \OpALU1TipoR~0_combout\,
	datad => \Function~combout\(0),
	combout => \inst5~2_combout\);

-- Location: LCCOMB_X50_Y33_N22
\inst98~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst98~2_combout\ = (\WriteMem_Sw~0_combout\ & ((\OpCode~combout\(2) & (!\OpCode~combout\(5) & \OpCode~combout\(3))) # (!\OpCode~combout\(2) & ((!\OpCode~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datab => \WriteMem_Sw~0_combout\,
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(3),
	combout => \inst98~2_combout\);

-- Location: LCCOMB_X50_Y33_N14
\inst86~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst86~0_combout\ = (\OpCode~combout\(1) & (!\OpCode~combout\(2) & (\OpCode~combout\(5) & \OpCode~combout\(0)))) # (!\OpCode~combout\(1) & (((!\OpCode~combout\(5) & !\OpCode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datab => \OpCode~combout\(1),
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(0),
	combout => \inst86~0_combout\);

-- Location: LCCOMB_X50_Y33_N8
\inst86~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst86~1_combout\ = (\OpCode~combout\(0) & (((\inst86~0_combout\)))) # (!\OpCode~combout\(0) & ((\inst43~0_combout\) # ((\inst86~0_combout\ & \OpCode~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(0),
	datab => \inst43~0_combout\,
	datac => \inst86~0_combout\,
	datad => \OpCode~combout\(3),
	combout => \inst86~1_combout\);

-- Location: LCCOMB_X50_Y33_N10
\inst86~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst86~2_combout\ = (!\OpCode~combout\(4) & ((\inst86~1_combout\) # ((!\OpCode~combout\(1) & \inst43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(4),
	datab => \inst86~1_combout\,
	datac => \OpCode~combout\(1),
	datad => \inst43~0_combout\,
	combout => \inst86~2_combout\);

-- Location: LCCOMB_X61_Y33_N6
\inst53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53~0_combout\ = (\OpALU1TipoR~0_combout\ & \OpCode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OpALU1TipoR~0_combout\,
	datad => \OpCode~combout\(0),
	combout => \inst53~0_combout\);

-- Location: LCCOMB_X61_Y33_N0
\inst55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst55~0_combout\ = (\OpALU1TipoR~0_combout\ & (\OpCode~combout\(2) $ (\OpCode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OpCode~combout\(2),
	datac => \OpALU1TipoR~0_combout\,
	datad => \OpCode~combout\(0),
	combout => \inst55~0_combout\);

-- Location: LCCOMB_X50_Y33_N28
\inst56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56~0_combout\ = (!\OpCode~combout\(4) & ((\OpCode~combout\(2) & ((!\OpCode~combout\(0)) # (!\OpCode~combout\(1)))) # (!\OpCode~combout\(2) & (!\OpCode~combout\(1) & !\OpCode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datab => \OpCode~combout\(4),
	datac => \OpCode~combout\(1),
	datad => \OpCode~combout\(0),
	combout => \inst56~0_combout\);

-- Location: LCCOMB_X50_Y33_N6
\inst56~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56~1_combout\ = (\inst56~0_combout\ & (!\OpCode~combout\(5) & \OpCode~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst56~0_combout\,
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(3),
	combout => \inst56~1_combout\);

-- Location: LCCOMB_X50_Y33_N24
\inst57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst57~0_combout\ = (\inst43~0_combout\ & (!\OpCode~combout\(4) & (\OpCode~combout\(0) $ (\OpCode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(0),
	datab => \inst43~0_combout\,
	datac => \OpCode~combout\(1),
	datad => \OpCode~combout\(4),
	combout => \inst57~0_combout\);

-- Location: LCCOMB_X61_Y33_N2
\inst57~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst57~1_combout\ = (\inst57~0_combout\) # ((!\OpCode~combout\(2) & (\OpALU1TipoR~0_combout\ & !\OpCode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst57~0_combout\,
	datab => \OpCode~combout\(2),
	datac => \OpALU1TipoR~0_combout\,
	datad => \OpCode~combout\(0),
	combout => \inst57~1_combout\);

-- Location: LCCOMB_X50_Y33_N18
\Or3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Or3~0_combout\ = (\OpCode~combout\(3) & (\OpCode~combout\(2) & ((!\OpCode~combout\(0))))) # (!\OpCode~combout\(3) & (!\OpCode~combout\(1) & ((\OpCode~combout\(2)) # (\OpCode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datab => \OpCode~combout\(3),
	datac => \OpCode~combout\(1),
	datad => \OpCode~combout\(0),
	combout => \Or3~0_combout\);

-- Location: LCCOMB_X46_Y33_N16
\Or3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Or3~1_combout\ = (!\OpCode~combout\(5) & (!\OpCode~combout\(4) & \Or3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(5),
	datac => \OpCode~combout\(4),
	datad => \Or3~0_combout\,
	combout => \Or3~1_combout\);

-- Location: LCCOMB_X50_Y33_N4
MemToReg1Jal : cycloneii_lcell_comb
-- Equation(s):
-- \MemToReg1Jal~combout\ = (!\OpCode~combout\(2) & (\WriteMem_Sw~0_combout\ & (!\OpCode~combout\(5) & !\OpCode~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpCode~combout\(2),
	datab => \WriteMem_Sw~0_combout\,
	datac => \OpCode~combout\(5),
	datad => \OpCode~combout\(3),
	combout => \MemToReg1Jal~combout\);

-- Location: LCCOMB_X61_Y33_N12
OpALU1TipoR : cycloneii_lcell_comb
-- Equation(s):
-- \OpALU1TipoR~combout\ = (!\OpCode~combout\(2) & (\OpALU1TipoR~0_combout\ & !\OpCode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OpCode~combout\(2),
	datac => \OpALU1TipoR~0_combout\,
	datad => \OpCode~combout\(0),
	combout => \OpALU1TipoR~combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst43~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegWrite);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ReadMem);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Unsigned~I\ : cycloneii_io
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
	datain => \inst5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Unsigned);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Function[5]~I\ : cycloneii_io
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
	padio => \ww_Function\(5));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemToReg~I\ : cycloneii_io
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
	datain => \inst98~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MemToReg);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ALUSrc~I\ : cycloneii_io
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
	datain => \inst86~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ALUSrc);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst56~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OpALU(2));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst57~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OpALU(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Or3~1_combout\,
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
	datain => \MemToReg1Jal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDST(1));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \OpALU1TipoR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDST(0));
END structure;


