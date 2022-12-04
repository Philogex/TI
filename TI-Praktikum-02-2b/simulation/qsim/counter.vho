-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/04/2022 00:37:07"

-- 
-- Device: Altera 10M02DCU324C8G Package UFBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_J7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_J8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_H3,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_H8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	switches : IN std_logic_vector(3 DOWNTO 0);
	cnt_enable : IN std_logic;
	ofl_rd : IN std_logic;
	cnt_rd : IN std_logic;
	cnt_val_act : OUT std_logic_vector(3 DOWNTO 0);
	cnt_val_stored_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter;

-- Design Ports Information
-- cnt_val_act[0]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- cnt_val_act[1]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- cnt_val_act[2]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- cnt_val_act[3]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- cnt_val_stored_out[0]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- cnt_val_stored_out[1]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- cnt_val_stored_out[2]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- cnt_val_stored_out[3]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clk	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- cnt_enable	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- cnt_rd	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ofl_rd	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_switches : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cnt_enable : std_logic;
SIGNAL ww_ofl_rd : std_logic;
SIGNAL ww_cnt_rd : std_logic;
SIGNAL ww_cnt_val_act : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cnt_val_stored_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \cnt_val_act[0]~output_o\ : std_logic;
SIGNAL \cnt_val_act[1]~output_o\ : std_logic;
SIGNAL \cnt_val_act[2]~output_o\ : std_logic;
SIGNAL \cnt_val_act[3]~output_o\ : std_logic;
SIGNAL \cnt_val_stored_out[0]~output_o\ : std_logic;
SIGNAL \cnt_val_stored_out[1]~output_o\ : std_logic;
SIGNAL \cnt_val_stored_out[2]~output_o\ : std_logic;
SIGNAL \cnt_val_stored_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \ofl_val[0]~1_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \ofl_rd~input_o\ : std_logic;
SIGNAL \ofl_val[3]~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \ofl_val[2]~3_combout\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \ofl_val[3]~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \intern_counter_ofl~2_combout\ : std_logic;
SIGNAL \cnt_enable~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \intern_counter_ofl~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \intern_counter_ofl~1_combout\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \ofl_val[1]~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \intern_counter_ofl~0_combout\ : std_logic;
SIGNAL \intern_counter_async[0]~feeder_combout\ : std_logic;
SIGNAL \cnt_rd~input_o\ : std_logic;
SIGNAL \intern_counter_async[0]~0_combout\ : std_logic;
SIGNAL \intern_counter_async[1]~feeder_combout\ : std_logic;
SIGNAL \intern_counter_async[2]~feeder_combout\ : std_logic;
SIGNAL \intern_counter_async[3]~feeder_combout\ : std_logic;
SIGNAL intern_counter_ofl : std_logic_vector(3 DOWNTO 0);
SIGNAL intern_counter_async : std_logic_vector(3 DOWNTO 0);
SIGNAL ofl_val : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_switches <= switches;
ww_cnt_enable <= cnt_enable;
ww_ofl_rd <= ofl_rd;
ww_cnt_rd <= cnt_rd;
cnt_val_act <= ww_cnt_val_act;
cnt_val_stored_out <= ww_cnt_val_stored_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X16_Y0_N23
\cnt_val_act[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intern_counter_ofl(0),
	devoe => ww_devoe,
	o => \cnt_val_act[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\cnt_val_act[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intern_counter_ofl(1),
	devoe => ww_devoe,
	o => \cnt_val_act[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\cnt_val_act[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intern_counter_ofl(2),
	devoe => ww_devoe,
	o => \cnt_val_act[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\cnt_val_act[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intern_counter_ofl(3),
	devoe => ww_devoe,
	o => \cnt_val_act[3]~output_o\);

-- Location: IOOBUF_X18_Y1_N16
\cnt_val_stored_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intern_counter_async(0),
	devoe => ww_devoe,
	o => \cnt_val_stored_out[0]~output_o\);

-- Location: IOOBUF_X18_Y2_N16
\cnt_val_stored_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intern_counter_async(1),
	devoe => ww_devoe,
	o => \cnt_val_stored_out[1]~output_o\);

-- Location: IOOBUF_X18_Y2_N9
\cnt_val_stored_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intern_counter_async(2),
	devoe => ww_devoe,
	o => \cnt_val_stored_out[2]~output_o\);

-- Location: IOOBUF_X18_Y5_N16
\cnt_val_stored_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intern_counter_async(3),
	devoe => ww_devoe,
	o => \cnt_val_stored_out[3]~output_o\);

-- Location: IOIBUF_X0_Y5_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N1
\switches[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

-- Location: LCCOMB_X11_Y2_N28
\ofl_val[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ofl_val[0]~1_combout\ = !\switches[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switches[0]~input_o\,
	combout => \ofl_val[0]~1_combout\);

-- Location: IOIBUF_X11_Y0_N1
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X18_Y1_N8
\ofl_rd~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ofl_rd,
	o => \ofl_rd~input_o\);

-- Location: LCCOMB_X11_Y2_N20
\ofl_val[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ofl_val[3]~0_combout\ = (!\reset_n~input_o\ & \ofl_rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \ofl_rd~input_o\,
	combout => \ofl_val[3]~0_combout\);

-- Location: FF_X11_Y2_N29
\ofl_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ofl_val[0]~1_combout\,
	ena => \ofl_val[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ofl_val(0));

-- Location: LCCOMB_X11_Y2_N26
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = intern_counter_ofl(2) $ (((intern_counter_ofl(1) & intern_counter_ofl(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => intern_counter_ofl(1),
	datac => intern_counter_ofl(2),
	datad => intern_counter_ofl(0),
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X14_Y0_N8
\switches[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

-- Location: LCCOMB_X11_Y2_N12
\ofl_val[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ofl_val[2]~3_combout\ = !\switches[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switches[2]~input_o\,
	combout => \ofl_val[2]~3_combout\);

-- Location: FF_X11_Y2_N13
\ofl_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ofl_val[2]~3_combout\,
	ena => \ofl_val[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ofl_val(2));

-- Location: IOIBUF_X14_Y0_N29
\switches[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

-- Location: LCCOMB_X11_Y2_N2
\ofl_val[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ofl_val[3]~4_combout\ = !\switches[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switches[3]~input_o\,
	combout => \ofl_val[3]~4_combout\);

-- Location: FF_X11_Y2_N3
\ofl_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ofl_val[3]~4_combout\,
	ena => \ofl_val[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ofl_val(3));

-- Location: LCCOMB_X11_Y2_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (ofl_val(2) & (!intern_counter_ofl(2) & (ofl_val(3) $ (intern_counter_ofl(3))))) # (!ofl_val(2) & (intern_counter_ofl(2) & (ofl_val(3) $ (intern_counter_ofl(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ofl_val(2),
	datab => ofl_val(3),
	datac => intern_counter_ofl(3),
	datad => intern_counter_ofl(2),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y2_N8
\intern_counter_ofl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_ofl~2_combout\ = (\Add0~1_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~1_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \intern_counter_ofl~2_combout\);

-- Location: IOIBUF_X0_Y2_N1
\cnt_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt_enable,
	o => \cnt_enable~input_o\);

-- Location: FF_X11_Y2_N9
\intern_counter_ofl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intern_counter_ofl~2_combout\,
	clrn => \ALT_INV_reset_n~input_o\,
	ena => \cnt_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intern_counter_ofl(2));

-- Location: LCCOMB_X11_Y2_N16
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = intern_counter_ofl(3) $ (((intern_counter_ofl(0) & (intern_counter_ofl(2) & intern_counter_ofl(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intern_counter_ofl(3),
	datab => intern_counter_ofl(0),
	datac => intern_counter_ofl(2),
	datad => intern_counter_ofl(1),
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X11_Y2_N22
\intern_counter_ofl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_ofl~3_combout\ = (\Add0~2_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Add0~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \intern_counter_ofl~3_combout\);

-- Location: FF_X11_Y2_N23
\intern_counter_ofl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intern_counter_ofl~3_combout\,
	clrn => \ALT_INV_reset_n~input_o\,
	ena => \cnt_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intern_counter_ofl(3));

-- Location: LCCOMB_X11_Y2_N10
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (intern_counter_ofl(3) & (!ofl_val(3) & (!intern_counter_ofl(2) & !ofl_val(2)))) # (!intern_counter_ofl(3) & (((!intern_counter_ofl(2) & !ofl_val(2))) # (!ofl_val(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intern_counter_ofl(3),
	datab => ofl_val(3),
	datac => intern_counter_ofl(2),
	datad => ofl_val(2),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y2_N4
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = intern_counter_ofl(0) $ (intern_counter_ofl(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => intern_counter_ofl(0),
	datad => intern_counter_ofl(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X11_Y2_N18
\intern_counter_ofl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_ofl~1_combout\ = (\Add0~0_combout\ & ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \intern_counter_ofl~1_combout\);

-- Location: FF_X11_Y2_N19
\intern_counter_ofl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intern_counter_ofl~1_combout\,
	clrn => \ALT_INV_reset_n~input_o\,
	ena => \cnt_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intern_counter_ofl(1));

-- Location: IOIBUF_X16_Y0_N8
\switches[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

-- Location: LCCOMB_X11_Y2_N6
\ofl_val[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ofl_val[1]~2_combout\ = !\switches[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switches[1]~input_o\,
	combout => \ofl_val[1]~2_combout\);

-- Location: FF_X11_Y2_N31
\ofl_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ofl_val[1]~2_combout\,
	sload => VCC,
	ena => \ofl_val[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ofl_val(1));

-- Location: LCCOMB_X11_Y2_N30
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (intern_counter_ofl(1) & (!ofl_val(0) & (!ofl_val(1) & !intern_counter_ofl(0)))) # (!intern_counter_ofl(1) & (((!ofl_val(0) & !intern_counter_ofl(0))) # (!ofl_val(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ofl_val(0),
	datab => intern_counter_ofl(1),
	datac => ofl_val(1),
	datad => intern_counter_ofl(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y2_N24
\intern_counter_ofl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_ofl~0_combout\ = ((!\LessThan0~2_combout\ & ((!\LessThan0~1_combout\) # (!\LessThan0~0_combout\)))) # (!intern_counter_ofl(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => intern_counter_ofl(0),
	datad => \LessThan0~2_combout\,
	combout => \intern_counter_ofl~0_combout\);

-- Location: FF_X11_Y2_N25
\intern_counter_ofl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intern_counter_ofl~0_combout\,
	clrn => \ALT_INV_reset_n~input_o\,
	ena => \cnt_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intern_counter_ofl(0));

-- Location: LCCOMB_X12_Y2_N8
\intern_counter_async[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_async[0]~feeder_combout\ = intern_counter_ofl(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern_counter_ofl(0),
	combout => \intern_counter_async[0]~feeder_combout\);

-- Location: IOIBUF_X18_Y1_N1
\cnt_rd~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cnt_rd,
	o => \cnt_rd~input_o\);

-- Location: LCCOMB_X11_Y2_N14
\intern_counter_async[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_async[0]~0_combout\ = (!\reset_n~input_o\ & \cnt_rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \cnt_rd~input_o\,
	combout => \intern_counter_async[0]~0_combout\);

-- Location: FF_X12_Y2_N9
\intern_counter_async[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intern_counter_async[0]~feeder_combout\,
	ena => \intern_counter_async[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intern_counter_async(0));

-- Location: LCCOMB_X12_Y2_N10
\intern_counter_async[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_async[1]~feeder_combout\ = intern_counter_ofl(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern_counter_ofl(1),
	combout => \intern_counter_async[1]~feeder_combout\);

-- Location: FF_X12_Y2_N11
\intern_counter_async[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intern_counter_async[1]~feeder_combout\,
	ena => \intern_counter_async[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intern_counter_async(1));

-- Location: LCCOMB_X12_Y2_N0
\intern_counter_async[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_async[2]~feeder_combout\ = intern_counter_ofl(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern_counter_ofl(2),
	combout => \intern_counter_async[2]~feeder_combout\);

-- Location: FF_X12_Y2_N1
\intern_counter_async[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intern_counter_async[2]~feeder_combout\,
	ena => \intern_counter_async[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intern_counter_async(2));

-- Location: LCCOMB_X12_Y2_N2
\intern_counter_async[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \intern_counter_async[3]~feeder_combout\ = intern_counter_ofl(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => intern_counter_ofl(3),
	combout => \intern_counter_async[3]~feeder_combout\);

-- Location: FF_X12_Y2_N3
\intern_counter_async[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intern_counter_async[3]~feeder_combout\,
	ena => \intern_counter_async[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intern_counter_async(3));

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_cnt_val_act(0) <= \cnt_val_act[0]~output_o\;

ww_cnt_val_act(1) <= \cnt_val_act[1]~output_o\;

ww_cnt_val_act(2) <= \cnt_val_act[2]~output_o\;

ww_cnt_val_act(3) <= \cnt_val_act[3]~output_o\;

ww_cnt_val_stored_out(0) <= \cnt_val_stored_out[0]~output_o\;

ww_cnt_val_stored_out(1) <= \cnt_val_stored_out[1]~output_o\;

ww_cnt_val_stored_out(2) <= \cnt_val_stored_out[2]~output_o\;

ww_cnt_val_stored_out(3) <= \cnt_val_stored_out[3]~output_o\;
END structure;


