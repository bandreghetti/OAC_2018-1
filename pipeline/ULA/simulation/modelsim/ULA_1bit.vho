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

-- DATE "06/09/2018 12:16:01"

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

ENTITY 	ULA_1bit IS
    PORT (
	C_out : OUT std_logic;
	A : IN std_logic;
	A_inv : IN std_logic;
	B : IN std_logic;
	B_inv : IN std_logic;
	C_in : IN std_logic;
	Saida : OUT std_logic;
	Operacao : IN std_logic_vector(1 DOWNTO 0)
	);
END ULA_1bit;

-- Design Ports Information
-- C_out	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Saida	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_inv	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C_in	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_inv	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Operacao[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Operacao[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ULA_1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C_out : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_A_inv : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_B_inv : std_logic;
SIGNAL ww_C_in : std_logic;
SIGNAL ww_Saida : std_logic;
SIGNAL ww_Operacao : std_logic_vector(1 DOWNTO 0);
SIGNAL \C_in~combout\ : std_logic;
SIGNAL \B_inv~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \A_inv~combout\ : std_logic;
SIGNAL \inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst2|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst2|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \Operacao~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

C_out <= ww_C_out;
ww_A <= A;
ww_A_inv <= A_inv;
ww_B <= B;
ww_B_inv <= B_inv;
ww_C_in <= C_in;
Saida <= ww_Saida;
ww_Operacao <= Operacao;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C_in~I\ : cycloneii_io
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
	padio => ww_C_in,
	combout => \C_in~combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_inv~I\ : cycloneii_io
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
	padio => ww_B_inv,
	combout => \B_inv~combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : cycloneii_io
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
	padio => ww_B,
	combout => \B~combout\);

-- Location: LCCOMB_X28_Y35_N2
\inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : cycloneii_io
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
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A_inv~I\ : cycloneii_io
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
	padio => ww_A_inv,
	combout => \A_inv~combout\);

-- Location: LCCOMB_X28_Y35_N16
\inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst2~4_combout\ = (\C_in~combout\ & ((\A~combout\ $ (\A_inv~combout\)))) # (!\C_in~combout\ & (\inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\A~combout\ $ (\A_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_in~combout\,
	datab => \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \A~combout\,
	datad => \A_inv~combout\,
	combout => \inst6|inst2~4_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Operacao[1]~I\ : cycloneii_io
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
	padio => ww_Operacao(1),
	combout => \Operacao~combout\(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Operacao[0]~I\ : cycloneii_io
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
	padio => ww_Operacao(0),
	combout => \Operacao~combout\(0));

-- Location: LCCOMB_X28_Y35_N12
\inst2|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\Operacao~combout\(0) & ((\C_in~combout\) # (!\Operacao~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operacao~combout\(1),
	datac => \C_in~combout\,
	datad => \Operacao~combout\(0),
	combout => \inst2|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X28_Y35_N0
\inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\ $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\,
	datad => \A_inv~combout\,
	combout => \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X28_Y35_N6
\inst2|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\Operacao~combout\(1) & (\inst2|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ $ (\inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ $ 
-- (\inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))) # (!\Operacao~combout\(1) & ((\inst2|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\inst2|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Operacao~combout\(1),
	datad => \inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst2|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C_out~I\ : cycloneii_io
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
	datain => \inst6|inst2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C_out);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Saida~I\ : cycloneii_io
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
	datain => \inst2|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Saida);
END structure;


