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

-- DATE "06/09/2018 23:20:05"

-- 
-- Device: Altera EP2C50F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA_32bits IS
    PORT (
	Overflow : OUT std_logic;
	Op : IN std_logic_vector(2 DOWNTO 0);
	A_inv : IN std_logic;
	A : IN std_logic_vector(31 DOWNTO 0);
	B_inv : IN std_logic;
	B : IN std_logic_vector(31 DOWNTO 0);
	Equal : OUT std_logic;
	Output : OUT std_logic_vector(31 DOWNTO 0)
	);
END ULA_32bits;

-- Design Ports Information
-- Overflow	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Equal	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[31]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[30]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[29]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[28]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[27]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[26]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[25]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[24]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[23]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[22]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[21]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[20]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[19]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[18]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[17]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[16]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[15]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[14]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[13]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[12]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[11]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[10]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[9]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[8]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[7]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[4]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[3]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[0]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Op[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Op[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B_inv	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[31]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A_inv	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[30]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[30]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[29]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[28]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[27]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[27]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[26]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[26]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[25]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[23]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[23]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[22]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[21]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[21]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[20]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[19]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[18]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[18]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[17]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[17]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[16]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[16]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[14]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[13]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[12]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[11]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[10]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[9]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[8]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[8]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[31]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ULA_32bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_Op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A_inv : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B_inv : std_logic;
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Equal : std_logic;
SIGNAL ww_Output : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst23|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst19|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst28|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst31|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst30|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst24|inst5~0_combout\ : std_logic;
SIGNAL \inst23|inst5~0_combout\ : std_logic;
SIGNAL \inst64|inst4~0_combout\ : std_logic;
SIGNAL \inst24|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst22|inst5~0_combout\ : std_logic;
SIGNAL \inst19|inst5~0_combout\ : std_logic;
SIGNAL \inst16|inst5~0_combout\ : std_logic;
SIGNAL \inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst64|inst4~1_combout\ : std_logic;
SIGNAL \inst5|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst64|inst4~2_combout\ : std_logic;
SIGNAL \inst64|inst4~3_combout\ : std_logic;
SIGNAL \inst64|inst4~4_combout\ : std_logic;
SIGNAL \inst64|inst4~5_combout\ : std_logic;
SIGNAL \inst17|inst5~0_combout\ : std_logic;
SIGNAL \inst64|inst4~6_combout\ : std_logic;
SIGNAL \inst64|inst4~7_combout\ : std_logic;
SIGNAL \inst64|inst4~8_combout\ : std_logic;
SIGNAL \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst9|inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst6|inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst29|inst6|inst1~combout\ : std_logic;
SIGNAL \B_inv~combout\ : std_logic;
SIGNAL \inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \A_inv~combout\ : std_logic;
SIGNAL \inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst29|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst30|inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst66~0_combout\ : std_logic;
SIGNAL \inst66~combout\ : std_logic;
SIGNAL \inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst31|inst6|inst1~combout\ : std_logic;
SIGNAL \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst31|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst20|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst22|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst23|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst25|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst26|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst28|inst5~0_combout\ : std_logic;
SIGNAL \inst28|inst6|inst1~combout\ : std_logic;
SIGNAL \inst28|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst66~1_combout\ : std_logic;
SIGNAL \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst29|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst29|inst5~0_combout\ : std_logic;
SIGNAL \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst30|inst5~0_combout\ : std_logic;
SIGNAL \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst64|inst4~9_combout\ : std_logic;
SIGNAL \inst64|inst4~10_combout\ : std_logic;
SIGNAL \inst27|inst5~0_combout\ : std_logic;
SIGNAL \inst27|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst26|inst6|inst1~combout\ : std_logic;
SIGNAL \inst26|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst26|inst5~0_combout\ : std_logic;
SIGNAL \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst25|inst5~0_combout\ : std_logic;
SIGNAL \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst25|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ : std_logic;
SIGNAL \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \inst21|inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst22|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst21|inst5~0_combout\ : std_logic;
SIGNAL \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst21|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst20|inst5~0_combout\ : std_logic;
SIGNAL \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst19|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst18|inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst18|inst5~0_combout\ : std_logic;
SIGNAL \inst17|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst17|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst18|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ : std_logic;
SIGNAL \inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst10|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst11|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst11|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst13|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst14|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst14|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst16|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \inst15|inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst16|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst15|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst15|inst5~0_combout\ : std_logic;
SIGNAL \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ : std_logic;
SIGNAL \inst14|inst5~0_combout\ : std_logic;
SIGNAL \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \inst13|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst12|inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst12|inst5~0_combout\ : std_logic;
SIGNAL \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst12|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ : std_logic;
SIGNAL \inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst11|inst5~0_combout\ : std_logic;
SIGNAL \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \inst10|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst10|inst5~0_combout\ : std_logic;
SIGNAL \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst9|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst9|inst5~0_combout\ : std_logic;
SIGNAL \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst8|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2~1_combout\ : std_logic;
SIGNAL \inst7|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ : std_logic;
SIGNAL \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst7|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst6|inst5~0_combout\ : std_logic;
SIGNAL \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst6|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst5|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst6|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst4|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst2|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst6|inst2~4_combout\ : std_logic;
SIGNAL \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \Op~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

Overflow <= ww_Overflow;
ww_Op <= Op;
ww_A_inv <= A_inv;
ww_A <= A;
ww_B_inv <= B_inv;
ww_B <= B;
Equal <= ww_Equal;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X34_Y40_N14
\inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datad => \B~combout\(28),
	combout => \inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X33_Y40_N10
\inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(27) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(27),
	datad => \B_inv~combout\,
	combout => \inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X31_Y40_N2
\inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(26) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(26),
	datad => \B_inv~combout\,
	combout => \inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X32_Y40_N10
\inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(25) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(25),
	datad => \B_inv~combout\,
	combout => \inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y40_N16
\inst23|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_inv~combout\,
	datac => \A~combout\(23),
	combout => \inst23|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X41_Y43_N6
\inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datac => \B~combout\(15),
	combout => \inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y43_N12
\inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(14) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(14),
	datad => \B_inv~combout\,
	combout => \inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X25_Y43_N6
\inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(12) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datad => \B_inv~combout\,
	combout => \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X42_Y43_N6
\inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datad => \B~combout\(9),
	combout => \inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X27_Y43_N6
\inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(6) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datad => \B_inv~combout\,
	combout => \inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X45_Y43_N6
\inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(3),
	combout => \inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X44_Y43_N10
\inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(2),
	combout => \inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X25_Y41_N16
\inst19|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|inst6|inst2~0_combout\ = (\inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- ((\inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\inst17|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst17|inst6|inst2~0_combout\,
	datad => \inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst19|inst6|inst2~0_combout\);

-- Location: LCCOMB_X34_Y40_N24
\inst28|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|inst6|inst2~0_combout\ = (\inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst26|inst6|inst2~0_combout\) # 
-- (\inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst26|inst6|inst2~0_combout\,
	datac => \inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst28|inst6|inst2~0_combout\);

-- Location: LCCOMB_X35_Y40_N10
\inst31|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst5~0_combout\ = \A_inv~combout\ $ (\B~combout\(31) $ (\B_inv~combout\ $ (\A~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \B~combout\(31),
	datac => \B_inv~combout\,
	datad => \A~combout\(31),
	combout => \inst31|inst5~0_combout\);

-- Location: LCCOMB_X33_Y40_N16
\inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (\Op~combout\(1) & (\B~combout\(0) $ (((\B_inv~combout\ & !\Op~combout\(0)))))) # (!\Op~combout\(1) & (\Op~combout\(0) & (\B_inv~combout\ $ (\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \Op~combout\(1),
	datac => \Op~combout\(0),
	datad => \B~combout\(0),
	combout => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X35_Y40_N24
\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst31|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & ((\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # 
-- ((\inst31|inst5~0_combout\ & \inst66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst5~0_combout\,
	datab => \inst66~1_combout\,
	datac => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \inst31|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X35_Y40_N12
\inst30|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst30|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X32_Y40_N12
\inst24|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst5~0_combout\ = \A~combout\(24) $ (\B~combout\(24) $ (\A_inv~combout\ $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datab => \B~combout\(24),
	datac => \A_inv~combout\,
	datad => \B_inv~combout\,
	combout => \inst24|inst5~0_combout\);

-- Location: LCCOMB_X26_Y40_N20
\inst23|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|inst5~0_combout\ = \A~combout\(23) $ (\B_inv~combout\ $ (\A_inv~combout\ $ (\B~combout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(23),
	datab => \B_inv~combout\,
	datac => \A_inv~combout\,
	datad => \B~combout\(23),
	combout => \inst23|inst5~0_combout\);

-- Location: LCCOMB_X33_Y43_N0
\inst64|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~0_combout\ = (\inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\) # 
-- (\inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	datad => \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	combout => \inst64|inst4~0_combout\);

-- Location: LCCOMB_X32_Y40_N22
\inst24|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst6|inst2~0_combout\ = (\inst23|inst6|inst2~0_combout\ & (\A_inv~combout\ $ ((\A~combout\(24))))) # (!\inst23|inst6|inst2~0_combout\ & (\inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\A_inv~combout\ $ 
-- (\A~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst6|inst2~0_combout\,
	datab => \A_inv~combout\,
	datac => \A~combout\(24),
	datad => \inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst24|inst6|inst2~0_combout\);

-- Location: LCCOMB_X25_Y40_N20
\inst22|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|inst5~0_combout\ = \A_inv~combout\ $ (\A~combout\(22) $ (\B~combout\(22) $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \A~combout\(22),
	datac => \B~combout\(22),
	datad => \B_inv~combout\,
	combout => \inst22|inst5~0_combout\);

-- Location: LCCOMB_X25_Y41_N10
\inst19|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|inst5~0_combout\ = \B~combout\(19) $ (\A~combout\(19) $ (\B_inv~combout\ $ (\A_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datab => \A~combout\(19),
	datac => \B_inv~combout\,
	datad => \A_inv~combout\,
	combout => \inst19|inst5~0_combout\);

-- Location: LCCOMB_X41_Y43_N10
\inst16|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|inst5~0_combout\ = \B_inv~combout\ $ (\B~combout\(16) $ (\A_inv~combout\ $ (\A~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \B~combout\(16),
	datac => \A_inv~combout\,
	datad => \A~combout\(16),
	combout => \inst16|inst5~0_combout\);

-- Location: LCCOMB_X25_Y43_N10
\inst13|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst5~0_combout\ = \B~combout\(13) $ (\A~combout\(13) $ (\A_inv~combout\ $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(13),
	datab => \A~combout\(13),
	datac => \A_inv~combout\,
	datad => \B_inv~combout\,
	combout => \inst13|inst5~0_combout\);

-- Location: LCCOMB_X44_Y43_N12
\inst2|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst5~0_combout\ = \A_inv~combout\ $ (\B~combout\(2) $ (\B_inv~combout\ $ (\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \B~combout\(2),
	datac => \B_inv~combout\,
	datad => \A~combout\(2),
	combout => \inst2|inst5~0_combout\);

-- Location: LCCOMB_X33_Y43_N2
\inst64|inst4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~1_combout\ = (\inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # 
-- ((\inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\) # (\inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datab => \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datad => \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	combout => \inst64|inst4~1_combout\);

-- Location: LCCOMB_X46_Y43_N24
\inst5|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(5),
	combout => \inst5|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X33_Y43_N28
\inst64|inst4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~2_combout\ = (\inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst64|inst4~1_combout\) # ((\inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # 
-- (\inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datab => \inst64|inst4~1_combout\,
	datac => \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datad => \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	combout => \inst64|inst4~2_combout\);

-- Location: LCCOMB_X33_Y43_N22
\inst64|inst4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~3_combout\ = (\inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst64|inst4~2_combout\) # ((\inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # 
-- (\inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datab => \inst64|inst4~2_combout\,
	datac => \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datad => \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	combout => \inst64|inst4~3_combout\);

-- Location: LCCOMB_X33_Y43_N24
\inst64|inst4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~4_combout\ = (\inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst64|inst4~3_combout\) # ((\inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # 
-- (\inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datab => \inst64|inst4~3_combout\,
	datac => \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datad => \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	combout => \inst64|inst4~4_combout\);

-- Location: LCCOMB_X33_Y43_N10
\inst64|inst4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~5_combout\ = (\inst64|inst4~4_combout\) # ((\inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\) # 
-- (\inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst64|inst4~4_combout\,
	datab => \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	datad => \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	combout => \inst64|inst4~5_combout\);

-- Location: LCCOMB_X40_Y43_N6
\inst17|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|inst5~0_combout\ = \A~combout\(17) $ (\B_inv~combout\ $ (\A_inv~combout\ $ (\B~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \B_inv~combout\,
	datac => \A_inv~combout\,
	datad => \B~combout\(17),
	combout => \inst17|inst5~0_combout\);

-- Location: LCCOMB_X33_Y43_N12
\inst64|inst4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~6_combout\ = (\inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # 
-- ((\inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\) # (\inst64|inst4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datab => \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	datad => \inst64|inst4~5_combout\,
	combout => \inst64|inst4~6_combout\);

-- Location: LCCOMB_X33_Y43_N6
\inst64|inst4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~7_combout\ = (\inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\) # 
-- ((\inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # (\inst64|inst4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datab => \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datac => \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datad => \inst64|inst4~6_combout\,
	combout => \inst64|inst4~7_combout\);

-- Location: LCCOMB_X33_Y43_N16
\inst64|inst4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~8_combout\ = (\inst64|inst4~7_combout\) # ((\inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\) # (\inst64|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst64|inst4~7_combout\,
	datab => \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	datad => \inst64|inst4~0_combout\,
	combout => \inst64|inst4~8_combout\);

-- Location: LCCOMB_X35_Y40_N30
\inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = (\inst30|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & (!\Op~combout\(2) & \Op~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datac => \Op~combout\(2),
	datad => \Op~combout\(0),
	combout => \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X42_Y43_N20
\inst9|inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst6|inst2~4_combout\ = (\inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\A_inv~combout\ $ (((\A~combout\(9)))))) # (!\inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst8|inst6|inst2~0_combout\ 
-- & (\A_inv~combout\ $ (\A~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \A_inv~combout\,
	datac => \inst8|inst6|inst2~0_combout\,
	datad => \A~combout\(9),
	combout => \inst9|inst6|inst2~4_combout\);

-- Location: LCCOMB_X27_Y43_N10
\inst6|inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|inst2~4_combout\ = (\inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\A~combout\(6) $ (\A_inv~combout\)))) # (!\inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst5|inst6|inst2~1_combout\ & 
-- (\A~combout\(6) $ (\A_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst5|inst6|inst2~1_combout\,
	datac => \A~combout\(6),
	datad => \A_inv~combout\,
	combout => \inst6|inst6|inst2~4_combout\);

-- Location: LCCOMB_X34_Y40_N6
\inst29|inst6|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst6|inst1~combout\ = \inst29|inst5~0_combout\ $ (((\inst28|inst6|inst2~0_combout\ & (\A~combout\(28) $ (\A_inv~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \inst29|inst5~0_combout\,
	datac => \inst28|inst6|inst2~0_combout\,
	datad => \A_inv~combout\,
	combout => \inst29|inst6|inst1~combout\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[31]~I\ : cycloneii_io
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
	padio => ww_B(31),
	combout => \B~combout\(31));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[25]~I\ : cycloneii_io
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
	padio => ww_B(25),
	combout => \B~combout\(25));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[13]~I\ : cycloneii_io
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
	padio => ww_B(13),
	combout => \B~combout\(13));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[12]~I\ : cycloneii_io
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
	padio => ww_B(12),
	combout => \B~combout\(12));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[30]~I\ : cycloneii_io
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
	padio => ww_B(30),
	combout => \B~combout\(30));

-- Location: LCCOMB_X35_Y40_N4
\inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(30),
	combout => \inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[30]~I\ : cycloneii_io
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
	padio => ww_A(30),
	combout => \A~combout\(30));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[29]~I\ : cycloneii_io
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
	padio => ww_B(29),
	combout => \B~combout\(29));

-- Location: LCCOMB_X34_Y40_N26
\inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(29) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(29),
	datad => \B_inv~combout\,
	combout => \inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y40_N4
\inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(28) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datad => \A_inv~combout\,
	combout => \inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[29]~I\ : cycloneii_io
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
	padio => ww_A(29),
	combout => \A~combout\(29));

-- Location: LCCOMB_X34_Y40_N0
\inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(29) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(29),
	datad => \A_inv~combout\,
	combout => \inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X34_Y40_N18
\inst29|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst6|inst2~0_combout\ = (\inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst28|inst6|inst2~0_combout\ & 
-- \inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|inst6|inst2~0_combout\,
	datab => \inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst29|inst6|inst2~0_combout\);

-- Location: LCCOMB_X35_Y40_N20
\inst30|inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|inst6|inst2~4_combout\ = (\inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\A_inv~combout\ $ ((\A~combout\(30))))) # (!\inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- (\inst29|inst6|inst2~0_combout\ & (\A_inv~combout\ $ (\A~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \A~combout\(30),
	datad => \inst29|inst6|inst2~0_combout\,
	combout => \inst30|inst6|inst2~4_combout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[31]~I\ : cycloneii_io
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
	padio => ww_A(31),
	combout => \A~combout\(31));

-- Location: LCCOMB_X35_Y40_N22
\inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datad => \A~combout\(31),
	combout => \inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X25_Y40_N0
\inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(31) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datad => \B_inv~combout\,
	combout => \inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[2]~I\ : cycloneii_io
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
	padio => ww_Op(2),
	combout => \Op~combout\(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[1]~I\ : cycloneii_io
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
	padio => ww_Op(1),
	combout => \Op~combout\(1));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Op[0]~I\ : cycloneii_io
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
	padio => ww_Op(0),
	combout => \Op~combout\(0));

-- Location: LCCOMB_X35_Y40_N0
\inst66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66~0_combout\ = (!\Op~combout\(2) & (\Op~combout\(1) & !\Op~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst66~0_combout\);

-- Location: LCCOMB_X35_Y40_N16
inst66 : cycloneii_lcell_comb
-- Equation(s):
-- \inst66~combout\ = (\inst66~0_combout\ & ((\inst30|inst6|inst2~4_combout\ & (!\inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)) # (!\inst30|inst6|inst2~4_combout\ & 
-- (\inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst6|inst2~4_combout\,
	datab => \inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst66~0_combout\,
	combout => \inst66~combout\);

-- Location: LCCOMB_X35_Y40_N18
\inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(30) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(30),
	datad => \A_inv~combout\,
	combout => \inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X35_Y40_N28
\inst31|inst6|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst6|inst1~combout\ = \inst31|inst5~0_combout\ $ (((\inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst29|inst6|inst2~0_combout\) # (\inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst5~0_combout\,
	datab => \inst29|inst6|inst2~0_combout\,
	datac => \inst30|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst30|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst31|inst6|inst1~combout\);

-- Location: LCCOMB_X42_Y43_N26
\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (!\Op~combout\(2) & \Op~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datac => \Op~combout\(0),
	combout => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X35_Y40_N6
\inst31|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst31|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst31|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst31|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X35_Y40_N26
\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst31|inst6|inst1~combout\ & 
-- (\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ & \inst31|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datab => \inst31|inst6|inst1~combout\,
	datac => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datad => \inst31|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y40_N14
\inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\Op~combout\(1)) # (\B_inv~combout\ $ (\Op~combout\(0) $ (\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \Op~combout\(1),
	datac => \Op~combout\(0),
	datad => \B~combout\(0),
	combout => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X33_Y40_N4
\inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\Op~combout\(2) & (\inst31|inst6|inst1~combout\)) # (!\Op~combout\(2) & ((\A_inv~combout\ $ (\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \inst31|inst6|inst1~combout\,
	datac => \A_inv~combout\,
	datad => \A~combout\(0),
	combout => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X33_Y40_N2
\inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\Op~combout\(2) & (((\inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\)))) # (!\Op~combout\(2) & 
-- (\inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ $ (((\inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ & \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datab => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \Op~combout\(2),
	combout => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[24]~I\ : cycloneii_io
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
	padio => ww_A(24),
	combout => \A~combout\(24));

-- Location: LCCOMB_X26_Y43_N8
\inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(24) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(24),
	datad => \A_inv~combout\,
	combout => \inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[21]~I\ : cycloneii_io
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
	padio => ww_A(21),
	combout => \A~combout\(21));

-- Location: LCCOMB_X25_Y40_N30
\inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(21) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(21),
	datad => \A_inv~combout\,
	combout => \inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[22]~I\ : cycloneii_io
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
	padio => ww_B(22),
	combout => \B~combout\(22));

-- Location: LCCOMB_X25_Y40_N4
\inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(22) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(22),
	datad => \B_inv~combout\,
	combout => \inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[20]~I\ : cycloneii_io
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
	padio => ww_A(20),
	combout => \A~combout\(20));

-- Location: LCCOMB_X26_Y40_N28
\inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_inv~combout\,
	datac => \A~combout\(20),
	combout => \inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[19]~I\ : cycloneii_io
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
	padio => ww_A(19),
	combout => \A~combout\(19));

-- Location: LCCOMB_X25_Y41_N0
\inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(19) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(19),
	datad => \A_inv~combout\,
	combout => \inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[20]~I\ : cycloneii_io
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
	padio => ww_B(20),
	combout => \B~combout\(20));

-- Location: LCCOMB_X26_Y40_N22
\inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_inv~combout\,
	datac => \B~combout\(20),
	combout => \inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y40_N24
\inst20|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst6|inst2~0_combout\ = (\inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst19|inst6|inst2~0_combout\ & 
-- \inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst6|inst2~0_combout\,
	datab => \inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst20|inst6|inst2~0_combout\);

-- Location: LCCOMB_X25_Y40_N26
\inst22|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|inst6|inst2~0_combout\ = (\inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- ((\inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\inst20|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst20|inst6|inst2~0_combout\,
	combout => \inst22|inst6|inst2~0_combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[22]~I\ : cycloneii_io
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
	padio => ww_A(22),
	combout => \A~combout\(22));

-- Location: LCCOMB_X25_Y40_N2
\inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(22) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(22),
	datad => \A_inv~combout\,
	combout => \inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[23]~I\ : cycloneii_io
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
	padio => ww_B(23),
	combout => \B~combout\(23));

-- Location: LCCOMB_X26_Y40_N10
\inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_inv~combout\,
	datad => \B~combout\(23),
	combout => \inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y40_N18
\inst23|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|inst6|inst2~0_combout\ = (\inst23|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst22|inst6|inst2~0_combout\ & 
-- \inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst22|inst6|inst2~0_combout\,
	datac => \inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst23|inst6|inst2~0_combout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[24]~I\ : cycloneii_io
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
	padio => ww_B(24),
	combout => \B~combout\(24));

-- Location: LCCOMB_X32_Y40_N28
\inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(24) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(24),
	datad => \B_inv~combout\,
	combout => \inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X32_Y40_N30
\inst25|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|inst6|inst2~0_combout\ = (\inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst23|inst6|inst2~0_combout\) # 
-- (\inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst23|inst6|inst2~0_combout\,
	datad => \inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst25|inst6|inst2~0_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[25]~I\ : cycloneii_io
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
	padio => ww_A(25),
	combout => \A~combout\(25));

-- Location: LCCOMB_X32_Y40_N0
\inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(25) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(25),
	datac => \A_inv~combout\,
	combout => \inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[26]~I\ : cycloneii_io
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
	padio => ww_A(26),
	combout => \A~combout\(26));

-- Location: LCCOMB_X31_Y40_N16
\inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(26) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(26),
	datad => \A_inv~combout\,
	combout => \inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X32_Y40_N16
\inst26|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst6|inst2~0_combout\ = (\inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst25|inst6|inst2~0_combout\ & 
-- \inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst25|inst6|inst2~0_combout\,
	datac => \inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst26|inst6|inst2~0_combout\);

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[27]~I\ : cycloneii_io
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
	padio => ww_A(27),
	combout => \A~combout\(27));

-- Location: LCCOMB_X33_Y40_N0
\inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_inv~combout\,
	datac => \A~combout\(27),
	combout => \inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[28]~I\ : cycloneii_io
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
	padio => ww_B(28),
	combout => \B~combout\(28));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[28]~I\ : cycloneii_io
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
	padio => ww_A(28),
	combout => \A~combout\(28));

-- Location: LCCOMB_X34_Y40_N22
\inst28|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|inst5~0_combout\ = \A_inv~combout\ $ (\B~combout\(28) $ (\A~combout\(28) $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \B~combout\(28),
	datac => \A~combout\(28),
	datad => \B_inv~combout\,
	combout => \inst28|inst5~0_combout\);

-- Location: LCCOMB_X34_Y40_N2
\inst28|inst6|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|inst6|inst1~combout\ = \inst28|inst5~0_combout\ $ (((\inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\inst26|inst6|inst2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst26|inst6|inst2~0_combout\,
	datac => \inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst28|inst5~0_combout\,
	combout => \inst28|inst6|inst1~combout\);

-- Location: LCCOMB_X34_Y40_N20
\inst28|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst28|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst28|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X33_Y40_N22
\inst66~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66~1_combout\ = (!\Op~combout\(2) & !\Op~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datac => \Op~combout\(0),
	combout => \inst66~1_combout\);

-- Location: LCCOMB_X34_Y40_N8
\inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst28|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & ((\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # 
-- ((\inst28|inst5~0_combout\ & \inst66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \inst28|inst5~0_combout\,
	datac => \inst28|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \inst66~1_combout\,
	combout => \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X34_Y40_N12
\inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # ((\inst28|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & 
-- (\inst28|inst6|inst1~combout\ & \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datab => \inst28|inst6|inst1~combout\,
	datac => \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	combout => \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X34_Y40_N28
\inst29|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\Op~combout\(0) & ((\inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\Op~combout\(0) & (\inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \inst29|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \inst29|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst29|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X34_Y40_N30
\inst29|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst5~0_combout\ = \A_inv~combout\ $ (\A~combout\(29) $ (\B~combout\(29) $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \A~combout\(29),
	datac => \B~combout\(29),
	datad => \B_inv~combout\,
	combout => \inst29|inst5~0_combout\);

-- Location: LCCOMB_X34_Y40_N16
\inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst29|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & ((\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # 
-- ((\inst29|inst5~0_combout\ & \inst66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \inst29|inst5~0_combout\,
	datac => \inst66~1_combout\,
	datad => \inst29|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X34_Y40_N10
\inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # ((\inst29|inst6|inst1~combout\ & 
-- (\inst29|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|inst6|inst1~combout\,
	datab => \inst29|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datac => \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	combout => \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X35_Y40_N14
\inst30|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|inst5~0_combout\ = \A_inv~combout\ $ (\B_inv~combout\ $ (\A~combout\(30) $ (\B~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \B_inv~combout\,
	datac => \A~combout\(30),
	datad => \B~combout\(30),
	combout => \inst30|inst5~0_combout\);

-- Location: LCCOMB_X33_Y40_N12
\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (!\Op~combout\(1) & !\Op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op~combout\(1),
	datad => \Op~combout\(2),
	combout => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X35_Y40_N8
\inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (\inst30|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & ((\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # 
-- ((\inst30|inst5~0_combout\ & \inst66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datab => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datac => \inst30|inst5~0_combout\,
	datad => \inst66~1_combout\,
	combout => \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X35_Y40_N2
\inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\) # ((\inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ & 
-- (\inst30|inst5~0_combout\ $ (\inst29|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	datab => \inst30|inst5~0_combout\,
	datac => \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datad => \inst29|inst6|inst2~0_combout\,
	combout => \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: LCCOMB_X33_Y43_N26
\inst64|inst4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~9_combout\ = (\inst64|inst4~8_combout\) # ((\inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # 
-- (\inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst64|inst4~8_combout\,
	datab => \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datad => \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	combout => \inst64|inst4~9_combout\);

-- Location: LCCOMB_X33_Y40_N20
\inst64|inst4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst64|inst4~10_combout\ = (\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\) # ((\inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\) # (\inst64|inst4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	datab => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	datac => \inst64|inst4~9_combout\,
	combout => \inst64|inst4~10_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[27]~I\ : cycloneii_io
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
	padio => ww_B(27),
	combout => \B~combout\(27));

-- Location: LCCOMB_X33_Y40_N26
\inst27|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|inst5~0_combout\ = \A~combout\(27) $ (\B~combout\(27) $ (\A_inv~combout\ $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(27),
	datab => \B~combout\(27),
	datac => \A_inv~combout\,
	datad => \B_inv~combout\,
	combout => \inst27|inst5~0_combout\);

-- Location: LCCOMB_X33_Y40_N24
\inst27|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst27|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \inst27|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X33_Y40_N28
\inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (\inst27|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & ((\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # 
-- ((\inst27|inst5~0_combout\ & \inst66~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \inst27|inst5~0_combout\,
	datac => \inst27|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \inst66~1_combout\,
	combout => \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X33_Y40_N30
\inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = (!\Op~combout\(2) & (\Op~combout\(0) & \inst27|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \Op~combout\(0),
	datac => \inst27|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X33_Y40_N6
\inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\) # ((\inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ & 
-- (\inst26|inst6|inst2~0_combout\ $ (\inst27|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datab => \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	datac => \inst26|inst6|inst2~0_combout\,
	datad => \inst27|inst5~0_combout\,
	combout => \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: LCCOMB_X32_Y40_N14
\inst26|inst6|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst6|inst1~combout\ = \inst26|inst5~0_combout\ $ (((\inst25|inst6|inst2~0_combout\ & (\A~combout\(25) $ (\A_inv~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst5~0_combout\,
	datab => \A~combout\(25),
	datac => \A_inv~combout\,
	datad => \inst25|inst6|inst2~0_combout\,
	combout => \inst26|inst6|inst1~combout\);

-- Location: LCCOMB_X32_Y40_N18
\inst26|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst26|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst26|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[26]~I\ : cycloneii_io
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
	padio => ww_B(26),
	combout => \B~combout\(26));

-- Location: LCCOMB_X31_Y40_N12
\inst26|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst5~0_combout\ = \A_inv~combout\ $ (\A~combout\(26) $ (\B~combout\(26) $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \A~combout\(26),
	datac => \B~combout\(26),
	datad => \B_inv~combout\,
	combout => \inst26|inst5~0_combout\);

-- Location: LCCOMB_X33_Y40_N8
\inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst26|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & ((\inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # 
-- ((\inst66~1_combout\ & \inst26|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \inst66~1_combout\,
	datac => \inst26|inst5~0_combout\,
	datad => \inst26|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X33_Y40_N18
\inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # ((\inst26|inst6|inst1~combout\ & 
-- (\inst26|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst6|inst1~combout\,
	datab => \inst26|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datac => \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	combout => \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X32_Y40_N4
\inst25|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|inst5~0_combout\ = \B~combout\(25) $ (\A~combout\(25) $ (\A_inv~combout\ $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \A~combout\(25),
	datac => \A_inv~combout\,
	datad => \B_inv~combout\,
	combout => \inst25|inst5~0_combout\);

-- Location: LCCOMB_X32_Y40_N8
\inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst25|inst5~0_combout\ $ (((\inst24|inst6|inst2~0_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst6|inst2~0_combout\,
	datab => \inst25|inst5~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X32_Y40_N2
\inst25|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst25|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst25|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X32_Y40_N20
\inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (!\Op~combout\(2) & \inst25|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datac => \Op~combout\(2),
	datad => \inst25|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X32_Y40_N6
\inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst24|inst5~0_combout\ $ (((\inst23|inst6|inst2~0_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst5~0_combout\,
	datab => \Op~combout\(1),
	datac => \inst23|inst6|inst2~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X32_Y40_N24
\inst24|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\Op~combout\(0) & ((\inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\Op~combout\(0) & (\inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \inst24|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \inst24|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst24|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X32_Y40_N26
\inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (!\Op~combout\(2) & \inst24|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \Op~combout\(2),
	datac => \inst24|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X26_Y40_N6
\inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = \inst23|inst5~0_combout\ $ (((\inst22|inst6|inst2~0_combout\ & (\inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst5~0_combout\,
	datab => \inst22|inst6|inst2~0_combout\,
	datac => \inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[23]~I\ : cycloneii_io
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
	padio => ww_A(23),
	combout => \A~combout\(23));

-- Location: LCCOMB_X26_Y40_N30
\inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ = (\inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\Op~combout\(0)) # (\A_inv~combout\ $ (\A~combout\(23))))) # 
-- (!\inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(0) & (\A_inv~combout\ $ (\A~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \A_inv~combout\,
	datac => \A~combout\(23),
	datad => \Op~combout\(0),
	combout => \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\);

-- Location: LCCOMB_X26_Y40_N8
\inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ = (!\Op~combout\(2) & ((\Op~combout\(1) & (\inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\)) # (!\Op~combout\(1) & 
-- ((\inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	datab => \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\,
	datac => \Op~combout\(2),
	datad => \Op~combout\(1),
	combout => \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

-- Location: LCCOMB_X25_Y40_N12
\inst21|inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|inst6|inst2~4_combout\ = (\inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\A~combout\(21) $ (\A_inv~combout\)))) # (!\inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- (\inst20|inst6|inst2~0_combout\ & (\A~combout\(21) $ (\A_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst20|inst6|inst2~0_combout\,
	datac => \A~combout\(21),
	datad => \A_inv~combout\,
	combout => \inst21|inst6|inst2~4_combout\);

-- Location: LCCOMB_X25_Y40_N6
\inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst22|inst5~0_combout\ $ (((\Op~combout\(0) & \inst21|inst6|inst2~4_combout\)))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst5~0_combout\,
	datab => \Op~combout\(0),
	datac => \Op~combout\(1),
	datad => \inst21|inst6|inst2~4_combout\,
	combout => \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X25_Y40_N8
\inst22|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\Op~combout\(0)) # 
-- (\inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(0) & \inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst22|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(0),
	datad => \inst22|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst22|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X25_Y40_N10
\inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (\inst22|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & !\Op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datac => \inst22|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \Op~combout\(2),
	combout => \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[21]~I\ : cycloneii_io
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
	padio => ww_B(21),
	combout => \B~combout\(21));

-- Location: LCCOMB_X25_Y40_N28
\inst21|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|inst5~0_combout\ = \A_inv~combout\ $ (\A~combout\(21) $ (\B~combout\(21) $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \A~combout\(21),
	datac => \B~combout\(21),
	datad => \B_inv~combout\,
	combout => \inst21|inst5~0_combout\);

-- Location: LCCOMB_X25_Y40_N22
\inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst21|inst5~0_combout\ $ (((\inst20|inst6|inst2~0_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst20|inst6|inst2~0_combout\,
	datac => \Op~combout\(0),
	datad => \inst21|inst5~0_combout\,
	combout => \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X25_Y40_N24
\inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(21) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(21),
	datad => \B_inv~combout\,
	combout => \inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X25_Y40_N16
\inst21|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\Op~combout\(0)) # 
-- (\inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(0) & \inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst21|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(0),
	datad => \inst21|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst21|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X25_Y40_N18
\inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (\inst21|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & !\Op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datac => \inst21|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \Op~combout\(2),
	combout => \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X26_Y40_N26
\inst20|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst5~0_combout\ = \A~combout\(20) $ (\B_inv~combout\ $ (\B~combout\(20) $ (\A_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B_inv~combout\,
	datac => \B~combout\(20),
	datad => \A_inv~combout\,
	combout => \inst20|inst5~0_combout\);

-- Location: LCCOMB_X26_Y40_N12
\inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\Op~combout\(0) & (\inst20|inst5~0_combout\ $ (((\inst19|inst6|inst2~0_combout\ & \inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst6|inst2~0_combout\,
	datab => \inst20|inst5~0_combout\,
	datac => \inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X26_Y40_N0
\inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(1) $ (((\Op~combout\(0)) # 
-- (\inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))) # (!\inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(0) $ 
-- (\Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \inst20|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst20|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(1),
	combout => \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X26_Y40_N2
\inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (!\Op~combout\(2) & ((\inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & 
-- \Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \Op~combout\(2),
	datad => \Op~combout\(1),
	combout => \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[19]~I\ : cycloneii_io
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
	padio => ww_B(19),
	combout => \B~combout\(19));

-- Location: LCCOMB_X25_Y41_N18
\inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(19),
	combout => \inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X25_Y41_N6
\inst19|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst19|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst19|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst19|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[18]~I\ : cycloneii_io
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
	padio => ww_B(18),
	combout => \B~combout\(18));

-- Location: LCCOMB_X25_Y41_N30
\inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(18),
	combout => \inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[18]~I\ : cycloneii_io
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
	padio => ww_A(18),
	combout => \A~combout\(18));

-- Location: LCCOMB_X25_Y41_N26
\inst18|inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|inst2~4_combout\ = (\inst17|inst6|inst2~0_combout\ & ((\A~combout\(18) $ (\A_inv~combout\)))) # (!\inst17|inst6|inst2~0_combout\ & (\inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\A~combout\(18) $ 
-- (\A_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst6|inst2~0_combout\,
	datab => \inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \A~combout\(18),
	datad => \A_inv~combout\,
	combout => \inst18|inst6|inst2~4_combout\);

-- Location: LCCOMB_X25_Y41_N20
\inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst19|inst5~0_combout\ $ (((\inst18|inst6|inst2~4_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst5~0_combout\,
	datab => \inst18|inst6|inst2~4_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X25_Y41_N8
\inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst19|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & (\inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & !\Op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datac => \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \Op~combout\(2),
	combout => \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X25_Y41_N2
\inst18|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst5~0_combout\ = \B~combout\(18) $ (\A~combout\(18) $ (\B_inv~combout\ $ (\A_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \A~combout\(18),
	datac => \B_inv~combout\,
	datad => \A_inv~combout\,
	combout => \inst18|inst5~0_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[17]~I\ : cycloneii_io
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
	padio => ww_A(17),
	combout => \A~combout\(17));

-- Location: LCCOMB_X40_Y43_N8
\inst17|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_inv~combout\,
	datad => \A~combout\(17),
	combout => \inst17|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[16]~I\ : cycloneii_io
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
	padio => ww_A(16),
	combout => \A~combout\(16));

-- Location: LCCOMB_X41_Y43_N0
\inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_inv~combout\,
	datad => \A~combout\(16),
	combout => \inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[17]~I\ : cycloneii_io
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
	padio => ww_B(17),
	combout => \B~combout\(17));

-- Location: LCCOMB_X40_Y43_N2
\inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(17),
	combout => \inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X40_Y43_N4
\inst17|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|inst6|inst2~0_combout\ = (\inst17|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst16|inst6|inst2~0_combout\ & 
-- \inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|inst2~0_combout\,
	datab => \inst17|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst17|inst6|inst2~0_combout\);

-- Location: LCCOMB_X25_Y41_N12
\inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst18|inst5~0_combout\ $ (((\inst17|inst6|inst2~0_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst18|inst5~0_combout\,
	datac => \inst17|inst6|inst2~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X25_Y41_N28
\inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(18) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(18),
	datad => \A_inv~combout\,
	combout => \inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X25_Y41_N22
\inst18|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst18|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst18|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst18|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X25_Y41_N24
\inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (\inst18|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & !\Op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \inst18|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \Op~combout\(2),
	combout => \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X40_Y43_N12
\inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ = (\Op~combout\(0) & ((\inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\A_inv~combout\ $ (\A~combout\(17))))) # (!\Op~combout\(0) & 
-- (\inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\A_inv~combout\ $ (\A~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \A_inv~combout\,
	datac => \inst17|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \A~combout\(17),
	combout => \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\);

-- Location: LCCOMB_X25_Y43_N18
\inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(13) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(13),
	datad => \B_inv~combout\,
	combout => \inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[12]~I\ : cycloneii_io
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
	padio => ww_A(12),
	combout => \A~combout\(12));

-- Location: LCCOMB_X25_Y43_N12
\inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_inv~combout\,
	datac => \A~combout\(12),
	combout => \inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[11]~I\ : cycloneii_io
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
	padio => ww_B(11),
	combout => \B~combout\(11));

-- Location: LCCOMB_X45_Y43_N2
\inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(11),
	combout => \inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[9]~I\ : cycloneii_io
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
	padio => ww_A(9),
	combout => \A~combout\(9));

-- Location: LCCOMB_X42_Y43_N4
\inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_inv~combout\,
	datad => \A~combout\(9),
	combout => \inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[8]~I\ : cycloneii_io
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
	padio => ww_B(8),
	combout => \B~combout\(8));

-- Location: LCCOMB_X26_Y43_N0
\inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(8) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(8),
	datad => \B_inv~combout\,
	combout => \inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[8]~I\ : cycloneii_io
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
	padio => ww_A(8),
	combout => \A~combout\(8));

-- Location: LCCOMB_X26_Y43_N14
\inst8|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(8) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(8),
	datad => \A_inv~combout\,
	combout => \inst8|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X27_Y43_N24
\inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(7) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datad => \A_inv~combout\,
	combout => \inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y43_N10
\inst8|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|inst6|inst2~0_combout\ = (\inst8|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst7|inst6|inst2~0_combout\ & 
-- \inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst6|inst2~0_combout\,
	datab => \inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst8|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst8|inst6|inst2~0_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[10]~I\ : cycloneii_io
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
	padio => ww_B(10),
	combout => \B~combout\(10));

-- Location: LCCOMB_X42_Y43_N10
\inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datad => \B~combout\(10),
	combout => \inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X42_Y43_N0
\inst10|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst6|inst2~0_combout\ = (\inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- ((\inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\inst8|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst8|inst6|inst2~0_combout\,
	datad => \inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst10|inst6|inst2~0_combout\);

-- Location: LCCOMB_X45_Y43_N0
\inst11|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(11) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datac => \A_inv~combout\,
	combout => \inst11|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X45_Y43_N10
\inst11|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|inst6|inst2~0_combout\ = (\inst11|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- ((\inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst10|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst10|inst6|inst2~0_combout\,
	datad => \inst11|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst11|inst6|inst2~0_combout\);

-- Location: LCCOMB_X25_Y43_N16
\inst13|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst6|inst2~0_combout\ = (\inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- ((\inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\inst11|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst11|inst6|inst2~0_combout\,
	combout => \inst13|inst6|inst2~0_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[13]~I\ : cycloneii_io
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
	padio => ww_A(13),
	combout => \A~combout\(13));

-- Location: LCCOMB_X25_Y43_N0
\inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(13) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(13),
	datac => \A_inv~combout\,
	combout => \inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[14]~I\ : cycloneii_io
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
	padio => ww_A(14),
	combout => \A~combout\(14));

-- Location: LCCOMB_X26_Y43_N26
\inst14|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(14) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(14),
	datad => \A_inv~combout\,
	combout => \inst14|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X26_Y43_N4
\inst14|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|inst6|inst2~0_combout\ = (\inst14|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst13|inst6|inst2~0_combout\ & 
-- \inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst13|inst6|inst2~0_combout\,
	datac => \inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst14|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst14|inst6|inst2~0_combout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[15]~I\ : cycloneii_io
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
	padio => ww_A(15),
	combout => \A~combout\(15));

-- Location: LCCOMB_X41_Y43_N20
\inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A_inv~combout\,
	datad => \A~combout\(15),
	combout => \inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[16]~I\ : cycloneii_io
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
	padio => ww_B(16),
	combout => \B~combout\(16));

-- Location: LCCOMB_X41_Y43_N18
\inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datac => \B~combout\(16),
	combout => \inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X41_Y43_N16
\inst16|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|inst6|inst2~0_combout\ = (\inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- ((\inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\inst14|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst14|inst6|inst2~0_combout\,
	datac => \inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst16|inst6|inst2~0_combout\);

-- Location: LCCOMB_X40_Y43_N0
\inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = \inst17|inst5~0_combout\ $ (((\inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst16|inst6|inst2~0_combout\ & \Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst5~0_combout\,
	datab => \inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst16|inst6|inst2~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X40_Y43_N26
\inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ = (!\Op~combout\(2) & ((\Op~combout\(1) & ((\inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\))) # (!\Op~combout\(1) & 
-- (\inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\,
	datab => \Op~combout\(2),
	datac => \Op~combout\(1),
	datad => \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	combout => \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

-- Location: LCCOMB_X41_Y43_N2
\inst15|inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst6|inst2~4_combout\ = (\inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\A_inv~combout\ $ (\A~combout\(15))))) # (!\inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- (\inst14|inst6|inst2~0_combout\ & (\A_inv~combout\ $ (\A~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst14|inst6|inst2~0_combout\,
	datac => \A_inv~combout\,
	datad => \A~combout\(15),
	combout => \inst15|inst6|inst2~4_combout\);

-- Location: LCCOMB_X41_Y43_N28
\inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst16|inst5~0_combout\ $ (((\inst15|inst6|inst2~4_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst5~0_combout\,
	datab => \inst15|inst6|inst2~4_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X41_Y43_N22
\inst16|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\Op~combout\(0) & ((\inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\Op~combout\(0) & (\inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \inst16|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst16|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(1),
	combout => \inst16|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X41_Y43_N24
\inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (!\Op~combout\(2) & \inst16|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datac => \Op~combout\(2),
	datad => \inst16|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X41_Y43_N30
\inst15|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \Op~combout\(1),
	datac => \inst15|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst15|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[15]~I\ : cycloneii_io
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
	padio => ww_B(15),
	combout => \B~combout\(15));

-- Location: LCCOMB_X41_Y43_N26
\inst15|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst5~0_combout\ = \B_inv~combout\ $ (\B~combout\(15) $ (\A_inv~combout\ $ (\A~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \B~combout\(15),
	datac => \A_inv~combout\,
	datad => \A~combout\(15),
	combout => \inst15|inst5~0_combout\);

-- Location: LCCOMB_X41_Y43_N12
\inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst15|inst5~0_combout\ $ (((\Op~combout\(0) & \inst14|inst6|inst2~0_combout\)))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \Op~combout\(1),
	datac => \inst14|inst6|inst2~0_combout\,
	datad => \inst15|inst5~0_combout\,
	combout => \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X41_Y43_N8
\inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst15|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & (!\Op~combout\(2) & \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datac => \Op~combout\(2),
	datad => \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X26_Y43_N20
\inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ = (\inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\Op~combout\(0)) # (\A~combout\(14) $ (\A_inv~combout\)))) # 
-- (!\inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(0) & (\A~combout\(14) $ (\A_inv~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \A~combout\(14),
	datac => \A_inv~combout\,
	datad => \Op~combout\(0),
	combout => \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[14]~I\ : cycloneii_io
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
	padio => ww_B(14),
	combout => \B~combout\(14));

-- Location: LCCOMB_X26_Y43_N28
\inst14|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|inst5~0_combout\ = \A_inv~combout\ $ (\A~combout\(14) $ (\B~combout\(14) $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \A~combout\(14),
	datac => \B~combout\(14),
	datad => \B_inv~combout\,
	combout => \inst14|inst5~0_combout\);

-- Location: LCCOMB_X26_Y43_N6
\inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = \inst14|inst5~0_combout\ $ (((\Op~combout\(0) & (\inst13|inst6|inst2~0_combout\ & \inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \inst13|inst6|inst2~0_combout\,
	datac => \inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst14|inst5~0_combout\,
	combout => \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X26_Y43_N16
\inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ = (!\Op~combout\(2) & ((\Op~combout\(1) & ((\inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\))) # (!\Op~combout\(1) & 
-- (\inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\,
	datab => \Op~combout\(1),
	datac => \Op~combout\(2),
	datad => \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	combout => \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

-- Location: LCCOMB_X25_Y43_N30
\inst13|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\Op~combout\(0)) # 
-- (\inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(0) & \inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst13|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(0),
	datad => \inst13|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst13|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X25_Y43_N2
\inst12|inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst6|inst2~4_combout\ = (\inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\A_inv~combout\ $ (\A~combout\(12))))) # (!\inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- (\inst11|inst6|inst2~0_combout\ & (\A_inv~combout\ $ (\A~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst11|inst6|inst2~0_combout\,
	datac => \A_inv~combout\,
	datad => \A~combout\(12),
	combout => \inst12|inst6|inst2~4_combout\);

-- Location: LCCOMB_X25_Y43_N20
\inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst13|inst5~0_combout\ $ (((\inst12|inst6|inst2~4_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst5~0_combout\,
	datab => \inst12|inst6|inst2~4_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X25_Y43_N8
\inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst13|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & (\inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & !\Op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datac => \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \Op~combout\(2),
	combout => \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X25_Y43_N26
\inst12|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst5~0_combout\ = \B~combout\(12) $ (\A_inv~combout\ $ (\A~combout\(12) $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A_inv~combout\,
	datac => \A~combout\(12),
	datad => \B_inv~combout\,
	combout => \inst12|inst5~0_combout\);

-- Location: LCCOMB_X25_Y43_N28
\inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst12|inst5~0_combout\ $ (((\Op~combout\(0) & \inst11|inst6|inst2~0_combout\)))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst12|inst5~0_combout\,
	datac => \Op~combout\(0),
	datad => \inst11|inst6|inst2~0_combout\,
	combout => \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X25_Y43_N14
\inst12|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst12|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \inst12|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X25_Y43_N24
\inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (\inst12|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & !\Op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datac => \inst12|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \Op~combout\(2),
	combout => \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[11]~I\ : cycloneii_io
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
	padio => ww_A(11),
	combout => \A~combout\(11));

-- Location: LCCOMB_X45_Y43_N14
\inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ = (\Op~combout\(0) & ((\inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\A_inv~combout\ $ (\A~combout\(11))))) # (!\Op~combout\(0) & 
-- (\inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\A_inv~combout\ $ (\A~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \A_inv~combout\,
	datac => \A~combout\(11),
	datad => \inst11|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\);

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[10]~I\ : cycloneii_io
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
	padio => ww_A(10),
	combout => \A~combout\(10));

-- Location: LCCOMB_X42_Y43_N24
\inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(10) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(10),
	datac => \A_inv~combout\,
	combout => \inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X45_Y43_N8
\inst11|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|inst5~0_combout\ = \A~combout\(11) $ (\B_inv~combout\ $ (\A_inv~combout\ $ (\B~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(11),
	datab => \B_inv~combout\,
	datac => \A_inv~combout\,
	datad => \B~combout\(11),
	combout => \inst11|inst5~0_combout\);

-- Location: LCCOMB_X45_Y43_N26
\inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = \inst11|inst5~0_combout\ $ (((\inst10|inst6|inst2~0_combout\ & (\inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst6|inst2~0_combout\,
	datab => \inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst11|inst5~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X45_Y43_N12
\inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ = (!\Op~combout\(2) & ((\Op~combout\(1) & ((\inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\))) # (!\Op~combout\(1) & 
-- (\inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \Op~combout\(1),
	datac => \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\,
	datad => \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	combout => \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

-- Location: LCCOMB_X42_Y43_N8
\inst10|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\Op~combout\(0)) # 
-- (\inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(0) & \inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \Op~combout\(1),
	datac => \Op~combout\(0),
	datad => \inst10|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst10|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X42_Y43_N28
\inst10|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst5~0_combout\ = \B_inv~combout\ $ (\A~combout\(10) $ (\A_inv~combout\ $ (\B~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \A~combout\(10),
	datac => \A_inv~combout\,
	datad => \B~combout\(10),
	combout => \inst10|inst5~0_combout\);

-- Location: LCCOMB_X42_Y43_N22
\inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst10|inst5~0_combout\ $ (((\inst9|inst6|inst2~4_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|inst2~4_combout\,
	datab => \Op~combout\(1),
	datac => \Op~combout\(0),
	datad => \inst10|inst5~0_combout\,
	combout => \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X42_Y43_N2
\inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (!\Op~combout\(2) & (\inst10|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datac => \inst10|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X42_Y43_N16
\inst9|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst9|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(0),
	datad => \Op~combout\(1),
	combout => \inst9|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[9]~I\ : cycloneii_io
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
	padio => ww_B(9),
	combout => \B~combout\(9));

-- Location: LCCOMB_X42_Y43_N12
\inst9|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst5~0_combout\ = \B_inv~combout\ $ (\A~combout\(9) $ (\A_inv~combout\ $ (\B~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \A~combout\(9),
	datac => \A_inv~combout\,
	datad => \B~combout\(9),
	combout => \inst9|inst5~0_combout\);

-- Location: LCCOMB_X42_Y43_N30
\inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst9|inst5~0_combout\ $ (((\inst8|inst6|inst2~0_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst6|inst2~0_combout\,
	datab => \Op~combout\(1),
	datac => \Op~combout\(0),
	datad => \inst9|inst5~0_combout\,
	combout => \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X42_Y43_N18
\inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (!\Op~combout\(2) & (\inst9|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datac => \inst9|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X26_Y43_N30
\inst8|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|inst5~0_combout\ = \A_inv~combout\ $ (\A~combout\(8) $ (\B~combout\(8) $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \A~combout\(8),
	datac => \B~combout\(8),
	datad => \B_inv~combout\,
	combout => \inst8|inst5~0_combout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
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
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCCOMB_X27_Y43_N18
\inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(7) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(7),
	datad => \B_inv~combout\,
	combout => \inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X27_Y43_N20
\inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datad => \A~combout\(6),
	combout => \inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X45_Y43_N28
\inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A~combout\(3) $ (\A_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \A_inv~combout\,
	combout => \inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y43_N16
\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datad => \A~combout\(2),
	combout => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y43_N4
\inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datad => \A~combout\(1),
	combout => \inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X44_Y43_N24
\inst|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst6|inst2~0_combout\ = (\B_inv~combout\ & (\A_inv~combout\ $ ((\A~combout\(0))))) # (!\B_inv~combout\ & (\B~combout\(0) & (\A_inv~combout\ $ (\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \B_inv~combout\,
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	combout => \inst|inst6|inst2~0_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y43_N22
\inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B_inv~combout\ $ (\B~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_inv~combout\,
	datad => \B~combout\(1),
	combout => \inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X44_Y43_N2
\inst2|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst6|inst2~0_combout\ = (\inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst|inst6|inst2~0_combout\) # 
-- (\inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst|inst6|inst2~0_combout\,
	datad => \inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst2|inst6|inst2~0_combout\);

-- Location: LCCOMB_X45_Y43_N16
\inst3|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst6|inst2~0_combout\ = (\inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst2|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst2|inst6|inst2~0_combout\,
	combout => \inst3|inst6|inst2~0_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X46_Y43_N10
\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datad => \A~combout\(4),
	combout => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X46_Y43_N12
\inst5|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2~0_combout\ = (\B_inv~combout\ & (((!\B~combout\(4) & \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)) # (!\B~combout\(5)))) # (!\B_inv~combout\ & ((\B~combout\(5)) # ((\B~combout\(4) & 
-- \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \B~combout\(5),
	datac => \B~combout\(4),
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst5|inst6|inst2~0_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCCOMB_X46_Y43_N0
\inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \A_inv~combout\ $ (\A~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datad => \A~combout\(5),
	combout => \inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X46_Y43_N30
\inst5|inst6|inst2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2~1_combout\ = (\inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst5|inst6|inst2~0_combout\) # ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst3|inst6|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst3|inst6|inst2~0_combout\,
	datac => \inst5|inst6|inst2~0_combout\,
	datad => \inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst5|inst6|inst2~1_combout\);

-- Location: LCCOMB_X27_Y43_N16
\inst7|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst6|inst2~0_combout\ = (\inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # ((\inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & 
-- ((\inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # (\inst5|inst6|inst2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst5|inst6|inst2~1_combout\,
	combout => \inst7|inst6|inst2~0_combout\);

-- Location: LCCOMB_X26_Y43_N24
\inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = \inst8|inst5~0_combout\ $ (((\Op~combout\(0) & (\inst7|inst6|inst2~0_combout\ & \inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \inst8|inst5~0_combout\,
	datac => \inst7|inst6|inst2~0_combout\,
	datad => \inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X26_Y43_N18
\inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\ = (\inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\Op~combout\(0)) # (\A_inv~combout\ $ (\A~combout\(8))))) # 
-- (!\inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(0) & (\A_inv~combout\ $ (\A~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \inst8|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \A~combout\(8),
	datad => \Op~combout\(0),
	combout => \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\);

-- Location: LCCOMB_X26_Y43_N2
\inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ = (!\Op~combout\(2) & ((\Op~combout\(1) & (\inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\)) # (!\Op~combout\(1) & 
-- ((\inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	datab => \Op~combout\(1),
	datac => \Op~combout\(2),
	datad => \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~6_combout\,
	combout => \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

-- Location: LCCOMB_X27_Y43_N2
\inst7|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst5~0_combout\ = \A~combout\(7) $ (\B~combout\(7) $ (\A_inv~combout\ $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datac => \A_inv~combout\,
	datad => \B_inv~combout\,
	combout => \inst7|inst5~0_combout\);

-- Location: LCCOMB_X27_Y43_N12
\inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst7|inst5~0_combout\ $ (((\inst6|inst6|inst2~4_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|inst2~4_combout\,
	datab => \inst7|inst5~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X27_Y43_N22
\inst7|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst7|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst7|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X27_Y43_N8
\inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & (\inst7|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & !\Op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datab => \inst7|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \Op~combout\(2),
	combout => \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X27_Y43_N26
\inst6|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst5~0_combout\ = \B~combout\(6) $ (\A~combout\(6) $ (\A_inv~combout\ $ (\B_inv~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(6),
	datac => \A_inv~combout\,
	datad => \B_inv~combout\,
	combout => \inst6|inst5~0_combout\);

-- Location: LCCOMB_X27_Y43_N28
\inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst6|inst5~0_combout\ $ (((\Op~combout\(0) & \inst5|inst6|inst2~1_combout\)))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \inst6|inst5~0_combout\,
	datac => \Op~combout\(1),
	datad => \inst5|inst6|inst2~1_combout\,
	combout => \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X27_Y43_N30
\inst6|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \Op~combout\(1),
	datac => \inst6|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst6|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X27_Y43_N0
\inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (!\Op~combout\(2) & (\inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & \inst6|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \inst6|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	combout => \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X46_Y43_N2
\inst5|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst5|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst5|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst5|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst5|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X46_Y43_N28
\inst4|inst6|inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst6|inst2~0_combout\ = (\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst3|inst6|inst2~0_combout\) # (\B_inv~combout\ $ (\B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \inst3|inst6|inst2~0_combout\,
	datac => \B~combout\(4),
	datad => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst4|inst6|inst2~0_combout\);

-- Location: LCCOMB_X46_Y43_N26
\inst5|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst5~0_combout\ = \A_inv~combout\ $ (\B~combout\(5) $ (\B_inv~combout\ $ (\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \B~combout\(5),
	datac => \B_inv~combout\,
	datad => \A~combout\(5),
	combout => \inst5|inst5~0_combout\);

-- Location: LCCOMB_X46_Y43_N6
\inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst5|inst5~0_combout\ $ (((\Op~combout\(0) & \inst4|inst6|inst2~0_combout\)))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \inst4|inst6|inst2~0_combout\,
	datac => \Op~combout\(1),
	datad => \inst5|inst5~0_combout\,
	combout => \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X46_Y43_N20
\inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (!\Op~combout\(2) & (\inst5|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \inst5|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X46_Y43_N4
\inst4|inst|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = \B~combout\(4) $ (\B_inv~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datac => \B_inv~combout\,
	combout => \inst4|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X46_Y43_N22
\inst4|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst4|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst4|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst4|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst4|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X46_Y43_N8
\inst4|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst5~0_combout\ = \B_inv~combout\ $ (\A_inv~combout\ $ (\B~combout\(4) $ (\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_inv~combout\,
	datab => \A_inv~combout\,
	datac => \B~combout\(4),
	datad => \A~combout\(4),
	combout => \inst4|inst5~0_combout\);

-- Location: LCCOMB_X46_Y43_N18
\inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst4|inst5~0_combout\ $ (((\inst3|inst6|inst2~0_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(1),
	datab => \inst3|inst6|inst2~0_combout\,
	datac => \inst4|inst5~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X46_Y43_N16
\inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (!\Op~combout\(2) & (\inst4|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \inst4|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X45_Y43_N24
\inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(1) $ (((\inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))))) # (!\inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\Op~combout\(1) $ (\Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \inst3|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \Op~combout\(1),
	datad => \Op~combout\(0),
	combout => \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y43_N20
\inst3|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5~0_combout\ = \A~combout\(3) $ (\B_inv~combout\ $ (\A_inv~combout\ $ (\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B_inv~combout\,
	datac => \A_inv~combout\,
	datad => \B~combout\(3),
	combout => \inst3|inst5~0_combout\);

-- Location: LCCOMB_X45_Y43_N22
\inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\Op~combout\(0) & (\inst3|inst5~0_combout\ $ (((\inst2|inst6|inst2~0_combout\ & \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|inst2~0_combout\,
	datab => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst3|inst5~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X45_Y43_N18
\inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (!\Op~combout\(2) & ((\inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\Op~combout\(1) & 
-- \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \Op~combout\(1),
	datac => \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datad => \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X44_Y43_N8
\inst2|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & ((\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\Op~combout\(0)))) # (!\inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datab => \Op~combout\(1),
	datac => \inst2|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \Op~combout\(0),
	combout => \inst2|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X44_Y43_N20
\inst1|inst6|inst2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst2~4_combout\ = (\inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\A_inv~combout\ $ (((\A~combout\(1)))))) # (!\inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & (\inst|inst6|inst2~0_combout\ 
-- & (\A_inv~combout\ $ (\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datac => \inst|inst6|inst2~0_combout\,
	datad => \A~combout\(1),
	combout => \inst1|inst6|inst2~4_combout\);

-- Location: LCCOMB_X44_Y43_N6
\inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst2|inst5~0_combout\ $ (((\inst1|inst6|inst2~4_combout\ & \Op~combout\(0))))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5~0_combout\,
	datab => \Op~combout\(1),
	datac => \inst1|inst6|inst2~4_combout\,
	datad => \Op~combout\(0),
	combout => \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X44_Y43_N18
\inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (!\Op~combout\(2) & (\inst2|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datac => \inst2|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X44_Y43_N0
\inst1|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ = (\Op~combout\(1)) # ((\Op~combout\(0) & ((\inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\) # 
-- (\inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))) # (!\Op~combout\(0) & (\inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ & \inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \Op~combout\(1),
	datac => \inst1|inst1|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \inst1|inst|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst1|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\);

-- Location: LCCOMB_X44_Y43_N28
\inst1|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst5~0_combout\ = \A_inv~combout\ $ (\B~combout\(1) $ (\B_inv~combout\ $ (\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_inv~combout\,
	datab => \B~combout\(1),
	datac => \B_inv~combout\,
	datad => \A~combout\(1),
	combout => \inst1|inst5~0_combout\);

-- Location: LCCOMB_X44_Y43_N30
\inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst1|inst5~0_combout\ $ (((\Op~combout\(0) & \inst|inst6|inst2~0_combout\)))) # (!\Op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(0),
	datab => \Op~combout\(1),
	datac => \inst|inst6|inst2~0_combout\,
	datad => \inst1|inst5~0_combout\,
	combout => \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X44_Y43_N26
\inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (!\Op~combout\(2) & (\inst1|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\ & \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op~combout\(2),
	datab => \inst1|inst2|LPM_MUX_component|auto_generated|w_mux_outputs27w[0]~0_combout\,
	datad => \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Overflow~I\ : cycloneii_io
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
	datain => \inst66~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Overflow);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Equal~I\ : cycloneii_io
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
	datain => \inst64|inst4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Equal);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[31]~I\ : cycloneii_io
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
	datain => \inst31|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(31));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[30]~I\ : cycloneii_io
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
	datain => \inst30|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(30));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[29]~I\ : cycloneii_io
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
	datain => \inst29|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(29));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[28]~I\ : cycloneii_io
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
	datain => \inst28|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(28));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[27]~I\ : cycloneii_io
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
	datain => \inst27|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(27));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[26]~I\ : cycloneii_io
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
	datain => \inst26|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(26));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[25]~I\ : cycloneii_io
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
	datain => \inst25|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(25));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[24]~I\ : cycloneii_io
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
	datain => \inst24|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(24));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[23]~I\ : cycloneii_io
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
	datain => \inst23|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(23));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[22]~I\ : cycloneii_io
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
	datain => \inst22|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(22));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[21]~I\ : cycloneii_io
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
	datain => \inst21|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(21));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[20]~I\ : cycloneii_io
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
	datain => \inst20|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(20));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[19]~I\ : cycloneii_io
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
	datain => \inst19|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(19));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[18]~I\ : cycloneii_io
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
	datain => \inst18|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(18));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[17]~I\ : cycloneii_io
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
	datain => \inst17|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(17));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[16]~I\ : cycloneii_io
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
	datain => \inst16|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(16));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[15]~I\ : cycloneii_io
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
	datain => \inst15|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(15));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[14]~I\ : cycloneii_io
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
	datain => \inst14|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(14));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[13]~I\ : cycloneii_io
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
	datain => \inst13|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(13));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[12]~I\ : cycloneii_io
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
	datain => \inst12|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(12));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[11]~I\ : cycloneii_io
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
	datain => \inst11|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(11));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[10]~I\ : cycloneii_io
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
	datain => \inst10|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(10));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[9]~I\ : cycloneii_io
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
	datain => \inst9|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(9));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[8]~I\ : cycloneii_io
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
	datain => \inst8|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(8));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[7]~I\ : cycloneii_io
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
	datain => \inst7|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(7));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[6]~I\ : cycloneii_io
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
	datain => \inst6|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(6));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[5]~I\ : cycloneii_io
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
	datain => \inst5|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(5));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[4]~I\ : cycloneii_io
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
	datain => \inst4|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(4));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[3]~I\ : cycloneii_io
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
	datain => \inst3|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(3));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[2]~I\ : cycloneii_io
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
	datain => \inst2|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(2));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[1]~I\ : cycloneii_io
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
	datain => \inst1|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(1));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[0]~I\ : cycloneii_io
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
	datain => \inst|inst2|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(0));
END structure;


