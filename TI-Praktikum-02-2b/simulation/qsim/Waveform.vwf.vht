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
-- Generated on "12/04/2022 00:37:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_vhd_vec_tst IS
END counter_vhd_vec_tst;
ARCHITECTURE counter_arch OF counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cnt_enable : STD_LOGIC;
SIGNAL cnt_rd : STD_LOGIC;
SIGNAL cnt_val_act : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL cnt_val_stored_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ofl_rd : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL switches : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT counter
	PORT (
	clk : IN STD_LOGIC;
	cnt_enable : IN STD_LOGIC;
	cnt_rd : IN STD_LOGIC;
	cnt_val_act : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	cnt_val_stored_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ofl_rd : IN STD_LOGIC;
	reset_n : IN STD_LOGIC;
	switches : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : counter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cnt_enable => cnt_enable,
	cnt_rd => cnt_rd,
	cnt_val_act => cnt_val_act,
	cnt_val_stored_out => cnt_val_stored_out,
	ofl_rd => ofl_rd,
	reset_n => reset_n,
	switches => switches
	);

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

-- cnt_enable
t_prcs_cnt_enable: PROCESS
BEGIN
	cnt_enable <= '1';
WAIT;
END PROCESS t_prcs_cnt_enable;

-- reset_n
t_prcs_reset_n: PROCESS
BEGIN
	reset_n <= '1';
WAIT;
END PROCESS t_prcs_reset_n;

-- ofl_rd
t_prcs_ofl_rd: PROCESS
BEGIN
	ofl_rd <= '1';
WAIT;
END PROCESS t_prcs_ofl_rd;
-- switches[3]
t_prcs_switches_3: PROCESS
BEGIN
	switches(3) <= '0';
WAIT;
END PROCESS t_prcs_switches_3;
-- switches[2]
t_prcs_switches_2: PROCESS
BEGIN
	switches(2) <= '1';
WAIT;
END PROCESS t_prcs_switches_2;
-- switches[1]
t_prcs_switches_1: PROCESS
BEGIN
	switches(1) <= '0';
WAIT;
END PROCESS t_prcs_switches_1;
-- switches[0]
t_prcs_switches_0: PROCESS
BEGIN
	switches(0) <= '0';
WAIT;
END PROCESS t_prcs_switches_0;

-- cnt_rd
t_prcs_cnt_rd: PROCESS
BEGIN
	cnt_rd <= '1';
WAIT;
END PROCESS t_prcs_cnt_rd;
END counter_arch;
