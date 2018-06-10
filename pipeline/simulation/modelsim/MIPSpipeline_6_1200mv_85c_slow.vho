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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/10/2018 14:30:51"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg32 IS
    PORT (
	READ : OUT std_logic_vector(31 DOWNTO 0);
	WRITE : IN std_logic_vector(31 DOWNTO 0);
	CLK : IN std_logic;
	W_EN : IN std_logic
	);
END reg32;

-- Design Ports Information
-- READ[31]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[30]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[29]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[28]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[27]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[26]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[25]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[24]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[23]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[22]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[21]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[20]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[19]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[18]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[17]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[15]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[14]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[13]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[12]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[11]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[10]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[5]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READ[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[31]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_EN	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[30]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[29]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[28]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[27]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[26]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[25]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[24]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[23]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[22]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[21]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[20]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[19]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[18]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[17]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[16]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[15]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[14]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[10]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[9]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_READ : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WRITE : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_W_EN : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \READ[31]~output_o\ : std_logic;
SIGNAL \READ[30]~output_o\ : std_logic;
SIGNAL \READ[29]~output_o\ : std_logic;
SIGNAL \READ[28]~output_o\ : std_logic;
SIGNAL \READ[27]~output_o\ : std_logic;
SIGNAL \READ[26]~output_o\ : std_logic;
SIGNAL \READ[25]~output_o\ : std_logic;
SIGNAL \READ[24]~output_o\ : std_logic;
SIGNAL \READ[23]~output_o\ : std_logic;
SIGNAL \READ[22]~output_o\ : std_logic;
SIGNAL \READ[21]~output_o\ : std_logic;
SIGNAL \READ[20]~output_o\ : std_logic;
SIGNAL \READ[19]~output_o\ : std_logic;
SIGNAL \READ[18]~output_o\ : std_logic;
SIGNAL \READ[17]~output_o\ : std_logic;
SIGNAL \READ[16]~output_o\ : std_logic;
SIGNAL \READ[15]~output_o\ : std_logic;
SIGNAL \READ[14]~output_o\ : std_logic;
SIGNAL \READ[13]~output_o\ : std_logic;
SIGNAL \READ[12]~output_o\ : std_logic;
SIGNAL \READ[11]~output_o\ : std_logic;
SIGNAL \READ[10]~output_o\ : std_logic;
SIGNAL \READ[9]~output_o\ : std_logic;
SIGNAL \READ[8]~output_o\ : std_logic;
SIGNAL \READ[7]~output_o\ : std_logic;
SIGNAL \READ[6]~output_o\ : std_logic;
SIGNAL \READ[5]~output_o\ : std_logic;
SIGNAL \READ[4]~output_o\ : std_logic;
SIGNAL \READ[3]~output_o\ : std_logic;
SIGNAL \READ[2]~output_o\ : std_logic;
SIGNAL \READ[1]~output_o\ : std_logic;
SIGNAL \READ[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \WRITE[31]~input_o\ : std_logic;
SIGNAL \W_EN~input_o\ : std_logic;
SIGNAL \bit31~q\ : std_logic;
SIGNAL \WRITE[30]~input_o\ : std_logic;
SIGNAL \bit30~q\ : std_logic;
SIGNAL \WRITE[29]~input_o\ : std_logic;
SIGNAL \bit29~feeder_combout\ : std_logic;
SIGNAL \bit29~q\ : std_logic;
SIGNAL \WRITE[28]~input_o\ : std_logic;
SIGNAL \bit28~q\ : std_logic;
SIGNAL \WRITE[27]~input_o\ : std_logic;
SIGNAL \bit27~feeder_combout\ : std_logic;
SIGNAL \bit27~q\ : std_logic;
SIGNAL \WRITE[26]~input_o\ : std_logic;
SIGNAL \bit26~q\ : std_logic;
SIGNAL \WRITE[25]~input_o\ : std_logic;
SIGNAL \bit25~q\ : std_logic;
SIGNAL \WRITE[24]~input_o\ : std_logic;
SIGNAL \bit24~feeder_combout\ : std_logic;
SIGNAL \bit24~q\ : std_logic;
SIGNAL \WRITE[23]~input_o\ : std_logic;
SIGNAL \bit23~feeder_combout\ : std_logic;
SIGNAL \bit23~q\ : std_logic;
SIGNAL \WRITE[22]~input_o\ : std_logic;
SIGNAL \bit22~feeder_combout\ : std_logic;
SIGNAL \bit22~q\ : std_logic;
SIGNAL \WRITE[21]~input_o\ : std_logic;
SIGNAL \bit21~q\ : std_logic;
SIGNAL \WRITE[20]~input_o\ : std_logic;
SIGNAL \bit20~q\ : std_logic;
SIGNAL \WRITE[19]~input_o\ : std_logic;
SIGNAL \bit19~feeder_combout\ : std_logic;
SIGNAL \bit19~q\ : std_logic;
SIGNAL \WRITE[18]~input_o\ : std_logic;
SIGNAL \bit18~feeder_combout\ : std_logic;
SIGNAL \bit18~q\ : std_logic;
SIGNAL \WRITE[17]~input_o\ : std_logic;
SIGNAL \bit17~q\ : std_logic;
SIGNAL \WRITE[16]~input_o\ : std_logic;
SIGNAL \bit16~feeder_combout\ : std_logic;
SIGNAL \bit16~q\ : std_logic;
SIGNAL \WRITE[15]~input_o\ : std_logic;
SIGNAL \bit15~q\ : std_logic;
SIGNAL \WRITE[14]~input_o\ : std_logic;
SIGNAL \bit14~feeder_combout\ : std_logic;
SIGNAL \bit14~q\ : std_logic;
SIGNAL \WRITE[13]~input_o\ : std_logic;
SIGNAL \bit13~q\ : std_logic;
SIGNAL \WRITE[12]~input_o\ : std_logic;
SIGNAL \bit12~q\ : std_logic;
SIGNAL \WRITE[11]~input_o\ : std_logic;
SIGNAL \bit11~feeder_combout\ : std_logic;
SIGNAL \bit11~q\ : std_logic;
SIGNAL \WRITE[10]~input_o\ : std_logic;
SIGNAL \bit10~q\ : std_logic;
SIGNAL \WRITE[9]~input_o\ : std_logic;
SIGNAL \bit9~feeder_combout\ : std_logic;
SIGNAL \bit9~q\ : std_logic;
SIGNAL \WRITE[8]~input_o\ : std_logic;
SIGNAL \bit8~q\ : std_logic;
SIGNAL \WRITE[7]~input_o\ : std_logic;
SIGNAL \bit7~q\ : std_logic;
SIGNAL \WRITE[6]~input_o\ : std_logic;
SIGNAL \bit6~q\ : std_logic;
SIGNAL \WRITE[5]~input_o\ : std_logic;
SIGNAL \bit5~q\ : std_logic;
SIGNAL \WRITE[4]~input_o\ : std_logic;
SIGNAL \bit4~feeder_combout\ : std_logic;
SIGNAL \bit4~q\ : std_logic;
SIGNAL \WRITE[3]~input_o\ : std_logic;
SIGNAL \bit3~feeder_combout\ : std_logic;
SIGNAL \bit3~q\ : std_logic;
SIGNAL \WRITE[2]~input_o\ : std_logic;
SIGNAL \bit2~feeder_combout\ : std_logic;
SIGNAL \bit2~q\ : std_logic;
SIGNAL \WRITE[1]~input_o\ : std_logic;
SIGNAL \bit1~feeder_combout\ : std_logic;
SIGNAL \bit1~q\ : std_logic;
SIGNAL \WRITE[0]~input_o\ : std_logic;
SIGNAL \bit0~feeder_combout\ : std_logic;
SIGNAL \bit0~q\ : std_logic;

BEGIN

READ <= ww_READ;
ww_WRITE <= WRITE;
ww_CLK <= CLK;
ww_W_EN <= W_EN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X52_Y11_N2
\READ[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit31~q\,
	devoe => ww_devoe,
	o => \READ[31]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\READ[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit30~q\,
	devoe => ww_devoe,
	o => \READ[30]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\READ[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit29~q\,
	devoe => ww_devoe,
	o => \READ[29]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\READ[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit28~q\,
	devoe => ww_devoe,
	o => \READ[28]~output_o\);

-- Location: IOOBUF_X52_Y9_N9
\READ[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit27~q\,
	devoe => ww_devoe,
	o => \READ[27]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\READ[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit26~q\,
	devoe => ww_devoe,
	o => \READ[26]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\READ[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit25~q\,
	devoe => ww_devoe,
	o => \READ[25]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\READ[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit24~q\,
	devoe => ww_devoe,
	o => \READ[24]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\READ[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit23~q\,
	devoe => ww_devoe,
	o => \READ[23]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\READ[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit22~q\,
	devoe => ww_devoe,
	o => \READ[22]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\READ[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit21~q\,
	devoe => ww_devoe,
	o => \READ[21]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\READ[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit20~q\,
	devoe => ww_devoe,
	o => \READ[20]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\READ[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit19~q\,
	devoe => ww_devoe,
	o => \READ[19]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\READ[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit18~q\,
	devoe => ww_devoe,
	o => \READ[18]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\READ[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit17~q\,
	devoe => ww_devoe,
	o => \READ[17]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\READ[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit16~q\,
	devoe => ww_devoe,
	o => \READ[16]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\READ[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit15~q\,
	devoe => ww_devoe,
	o => \READ[15]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\READ[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit14~q\,
	devoe => ww_devoe,
	o => \READ[14]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\READ[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit13~q\,
	devoe => ww_devoe,
	o => \READ[13]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\READ[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit12~q\,
	devoe => ww_devoe,
	o => \READ[12]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\READ[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit11~q\,
	devoe => ww_devoe,
	o => \READ[11]~output_o\);

-- Location: IOOBUF_X52_Y13_N9
\READ[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit10~q\,
	devoe => ww_devoe,
	o => \READ[10]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\READ[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit9~q\,
	devoe => ww_devoe,
	o => \READ[9]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\READ[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit8~q\,
	devoe => ww_devoe,
	o => \READ[8]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\READ[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit7~q\,
	devoe => ww_devoe,
	o => \READ[7]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\READ[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit6~q\,
	devoe => ww_devoe,
	o => \READ[6]~output_o\);

-- Location: IOOBUF_X52_Y12_N2
\READ[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit5~q\,
	devoe => ww_devoe,
	o => \READ[5]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\READ[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit4~q\,
	devoe => ww_devoe,
	o => \READ[4]~output_o\);

-- Location: IOOBUF_X25_Y41_N2
\READ[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit3~q\,
	devoe => ww_devoe,
	o => \READ[3]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\READ[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit2~q\,
	devoe => ww_devoe,
	o => \READ[2]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\READ[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit1~q\,
	devoe => ww_devoe,
	o => \READ[1]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\READ[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit0~q\,
	devoe => ww_devoe,
	o => \READ[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y10_N1
\WRITE[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(31),
	o => \WRITE[31]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\W_EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_EN,
	o => \W_EN~input_o\);

-- Location: FF_X51_Y12_N9
bit31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[31]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit31~q\);

-- Location: IOIBUF_X18_Y41_N8
\WRITE[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(30),
	o => \WRITE[30]~input_o\);

-- Location: FF_X35_Y40_N17
bit30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[30]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit30~q\);

-- Location: IOIBUF_X52_Y12_N8
\WRITE[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(29),
	o => \WRITE[29]~input_o\);

-- Location: LCCOMB_X51_Y12_N2
\bit29~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit29~feeder_combout\ = \WRITE[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[29]~input_o\,
	combout => \bit29~feeder_combout\);

-- Location: FF_X51_Y12_N3
bit29 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit29~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit29~q\);

-- Location: IOIBUF_X52_Y15_N1
\WRITE[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(28),
	o => \WRITE[28]~input_o\);

-- Location: FF_X51_Y12_N5
bit28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[28]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit28~q\);

-- Location: IOIBUF_X46_Y0_N22
\WRITE[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(27),
	o => \WRITE[27]~input_o\);

-- Location: LCCOMB_X51_Y12_N14
\bit27~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit27~feeder_combout\ = \WRITE[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[27]~input_o\,
	combout => \bit27~feeder_combout\);

-- Location: FF_X51_Y12_N15
bit27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit27~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit27~q\);

-- Location: IOIBUF_X29_Y41_N8
\WRITE[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(26),
	o => \WRITE[26]~input_o\);

-- Location: FF_X35_Y40_N27
bit26 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[26]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit26~q\);

-- Location: IOIBUF_X52_Y23_N8
\WRITE[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(25),
	o => \WRITE[25]~input_o\);

-- Location: FF_X51_Y12_N25
bit25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[25]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit25~q\);

-- Location: IOIBUF_X52_Y15_N8
\WRITE[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(24),
	o => \WRITE[24]~input_o\);

-- Location: LCCOMB_X51_Y12_N26
\bit24~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit24~feeder_combout\ = \WRITE[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[24]~input_o\,
	combout => \bit24~feeder_combout\);

-- Location: FF_X51_Y12_N27
bit24 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit24~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit24~q\);

-- Location: IOIBUF_X52_Y18_N1
\WRITE[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(23),
	o => \WRITE[23]~input_o\);

-- Location: LCCOMB_X51_Y12_N20
\bit23~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit23~feeder_combout\ = \WRITE[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[23]~input_o\,
	combout => \bit23~feeder_combout\);

-- Location: FF_X51_Y12_N21
bit23 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit23~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit23~q\);

-- Location: IOIBUF_X52_Y16_N8
\WRITE[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(22),
	o => \WRITE[22]~input_o\);

-- Location: LCCOMB_X51_Y12_N30
\bit22~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit22~feeder_combout\ = \WRITE[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[22]~input_o\,
	combout => \bit22~feeder_combout\);

-- Location: FF_X51_Y12_N31
bit22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit22~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit22~q\);

-- Location: IOIBUF_X52_Y25_N1
\WRITE[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(21),
	o => \WRITE[21]~input_o\);

-- Location: FF_X51_Y12_N17
bit21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[21]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit21~q\);

-- Location: IOIBUF_X31_Y41_N15
\WRITE[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(20),
	o => \WRITE[20]~input_o\);

-- Location: FF_X35_Y40_N29
bit20 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[20]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit20~q\);

-- Location: IOIBUF_X36_Y41_N1
\WRITE[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(19),
	o => \WRITE[19]~input_o\);

-- Location: LCCOMB_X35_Y40_N6
\bit19~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit19~feeder_combout\ = \WRITE[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[19]~input_o\,
	combout => \bit19~feeder_combout\);

-- Location: FF_X35_Y40_N7
bit19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit19~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit19~q\);

-- Location: IOIBUF_X41_Y41_N15
\WRITE[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(18),
	o => \WRITE[18]~input_o\);

-- Location: LCCOMB_X35_Y40_N24
\bit18~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit18~feeder_combout\ = \WRITE[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[18]~input_o\,
	combout => \bit18~feeder_combout\);

-- Location: FF_X35_Y40_N25
bit18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit18~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit18~q\);

-- Location: IOIBUF_X52_Y10_N8
\WRITE[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(17),
	o => \WRITE[17]~input_o\);

-- Location: FF_X51_Y12_N11
bit17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[17]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit17~q\);

-- Location: IOIBUF_X46_Y41_N8
\WRITE[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(16),
	o => \WRITE[16]~input_o\);

-- Location: LCCOMB_X35_Y40_N18
\bit16~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit16~feeder_combout\ = \WRITE[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[16]~input_o\,
	combout => \bit16~feeder_combout\);

-- Location: FF_X35_Y40_N19
bit16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit16~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit16~q\);

-- Location: IOIBUF_X52_Y32_N8
\WRITE[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(15),
	o => \WRITE[15]~input_o\);

-- Location: FF_X35_Y40_N21
bit15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[15]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit15~q\);

-- Location: IOIBUF_X52_Y16_N1
\WRITE[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(14),
	o => \WRITE[14]~input_o\);

-- Location: LCCOMB_X51_Y12_N28
\bit14~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit14~feeder_combout\ = \WRITE[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[14]~input_o\,
	combout => \bit14~feeder_combout\);

-- Location: FF_X51_Y12_N29
bit14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit14~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit14~q\);

-- Location: IOIBUF_X36_Y41_N8
\WRITE[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(13),
	o => \WRITE[13]~input_o\);

-- Location: FF_X35_Y40_N23
bit13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[13]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit13~q\);

-- Location: IOIBUF_X29_Y41_N1
\WRITE[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(12),
	o => \WRITE[12]~input_o\);

-- Location: FF_X35_Y40_N9
bit12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[12]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit12~q\);

-- Location: IOIBUF_X50_Y0_N8
\WRITE[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(11),
	o => \WRITE[11]~input_o\);

-- Location: LCCOMB_X51_Y12_N22
\bit11~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit11~feeder_combout\ = \WRITE[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[11]~input_o\,
	combout => \bit11~feeder_combout\);

-- Location: FF_X51_Y12_N23
bit11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit11~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit11~q\);

-- Location: IOIBUF_X48_Y0_N8
\WRITE[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(10),
	o => \WRITE[10]~input_o\);

-- Location: FF_X51_Y12_N1
bit10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[10]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit10~q\);

-- Location: IOIBUF_X50_Y41_N8
\WRITE[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(9),
	o => \WRITE[9]~input_o\);

-- Location: LCCOMB_X35_Y40_N2
\bit9~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit9~feeder_combout\ = \WRITE[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[9]~input_o\,
	combout => \bit9~feeder_combout\);

-- Location: FF_X35_Y40_N3
bit9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit9~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit9~q\);

-- Location: IOIBUF_X48_Y0_N1
\WRITE[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(8),
	o => \WRITE[8]~input_o\);

-- Location: FF_X51_Y12_N19
bit8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[8]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit8~q\);

-- Location: IOIBUF_X27_Y41_N1
\WRITE[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(7),
	o => \WRITE[7]~input_o\);

-- Location: FF_X35_Y40_N5
bit7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[7]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit7~q\);

-- Location: IOIBUF_X27_Y41_N8
\WRITE[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(6),
	o => \WRITE[6]~input_o\);

-- Location: FF_X35_Y40_N31
bit6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[6]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit6~q\);

-- Location: IOIBUF_X43_Y0_N8
\WRITE[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(5),
	o => \WRITE[5]~input_o\);

-- Location: FF_X51_Y12_N13
bit5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WRITE[5]~input_o\,
	sload => VCC,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit5~q\);

-- Location: IOIBUF_X38_Y41_N8
\WRITE[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(4),
	o => \WRITE[4]~input_o\);

-- Location: LCCOMB_X35_Y40_N0
\bit4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit4~feeder_combout\ = \WRITE[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[4]~input_o\,
	combout => \bit4~feeder_combout\);

-- Location: FF_X35_Y40_N1
bit4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit4~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit4~q\);

-- Location: IOIBUF_X38_Y41_N1
\WRITE[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(3),
	o => \WRITE[3]~input_o\);

-- Location: LCCOMB_X35_Y40_N10
\bit3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit3~feeder_combout\ = \WRITE[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[3]~input_o\,
	combout => \bit3~feeder_combout\);

-- Location: FF_X35_Y40_N11
bit3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit3~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit3~q\);

-- Location: IOIBUF_X31_Y41_N22
\WRITE[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(2),
	o => \WRITE[2]~input_o\);

-- Location: LCCOMB_X35_Y40_N12
\bit2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit2~feeder_combout\ = \WRITE[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[2]~input_o\,
	combout => \bit2~feeder_combout\);

-- Location: FF_X35_Y40_N13
bit2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit2~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit2~q\);

-- Location: IOIBUF_X41_Y41_N8
\WRITE[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(1),
	o => \WRITE[1]~input_o\);

-- Location: LCCOMB_X35_Y40_N14
\bit1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit1~feeder_combout\ = \WRITE[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[1]~input_o\,
	combout => \bit1~feeder_combout\);

-- Location: FF_X35_Y40_N15
bit1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit1~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit1~q\);

