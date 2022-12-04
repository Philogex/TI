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
-- Generated on "11/01/2022 23:26:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demultiplexer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demultiplexer_vhd_vec_tst IS
END demultiplexer_vhd_vec_tst;
ARCHITECTURE demultiplexer_arch OF demultiplexer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT demultiplexer
	PORT (
	a : IN STD_LOGIC;
	s : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	x : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : demultiplexer
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	s => s,
	x => x
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 30000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 40000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 30000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 50000 ps;
	a <= '1';
	WAIT FOR 40000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 70000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 30000 ps;
	a <= '0';
	WAIT FOR 30000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 30000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 30000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 70000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;
-- s[2]
t_prcs_s_2: PROCESS
BEGIN
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 50000 ps;
	s(2) <= '0';
	WAIT FOR 30000 ps;
	s(2) <= '1';
	WAIT FOR 60000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 20000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 30000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 30000 ps;
	s(2) <= '1';
	WAIT FOR 30000 ps;
	s(2) <= '0';
	WAIT FOR 40000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 20000 ps;
	s(2) <= '1';
	WAIT FOR 20000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 20000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 20000 ps;
	s(2) <= '1';
	WAIT FOR 20000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 20000 ps;
	s(2) <= '0';
	WAIT FOR 80000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 20000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 20000 ps;
	s(2) <= '0';
	WAIT FOR 20000 ps;
	s(2) <= '1';
	WAIT FOR 20000 ps;
	s(2) <= '0';
	WAIT FOR 30000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 30000 ps;
	s(2) <= '0';
	WAIT FOR 20000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 10000 ps;
	s(2) <= '0';
	WAIT FOR 10000 ps;
	s(2) <= '1';
	WAIT FOR 20000 ps;
	s(2) <= '0';
	WAIT FOR 30000 ps;
	s(2) <= '1';
	WAIT FOR 20000 ps;
	s(2) <= '0';
WAIT;
END PROCESS t_prcs_s_2;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 20000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 30000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 40000 ps;
	s(1) <= '1';
	WAIT FOR 20000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 30000 ps;
	s(1) <= '0';
	WAIT FOR 20000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 20000 ps;
	s(1) <= '1';
	WAIT FOR 20000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 20000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 20000 ps;
	s(1) <= '1';
	WAIT FOR 60000 ps;
	s(1) <= '0';
	WAIT FOR 50000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 40000 ps;
	s(1) <= '1';
	WAIT FOR 20000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 30000 ps;
	s(1) <= '0';
	WAIT FOR 40000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 20000 ps;
	s(1) <= '1';
	WAIT FOR 20000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 30000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 10000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 50000 ps;
	s(1) <= '1';
	WAIT FOR 10000 ps;
	s(1) <= '0';
	WAIT FOR 60000 ps;
	s(1) <= '1';
	WAIT FOR 20000 ps;
	s(1) <= '0';
	WAIT FOR 30000 ps;
	s(1) <= '1';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= '0';
	WAIT FOR 30000 ps;
	s(0) <= '1';
	WAIT FOR 20000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 30000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 60000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 30000 ps;
	s(0) <= '0';
	WAIT FOR 60000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 20000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 50000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 20000 ps;
	s(0) <= '1';
	WAIT FOR 30000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 20000 ps;
	s(0) <= '0';
	WAIT FOR 20000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 20000 ps;
	s(0) <= '1';
	WAIT FOR 30000 ps;
	s(0) <= '0';
	WAIT FOR 20000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 20000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 30000 ps;
	s(0) <= '0';
	WAIT FOR 20000 ps;
	s(0) <= '1';
	WAIT FOR 30000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 40000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 20000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 40000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 50000 ps;
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
WAIT;
END PROCESS t_prcs_s_0;
END demultiplexer_arch;
