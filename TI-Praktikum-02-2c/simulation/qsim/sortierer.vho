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

-- DATE "12/04/2022 05:29:32"

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

ENTITY 	sortierer IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	oe_in : IN std_logic;
	opt_sens : IN std_logic;
	ind_sens : IN std_logic;
	oe_n_out : OUT std_logic;
	weiche_out : OUT std_logic;
	motor_pwr_out : OUT std_logic;
	motor_dir_out : OUT std_logic;
	timer : OUT std_logic_vector(4 DOWNTO 0)
	);
END sortierer;

-- Design Ports Information
-- oe_n_out	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- weiche_out	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- motor_pwr_out	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- motor_dir_out	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- timer[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- timer[1]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- timer[2]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- timer[3]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- timer[4]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oe_in	=>  Location: PIN_U1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- clk	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- reset	=>  Location: PIN_T16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ind_sens	=>  Location: PIN_N3,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- opt_sens	=>  Location: PIN_N4,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF sortierer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_oe_in : std_logic;
SIGNAL ww_opt_sens : std_logic;
SIGNAL ww_ind_sens : std_logic;
SIGNAL ww_oe_n_out : std_logic;
SIGNAL ww_weiche_out : std_logic;
SIGNAL ww_motor_pwr_out : std_logic;
SIGNAL ww_motor_dir_out : std_logic;
SIGNAL ww_timer : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \oe_n_out~output_o\ : std_logic;
SIGNAL \weiche_out~output_o\ : std_logic;
SIGNAL \motor_pwr_out~output_o\ : std_logic;
SIGNAL \motor_dir_out~output_o\ : std_logic;
SIGNAL \timer[0]~output_o\ : std_logic;
SIGNAL \timer[1]~output_o\ : std_logic;
SIGNAL \timer[2]~output_o\ : std_logic;
SIGNAL \timer[3]~output_o\ : std_logic;
SIGNAL \timer[4]~output_o\ : std_logic;
SIGNAL \oe_in~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \time_s[0]~5_combout\ : std_logic;
SIGNAL \opt_sens~input_o\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \ind_sens~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \next_main_state.resetting~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \next_main_state.resetting~q\ : std_logic;
SIGNAL \main_state.resetting~0_combout\ : std_logic;
SIGNAL \main_state.resetting~q\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \next_main_state.motorFWD_weicheK~q\ : std_logic;
SIGNAL \main_state.motorFWD_weicheK~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \next_main_state.idle~q\ : std_logic;
SIGNAL \main_state.idle~0_combout\ : std_logic;
SIGNAL \main_state.idle~q\ : std_logic;
SIGNAL \cnt[0]~21_combout\ : std_logic;
SIGNAL \cnt[0]~22\ : std_logic;
SIGNAL \cnt[1]~23_combout\ : std_logic;
SIGNAL \cnt[1]~24\ : std_logic;
SIGNAL \cnt[2]~25_combout\ : std_logic;
SIGNAL \cnt[2]~26\ : std_logic;
SIGNAL \cnt[3]~27_combout\ : std_logic;
SIGNAL \cnt[3]~28\ : std_logic;
SIGNAL \cnt[4]~29_combout\ : std_logic;
SIGNAL \cnt[4]~30\ : std_logic;
SIGNAL \cnt[5]~31_combout\ : std_logic;
SIGNAL \cnt[5]~32\ : std_logic;
SIGNAL \cnt[6]~33_combout\ : std_logic;
SIGNAL \cnt[6]~34\ : std_logic;
SIGNAL \cnt[7]~35_combout\ : std_logic;
SIGNAL \cnt[7]~36\ : std_logic;
SIGNAL \cnt[8]~37_combout\ : std_logic;
SIGNAL \cnt[8]~38\ : std_logic;
SIGNAL \cnt[9]~39_combout\ : std_logic;
SIGNAL \cnt[9]~40\ : std_logic;
SIGNAL \cnt[10]~41_combout\ : std_logic;
SIGNAL \cnt[10]~feeder_combout\ : std_logic;
SIGNAL \cnt[10]~42\ : std_logic;
SIGNAL \cnt[11]~43_combout\ : std_logic;
SIGNAL \cnt[11]~44\ : std_logic;
SIGNAL \cnt[12]~45_combout\ : std_logic;
SIGNAL \cnt[12]~46\ : std_logic;
SIGNAL \cnt[13]~47_combout\ : std_logic;
SIGNAL \cnt[13]~48\ : std_logic;
SIGNAL \cnt[14]~49_combout\ : std_logic;
SIGNAL \cnt[14]~50\ : std_logic;
SIGNAL \cnt[15]~51_combout\ : std_logic;
SIGNAL \cnt[15]~52\ : std_logic;
SIGNAL \cnt[16]~53_combout\ : std_logic;
SIGNAL \cnt[16]~54\ : std_logic;
SIGNAL \cnt[17]~55_combout\ : std_logic;
SIGNAL \cnt[17]~56\ : std_logic;
SIGNAL \cnt[18]~57_combout\ : std_logic;
SIGNAL \cnt[18]~58\ : std_logic;
SIGNAL \cnt[19]~59_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \cnt[19]~60\ : std_logic;
SIGNAL \cnt[20]~61_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \time_s[0]~7_combout\ : std_logic;
SIGNAL \time_s[0]~8_combout\ : std_logic;
SIGNAL \time_s[0]~6\ : std_logic;
SIGNAL \time_s[1]~9_combout\ : std_logic;
SIGNAL \time_s[1]~10\ : std_logic;
SIGNAL \time_s[2]~11_combout\ : std_logic;
SIGNAL \time_s[2]~12\ : std_logic;
SIGNAL \time_s[3]~13_combout\ : std_logic;
SIGNAL \time_s[3]~14\ : std_logic;
SIGNAL \time_s[4]~15_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \next_main_state.motorFWD_weicheM~q\ : std_logic;
SIGNAL \main_state.motorFWD_weicheM~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \weiche~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \motor_pwr~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \motor_dir~q\ : std_logic;
SIGNAL time_s : std_logic_vector(4 DOWNTO 0);
SIGNAL cnt : std_logic_vector(20 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_oe_in~input_o\ : std_logic;
SIGNAL \ALT_INV_main_state.idle~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_oe_in <= oe_in;
ww_opt_sens <= opt_sens;
ww_ind_sens <= ind_sens;
oe_n_out <= ww_oe_n_out;
weiche_out <= ww_weiche_out;
motor_pwr_out <= ww_motor_pwr_out;
motor_dir_out <= ww_motor_dir_out;
timer <= ww_timer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_oe_in~input_o\ <= NOT \oe_in~input_o\;
\ALT_INV_main_state.idle~q\ <= NOT \main_state.idle~q\;
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

-- Location: IOOBUF_X0_Y2_N23
\oe_n_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_oe_in~input_o\,
	devoe => ww_devoe,
	o => \oe_n_out~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\weiche_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \weiche~q\,
	devoe => ww_devoe,
	o => \weiche_out~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\motor_pwr_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_pwr~q\,
	devoe => ww_devoe,
	o => \motor_pwr_out~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\motor_dir_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_dir~q\,
	devoe => ww_devoe,
	o => \motor_dir_out~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\timer[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => time_s(0),
	devoe => ww_devoe,
	o => \timer[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\timer[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => time_s(1),
	devoe => ww_devoe,
	o => \timer[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\timer[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => time_s(2),
	devoe => ww_devoe,
	o => \timer[2]~output_o\);

-- Location: IOOBUF_X1_Y7_N9
\timer[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => time_s(3),
	devoe => ww_devoe,
	o => \timer[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\timer[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => time_s(4),
	devoe => ww_devoe,
	o => \timer[4]~output_o\);

-- Location: IOIBUF_X0_Y2_N1
\oe_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oe_in,
	o => \oe_in~input_o\);

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

-- Location: LCCOMB_X2_Y3_N16
\time_s[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_s[0]~5_combout\ = time_s(0) $ (VCC)
-- \time_s[0]~6\ = CARRY(time_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => time_s(0),
	datad => VCC,
	combout => \time_s[0]~5_combout\,
	cout => \time_s[0]~6\);

-- Location: IOIBUF_X0_Y2_N15
\opt_sens~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opt_sens,
	o => \opt_sens~input_o\);

-- Location: LCCOMB_X1_Y3_N30
\Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\opt_sens~input_o\ & !\main_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opt_sens~input_o\,
	datad => \main_state.idle~q\,
	combout => \Selector6~2_combout\);

-- Location: IOIBUF_X0_Y3_N22
\ind_sens~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ind_sens,
	o => \ind_sens~input_o\);

-- Location: LCCOMB_X1_Y3_N14
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\main_state.motorFWD_weicheK~q\ & ((\ind_sens~input_o\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ind_sens~input_o\,
	datac => \main_state.motorFWD_weicheK~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X1_Y3_N8
\next_main_state.resetting~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_main_state.resetting~0_combout\ = (\next_main_state.resetting~q\) # (\Selector6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_main_state.resetting~q\,
	datad => \Selector6~3_combout\,
	combout => \next_main_state.resetting~0_combout\);

-- Location: IOIBUF_X18_Y1_N8
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y3_N9
\next_main_state.resetting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_main_state.resetting~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_main_state.resetting~q\);

-- Location: LCCOMB_X1_Y3_N28
\main_state.resetting~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \main_state.resetting~0_combout\ = !\next_main_state.resetting~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_main_state.resetting~q\,
	combout => \main_state.resetting~0_combout\);

-- Location: FF_X1_Y3_N29
\main_state.resetting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_state.resetting~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.resetting~q\);

-- Location: LCCOMB_X1_Y3_N18
\Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\main_state.motorFWD_weicheM~q\) # (\main_state.resetting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_state.motorFWD_weicheM~q\,
	datad => \main_state.resetting~q\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X1_Y3_N24
\Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = \Selector6~2_combout\ $ (\Selector6~0_combout\ $ (((\Selector6~1_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~2_combout\,
	datab => \Selector6~1_combout\,
	datac => \Selector6~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X1_Y3_N6
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector6~3_combout\ & (\Selector6~2_combout\ & (!\Selector6~0_combout\))) # (!\Selector6~3_combout\ & (((\next_main_state.motorFWD_weicheK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~2_combout\,
	datab => \Selector6~0_combout\,
	datac => \next_main_state.motorFWD_weicheK~q\,
	datad => \Selector6~3_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X1_Y3_N7
\next_main_state.motorFWD_weicheK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_main_state.motorFWD_weicheK~q\);

-- Location: FF_X1_Y3_N15
\main_state.motorFWD_weicheK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \next_main_state.motorFWD_weicheK~q\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.motorFWD_weicheK~q\);

-- Location: LCCOMB_X1_Y3_N22
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\main_state.motorFWD_weicheK~q\ & ((\LessThan0~0_combout\) # ((!\ind_sens~input_o\ & !\Selector6~2_combout\)))) # (!\main_state.motorFWD_weicheK~q\ & (((!\Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.motorFWD_weicheK~q\,
	datab => \ind_sens~input_o\,
	datac => \Selector6~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y3_N12
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector6~3_combout\ & (\Selector3~0_combout\)) # (!\Selector6~3_combout\ & ((\next_main_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datac => \next_main_state.idle~q\,
	datad => \Selector6~3_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X1_Y3_N13
\next_main_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_main_state.idle~q\);

-- Location: LCCOMB_X1_Y3_N20
\main_state.idle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \main_state.idle~0_combout\ = !\next_main_state.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_main_state.idle~q\,
	combout => \main_state.idle~0_combout\);

-- Location: FF_X1_Y3_N21
\main_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \main_state.idle~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.idle~q\);