-- Location: IOIBUF_X52_Y19_N1
\WRITE[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WRITE(0),
	o => \WRITE[0]~input_o\);

-- Location: LCCOMB_X51_Y12_N6
\bit0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit0~feeder_combout\ = \WRITE[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WRITE[0]~input_o\,
	combout => \bit0~feeder_combout\);

-- Location: FF_X51_Y12_N7
bit0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bit0~feeder_combout\,
	ena => \W_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit0~q\);

ww_READ(31) <= \READ[31]~output_o\;

ww_READ(30) <= \READ[30]~output_o\;

ww_READ(29) <= \READ[29]~output_o\;

ww_READ(28) <= \READ[28]~output_o\;

ww_READ(27) <= \READ[27]~output_o\;

ww_READ(26) <= \READ[26]~output_o\;

ww_READ(25) <= \READ[25]~output_o\;

ww_READ(24) <= \READ[24]~output_o\;

ww_READ(23) <= \READ[23]~output_o\;

ww_READ(22) <= \READ[22]~output_o\;

ww_READ(21) <= \READ[21]~output_o\;

ww_READ(20) <= \READ[20]~output_o\;

ww_READ(19) <= \READ[19]~output_o\;

ww_READ(18) <= \READ[18]~output_o\;

ww_READ(17) <= \READ[17]~output_o\;

ww_READ(16) <= \READ[16]~output_o\;

ww_READ(15) <= \READ[15]~output_o\;

ww_READ(14) <= \READ[14]~output_o\;

ww_READ(13) <= \READ[13]~output_o\;

ww_READ(12) <= \READ[12]~output_o\;

ww_READ(11) <= \READ[11]~output_o\;

ww_READ(10) <= \READ[10]~output_o\;

ww_READ(9) <= \READ[9]~output_o\;

ww_READ(8) <= \READ[8]~output_o\;

ww_READ(7) <= \READ[7]~output_o\;

ww_READ(6) <= \READ[6]~output_o\;

ww_READ(5) <= \READ[5]~output_o\;

ww_READ(4) <= \READ[4]~output_o\;

ww_READ(3) <= \READ[3]~output_o\;

ww_READ(2) <= \READ[2]~output_o\;

ww_READ(1) <= \READ[1]~output_o\;

ww_READ(0) <= \READ[0]~output_o\;
END structure;


