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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/04/2022 05:29:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sortierer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sortierer_vhd_vec_tst IS
END sortierer_vhd_vec_tst;
ARCHITECTURE sortierer_arch OF sortierer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL ind_sens : STD_LOGIC;
SIGNAL motor_dir_out : STD_LOGIC;
SIGNAL motor_pwr_out : STD_LOGIC;
SIGNAL oe_in : STD_LOGIC;
SIGNAL oe_n_out : STD_LOGIC;
SIGNAL opt_sens : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL timer : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL weiche_out : STD_LOGIC;
COMPONENT sortierer
	PORT (
	clk : IN STD_LOGIC;
	ind_sens : IN STD_LOGIC;
	motor_dir_out : OUT STD_LOGIC;
	motor_pwr_out : OUT STD_LOGIC;
	oe_in : IN STD_LOGIC;
	oe_n_out : OUT STD_LOGIC;
	opt_sens : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	timer : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	weiche_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sortierer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	ind_sens => ind_sens,
	motor_dir_out => motor_dir_out,
	motor_pwr_out => motor_pwr_out,
	oe_in => oe_in,
	oe_n_out => oe_n_out,
	opt_sens => opt_sens,
	reset => reset,
	timer => timer,
	weiche_out => weiche_out
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 90000 ps;
	reset <= '0';
	WAIT FOR 500000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- opt_sens
t_prcs_opt_sens: PROCESS
BEGIN
	opt_sens <= '0';
WAIT;
END PROCESS t_prcs_opt_sens;

-- ind_sens
t_prcs_ind_sens: PROCESS
BEGIN
	ind_sens <= '0';
WAIT;
END PROCESS t_prcs_ind_sens;
END sortierer_arch;
