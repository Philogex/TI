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
-- Generated on "12/15/2022 18:40:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          akkumulator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY akkumulator_vhd_vec_tst IS
END akkumulator_vhd_vec_tst;
ARCHITECTURE akkumulator_arch OF akkumulator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL e : STD_LOGIC;
SIGNAL ld : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sub : STD_LOGIC;
COMPONENT akkumulator
	PORT (
	c : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	e : IN STD_LOGIC;
	ld : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sub : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : akkumulator
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	clk => clk,
	d => d,
	e => e,
	ld => ld,
	q => q,
	sub => sub
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

-- ld
t_prcs_ld: PROCESS
BEGIN
LOOP
	ld <= '0';
	WAIT FOR 500000 ps;
	ld <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ld;

-- e
t_prcs_e: PROCESS
BEGIN
	e <= '0';
WAIT;
END PROCESS t_prcs_e;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= '0';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= '0';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= '0';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	d(0) <= '1';
WAIT;
END PROCESS t_prcs_d_0;

-- sub
t_prcs_sub: PROCESS
BEGIN
	sub <= '0';
WAIT;
END PROCESS t_prcs_sub;
END akkumulator_arch;