-- Location: LCCOMB_X3_Y4_N12
\cnt[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[0]~21_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~22\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datad => VCC,
	combout => \cnt[0]~21_combout\,
	cout => \cnt[0]~22\);

-- Location: FF_X3_Y4_N13
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[0]~21_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X3_Y4_N14
\cnt[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[1]~23_combout\ = (cnt(1) & (!\cnt[0]~22\)) # (!cnt(1) & ((\cnt[0]~22\) # (GND)))
-- \cnt[1]~24\ = CARRY((!\cnt[0]~22\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \cnt[0]~22\,
	combout => \cnt[1]~23_combout\,
	cout => \cnt[1]~24\);

-- Location: FF_X3_Y4_N15
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[1]~23_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X3_Y4_N16
\cnt[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[2]~25_combout\ = (cnt(2) & (\cnt[1]~24\ $ (GND))) # (!cnt(2) & (!\cnt[1]~24\ & VCC))
-- \cnt[2]~26\ = CARRY((cnt(2) & !\cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~24\,
	combout => \cnt[2]~25_combout\,
	cout => \cnt[2]~26\);

-- Location: FF_X3_Y4_N17
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[2]~25_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X3_Y4_N18
\cnt[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[3]~27_combout\ = (cnt(3) & (!\cnt[2]~26\)) # (!cnt(3) & ((\cnt[2]~26\) # (GND)))
-- \cnt[3]~28\ = CARRY((!\cnt[2]~26\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~26\,
	combout => \cnt[3]~27_combout\,
	cout => \cnt[3]~28\);

-- Location: FF_X3_Y4_N19
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[3]~27_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X3_Y4_N20
\cnt[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[4]~29_combout\ = (cnt(4) & (\cnt[3]~28\ $ (GND))) # (!cnt(4) & (!\cnt[3]~28\ & VCC))
-- \cnt[4]~30\ = CARRY((cnt(4) & !\cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~28\,
	combout => \cnt[4]~29_combout\,
	cout => \cnt[4]~30\);

-- Location: FF_X3_Y4_N21
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[4]~29_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X3_Y4_N22
\cnt[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[5]~31_combout\ = (cnt(5) & (!\cnt[4]~30\)) # (!cnt(5) & ((\cnt[4]~30\) # (GND)))
-- \cnt[5]~32\ = CARRY((!\cnt[4]~30\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datad => VCC,
	cin => \cnt[4]~30\,
	combout => \cnt[5]~31_combout\,
	cout => \cnt[5]~32\);

-- Location: FF_X3_Y4_N23
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[5]~31_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X3_Y4_N24
\cnt[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[6]~33_combout\ = (cnt(6) & (\cnt[5]~32\ $ (GND))) # (!cnt(6) & (!\cnt[5]~32\ & VCC))
-- \cnt[6]~34\ = CARRY((cnt(6) & !\cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \cnt[5]~32\,
	combout => \cnt[6]~33_combout\,
	cout => \cnt[6]~34\);

-- Location: FF_X3_Y4_N25
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[6]~33_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X3_Y4_N26
\cnt[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[7]~35_combout\ = (cnt(7) & (!\cnt[6]~34\)) # (!cnt(7) & ((\cnt[6]~34\) # (GND)))
-- \cnt[7]~36\ = CARRY((!\cnt[6]~34\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datad => VCC,
	cin => \cnt[6]~34\,
	combout => \cnt[7]~35_combout\,
	cout => \cnt[7]~36\);

-- Location: FF_X3_Y4_N27
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[7]~35_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X3_Y4_N28
\cnt[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[8]~37_combout\ = (cnt(8) & (\cnt[7]~36\ $ (GND))) # (!cnt(8) & (!\cnt[7]~36\ & VCC))
-- \cnt[8]~38\ = CARRY((cnt(8) & !\cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \cnt[7]~36\,
	combout => \cnt[8]~37_combout\,
	cout => \cnt[8]~38\);

-- Location: FF_X3_Y4_N29
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[8]~37_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X3_Y4_N30
\cnt[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[9]~39_combout\ = (cnt(9) & (!\cnt[8]~38\)) # (!cnt(9) & ((\cnt[8]~38\) # (GND)))
-- \cnt[9]~40\ = CARRY((!\cnt[8]~38\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datad => VCC,
	cin => \cnt[8]~38\,
	combout => \cnt[9]~39_combout\,
	cout => \cnt[9]~40\);

-- Location: FF_X3_Y4_N31
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[9]~39_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X3_Y3_N0
\cnt[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[10]~41_combout\ = (cnt(10) & (\cnt[9]~40\ $ (GND))) # (!cnt(10) & (!\cnt[9]~40\ & VCC))
-- \cnt[10]~42\ = CARRY((cnt(10) & !\cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \cnt[9]~40\,
	combout => \cnt[10]~41_combout\,
	cout => \cnt[10]~42\);

-- Location: LCCOMB_X3_Y4_N4
\cnt[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[10]~feeder_combout\ = \cnt[10]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cnt[10]~41_combout\,
	combout => \cnt[10]~feeder_combout\);

-- Location: FF_X3_Y4_N5
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[10]~feeder_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X3_Y3_N2
\cnt[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[11]~43_combout\ = (cnt(11) & (!\cnt[10]~42\)) # (!cnt(11) & ((\cnt[10]~42\) # (GND)))
-- \cnt[11]~44\ = CARRY((!\cnt[10]~42\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \cnt[10]~42\,
	combout => \cnt[11]~43_combout\,
	cout => \cnt[11]~44\);

-- Location: FF_X2_Y4_N21
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cnt[11]~43_combout\,
	sclr => \time_s[0]~7_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X3_Y3_N4
\cnt[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[12]~45_combout\ = (cnt(12) & (\cnt[11]~44\ $ (GND))) # (!cnt(12) & (!\cnt[11]~44\ & VCC))
-- \cnt[12]~46\ = CARRY((cnt(12) & !\cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(12),
	datad => VCC,
	cin => \cnt[11]~44\,
	combout => \cnt[12]~45_combout\,
	cout => \cnt[12]~46\);

-- Location: FF_X3_Y3_N5
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[12]~45_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X3_Y3_N6
\cnt[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[13]~47_combout\ = (cnt(13) & (!\cnt[12]~46\)) # (!cnt(13) & ((\cnt[12]~46\) # (GND)))
-- \cnt[13]~48\ = CARRY((!\cnt[12]~46\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => VCC,
	cin => \cnt[12]~46\,
	combout => \cnt[13]~47_combout\,
	cout => \cnt[13]~48\);

-- Location: FF_X3_Y3_N7
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[13]~47_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X3_Y3_N8
\cnt[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[14]~49_combout\ = (cnt(14) & (\cnt[13]~48\ $ (GND))) # (!cnt(14) & (!\cnt[13]~48\ & VCC))
-- \cnt[14]~50\ = CARRY((cnt(14) & !\cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(14),
	datad => VCC,
	cin => \cnt[13]~48\,
	combout => \cnt[14]~49_combout\,
	cout => \cnt[14]~50\);

-- Location: FF_X3_Y3_N9
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[14]~49_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X3_Y3_N10
\cnt[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[15]~51_combout\ = (cnt(15) & (!\cnt[14]~50\)) # (!cnt(15) & ((\cnt[14]~50\) # (GND)))
-- \cnt[15]~52\ = CARRY((!\cnt[14]~50\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(15),
	datad => VCC,
	cin => \cnt[14]~50\,
	combout => \cnt[15]~51_combout\,
	cout => \cnt[15]~52\);

-- Location: FF_X3_Y3_N11
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[15]~51_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X3_Y3_N12
\cnt[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[16]~53_combout\ = (cnt(16) & (\cnt[15]~52\ $ (GND))) # (!cnt(16) & (!\cnt[15]~52\ & VCC))
-- \cnt[16]~54\ = CARRY((cnt(16) & !\cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datad => VCC,
	cin => \cnt[15]~52\,
	combout => \cnt[16]~53_combout\,
	cout => \cnt[16]~54\);

-- Location: FF_X3_Y3_N13
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[16]~53_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X3_Y3_N14
\cnt[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[17]~55_combout\ = (cnt(17) & (!\cnt[16]~54\)) # (!cnt(17) & ((\cnt[16]~54\) # (GND)))
-- \cnt[17]~56\ = CARRY((!\cnt[16]~54\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \cnt[16]~54\,
	combout => \cnt[17]~55_combout\,
	cout => \cnt[17]~56\);

-- Location: FF_X3_Y3_N15
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[17]~55_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X3_Y3_N16
\cnt[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[18]~57_combout\ = (cnt(18) & (\cnt[17]~56\ $ (GND))) # (!cnt(18) & (!\cnt[17]~56\ & VCC))
-- \cnt[18]~58\ = CARRY((cnt(18) & !\cnt[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \cnt[17]~56\,
	combout => \cnt[18]~57_combout\,
	cout => \cnt[18]~58\);

-- Location: FF_X3_Y3_N17
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[18]~57_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X3_Y3_N18
\cnt[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[19]~59_combout\ = (cnt(19) & (!\cnt[18]~58\)) # (!cnt(19) & ((\cnt[18]~58\) # (GND)))
-- \cnt[19]~60\ = CARRY((!\cnt[18]~58\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \cnt[18]~58\,
	combout => \cnt[19]~59_combout\,
	cout => \cnt[19]~60\);

-- Location: FF_X3_Y3_N19
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[19]~59_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LCCOMB_X3_Y3_N28
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (cnt(16)) # ((cnt(19)) # ((cnt(17)) # (cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datab => cnt(19),
	datac => cnt(17),
	datad => cnt(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X3_Y3_N20
\cnt[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[20]~61_combout\ = \cnt[19]~60\ $ (!cnt(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(20),
	cin => \cnt[19]~60\,
	combout => \cnt[20]~61_combout\);

-- Location: FF_X3_Y3_N21
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[20]~61_combout\,
	sclr => \time_s[0]~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LCCOMB_X3_Y4_N10
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt(0)) # (((cnt(2)) # (!cnt(1))) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(3),
	datac => cnt(1),
	datad => cnt(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X3_Y4_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (cnt(7)) # ((cnt(6)) # ((cnt(5)) # (cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datab => cnt(6),
	datac => cnt(5),
	datad => cnt(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X3_Y4_N2
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (cnt(9)) # ((cnt(8)) # ((cnt(10)) # (cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datab => cnt(8),
	datac => cnt(10),
	datad => cnt(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X3_Y3_N26
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (cnt(15)) # ((cnt(12)) # ((cnt(14)) # (cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datab => cnt(12),
	datac => cnt(14),
	datad => cnt(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X3_Y4_N8
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~1_combout\) # ((\Equal0~2_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X3_Y3_N22
\time_s[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_s[0]~7_combout\ = ((!\Equal0~5_combout\ & (!cnt(20) & !\Equal0~4_combout\))) # (!\main_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => cnt(20),
	datac => \main_state.idle~q\,
	datad => \Equal0~4_combout\,
	combout => \time_s[0]~7_combout\);

-- Location: LCCOMB_X2_Y3_N28
\time_s[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_s[0]~8_combout\ = (!\reset~input_o\ & \time_s[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \time_s[0]~7_combout\,
	combout => \time_s[0]~8_combout\);

-- Location: FF_X2_Y3_N17
\time_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_s[0]~5_combout\,
	sclr => \ALT_INV_main_state.idle~q\,
	ena => \time_s[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_s(0));

-- Location: LCCOMB_X2_Y3_N18
\time_s[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_s[1]~9_combout\ = (time_s(1) & (!\time_s[0]~6\)) # (!time_s(1) & ((\time_s[0]~6\) # (GND)))
-- \time_s[1]~10\ = CARRY((!\time_s[0]~6\) # (!time_s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_s(1),
	datad => VCC,
	cin => \time_s[0]~6\,
	combout => \time_s[1]~9_combout\,
	cout => \time_s[1]~10\);

-- Location: FF_X2_Y3_N19
\time_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_s[1]~9_combout\,
	sclr => \ALT_INV_main_state.idle~q\,
	ena => \time_s[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_s(1));

-- Location: LCCOMB_X2_Y3_N20
\time_s[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_s[2]~11_combout\ = (time_s(2) & (\time_s[1]~10\ $ (GND))) # (!time_s(2) & (!\time_s[1]~10\ & VCC))
-- \time_s[2]~12\ = CARRY((time_s(2) & !\time_s[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_s(2),
	datad => VCC,
	cin => \time_s[1]~10\,
	combout => \time_s[2]~11_combout\,
	cout => \time_s[2]~12\);

-- Location: FF_X2_Y3_N21
\time_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_s[2]~11_combout\,
	sclr => \ALT_INV_main_state.idle~q\,
	ena => \time_s[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_s(2));

-- Location: LCCOMB_X2_Y3_N22
\time_s[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_s[3]~13_combout\ = (time_s(3) & (!\time_s[2]~12\)) # (!time_s(3) & ((\time_s[2]~12\) # (GND)))
-- \time_s[3]~14\ = CARRY((!\time_s[2]~12\) # (!time_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_s(3),
	datad => VCC,
	cin => \time_s[2]~12\,
	combout => \time_s[3]~13_combout\,
	cout => \time_s[3]~14\);

-- Location: FF_X2_Y3_N23
\time_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_s[3]~13_combout\,
	sclr => \ALT_INV_main_state.idle~q\,
	ena => \time_s[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_s(3));

-- Location: LCCOMB_X2_Y3_N24
\time_s[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \time_s[4]~15_combout\ = \time_s[3]~14\ $ (!time_s(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => time_s(4),
	cin => \time_s[3]~14\,
	combout => \time_s[4]~15_combout\);

-- Location: FF_X2_Y3_N25
\time_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \time_s[4]~15_combout\,
	sclr => \ALT_INV_main_state.idle~q\,
	ena => \time_s[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_s(4));

-- Location: LCCOMB_X2_Y3_N26
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (time_s(1)) # ((time_s(4)) # ((time_s(3)) # (time_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_s(1),
	datab => time_s(4),
	datac => time_s(3),
	datad => time_s(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y3_N26
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\LessThan0~0_combout\ & (((\next_main_state.motorFWD_weicheM~q\ & !\Selector6~3_combout\)))) # (!\LessThan0~0_combout\ & ((\Selector6~0_combout\) # ((\next_main_state.motorFWD_weicheM~q\ & !\Selector6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Selector6~0_combout\,
	datac => \next_main_state.motorFWD_weicheM~q\,
	datad => \Selector6~3_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X1_Y3_N27
\next_main_state.motorFWD_weicheM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_main_state.motorFWD_weicheM~q\);

-- Location: FF_X1_Y3_N19
\main_state.motorFWD_weicheM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \next_main_state.motorFWD_weicheM~q\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_state.motorFWD_weicheM~q\);

-- Location: LCCOMB_X1_Y3_N4
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\main_state.motorFWD_weicheM~q\) # ((\main_state.resetting~q\ & \weiche~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.motorFWD_weicheM~q\,
	datab => \main_state.resetting~q\,
	datac => \weiche~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X1_Y3_N5
weiche : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \weiche~q\);

-- Location: LCCOMB_X1_Y3_N10
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\main_state.resetting~q\) # ((\main_state.motorFWD_weicheK~q\) # ((\main_state.motorFWD_weicheM~q\ & \motor_pwr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.motorFWD_weicheM~q\,
	datab => \main_state.resetting~q\,
	datac => \motor_pwr~q\,
	datad => \main_state.motorFWD_weicheK~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X1_Y3_N11
motor_pwr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_pwr~q\);

-- Location: LCCOMB_X1_Y3_N16
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\main_state.resetting~q\) # ((\main_state.motorFWD_weicheM~q\ & \motor_dir~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_state.motorFWD_weicheM~q\,
	datab => \main_state.resetting~q\,
	datac => \motor_dir~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y3_N17
motor_dir : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_dir~q\);

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

ww_oe_n_out <= \oe_n_out~output_o\;

ww_weiche_out <= \weiche_out~output_o\;

ww_motor_pwr_out <= \motor_pwr_out~output_o\;

ww_motor_dir_out <= \motor_dir_out~output_o\;

ww_timer(0) <= \timer[0]~output_o\;

ww_timer(1) <= \timer[1]~output_o\;

ww_timer(2) <= \timer[2]~output_o\;

ww_timer(3) <= \timer[3]~output_o\;

ww_timer(4) <= \timer[4]~output_o\;
END structure;


