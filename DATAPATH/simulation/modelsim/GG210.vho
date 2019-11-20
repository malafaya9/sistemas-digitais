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

-- DATE "11/13/2019 14:02:05"

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

ENTITY 	GG210 IS
    PORT (
	clk : IN std_logic;
	alu_sel : IN std_logic_vector(3 DOWNTO 0);
	sel_mux4e : IN std_logic_vector(1 DOWNTO 0);
	pc_ld : IN std_logic;
	pc_clr : IN std_logic;
	R1_ld : IN std_logic;
	R2_ld : IN std_logic;
	R3_ld : IN std_logic;
	R1_clr : IN std_logic;
	R2_clr : IN std_logic;
	R3_clr : IN std_logic;
	IR_out : OUT std_logic_vector(15 DOWNTO 0);
	sel_5e1 : IN std_logic_vector(2 DOWNTO 0);
	sel_5e2 : IN std_logic_vector(2 DOWNTO 0);
	mux2_in1 : IN std_logic_vector(9 DOWNTO 0);
	mem_adr : IN std_logic_vector(7 DOWNTO 0);
	sel_mux_pc : IN std_logic;
	IR_ld : IN std_logic;
	IR_clr : IN std_logic;
	wren : IN std_logic;
	comp_out : OUT std_logic_vector(2 DOWNTO 0)
	);
END GG210;

-- Design Ports Information
-- IR_out[0]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[1]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[2]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[3]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[4]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[5]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[6]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[7]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[8]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[9]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[10]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[11]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[12]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[13]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[14]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IR_out[15]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- comp_out[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- comp_out[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- comp_out[2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sel_5e1[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_5e1[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_5e1[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_5e2[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_5e2[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_5e2[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR_clr	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IR_ld	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R3_clr	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R3_ld	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R2_clr	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R2_ld	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux4e[0]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux4e[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_adr[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R1_clr	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R1_ld	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_adr[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_adr[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_adr[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_adr[4]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_adr[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_adr[6]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_adr[7]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wren	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_sel[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_sel[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_sel[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_sel[3]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[0]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc_clr	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux_pc	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pc_ld	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[1]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[2]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[3]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[4]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[6]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[7]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[8]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mux2_in1[9]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF GG210 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_alu_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel_mux4e : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pc_ld : std_logic;
SIGNAL ww_pc_clr : std_logic;
SIGNAL ww_R1_ld : std_logic;
SIGNAL ww_R2_ld : std_logic;
SIGNAL ww_R3_ld : std_logic;
SIGNAL ww_R1_clr : std_logic;
SIGNAL ww_R2_clr : std_logic;
SIGNAL ww_R3_clr : std_logic;
SIGNAL ww_IR_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel_5e1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sel_5e2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_mux2_in1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_mem_adr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel_mux_pc : std_logic;
SIGNAL ww_IR_ld : std_logic;
SIGNAL ww_IR_clr : std_logic;
SIGNAL ww_wren : std_logic;
SIGNAL ww_comp_out : std_logic_vector(2 DOWNTO 0);
SIGNAL \pmem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pmem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pmem|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pmem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pmem|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pmem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pmem|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pmem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IR_clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ula|Mux8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc_clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R2_clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R1_clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R3_clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux5E1|Mux7~1_combout\ : std_logic;
SIGNAL \mux5E1|Mux4~0_combout\ : std_logic;
SIGNAL \mux5E1|Mux5~0_combout\ : std_logic;
SIGNAL \mux5E1|Mux3~0_combout\ : std_logic;
SIGNAL \mux4|Mux7~1_combout\ : std_logic;
SIGNAL \mux4|Mux5~1_combout\ : std_logic;
SIGNAL \mux4|Mux3~1_combout\ : std_logic;
SIGNAL \mux4|Mux1~1_combout\ : std_logic;
SIGNAL \ula|Add0~8_combout\ : std_logic;
SIGNAL \ula|Mux2~3_combout\ : std_logic;
SIGNAL \ula|Add0~17_combout\ : std_logic;
SIGNAL \ula|Mux6~2_combout\ : std_logic;
SIGNAL \ula|Add0~20_combout\ : std_logic;
SIGNAL \ula|Mux6~3_combout\ : std_logic;
SIGNAL \ula|Mux7~6_combout\ : std_logic;
SIGNAL \ula|Mux5~4_combout\ : std_logic;
SIGNAL \wren~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \IR_ld~combout\ : std_logic;
SIGNAL \IR_clr~combout\ : std_logic;
SIGNAL \IR_clr~clkctrl_outclk\ : std_logic;
SIGNAL \pcounter|addr_out[0]~10_combout\ : std_logic;
SIGNAL \pc_clr~combout\ : std_logic;
SIGNAL \pc_clr~clkctrl_outclk\ : std_logic;
SIGNAL \sel_mux_pc~combout\ : std_logic;
SIGNAL \pc_ld~combout\ : std_logic;
SIGNAL \pcounter|addr_out[0]~11\ : std_logic;
SIGNAL \pcounter|addr_out[1]~12_combout\ : std_logic;
SIGNAL \pcounter|addr_out[1]~13\ : std_logic;
SIGNAL \pcounter|addr_out[2]~14_combout\ : std_logic;
SIGNAL \pcounter|addr_out[2]~15\ : std_logic;
SIGNAL \pcounter|addr_out[3]~16_combout\ : std_logic;
SIGNAL \pcounter|addr_out[3]~17\ : std_logic;
SIGNAL \pcounter|addr_out[4]~18_combout\ : std_logic;
SIGNAL \pcounter|addr_out[4]~19\ : std_logic;
SIGNAL \pcounter|addr_out[5]~20_combout\ : std_logic;
SIGNAL \pcounter|addr_out[5]~21\ : std_logic;
SIGNAL \pcounter|addr_out[6]~22_combout\ : std_logic;
SIGNAL \pcounter|addr_out[6]~23\ : std_logic;
SIGNAL \pcounter|addr_out[7]~24_combout\ : std_logic;
SIGNAL \pcounter|addr_out[7]~25\ : std_logic;
SIGNAL \pcounter|addr_out[8]~26_combout\ : std_logic;
SIGNAL \pcounter|addr_out[8]~27\ : std_logic;
SIGNAL \pcounter|addr_out[9]~28_combout\ : std_logic;
SIGNAL \ula|Mux8~0_combout\ : std_logic;
SIGNAL \ula|Mux8~0clkctrl_outclk\ : std_logic;
SIGNAL \R3_clr~combout\ : std_logic;
SIGNAL \R3_clr~clkctrl_outclk\ : std_logic;
SIGNAL \R3_ld~combout\ : std_logic;
SIGNAL \R2_clr~combout\ : std_logic;
SIGNAL \R2_clr~clkctrl_outclk\ : std_logic;
SIGNAL \R2_ld~combout\ : std_logic;
SIGNAL \mux5E1|Mux7~3_combout\ : std_logic;
SIGNAL \R1|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \R1_clr~combout\ : std_logic;
SIGNAL \R1_clr~clkctrl_outclk\ : std_logic;
SIGNAL \R1_ld~combout\ : std_logic;
SIGNAL \mux5E1|Mux6~0_combout\ : std_logic;
SIGNAL \mux5E1|Mux6~1_combout\ : std_logic;
SIGNAL \mux5E1|Mux6~combout\ : std_logic;
SIGNAL \ula|Mux7~2_combout\ : std_logic;
SIGNAL \ula|Mux1~2_combout\ : std_logic;
SIGNAL \ula|Add0~5_combout\ : std_logic;
SIGNAL \ula|Mux0~2_combout\ : std_logic;
SIGNAL \ula|Mux7~4_combout\ : std_logic;
SIGNAL \ula|Add0~2_cout\ : std_logic;
SIGNAL \ula|Add0~3_combout\ : std_logic;
SIGNAL \ula|Mux0~4_combout\ : std_logic;
SIGNAL \mux5E1|Mux7~2_combout\ : std_logic;
SIGNAL \mux5E1|Mux7~4_combout\ : std_logic;
SIGNAL \mux5E1|Mux7~combout\ : std_logic;
SIGNAL \ula|Mux0~5_combout\ : std_logic;
SIGNAL \ula|Mux0~3_combout\ : std_logic;
SIGNAL \mux5E2|Mux4~2_combout\ : std_logic;
SIGNAL \mux5E2|Mux4~3_combout\ : std_logic;
SIGNAL \mux5E2|Mux4~0_combout\ : std_logic;
SIGNAL \mux5E1|Mux0~0_combout\ : std_logic;
SIGNAL \mux5E1|Mux0~1_combout\ : std_logic;
SIGNAL \mux5E1|Mux0~combout\ : std_logic;
SIGNAL \ula|Mux7~5_combout\ : std_logic;
SIGNAL \ula|Mux7~3_combout\ : std_logic;
SIGNAL \ula|Add0~23_combout\ : std_logic;
SIGNAL \mux5E1|Mux7~0_combout\ : std_logic;
SIGNAL \mux5E1|Mux1~0_combout\ : std_logic;
SIGNAL \mux5E1|Mux1~1_combout\ : std_logic;
SIGNAL \mux5E1|Mux1~combout\ : std_logic;
SIGNAL \mux5E1|Mux2~0_combout\ : std_logic;
SIGNAL \mux5E1|Mux2~1_combout\ : std_logic;
SIGNAL \mux5E1|Mux2~combout\ : std_logic;
SIGNAL \ula|Add0~14_combout\ : std_logic;
SIGNAL \mux5E1|Mux4~1_combout\ : std_logic;
SIGNAL \mux5E1|Mux4~combout\ : std_logic;
SIGNAL \ula|Add0~9_combout\ : std_logic;
SIGNAL \ula|Add0~7\ : std_logic;
SIGNAL \ula|Add0~11\ : std_logic;
SIGNAL \ula|Add0~13\ : std_logic;
SIGNAL \ula|Add0~16\ : std_logic;
SIGNAL \ula|Add0~19\ : std_logic;
SIGNAL \ula|Add0~22\ : std_logic;
SIGNAL \ula|Add0~24_combout\ : std_logic;
SIGNAL \ula|Mux7~7_combout\ : std_logic;
SIGNAL \ula|Mux7~8_combout\ : std_logic;
SIGNAL \mux4|Mux0~1_combout\ : std_logic;
SIGNAL \mux4|Mux0~2_combout\ : std_logic;
SIGNAL \mux5E2|Mux0~0_combout\ : std_logic;
SIGNAL \mux5E2|Mux0~1_combout\ : std_logic;
SIGNAL \mux5E2|Mux0~combout\ : std_logic;
SIGNAL \compa|Equal0~4_combout\ : std_logic;
SIGNAL \ula|Add0~21_combout\ : std_logic;
SIGNAL \ula|Mux6~4_combout\ : std_logic;
SIGNAL \ula|Mux6~5_combout\ : std_logic;
SIGNAL \mux4|Mux1~2_combout\ : std_logic;
SIGNAL \mux5E2|Mux1~0_combout\ : std_logic;
SIGNAL \mux5E2|Mux1~1_combout\ : std_logic;
SIGNAL \mux5E2|Mux1~combout\ : std_logic;
SIGNAL \mux4|Mux2~1_combout\ : std_logic;
SIGNAL \ula|Add0~18_combout\ : std_logic;
SIGNAL \ula|Mux5~5_combout\ : std_logic;
SIGNAL \ula|Mux5~2_combout\ : std_logic;
SIGNAL \ula|Mux5~3_combout\ : std_logic;
SIGNAL \mux4|Mux2~2_combout\ : std_logic;
SIGNAL \mux5E2|Mux2~0_combout\ : std_logic;
SIGNAL \mux5E2|Mux2~1_combout\ : std_logic;
SIGNAL \mux5E2|Mux2~combout\ : std_logic;
SIGNAL \mux5E1|Mux3~1_combout\ : std_logic;
SIGNAL \mux5E1|Mux3~combout\ : std_logic;
SIGNAL \ula|Mux4~2_combout\ : std_logic;
SIGNAL \ula|Add0~15_combout\ : std_logic;
SIGNAL \ula|Mux4~4_combout\ : std_logic;
SIGNAL \ula|Mux4~5_combout\ : std_logic;
SIGNAL \ula|Mux4~3_combout\ : std_logic;
SIGNAL \mux4|Mux3~2_combout\ : std_logic;
SIGNAL \R1|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \mux5E2|Mux3~0_combout\ : std_logic;
SIGNAL \mux5E2|Mux3~1_combout\ : std_logic;
SIGNAL \mux5E2|Mux3~combout\ : std_logic;
SIGNAL \mux4|Mux4~1_combout\ : std_logic;
SIGNAL \ula|Mux3~4_combout\ : std_logic;
SIGNAL \ula|Add0~12_combout\ : std_logic;
SIGNAL \ula|Mux3~5_combout\ : std_logic;
SIGNAL \ula|Mux3~2_combout\ : std_logic;
SIGNAL \ula|Mux3~3_combout\ : std_logic;
SIGNAL \mux4|Mux4~2_combout\ : std_logic;
SIGNAL \mux5E2|Mux4~1_combout\ : std_logic;
SIGNAL \mux5E2|Mux4~4_combout\ : std_logic;
SIGNAL \mux5E2|Mux4~combout\ : std_logic;
SIGNAL \ula|Add0~10_combout\ : std_logic;
SIGNAL \mux5E1|Mux5~1_combout\ : std_logic;
SIGNAL \mux5E1|Mux5~combout\ : std_logic;
SIGNAL \compa|Equal0~1_combout\ : std_logic;
SIGNAL \ula|Mux2~4_combout\ : std_logic;
SIGNAL \ula|Mux2~2_combout\ : std_logic;
SIGNAL \ula|Mux2~5_combout\ : std_logic;
SIGNAL \mux4|Mux5~2_combout\ : std_logic;
SIGNAL \R1|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \mux5E2|Mux5~0_combout\ : std_logic;
SIGNAL \mux5E2|Mux5~1_combout\ : std_logic;
SIGNAL \mux5E2|Mux5~combout\ : std_logic;
SIGNAL \mux4|Mux7~2_combout\ : std_logic;
SIGNAL \mux5E2|Mux7~0_combout\ : std_logic;
SIGNAL \mux5E2|Mux7~1_combout\ : std_logic;
SIGNAL \mux5E2|Mux7~combout\ : std_logic;
SIGNAL \ula|Add0~0_combout\ : std_logic;
SIGNAL \ula|Add0~4\ : std_logic;
SIGNAL \ula|Add0~6_combout\ : std_logic;
SIGNAL \ula|Mux1~4_combout\ : std_logic;
SIGNAL \ula|Mux1~5_combout\ : std_logic;
SIGNAL \ula|Mux1~3_combout\ : std_logic;
SIGNAL \mux4|Mux6~1_combout\ : std_logic;
SIGNAL \mux4|Mux6~2_combout\ : std_logic;
SIGNAL \mux5E2|Mux6~0_combout\ : std_logic;
SIGNAL \mux5E2|Mux6~1_combout\ : std_logic;
SIGNAL \mux5E2|Mux6~combout\ : std_logic;
SIGNAL \compa|Equal0~0_combout\ : std_logic;
SIGNAL \compa|Equal0~2_combout\ : std_logic;
SIGNAL \compa|Equal0~3_combout\ : std_logic;
SIGNAL \compa|Equal0~5_combout\ : std_logic;
SIGNAL \compa|Equal0~6_combout\ : std_logic;
SIGNAL \compa|LessThan0~1_cout\ : std_logic;
SIGNAL \compa|LessThan0~3_cout\ : std_logic;
SIGNAL \compa|LessThan0~5_cout\ : std_logic;
SIGNAL \compa|LessThan0~7_cout\ : std_logic;
SIGNAL \compa|LessThan0~9_cout\ : std_logic;
SIGNAL \compa|LessThan0~11_cout\ : std_logic;
SIGNAL \compa|LessThan0~13_cout\ : std_logic;
SIGNAL \compa|LessThan0~14_combout\ : std_logic;
SIGNAL \compa|LessThan1~1_cout\ : std_logic;
SIGNAL \compa|LessThan1~3_cout\ : std_logic;
SIGNAL \compa|LessThan1~5_cout\ : std_logic;
SIGNAL \compa|LessThan1~7_cout\ : std_logic;
SIGNAL \compa|LessThan1~9_cout\ : std_logic;
SIGNAL \compa|LessThan1~11_cout\ : std_logic;
SIGNAL \compa|LessThan1~13_cout\ : std_logic;
SIGNAL \compa|LessThan1~14_combout\ : std_logic;
SIGNAL \sel_mux4e~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sel_5e2~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sel_5e1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \R3|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R2|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R1|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mux2_in1~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mem_adr~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_sel~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pcounter|addr_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \IR|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ula|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_sel_mux_pc~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_alu_sel <= alu_sel;
ww_sel_mux4e <= sel_mux4e;
ww_pc_ld <= pc_ld;
ww_pc_clr <= pc_clr;
ww_R1_ld <= R1_ld;
ww_R2_ld <= R2_ld;
ww_R3_ld <= R3_ld;
ww_R1_clr <= R1_clr;
ww_R2_clr <= R2_clr;
ww_R3_clr <= R3_clr;
IR_out <= ww_IR_out;
ww_sel_5e1 <= sel_5e1;
ww_sel_5e2 <= sel_5e2;
ww_mux2_in1 <= mux2_in1;
ww_mem_adr <= mem_adr;
ww_sel_mux_pc <= sel_mux_pc;
ww_IR_ld <= IR_ld;
ww_IR_clr <= IR_clr;
ww_wren <= wren;
comp_out <= ww_comp_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pmem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\pcounter|addr_out\(9) & \pcounter|addr_out\(8) & \pcounter|addr_out\(7) & \pcounter|addr_out\(6) & \pcounter|addr_out\(5) & \pcounter|addr_out\(4) & 
\pcounter|addr_out\(3) & \pcounter|addr_out\(2) & \pcounter|addr_out\(1) & \pcounter|addr_out\(0));

\IR|data_out\(0) <= \pmem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\IR|data_out\(1) <= \pmem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\IR|data_out\(2) <= \pmem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\IR|data_out\(3) <= \pmem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\pmem|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\pcounter|addr_out\(9) & \pcounter|addr_out\(8) & \pcounter|addr_out\(7) & \pcounter|addr_out\(6) & \pcounter|addr_out\(5) & \pcounter|addr_out\(4) & 
\pcounter|addr_out\(3) & \pcounter|addr_out\(2) & \pcounter|addr_out\(1) & \pcounter|addr_out\(0));

\IR|data_out\(4) <= \pmem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\IR|data_out\(5) <= \pmem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\IR|data_out\(6) <= \pmem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\IR|data_out\(7) <= \pmem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\pmem|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\pcounter|addr_out\(9) & \pcounter|addr_out\(8) & \pcounter|addr_out\(7) & \pcounter|addr_out\(6) & \pcounter|addr_out\(5) & \pcounter|addr_out\(4) & 
\pcounter|addr_out\(3) & \pcounter|addr_out\(2) & \pcounter|addr_out\(1) & \pcounter|addr_out\(0));

\IR|data_out\(8) <= \pmem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\IR|data_out\(9) <= \pmem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\IR|data_out\(10) <= \pmem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\IR|data_out\(11) <= \pmem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\pmem|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\pcounter|addr_out\(9) & \pcounter|addr_out\(8) & \pcounter|addr_out\(7) & \pcounter|addr_out\(6) & \pcounter|addr_out\(5) & \pcounter|addr_out\(4) & 
\pcounter|addr_out\(3) & \pcounter|addr_out\(2) & \pcounter|addr_out\(1) & \pcounter|addr_out\(0));

\IR|data_out\(12) <= \pmem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\IR|data_out\(13) <= \pmem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\IR|data_out\(14) <= \pmem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\IR|data_out\(15) <= \pmem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\mux5E2|Mux0~combout\ & \mux5E2|Mux1~combout\ & \mux5E2|Mux2~combout\ & \mux5E2|Mux3~combout\ & \mux5E2|Mux4~combout\ & \mux5E2|Mux5~combout\ & \mux5E2|Mux6~combout\ & 
\mux5E2|Mux7~combout\);

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mem_adr~combout\(7) & \mem_adr~combout\(6) & \mem_adr~combout\(5) & \mem_adr~combout\(4) & \mem_adr~combout\(3) & \mem_adr~combout\(2) & \mem_adr~combout\(1) & 
\mem_adr~combout\(0));

\mem|altsyncram_component|auto_generated|q_a\(0) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem|altsyncram_component|auto_generated|q_a\(1) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem|altsyncram_component|auto_generated|q_a\(2) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem|altsyncram_component|auto_generated|q_a\(3) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem|altsyncram_component|auto_generated|q_a\(4) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem|altsyncram_component|auto_generated|q_a\(5) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem|altsyncram_component|auto_generated|q_a\(6) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem|altsyncram_component|auto_generated|q_a\(7) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\IR_clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \IR_clr~combout\);

\ula|Mux8~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ula|Mux8~0_combout\);

\pc_clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \pc_clr~combout\);

\R2_clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \R2_clr~combout\);

\R1_clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \R1_clr~combout\);

\R3_clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \R3_clr~combout\);
\ALT_INV_sel_mux_pc~combout\ <= NOT \sel_mux_pc~combout\;

-- Location: LCCOMB_X25_Y35_N18
\mux5E1|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux7~1_combout\ = (\R1|data_out\(0) & \sel_5e1~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|data_out\(0),
	datac => \sel_5e1~combout\(0),
	combout => \mux5E1|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y34_N4
\mux5E1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux4~0_combout\ = (\sel_5e1~combout\(0) & \R1|data_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_5e1~combout\(0),
	datac => \R1|data_out\(3),
	combout => \mux5E1|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y35_N10
\mux5E1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux5~0_combout\ = (\sel_5e1~combout\(0) & \R1|data_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e1~combout\(0),
	datad => \R1|data_out\(2),
	combout => \mux5E1|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y35_N28
\mux5E1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux3~0_combout\ = (\sel_5e1~combout\(0) & \R1|data_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e1~combout\(0),
	datad => \R1|data_out\(4),
	combout => \mux5E1|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y34_N4
\mux4|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux7~1_combout\ = (\sel_mux4e~combout\(0) & (((\sel_mux4e~combout\(1))))) # (!\sel_mux4e~combout\(0) & ((\sel_mux4e~combout\(1) & ((\mux5E2|Mux7~combout\))) # (!\sel_mux4e~combout\(1) & (\mem_adr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_adr~combout\(0),
	datab => \mux5E2|Mux7~combout\,
	datac => \sel_mux4e~combout\(0),
	datad => \sel_mux4e~combout\(1),
	combout => \mux4|Mux7~1_combout\);

-- Location: LCCOMB_X27_Y35_N4
\mux4|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux5~1_combout\ = (\sel_mux4e~combout\(0) & (((\sel_mux4e~combout\(1))))) # (!\sel_mux4e~combout\(0) & ((\sel_mux4e~combout\(1) & (\mux5E2|Mux5~combout\)) # (!\sel_mux4e~combout\(1) & ((\mem_adr~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux5~combout\,
	datab => \mem_adr~combout\(2),
	datac => \sel_mux4e~combout\(0),
	datad => \sel_mux4e~combout\(1),
	combout => \mux4|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y34_N4
\mux4|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux3~1_combout\ = (\sel_mux4e~combout\(1) & ((\mux5E2|Mux3~combout\) # ((\sel_mux4e~combout\(0))))) # (!\sel_mux4e~combout\(1) & (((\mem_adr~combout\(4) & !\sel_mux4e~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \mux5E2|Mux3~combout\,
	datac => \mem_adr~combout\(4),
	datad => \sel_mux4e~combout\(0),
	combout => \mux4|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y34_N22
\mux4|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux1~1_combout\ = (\sel_mux4e~combout\(1) & ((\sel_mux4e~combout\(0)) # ((\mux5E2|Mux1~combout\)))) # (!\sel_mux4e~combout\(1) & (!\sel_mux4e~combout\(0) & (\mem_adr~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \sel_mux4e~combout\(0),
	datac => \mem_adr~combout\(6),
	datad => \mux5E2|Mux1~combout\,
	combout => \mux4|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y34_N30
\ula|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~8_combout\ = \alu_sel~combout\(0) $ (\mux5E2|Mux4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux4~combout\,
	combout => \ula|Add0~8_combout\);

-- Location: LCCOMB_X27_Y35_N18
\ula|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~3_combout\ = (\ula|Mux7~3_combout\ & (((\ula|Mux7~4_combout\)))) # (!\ula|Mux7~3_combout\ & ((\ula|Mux7~4_combout\ & ((!\mux5E1|Mux5~combout\))) # (!\ula|Mux7~4_combout\ & ((\mux5E2|Mux5~combout\) # (\mux5E1|Mux5~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux5~combout\,
	datab => \ula|Mux7~3_combout\,
	datac => \ula|Mux7~4_combout\,
	datad => \mux5E1|Mux5~combout\,
	combout => \ula|Mux2~3_combout\);

-- Location: LCCOMB_X28_Y34_N2
\ula|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~17_combout\ = \alu_sel~combout\(0) $ (\mux5E2|Mux2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux2~combout\,
	combout => \ula|Add0~17_combout\);

-- Location: LCCOMB_X29_Y34_N18
\ula|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~2_combout\ = (\ula|Mux7~2_combout\ & (\mux5E1|Mux1~combout\ & ((\mux5E2|Mux1~combout\) # (!\alu_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~2_combout\,
	datab => \mux5E1|Mux1~combout\,
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux1~combout\,
	combout => \ula|Mux6~2_combout\);

-- Location: LCCOMB_X28_Y34_N30
\ula|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~20_combout\ = \alu_sel~combout\(0) $ (\mux5E2|Mux1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux1~combout\,
	combout => \ula|Add0~20_combout\);

-- Location: LCCOMB_X29_Y34_N8
\ula|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~3_combout\ = (\ula|Mux7~4_combout\ & (((\ula|Mux7~3_combout\) # (!\mux5E1|Mux1~combout\)))) # (!\ula|Mux7~4_combout\ & (!\ula|Mux7~3_combout\ & ((\mux5E2|Mux1~combout\) # (\mux5E1|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~4_combout\,
	datab => \mux5E2|Mux1~combout\,
	datac => \mux5E1|Mux1~combout\,
	datad => \ula|Mux7~3_combout\,
	combout => \ula|Mux6~3_combout\);

-- Location: LCCOMB_X29_Y34_N2
\ula|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~6_combout\ = (\ula|Mux7~4_combout\ & (\mux5E1|Mux0~combout\ $ (((\mux5E2|Mux0~combout\) # (!\ula|Mux7~3_combout\))))) # (!\ula|Mux7~4_combout\ & ((\mux5E1|Mux0~combout\) # ((\ula|Mux7~3_combout\) # (\mux5E2|Mux0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~4_combout\,
	datab => \mux5E1|Mux0~combout\,
	datac => \ula|Mux7~3_combout\,
	datad => \mux5E2|Mux0~combout\,
	combout => \ula|Mux7~6_combout\);

-- Location: LCCOMB_X28_Y34_N6
\ula|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~4_combout\ = (\ula|Mux7~4_combout\ & (\mux5E1|Mux2~combout\ $ (((\mux5E2|Mux2~combout\) # (!\ula|Mux7~3_combout\))))) # (!\ula|Mux7~4_combout\ & ((\ula|Mux7~3_combout\) # ((\mux5E1|Mux2~combout\) # (\mux5E2|Mux2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~4_combout\,
	datab => \ula|Mux7~3_combout\,
	datac => \mux5E1|Mux2~combout\,
	datad => \mux5E2|Mux2~combout\,
	combout => \ula|Mux5~4_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wren~I\ : cycloneii_io
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
	padio => ww_wren,
	combout => \wren~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR_ld~I\ : cycloneii_io
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
	padio => ww_IR_ld,
	combout => \IR_ld~combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR_clr~I\ : cycloneii_io
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
	padio => ww_IR_clr,
	combout => \IR_clr~combout\);

-- Location: CLKCTRL_G1
\IR_clr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \IR_clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \IR_clr~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N12
\pcounter|addr_out[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[0]~10_combout\ = \pcounter|addr_out\(0) $ (VCC)
-- \pcounter|addr_out[0]~11\ = CARRY(\pcounter|addr_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|addr_out\(0),
	datad => VCC,
	combout => \pcounter|addr_out[0]~10_combout\,
	cout => \pcounter|addr_out[0]~11\);

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[0]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(0),
	combout => \mux2_in1~combout\(0));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_clr~I\ : cycloneii_io
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
	padio => ww_pc_clr,
	combout => \pc_clr~combout\);

-- Location: CLKCTRL_G2
\pc_clr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pc_clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pc_clr~clkctrl_outclk\);

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux_pc~I\ : cycloneii_io
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
	padio => ww_sel_mux_pc,
	combout => \sel_mux_pc~combout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pc_ld~I\ : cycloneii_io
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
	padio => ww_pc_ld,
	combout => \pc_ld~combout\);

-- Location: LCFF_X27_Y1_N13
\pcounter|addr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[0]~10_combout\,
	sdata => \mux2_in1~combout\(0),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(0));

-- Location: LCCOMB_X27_Y1_N14
\pcounter|addr_out[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[1]~12_combout\ = (\pcounter|addr_out\(1) & (!\pcounter|addr_out[0]~11\)) # (!\pcounter|addr_out\(1) & ((\pcounter|addr_out[0]~11\) # (GND)))
-- \pcounter|addr_out[1]~13\ = CARRY((!\pcounter|addr_out[0]~11\) # (!\pcounter|addr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcounter|addr_out\(1),
	datad => VCC,
	cin => \pcounter|addr_out[0]~11\,
	combout => \pcounter|addr_out[1]~12_combout\,
	cout => \pcounter|addr_out[1]~13\);

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[1]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(1),
	combout => \mux2_in1~combout\(1));

-- Location: LCFF_X27_Y1_N15
\pcounter|addr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[1]~12_combout\,
	sdata => \mux2_in1~combout\(1),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(1));

-- Location: LCCOMB_X27_Y1_N16
\pcounter|addr_out[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[2]~14_combout\ = (\pcounter|addr_out\(2) & (\pcounter|addr_out[1]~13\ $ (GND))) # (!\pcounter|addr_out\(2) & (!\pcounter|addr_out[1]~13\ & VCC))
-- \pcounter|addr_out[2]~15\ = CARRY((\pcounter|addr_out\(2) & !\pcounter|addr_out[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|addr_out\(2),
	datad => VCC,
	cin => \pcounter|addr_out[1]~13\,
	combout => \pcounter|addr_out[2]~14_combout\,
	cout => \pcounter|addr_out[2]~15\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[2]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(2),
	combout => \mux2_in1~combout\(2));

-- Location: LCFF_X27_Y1_N17
\pcounter|addr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[2]~14_combout\,
	sdata => \mux2_in1~combout\(2),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(2));

-- Location: LCCOMB_X27_Y1_N18
\pcounter|addr_out[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[3]~16_combout\ = (\pcounter|addr_out\(3) & (!\pcounter|addr_out[2]~15\)) # (!\pcounter|addr_out\(3) & ((\pcounter|addr_out[2]~15\) # (GND)))
-- \pcounter|addr_out[3]~17\ = CARRY((!\pcounter|addr_out[2]~15\) # (!\pcounter|addr_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcounter|addr_out\(3),
	datad => VCC,
	cin => \pcounter|addr_out[2]~15\,
	combout => \pcounter|addr_out[3]~16_combout\,
	cout => \pcounter|addr_out[3]~17\);

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[3]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(3),
	combout => \mux2_in1~combout\(3));

-- Location: LCFF_X27_Y1_N19
\pcounter|addr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[3]~16_combout\,
	sdata => \mux2_in1~combout\(3),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(3));

-- Location: LCCOMB_X27_Y1_N20
\pcounter|addr_out[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[4]~18_combout\ = (\pcounter|addr_out\(4) & (\pcounter|addr_out[3]~17\ $ (GND))) # (!\pcounter|addr_out\(4) & (!\pcounter|addr_out[3]~17\ & VCC))
-- \pcounter|addr_out[4]~19\ = CARRY((\pcounter|addr_out\(4) & !\pcounter|addr_out[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|addr_out\(4),
	datad => VCC,
	cin => \pcounter|addr_out[3]~17\,
	combout => \pcounter|addr_out[4]~18_combout\,
	cout => \pcounter|addr_out[4]~19\);

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[4]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(4),
	combout => \mux2_in1~combout\(4));

-- Location: LCFF_X27_Y1_N21
\pcounter|addr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[4]~18_combout\,
	sdata => \mux2_in1~combout\(4),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(4));

-- Location: LCCOMB_X27_Y1_N22
\pcounter|addr_out[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[5]~20_combout\ = (\pcounter|addr_out\(5) & (!\pcounter|addr_out[4]~19\)) # (!\pcounter|addr_out\(5) & ((\pcounter|addr_out[4]~19\) # (GND)))
-- \pcounter|addr_out[5]~21\ = CARRY((!\pcounter|addr_out[4]~19\) # (!\pcounter|addr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcounter|addr_out\(5),
	datad => VCC,
	cin => \pcounter|addr_out[4]~19\,
	combout => \pcounter|addr_out[5]~20_combout\,
	cout => \pcounter|addr_out[5]~21\);

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[5]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(5),
	combout => \mux2_in1~combout\(5));

-- Location: LCFF_X27_Y1_N23
\pcounter|addr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[5]~20_combout\,
	sdata => \mux2_in1~combout\(5),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(5));

-- Location: LCCOMB_X27_Y1_N24
\pcounter|addr_out[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[6]~22_combout\ = (\pcounter|addr_out\(6) & (\pcounter|addr_out[5]~21\ $ (GND))) # (!\pcounter|addr_out\(6) & (!\pcounter|addr_out[5]~21\ & VCC))
-- \pcounter|addr_out[6]~23\ = CARRY((\pcounter|addr_out\(6) & !\pcounter|addr_out[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcounter|addr_out\(6),
	datad => VCC,
	cin => \pcounter|addr_out[5]~21\,
	combout => \pcounter|addr_out[6]~22_combout\,
	cout => \pcounter|addr_out[6]~23\);

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[6]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(6),
	combout => \mux2_in1~combout\(6));

-- Location: LCFF_X27_Y1_N25
\pcounter|addr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[6]~22_combout\,
	sdata => \mux2_in1~combout\(6),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(6));

-- Location: LCCOMB_X27_Y1_N26
\pcounter|addr_out[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[7]~24_combout\ = (\pcounter|addr_out\(7) & (!\pcounter|addr_out[6]~23\)) # (!\pcounter|addr_out\(7) & ((\pcounter|addr_out[6]~23\) # (GND)))
-- \pcounter|addr_out[7]~25\ = CARRY((!\pcounter|addr_out[6]~23\) # (!\pcounter|addr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcounter|addr_out\(7),
	datad => VCC,
	cin => \pcounter|addr_out[6]~23\,
	combout => \pcounter|addr_out[7]~24_combout\,
	cout => \pcounter|addr_out[7]~25\);

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[7]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(7),
	combout => \mux2_in1~combout\(7));

-- Location: LCFF_X27_Y1_N27
\pcounter|addr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[7]~24_combout\,
	sdata => \mux2_in1~combout\(7),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(7));

-- Location: LCCOMB_X27_Y1_N28
\pcounter|addr_out[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[8]~26_combout\ = (\pcounter|addr_out\(8) & (\pcounter|addr_out[7]~25\ $ (GND))) # (!\pcounter|addr_out\(8) & (!\pcounter|addr_out[7]~25\ & VCC))
-- \pcounter|addr_out[8]~27\ = CARRY((\pcounter|addr_out\(8) & !\pcounter|addr_out[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcounter|addr_out\(8),
	datad => VCC,
	cin => \pcounter|addr_out[7]~25\,
	combout => \pcounter|addr_out[8]~26_combout\,
	cout => \pcounter|addr_out[8]~27\);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[8]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(8),
	combout => \mux2_in1~combout\(8));

-- Location: LCFF_X27_Y1_N29
\pcounter|addr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[8]~26_combout\,
	sdata => \mux2_in1~combout\(8),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(8));

-- Location: LCCOMB_X27_Y1_N30
\pcounter|addr_out[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \pcounter|addr_out[9]~28_combout\ = \pcounter|addr_out[8]~27\ $ (\pcounter|addr_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pcounter|addr_out\(9),
	cin => \pcounter|addr_out[8]~27\,
	combout => \pcounter|addr_out[9]~28_combout\);

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mux2_in1[9]~I\ : cycloneii_io
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
	padio => ww_mux2_in1(9),
	combout => \mux2_in1~combout\(9));

-- Location: LCFF_X27_Y1_N31
\pcounter|addr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pcounter|addr_out[9]~28_combout\,
	sdata => \mux2_in1~combout\(9),
	aclr => \pc_clr~clkctrl_outclk\,
	sload => \ALT_INV_sel_mux_pc~combout\,
	ena => \pc_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pcounter|addr_out\(9));

-- Location: M4K_X26_Y3
\pmem|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "PRGDATA.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PRGDATA:pmem|altsyncram:altsyncram_component|altsyncram_g181:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena1 => \IR_ld~combout\,
	clr0 => \IR_clr~clkctrl_outclk\,
	portaaddr => \pmem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pmem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y2
\pmem|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "PRGDATA.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PRGDATA:pmem|altsyncram:altsyncram_component|altsyncram_g181:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena1 => \IR_ld~combout\,
	clr0 => \IR_clr~clkctrl_outclk\,
	portaaddr => \pmem|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pmem|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y4
\pmem|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "PRGDATA.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PRGDATA:pmem|altsyncram:altsyncram_component|altsyncram_g181:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena1 => \IR_ld~combout\,
	clr0 => \IR_clr~clkctrl_outclk\,
	portaaddr => \pmem|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pmem|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y1
\pmem|altsyncram_component|auto_generated|ram_block1a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "PRGDATA.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PRGDATA:pmem|altsyncram:altsyncram_component|altsyncram_g181:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock1",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena1 => \IR_ld~combout\,
	clr0 => \IR_clr~clkctrl_outclk\,
	portaaddr => \pmem|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \pmem|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_5e2[0]~I\ : cycloneii_io
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
	padio => ww_sel_5e2(0),
	combout => \sel_5e2~combout\(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_sel[3]~I\ : cycloneii_io
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
	padio => ww_alu_sel(3),
	combout => \alu_sel~combout\(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_sel[2]~I\ : cycloneii_io
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
	padio => ww_alu_sel(2),
	combout => \alu_sel~combout\(2));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_sel[0]~I\ : cycloneii_io
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
	padio => ww_alu_sel(0),
	combout => \alu_sel~combout\(0));

-- Location: LCCOMB_X27_Y35_N8
\ula|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux8~0_combout\ = (\alu_sel~combout\(3)) # ((\alu_sel~combout\(1) & (\alu_sel~combout\(2) & !\alu_sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(1),
	datab => \alu_sel~combout\(3),
	datac => \alu_sel~combout\(2),
	datad => \alu_sel~combout\(0),
	combout => \ula|Mux8~0_combout\);

-- Location: CLKCTRL_G8
\ula|Mux8~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ula|Mux8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ula|Mux8~0clkctrl_outclk\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R3_clr~I\ : cycloneii_io
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
	padio => ww_R3_clr,
	combout => \R3_clr~combout\);

-- Location: CLKCTRL_G10
\R3_clr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \R3_clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \R3_clr~clkctrl_outclk\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R3_ld~I\ : cycloneii_io
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
	padio => ww_R3_ld,
	combout => \R3_ld~combout\);

-- Location: LCFF_X31_Y34_N29
\R3|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux6~2_combout\,
	aclr => \R3_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R3_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R3|data_out\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R2_clr~I\ : cycloneii_io
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
	padio => ww_R2_clr,
	combout => \R2_clr~combout\);

-- Location: CLKCTRL_G9
\R2_clr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \R2_clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \R2_clr~clkctrl_outclk\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R2_ld~I\ : cycloneii_io
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
	padio => ww_R2_ld,
	combout => \R2_ld~combout\);

-- Location: LCFF_X27_Y34_N25
\R2|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux6~2_combout\,
	aclr => \R2_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R2_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2|data_out\(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_5e1[2]~I\ : cycloneii_io
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
	padio => ww_sel_5e1(2),
	combout => \sel_5e1~combout\(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_5e1[1]~I\ : cycloneii_io
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
	padio => ww_sel_5e1(1),
	combout => \sel_5e1~combout\(1));

-- Location: LCCOMB_X27_Y35_N20
\mux5E1|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux7~3_combout\ = (\sel_5e1~combout\(2)) # ((\sel_5e1~combout\(0) & \sel_5e1~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e1~combout\(0),
	datac => \sel_5e1~combout\(2),
	datad => \sel_5e1~combout\(1),
	combout => \mux5E1|Mux7~3_combout\);

-- Location: LCCOMB_X30_Y35_N28
\R1|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R1|data_out[1]~feeder_combout\ = \mux4|Mux6~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux4|Mux6~2_combout\,
	combout => \R1|data_out[1]~feeder_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R1_clr~I\ : cycloneii_io
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
	padio => ww_R1_clr,
	combout => \R1_clr~combout\);

-- Location: CLKCTRL_G11
\R1_clr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \R1_clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \R1_clr~clkctrl_outclk\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R1_ld~I\ : cycloneii_io
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
	padio => ww_R1_ld,
	combout => \R1_ld~combout\);

-- Location: LCFF_X30_Y35_N29
\R1|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \R1|data_out[1]~feeder_combout\,
	aclr => \R1_clr~clkctrl_outclk\,
	ena => \R1_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1|data_out\(1));

-- Location: LCCOMB_X27_Y35_N30
\mux5E1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux6~0_combout\ = (\sel_5e1~combout\(0) & \R1|data_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e1~combout\(0),
	datac => \R1|data_out\(1),
	combout => \mux5E1|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y34_N18
\mux5E1|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux6~1_combout\ = (\mux5E1|Mux7~2_combout\ & ((\mux5E1|Mux7~3_combout\ & ((\mux4|Mux6~2_combout\))) # (!\mux5E1|Mux7~3_combout\ & (\mux5E1|Mux6~0_combout\)))) # (!\mux5E1|Mux7~2_combout\ & (!\mux5E1|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~2_combout\,
	datab => \mux5E1|Mux7~3_combout\,
	datac => \mux5E1|Mux6~0_combout\,
	datad => \mux4|Mux6~2_combout\,
	combout => \mux5E1|Mux6~1_combout\);

-- Location: LCCOMB_X31_Y34_N12
\mux5E1|Mux6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux6~combout\ = (\mux5E1|Mux7~0_combout\ & ((\mux5E1|Mux6~1_combout\ & ((\R2|data_out\(1)))) # (!\mux5E1|Mux6~1_combout\ & (\R3|data_out\(1))))) # (!\mux5E1|Mux7~0_combout\ & (((\mux5E1|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~0_combout\,
	datab => \R3|data_out\(1),
	datac => \R2|data_out\(1),
	datad => \mux5E1|Mux6~1_combout\,
	combout => \mux5E1|Mux6~combout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_sel[1]~I\ : cycloneii_io
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
	padio => ww_alu_sel(1),
	combout => \alu_sel~combout\(1));

-- Location: LCCOMB_X31_Y34_N28
\ula|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~2_combout\ = (!\alu_sel~combout\(2) & \alu_sel~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(2),
	datad => \alu_sel~combout\(1),
	combout => \ula|Mux7~2_combout\);

-- Location: LCCOMB_X31_Y34_N30
\ula|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~2_combout\ = (\mux5E1|Mux6~combout\ & (\ula|Mux7~2_combout\ & ((\mux5E2|Mux6~combout\) # (!\alu_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(0),
	datab => \mux5E1|Mux6~combout\,
	datac => \mux5E2|Mux6~combout\,
	datad => \ula|Mux7~2_combout\,
	combout => \ula|Mux1~2_combout\);

-- Location: LCCOMB_X28_Y34_N0
\ula|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~5_combout\ = \alu_sel~combout\(0) $ (\mux5E2|Mux6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel~combout\(0),
	datad => \mux5E2|Mux6~combout\,
	combout => \ula|Add0~5_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux4e[0]~I\ : cycloneii_io
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
	padio => ww_sel_mux4e(0),
	combout => \sel_mux4e~combout\(0));

-- Location: LCCOMB_X24_Y34_N28
\ula|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~2_combout\ = (\mux5E1|Mux7~combout\ & (\ula|Mux7~2_combout\ & ((\mux5E2|Mux7~combout\) # (!\alu_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~combout\,
	datab => \ula|Mux7~2_combout\,
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux7~combout\,
	combout => \ula|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y34_N20
\ula|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~4_combout\ = (\alu_sel~combout\(2) & ((\alu_sel~combout\(1)) # (\alu_sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(1),
	datab => \alu_sel~combout\(0),
	datad => \alu_sel~combout\(2),
	combout => \ula|Mux7~4_combout\);

-- Location: LCCOMB_X28_Y34_N8
\ula|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~2_cout\ = CARRY(\alu_sel~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel~combout\(0),
	datad => VCC,
	cout => \ula|Add0~2_cout\);

-- Location: LCCOMB_X28_Y34_N10
\ula|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~3_combout\ = (\mux5E1|Mux7~combout\ & ((\ula|Add0~0_combout\ & (\ula|Add0~2_cout\ & VCC)) # (!\ula|Add0~0_combout\ & (!\ula|Add0~2_cout\)))) # (!\mux5E1|Mux7~combout\ & ((\ula|Add0~0_combout\ & (!\ula|Add0~2_cout\)) # (!\ula|Add0~0_combout\ & 
-- ((\ula|Add0~2_cout\) # (GND)))))
-- \ula|Add0~4\ = CARRY((\mux5E1|Mux7~combout\ & (!\ula|Add0~0_combout\ & !\ula|Add0~2_cout\)) # (!\mux5E1|Mux7~combout\ & ((!\ula|Add0~2_cout\) # (!\ula|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~combout\,
	datab => \ula|Add0~0_combout\,
	datad => VCC,
	cin => \ula|Add0~2_cout\,
	combout => \ula|Add0~3_combout\,
	cout => \ula|Add0~4\);

-- Location: LCCOMB_X24_Y34_N24
\ula|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~4_combout\ = (\ula|Mux7~3_combout\ & ((\ula|Mux7~4_combout\ & ((\mux5E2|Mux7~combout\))) # (!\ula|Mux7~4_combout\ & (\ula|Add0~3_combout\)))) # (!\ula|Mux7~3_combout\ & ((\ula|Mux7~4_combout\) # ((\mux5E2|Mux7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~3_combout\,
	datab => \ula|Mux7~4_combout\,
	datac => \ula|Add0~3_combout\,
	datad => \mux5E2|Mux7~combout\,
	combout => \ula|Mux0~4_combout\);

-- Location: LCFF_X25_Y34_N13
\R3|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mux4|Mux7~2_combout\,
	aclr => \R3_clr~clkctrl_outclk\,
	ena => \R3_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R3|data_out\(0));

-- Location: LCFF_X25_Y34_N19
\R2|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux7~2_combout\,
	aclr => \R2_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R2_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2|data_out\(0));

-- Location: LCCOMB_X27_Y35_N16
\mux5E1|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux7~2_combout\ = (!\sel_5e1~combout\(1) & ((!\sel_5e1~combout\(2)) # (!\sel_5e1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e1~combout\(0),
	datac => \sel_5e1~combout\(2),
	datad => \sel_5e1~combout\(1),
	combout => \mux5E1|Mux7~2_combout\);

-- Location: LCCOMB_X25_Y34_N28
\mux5E1|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux7~4_combout\ = (\mux5E1|Mux7~2_combout\ & ((\mux5E1|Mux7~3_combout\ & ((\mux4|Mux7~2_combout\))) # (!\mux5E1|Mux7~3_combout\ & (\mux5E1|Mux7~1_combout\)))) # (!\mux5E1|Mux7~2_combout\ & (((!\mux5E1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~1_combout\,
	datab => \mux5E1|Mux7~2_combout\,
	datac => \mux4|Mux7~2_combout\,
	datad => \mux5E1|Mux7~3_combout\,
	combout => \mux5E1|Mux7~4_combout\);

-- Location: LCCOMB_X24_Y34_N12
\mux5E1|Mux7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux7~combout\ = (\mux5E1|Mux7~0_combout\ & ((\mux5E1|Mux7~4_combout\ & ((\R2|data_out\(0)))) # (!\mux5E1|Mux7~4_combout\ & (\R3|data_out\(0))))) # (!\mux5E1|Mux7~0_combout\ & (((\mux5E1|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~0_combout\,
	datab => \R3|data_out\(0),
	datac => \R2|data_out\(0),
	datad => \mux5E1|Mux7~4_combout\,
	combout => \mux5E1|Mux7~combout\);

-- Location: LCCOMB_X24_Y34_N18
\ula|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~5_combout\ = (\mux5E1|Mux7~combout\ & (\ula|Mux7~4_combout\ $ (((\ula|Mux0~4_combout\) # (!\ula|Mux7~3_combout\))))) # (!\mux5E1|Mux7~combout\ & (((\ula|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~3_combout\,
	datab => \ula|Mux7~4_combout\,
	datac => \ula|Mux0~4_combout\,
	datad => \mux5E1|Mux7~combout\,
	combout => \ula|Mux0~5_combout\);

-- Location: LCCOMB_X24_Y34_N20
\ula|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux0~3_combout\ = (\ula|Mux0~2_combout\) # ((\ula|Mux0~5_combout\ & ((\alu_sel~combout\(2)) # (!\alu_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(2),
	datab => \alu_sel~combout\(1),
	datac => \ula|Mux0~2_combout\,
	datad => \ula|Mux0~5_combout\,
	combout => \ula|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y34_N0
\ula|result[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|result\(0) = (GLOBAL(\ula|Mux8~0clkctrl_outclk\) & (\ula|result\(0))) # (!GLOBAL(\ula|Mux8~0clkctrl_outclk\) & ((\ula|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula|result\(0),
	datac => \ula|Mux0~3_combout\,
	datad => \ula|Mux8~0clkctrl_outclk\,
	combout => \ula|result\(0));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_adr[0]~I\ : cycloneii_io
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
	padio => ww_mem_adr(0),
	combout => \mem_adr~combout\(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_adr[1]~I\ : cycloneii_io
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
	padio => ww_mem_adr(1),
	combout => \mem_adr~combout\(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_adr[2]~I\ : cycloneii_io
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
	padio => ww_mem_adr(2),
	combout => \mem_adr~combout\(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_adr[3]~I\ : cycloneii_io
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
	padio => ww_mem_adr(3),
	combout => \mem_adr~combout\(3));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_adr[4]~I\ : cycloneii_io
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
	padio => ww_mem_adr(4),
	combout => \mem_adr~combout\(4));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_adr[5]~I\ : cycloneii_io
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
	padio => ww_mem_adr(5),
	combout => \mem_adr~combout\(5));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_adr[6]~I\ : cycloneii_io
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
	padio => ww_mem_adr(6),
	combout => \mem_adr~combout\(6));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_adr[7]~I\ : cycloneii_io
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
	padio => ww_mem_adr(7),
	combout => \mem_adr~combout\(7));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_5e2[2]~I\ : cycloneii_io
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
	padio => ww_sel_5e2(2),
	combout => \sel_5e2~combout\(2));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_5e2[1]~I\ : cycloneii_io
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
	padio => ww_sel_5e2(1),
	combout => \sel_5e2~combout\(1));

-- Location: LCCOMB_X25_Y35_N12
\mux5E2|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux4~2_combout\ = (!\sel_5e2~combout\(1) & ((!\sel_5e2~combout\(0)) # (!\sel_5e2~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_5e2~combout\(2),
	datac => \sel_5e2~combout\(1),
	datad => \sel_5e2~combout\(0),
	combout => \mux5E2|Mux4~2_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux4e[1]~I\ : cycloneii_io
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
	padio => ww_sel_mux4e(1),
	combout => \sel_mux4e~combout\(1));

-- Location: LCCOMB_X25_Y35_N22
\mux5E2|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux4~3_combout\ = (\sel_5e2~combout\(2)) # ((\sel_5e2~combout\(1) & \sel_5e2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_5e2~combout\(2),
	datac => \sel_5e2~combout\(1),
	datad => \sel_5e2~combout\(0),
	combout => \mux5E2|Mux4~3_combout\);

-- Location: LCCOMB_X25_Y35_N28
\mux5E2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux4~0_combout\ = (!\sel_5e2~combout\(2) & \sel_5e2~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_5e2~combout\(2),
	datac => \sel_5e2~combout\(1),
	combout => \mux5E2|Mux4~0_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_5e1[0]~I\ : cycloneii_io
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
	padio => ww_sel_5e1(0),
	combout => \sel_5e1~combout\(0));

-- Location: LCFF_X24_Y34_N17
\R1|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux0~2_combout\,
	aclr => \R1_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R1_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1|data_out\(7));

-- Location: LCCOMB_X23_Y34_N30
\mux5E1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux0~0_combout\ = (\sel_5e1~combout\(0) & \R1|data_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_5e1~combout\(0),
	datac => \R1|data_out\(7),
	combout => \mux5E1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y34_N30
\mux5E1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux0~1_combout\ = (\mux5E1|Mux7~2_combout\ & ((\mux5E1|Mux7~3_combout\ & ((\mux4|Mux0~2_combout\))) # (!\mux5E1|Mux7~3_combout\ & (\mux5E1|Mux0~0_combout\)))) # (!\mux5E1|Mux7~2_combout\ & (!\mux5E1|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~2_combout\,
	datab => \mux5E1|Mux7~3_combout\,
	datac => \mux5E1|Mux0~0_combout\,
	datad => \mux4|Mux0~2_combout\,
	combout => \mux5E1|Mux0~1_combout\);

-- Location: LCFF_X24_Y34_N3
\R2|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux0~2_combout\,
	aclr => \R2_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R2_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2|data_out\(7));

-- Location: LCFF_X28_Y34_N1
\R3|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux0~2_combout\,
	aclr => \R3_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R3_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R3|data_out\(7));

-- Location: LCCOMB_X24_Y34_N2
\mux5E1|Mux0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux0~combout\ = (\mux5E1|Mux7~0_combout\ & ((\mux5E1|Mux0~1_combout\ & (\R2|data_out\(7))) # (!\mux5E1|Mux0~1_combout\ & ((\R3|data_out\(7)))))) # (!\mux5E1|Mux7~0_combout\ & (\mux5E1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~0_combout\,
	datab => \mux5E1|Mux0~1_combout\,
	datac => \R2|data_out\(7),
	datad => \R3|data_out\(7),
	combout => \mux5E1|Mux0~combout\);

-- Location: LCCOMB_X24_Y34_N6
\ula|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~5_combout\ = (\ula|Mux7~2_combout\ & (\mux5E1|Mux0~combout\ & ((\mux5E2|Mux0~combout\) # (!\alu_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(0),
	datab => \ula|Mux7~2_combout\,
	datac => \mux5E2|Mux0~combout\,
	datad => \mux5E1|Mux0~combout\,
	combout => \ula|Mux7~5_combout\);

-- Location: LCCOMB_X31_Y34_N20
\ula|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~3_combout\ = (\alu_sel~combout\(1)) # (!\alu_sel~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel~combout\(2),
	datad => \alu_sel~combout\(1),
	combout => \ula|Mux7~3_combout\);

-- Location: LCCOMB_X29_Y34_N28
\ula|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~23_combout\ = \alu_sel~combout\(0) $ (\mux5E2|Mux0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(0),
	datad => \mux5E2|Mux0~combout\,
	combout => \ula|Add0~23_combout\);

-- Location: LCCOMB_X27_Y35_N26
\mux5E1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux7~0_combout\ = (!\sel_5e1~combout\(2) & \sel_5e1~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_5e1~combout\(2),
	datad => \sel_5e1~combout\(1),
	combout => \mux5E1|Mux7~0_combout\);

-- Location: LCFF_X30_Y34_N7
\R1|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux1~2_combout\,
	aclr => \R1_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R1_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1|data_out\(6));

-- Location: LCCOMB_X30_Y34_N2
\mux5E1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux1~0_combout\ = (\sel_5e1~combout\(0) & \R1|data_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e1~combout\(0),
	datad => \R1|data_out\(6),
	combout => \mux5E1|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y34_N12
\mux5E1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux1~1_combout\ = (\mux5E1|Mux7~2_combout\ & ((\mux5E1|Mux7~3_combout\ & (\mux4|Mux1~2_combout\)) # (!\mux5E1|Mux7~3_combout\ & ((\mux5E1|Mux1~0_combout\))))) # (!\mux5E1|Mux7~2_combout\ & (!\mux5E1|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~2_combout\,
	datab => \mux5E1|Mux7~3_combout\,
	datac => \mux4|Mux1~2_combout\,
	datad => \mux5E1|Mux1~0_combout\,
	combout => \mux5E1|Mux1~1_combout\);

-- Location: LCFF_X29_Y34_N11
\R3|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux1~2_combout\,
	aclr => \R3_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R3_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R3|data_out\(6));

-- Location: LCCOMB_X29_Y34_N20
\mux5E1|Mux1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux1~combout\ = (\mux5E1|Mux7~0_combout\ & ((\mux5E1|Mux1~1_combout\ & (\R2|data_out\(6))) # (!\mux5E1|Mux1~1_combout\ & ((\R3|data_out\(6)))))) # (!\mux5E1|Mux7~0_combout\ & (((\mux5E1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2|data_out\(6),
	datab => \mux5E1|Mux7~0_combout\,
	datac => \mux5E1|Mux1~1_combout\,
	datad => \R3|data_out\(6),
	combout => \mux5E1|Mux1~combout\);

-- Location: LCFF_X27_Y34_N9
\R3|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux2~2_combout\,
	aclr => \R3_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R3_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R3|data_out\(5));

-- Location: LCFF_X30_Y34_N1
\R1|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux2~2_combout\,
	aclr => \R1_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R1_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1|data_out\(5));

-- Location: LCCOMB_X30_Y34_N6
\mux5E1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux2~0_combout\ = (\sel_5e1~combout\(0) & \R1|data_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e1~combout\(0),
	datad => \R1|data_out\(5),
	combout => \mux5E1|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y34_N28
\mux5E1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux2~1_combout\ = (\mux5E1|Mux7~2_combout\ & ((\mux5E1|Mux7~3_combout\ & (\mux4|Mux2~2_combout\)) # (!\mux5E1|Mux7~3_combout\ & ((\mux5E1|Mux2~0_combout\))))) # (!\mux5E1|Mux7~2_combout\ & (!\mux5E1|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~2_combout\,
	datab => \mux5E1|Mux7~3_combout\,
	datac => \mux4|Mux2~2_combout\,
	datad => \mux5E1|Mux2~0_combout\,
	combout => \mux5E1|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y34_N0
\mux5E1|Mux2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux2~combout\ = (\mux5E1|Mux7~0_combout\ & ((\mux5E1|Mux2~1_combout\ & (\R2|data_out\(5))) # (!\mux5E1|Mux2~1_combout\ & ((\R3|data_out\(5)))))) # (!\mux5E1|Mux7~0_combout\ & (((\mux5E1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2|data_out\(5),
	datab => \mux5E1|Mux7~0_combout\,
	datac => \R3|data_out\(5),
	datad => \mux5E1|Mux2~1_combout\,
	combout => \mux5E1|Mux2~combout\);

-- Location: LCCOMB_X27_Y34_N16
\ula|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~14_combout\ = \alu_sel~combout\(0) $ (\mux5E2|Mux3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux3~combout\,
	combout => \ula|Add0~14_combout\);

-- Location: LCFF_X25_Y34_N3
\R3|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mux4|Mux4~2_combout\,
	aclr => \R3_clr~clkctrl_outclk\,
	ena => \R3_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R3|data_out\(3));

-- Location: LCFF_X25_Y34_N1
\R2|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux4~2_combout\,
	aclr => \R2_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R2_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2|data_out\(3));

-- Location: LCCOMB_X25_Y34_N26
\mux5E1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux4~1_combout\ = (\mux5E1|Mux7~2_combout\ & ((\mux5E1|Mux7~3_combout\ & ((\mux4|Mux4~2_combout\))) # (!\mux5E1|Mux7~3_combout\ & (\mux5E1|Mux4~0_combout\)))) # (!\mux5E1|Mux7~2_combout\ & (((!\mux5E1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux4~0_combout\,
	datab => \mux5E1|Mux7~2_combout\,
	datac => \mux4|Mux4~2_combout\,
	datad => \mux5E1|Mux7~3_combout\,
	combout => \mux5E1|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y34_N24
\mux5E1|Mux4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux4~combout\ = (\mux5E1|Mux7~0_combout\ & ((\mux5E1|Mux4~1_combout\ & ((\R2|data_out\(3)))) # (!\mux5E1|Mux4~1_combout\ & (\R3|data_out\(3))))) # (!\mux5E1|Mux7~0_combout\ & (((\mux5E1|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~0_combout\,
	datab => \R3|data_out\(3),
	datac => \R2|data_out\(3),
	datad => \mux5E1|Mux4~1_combout\,
	combout => \mux5E1|Mux4~combout\);

-- Location: LCCOMB_X27_Y35_N24
\ula|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~9_combout\ = \alu_sel~combout\(0) $ (\mux5E2|Mux5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux5~combout\,
	combout => \ula|Add0~9_combout\);

-- Location: LCCOMB_X28_Y34_N12
\ula|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~6_combout\ = ((\mux5E1|Mux6~combout\ $ (\ula|Add0~5_combout\ $ (!\ula|Add0~4\)))) # (GND)
-- \ula|Add0~7\ = CARRY((\mux5E1|Mux6~combout\ & ((\ula|Add0~5_combout\) # (!\ula|Add0~4\))) # (!\mux5E1|Mux6~combout\ & (\ula|Add0~5_combout\ & !\ula|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux6~combout\,
	datab => \ula|Add0~5_combout\,
	datad => VCC,
	cin => \ula|Add0~4\,
	combout => \ula|Add0~6_combout\,
	cout => \ula|Add0~7\);

-- Location: LCCOMB_X28_Y34_N14
\ula|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~10_combout\ = (\mux5E1|Mux5~combout\ & ((\ula|Add0~9_combout\ & (\ula|Add0~7\ & VCC)) # (!\ula|Add0~9_combout\ & (!\ula|Add0~7\)))) # (!\mux5E1|Mux5~combout\ & ((\ula|Add0~9_combout\ & (!\ula|Add0~7\)) # (!\ula|Add0~9_combout\ & ((\ula|Add0~7\) 
-- # (GND)))))
-- \ula|Add0~11\ = CARRY((\mux5E1|Mux5~combout\ & (!\ula|Add0~9_combout\ & !\ula|Add0~7\)) # (!\mux5E1|Mux5~combout\ & ((!\ula|Add0~7\) # (!\ula|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux5~combout\,
	datab => \ula|Add0~9_combout\,
	datad => VCC,
	cin => \ula|Add0~7\,
	combout => \ula|Add0~10_combout\,
	cout => \ula|Add0~11\);

-- Location: LCCOMB_X28_Y34_N16
\ula|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~12_combout\ = ((\ula|Add0~8_combout\ $ (\mux5E1|Mux4~combout\ $ (!\ula|Add0~11\)))) # (GND)
-- \ula|Add0~13\ = CARRY((\ula|Add0~8_combout\ & ((\mux5E1|Mux4~combout\) # (!\ula|Add0~11\))) # (!\ula|Add0~8_combout\ & (\mux5E1|Mux4~combout\ & !\ula|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~8_combout\,
	datab => \mux5E1|Mux4~combout\,
	datad => VCC,
	cin => \ula|Add0~11\,
	combout => \ula|Add0~12_combout\,
	cout => \ula|Add0~13\);

-- Location: LCCOMB_X28_Y34_N18
\ula|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~15_combout\ = (\mux5E1|Mux3~combout\ & ((\ula|Add0~14_combout\ & (\ula|Add0~13\ & VCC)) # (!\ula|Add0~14_combout\ & (!\ula|Add0~13\)))) # (!\mux5E1|Mux3~combout\ & ((\ula|Add0~14_combout\ & (!\ula|Add0~13\)) # (!\ula|Add0~14_combout\ & 
-- ((\ula|Add0~13\) # (GND)))))
-- \ula|Add0~16\ = CARRY((\mux5E1|Mux3~combout\ & (!\ula|Add0~14_combout\ & !\ula|Add0~13\)) # (!\mux5E1|Mux3~combout\ & ((!\ula|Add0~13\) # (!\ula|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux3~combout\,
	datab => \ula|Add0~14_combout\,
	datad => VCC,
	cin => \ula|Add0~13\,
	combout => \ula|Add0~15_combout\,
	cout => \ula|Add0~16\);

-- Location: LCCOMB_X28_Y34_N20
\ula|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~18_combout\ = ((\ula|Add0~17_combout\ $ (\mux5E1|Mux2~combout\ $ (!\ula|Add0~16\)))) # (GND)
-- \ula|Add0~19\ = CARRY((\ula|Add0~17_combout\ & ((\mux5E1|Mux2~combout\) # (!\ula|Add0~16\))) # (!\ula|Add0~17_combout\ & (\mux5E1|Mux2~combout\ & !\ula|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~17_combout\,
	datab => \mux5E1|Mux2~combout\,
	datad => VCC,
	cin => \ula|Add0~16\,
	combout => \ula|Add0~18_combout\,
	cout => \ula|Add0~19\);

-- Location: LCCOMB_X28_Y34_N22
\ula|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~21_combout\ = (\ula|Add0~20_combout\ & ((\mux5E1|Mux1~combout\ & (\ula|Add0~19\ & VCC)) # (!\mux5E1|Mux1~combout\ & (!\ula|Add0~19\)))) # (!\ula|Add0~20_combout\ & ((\mux5E1|Mux1~combout\ & (!\ula|Add0~19\)) # (!\mux5E1|Mux1~combout\ & 
-- ((\ula|Add0~19\) # (GND)))))
-- \ula|Add0~22\ = CARRY((\ula|Add0~20_combout\ & (!\mux5E1|Mux1~combout\ & !\ula|Add0~19\)) # (!\ula|Add0~20_combout\ & ((!\ula|Add0~19\) # (!\mux5E1|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~20_combout\,
	datab => \mux5E1|Mux1~combout\,
	datad => VCC,
	cin => \ula|Add0~19\,
	combout => \ula|Add0~21_combout\,
	cout => \ula|Add0~22\);

-- Location: LCCOMB_X28_Y34_N24
\ula|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~24_combout\ = \ula|Add0~23_combout\ $ (\ula|Add0~22\ $ (!\mux5E1|Mux0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ula|Add0~23_combout\,
	datad => \mux5E1|Mux0~combout\,
	cin => \ula|Add0~22\,
	combout => \ula|Add0~24_combout\);

-- Location: LCCOMB_X28_Y34_N4
\ula|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~7_combout\ = (\ula|Mux7~6_combout\ & (((\ula|Add0~24_combout\) # (\ula|Mux7~4_combout\)) # (!\ula|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~6_combout\,
	datab => \ula|Mux7~3_combout\,
	datac => \ula|Add0~24_combout\,
	datad => \ula|Mux7~4_combout\,
	combout => \ula|Mux7~7_combout\);

-- Location: LCCOMB_X24_Y34_N10
\ula|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux7~8_combout\ = (\ula|Mux7~5_combout\) # ((\ula|Mux7~7_combout\ & ((\alu_sel~combout\(2)) # (!\alu_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(2),
	datab => \alu_sel~combout\(1),
	datac => \ula|Mux7~5_combout\,
	datad => \ula|Mux7~7_combout\,
	combout => \ula|Mux7~8_combout\);

-- Location: LCCOMB_X24_Y34_N14
\ula|result[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|result\(7) = (GLOBAL(\ula|Mux8~0clkctrl_outclk\) & (\ula|result\(7))) # (!GLOBAL(\ula|Mux8~0clkctrl_outclk\) & ((\ula|Mux7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula|result\(7),
	datac => \ula|Mux8~0clkctrl_outclk\,
	datad => \ula|Mux7~8_combout\,
	combout => \ula|result\(7));

-- Location: M4K_X26_Y34
\mem|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MEMDATA:mem|altsyncram:altsyncram_component|altsyncram_gra1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \wren~combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y34_N4
\mux4|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux0~1_combout\ = (\sel_mux4e~combout\(1) & (((\sel_mux4e~combout\(0))))) # (!\sel_mux4e~combout\(1) & ((\sel_mux4e~combout\(0) & ((\mem|altsyncram_component|auto_generated|q_a\(7)))) # (!\sel_mux4e~combout\(0) & (\mem_adr~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \mem_adr~combout\(7),
	datac => \mem|altsyncram_component|auto_generated|q_a\(7),
	datad => \sel_mux4e~combout\(0),
	combout => \mux4|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y34_N22
\mux4|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux0~2_combout\ = (\sel_mux4e~combout\(1) & ((\mux4|Mux0~1_combout\ & ((\ula|result\(7)))) # (!\mux4|Mux0~1_combout\ & (\mux5E2|Mux0~combout\)))) # (!\sel_mux4e~combout\(1) & (((\mux4|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \mux5E2|Mux0~combout\,
	datac => \ula|result\(7),
	datad => \mux4|Mux0~1_combout\,
	combout => \mux4|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y34_N16
\mux5E2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux0~0_combout\ = (\R1|data_out\(7) & \sel_5e2~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1|data_out\(7),
	datac => \sel_5e2~combout\(0),
	combout => \mux5E2|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y34_N16
\mux5E2|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux0~1_combout\ = (\mux5E2|Mux4~3_combout\ & (\mux5E2|Mux4~2_combout\ & (\mux4|Mux0~2_combout\))) # (!\mux5E2|Mux4~3_combout\ & (((\mux5E2|Mux0~0_combout\)) # (!\mux5E2|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~3_combout\,
	datab => \mux5E2|Mux4~2_combout\,
	datac => \mux4|Mux0~2_combout\,
	datad => \mux5E2|Mux0~0_combout\,
	combout => \mux5E2|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y34_N6
\mux5E2|Mux0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux0~combout\ = (\mux5E2|Mux4~0_combout\ & ((\mux5E2|Mux0~1_combout\ & ((\R2|data_out\(7)))) # (!\mux5E2|Mux0~1_combout\ & (\R3|data_out\(7))))) # (!\mux5E2|Mux4~0_combout\ & (((\mux5E2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3|data_out\(7),
	datab => \mux5E2|Mux4~0_combout\,
	datac => \mux5E2|Mux0~1_combout\,
	datad => \R2|data_out\(7),
	combout => \mux5E2|Mux0~combout\);

-- Location: LCCOMB_X29_Y34_N4
\compa|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|Equal0~4_combout\ = \mux5E1|Mux1~combout\ $ (\mux5E2|Mux1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux5E1|Mux1~combout\,
	datad => \mux5E2|Mux1~combout\,
	combout => \compa|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y34_N14
\ula|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~4_combout\ = (\ula|Mux6~3_combout\ & ((\compa|Equal0~4_combout\) # ((!\ula|Mux7~3_combout\)))) # (!\ula|Mux6~3_combout\ & (((\ula|Mux7~3_combout\ & \ula|Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux6~3_combout\,
	datab => \compa|Equal0~4_combout\,
	datac => \ula|Mux7~3_combout\,
	datad => \ula|Add0~21_combout\,
	combout => \ula|Mux6~4_combout\);

-- Location: LCCOMB_X29_Y34_N30
\ula|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux6~5_combout\ = (\ula|Mux6~2_combout\) # ((\ula|Mux6~4_combout\ & ((\alu_sel~combout\(2)) # (!\alu_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux6~2_combout\,
	datab => \alu_sel~combout\(2),
	datac => \ula|Mux6~4_combout\,
	datad => \alu_sel~combout\(1),
	combout => \ula|Mux6~5_combout\);

-- Location: LCCOMB_X30_Y34_N18
\ula|result[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|result\(6) = (GLOBAL(\ula|Mux8~0clkctrl_outclk\) & (\ula|result\(6))) # (!GLOBAL(\ula|Mux8~0clkctrl_outclk\) & ((\ula|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula|result\(6),
	datac => \ula|Mux6~5_combout\,
	datad => \ula|Mux8~0clkctrl_outclk\,
	combout => \ula|result\(6));

-- Location: LCCOMB_X30_Y34_N16
\mux4|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux1~2_combout\ = (\mux4|Mux1~1_combout\ & (((\ula|result\(6))) # (!\sel_mux4e~combout\(0)))) # (!\mux4|Mux1~1_combout\ & (\sel_mux4e~combout\(0) & (\mem|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|Mux1~1_combout\,
	datab => \sel_mux4e~combout\(0),
	datac => \mem|altsyncram_component|auto_generated|q_a\(6),
	datad => \ula|result\(6),
	combout => \mux4|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y34_N30
\mux5E2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux1~0_combout\ = (\sel_5e2~combout\(0) & \R1|data_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e2~combout\(0),
	datad => \R1|data_out\(6),
	combout => \mux5E2|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y34_N10
\mux5E2|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux1~1_combout\ = (\mux5E2|Mux4~2_combout\ & ((\mux5E2|Mux4~3_combout\ & (\mux4|Mux1~2_combout\)) # (!\mux5E2|Mux4~3_combout\ & ((\mux5E2|Mux1~0_combout\))))) # (!\mux5E2|Mux4~2_combout\ & (!\mux5E2|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~2_combout\,
	datab => \mux5E2|Mux4~3_combout\,
	datac => \mux4|Mux1~2_combout\,
	datad => \mux5E2|Mux1~0_combout\,
	combout => \mux5E2|Mux1~1_combout\);

-- Location: LCFF_X30_Y34_N3
\R2|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux1~2_combout\,
	aclr => \R2_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R2_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2|data_out\(6));

-- Location: LCCOMB_X29_Y34_N22
\mux5E2|Mux1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux1~combout\ = (\mux5E2|Mux1~1_combout\ & (((\R2|data_out\(6)) # (!\mux5E2|Mux4~0_combout\)))) # (!\mux5E2|Mux1~1_combout\ & (\R3|data_out\(6) & (\mux5E2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3|data_out\(6),
	datab => \mux5E2|Mux1~1_combout\,
	datac => \mux5E2|Mux4~0_combout\,
	datad => \R2|data_out\(6),
	combout => \mux5E2|Mux1~combout\);

-- Location: LCCOMB_X30_Y34_N14
\mux4|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux2~1_combout\ = (\sel_mux4e~combout\(1) & (\sel_mux4e~combout\(0))) # (!\sel_mux4e~combout\(1) & ((\sel_mux4e~combout\(0) & ((\mem|altsyncram_component|auto_generated|q_a\(5)))) # (!\sel_mux4e~combout\(0) & (\mem_adr~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \sel_mux4e~combout\(0),
	datac => \mem_adr~combout\(5),
	datad => \mem|altsyncram_component|auto_generated|q_a\(5),
	combout => \mux4|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y34_N24
\ula|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~5_combout\ = (\ula|Mux5~4_combout\ & ((\ula|Mux7~4_combout\) # ((\ula|Add0~18_combout\) # (!\ula|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux5~4_combout\,
	datab => \ula|Mux7~4_combout\,
	datac => \ula|Mux7~3_combout\,
	datad => \ula|Add0~18_combout\,
	combout => \ula|Mux5~5_combout\);

-- Location: LCCOMB_X28_Y34_N28
\ula|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~2_combout\ = (\ula|Mux7~2_combout\ & (\mux5E1|Mux2~combout\ & ((\mux5E2|Mux2~combout\) # (!\alu_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~2_combout\,
	datab => \alu_sel~combout\(0),
	datac => \mux5E1|Mux2~combout\,
	datad => \mux5E2|Mux2~combout\,
	combout => \ula|Mux5~2_combout\);

-- Location: LCCOMB_X29_Y34_N16
\ula|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux5~3_combout\ = (\ula|Mux5~2_combout\) # ((\ula|Mux5~5_combout\ & ((\alu_sel~combout\(2)) # (!\alu_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(1),
	datab => \alu_sel~combout\(2),
	datac => \ula|Mux5~5_combout\,
	datad => \ula|Mux5~2_combout\,
	combout => \ula|Mux5~3_combout\);

-- Location: LCCOMB_X29_Y34_N26
\ula|result[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|result\(5) = (GLOBAL(\ula|Mux8~0clkctrl_outclk\) & (\ula|result\(5))) # (!GLOBAL(\ula|Mux8~0clkctrl_outclk\) & ((\ula|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula|result\(5),
	datac => \ula|Mux5~3_combout\,
	datad => \ula|Mux8~0clkctrl_outclk\,
	combout => \ula|result\(5));

-- Location: LCCOMB_X30_Y34_N8
\mux4|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux2~2_combout\ = (\sel_mux4e~combout\(1) & ((\mux4|Mux2~1_combout\ & ((\ula|result\(5)))) # (!\mux4|Mux2~1_combout\ & (\mux5E2|Mux2~combout\)))) # (!\sel_mux4e~combout\(1) & (((\mux4|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux2~combout\,
	datab => \sel_mux4e~combout\(1),
	datac => \mux4|Mux2~1_combout\,
	datad => \ula|result\(5),
	combout => \mux4|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y34_N26
\mux5E2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux2~0_combout\ = (\sel_5e2~combout\(0) & \R1|data_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_5e2~combout\(0),
	datad => \R1|data_out\(5),
	combout => \mux5E2|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y34_N0
\mux5E2|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux2~1_combout\ = (\mux5E2|Mux4~3_combout\ & (\mux5E2|Mux4~2_combout\ & (\mux4|Mux2~2_combout\))) # (!\mux5E2|Mux4~3_combout\ & (((\mux5E2|Mux2~0_combout\)) # (!\mux5E2|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~3_combout\,
	datab => \mux5E2|Mux4~2_combout\,
	datac => \mux4|Mux2~2_combout\,
	datad => \mux5E2|Mux2~0_combout\,
	combout => \mux5E2|Mux2~1_combout\);

-- Location: LCFF_X30_Y34_N31
\R2|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux2~2_combout\,
	aclr => \R2_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R2_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2|data_out\(5));

-- Location: LCCOMB_X27_Y34_N8
\mux5E2|Mux2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux2~combout\ = (\mux5E2|Mux4~0_combout\ & ((\mux5E2|Mux2~1_combout\ & ((\R2|data_out\(5)))) # (!\mux5E2|Mux2~1_combout\ & (\R3|data_out\(5))))) # (!\mux5E2|Mux4~0_combout\ & (\mux5E2|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~0_combout\,
	datab => \mux5E2|Mux2~1_combout\,
	datac => \R3|data_out\(5),
	datad => \R2|data_out\(5),
	combout => \mux5E2|Mux2~combout\);

-- Location: LCFF_X27_Y34_N23
\R2|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux3~2_combout\,
	aclr => \R2_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R2_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2|data_out\(4));

-- Location: LCCOMB_X27_Y34_N12
\mux5E1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux3~1_combout\ = (\mux5E1|Mux7~2_combout\ & ((\mux5E1|Mux7~3_combout\ & ((\mux4|Mux3~2_combout\))) # (!\mux5E1|Mux7~3_combout\ & (\mux5E1|Mux3~0_combout\)))) # (!\mux5E1|Mux7~2_combout\ & (((!\mux5E1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux3~0_combout\,
	datab => \mux5E1|Mux7~2_combout\,
	datac => \mux4|Mux3~2_combout\,
	datad => \mux5E1|Mux7~3_combout\,
	combout => \mux5E1|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y34_N2
\mux5E1|Mux3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux3~combout\ = (\mux5E1|Mux7~0_combout\ & ((\mux5E1|Mux3~1_combout\ & ((\R2|data_out\(4)))) # (!\mux5E1|Mux3~1_combout\ & (\R3|data_out\(4))))) # (!\mux5E1|Mux7~0_combout\ & (((\mux5E1|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~0_combout\,
	datab => \R3|data_out\(4),
	datac => \R2|data_out\(4),
	datad => \mux5E1|Mux3~1_combout\,
	combout => \mux5E1|Mux3~combout\);

-- Location: LCCOMB_X27_Y34_N14
\ula|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~2_combout\ = (\ula|Mux7~2_combout\ & (\mux5E1|Mux3~combout\ & ((\mux5E2|Mux3~combout\) # (!\alu_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~2_combout\,
	datab => \mux5E1|Mux3~combout\,
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux3~combout\,
	combout => \ula|Mux4~2_combout\);

-- Location: LCCOMB_X27_Y34_N30
\ula|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~4_combout\ = (\ula|Mux7~3_combout\ & ((\ula|Mux7~4_combout\ & (\mux5E2|Mux3~combout\)) # (!\ula|Mux7~4_combout\ & ((\ula|Add0~15_combout\))))) # (!\ula|Mux7~3_combout\ & ((\mux5E2|Mux3~combout\) # ((\ula|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~3_combout\,
	datab => \mux5E2|Mux3~combout\,
	datac => \ula|Mux7~4_combout\,
	datad => \ula|Add0~15_combout\,
	combout => \ula|Mux4~4_combout\);

-- Location: LCCOMB_X27_Y34_N28
\ula|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~5_combout\ = (\mux5E1|Mux3~combout\ & (\ula|Mux7~4_combout\ $ (((\ula|Mux4~4_combout\) # (!\ula|Mux7~3_combout\))))) # (!\mux5E1|Mux3~combout\ & (((\ula|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~3_combout\,
	datab => \mux5E1|Mux3~combout\,
	datac => \ula|Mux7~4_combout\,
	datad => \ula|Mux4~4_combout\,
	combout => \ula|Mux4~5_combout\);

-- Location: LCCOMB_X27_Y34_N0
\ula|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux4~3_combout\ = (\ula|Mux4~2_combout\) # ((\ula|Mux4~5_combout\ & ((\alu_sel~combout\(2)) # (!\alu_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(2),
	datab => \alu_sel~combout\(1),
	datac => \ula|Mux4~2_combout\,
	datad => \ula|Mux4~5_combout\,
	combout => \ula|Mux4~3_combout\);

-- Location: LCCOMB_X27_Y34_N22
\ula|result[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|result\(4) = (GLOBAL(\ula|Mux8~0clkctrl_outclk\) & (\ula|result\(4))) # (!GLOBAL(\ula|Mux8~0clkctrl_outclk\) & ((\ula|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux8~0clkctrl_outclk\,
	datab => \ula|result\(4),
	datad => \ula|Mux4~3_combout\,
	combout => \ula|result\(4));

-- Location: LCCOMB_X27_Y34_N4
\mux4|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux3~2_combout\ = (\mux4|Mux3~1_combout\ & (((\ula|result\(4))) # (!\sel_mux4e~combout\(0)))) # (!\mux4|Mux3~1_combout\ & (\sel_mux4e~combout\(0) & (\mem|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|Mux3~1_combout\,
	datab => \sel_mux4e~combout\(0),
	datac => \mem|altsyncram_component|auto_generated|q_a\(4),
	datad => \ula|result\(4),
	combout => \mux4|Mux3~2_combout\);

-- Location: LCFF_X27_Y34_N5
\R3|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mux4|Mux3~2_combout\,
	aclr => \R3_clr~clkctrl_outclk\,
	ena => \R3_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R3|data_out\(4));

-- Location: LCCOMB_X28_Y35_N30
\R1|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R1|data_out[4]~feeder_combout\ = \mux4|Mux3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux4|Mux3~2_combout\,
	combout => \R1|data_out[4]~feeder_combout\);

-- Location: LCFF_X28_Y35_N31
\R1|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \R1|data_out[4]~feeder_combout\,
	aclr => \R1_clr~clkctrl_outclk\,
	ena => \R1_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1|data_out\(4));

-- Location: LCCOMB_X28_Y35_N12
\mux5E2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux3~0_combout\ = (\sel_5e2~combout\(0) & \R1|data_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_5e2~combout\(0),
	datad => \R1|data_out\(4),
	combout => \mux5E2|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y35_N14
\mux5E2|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux3~1_combout\ = (\mux5E2|Mux4~2_combout\ & ((\mux5E2|Mux4~3_combout\ & (\mux4|Mux3~2_combout\)) # (!\mux5E2|Mux4~3_combout\ & ((\mux5E2|Mux3~0_combout\))))) # (!\mux5E2|Mux4~2_combout\ & (((!\mux5E2|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~2_combout\,
	datab => \mux4|Mux3~2_combout\,
	datac => \mux5E2|Mux4~3_combout\,
	datad => \mux5E2|Mux3~0_combout\,
	combout => \mux5E2|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y34_N26
\mux5E2|Mux3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux3~combout\ = (\mux5E2|Mux4~0_combout\ & ((\mux5E2|Mux3~1_combout\ & ((\R2|data_out\(4)))) # (!\mux5E2|Mux3~1_combout\ & (\R3|data_out\(4))))) # (!\mux5E2|Mux4~0_combout\ & (((\mux5E2|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~0_combout\,
	datab => \R3|data_out\(4),
	datac => \R2|data_out\(4),
	datad => \mux5E2|Mux3~1_combout\,
	combout => \mux5E2|Mux3~combout\);

-- Location: LCCOMB_X25_Y34_N14
\mux4|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux4~1_combout\ = (\sel_mux4e~combout\(1) & (\sel_mux4e~combout\(0))) # (!\sel_mux4e~combout\(1) & ((\sel_mux4e~combout\(0) & ((\mem|altsyncram_component|auto_generated|q_a\(3)))) # (!\sel_mux4e~combout\(0) & (\mem_adr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \sel_mux4e~combout\(0),
	datac => \mem_adr~combout\(3),
	datad => \mem|altsyncram_component|auto_generated|q_a\(3),
	combout => \mux4|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y34_N10
\ula|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~4_combout\ = (\mux5E1|Mux4~combout\ & (((!\mux5E2|Mux4~combout\ & \ula|Mux7~3_combout\)) # (!\ula|Mux7~4_combout\))) # (!\mux5E1|Mux4~combout\ & ((\mux5E2|Mux4~combout\) # (\ula|Mux7~3_combout\ $ (\ula|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux4~combout\,
	datab => \mux5E2|Mux4~combout\,
	datac => \ula|Mux7~3_combout\,
	datad => \ula|Mux7~4_combout\,
	combout => \ula|Mux3~4_combout\);

-- Location: LCCOMB_X25_Y34_N20
\ula|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~5_combout\ = (\ula|Mux3~4_combout\ & (((\ula|Add0~12_combout\) # (\ula|Mux7~4_combout\)) # (!\ula|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~3_combout\,
	datab => \ula|Mux3~4_combout\,
	datac => \ula|Add0~12_combout\,
	datad => \ula|Mux7~4_combout\,
	combout => \ula|Mux3~5_combout\);

-- Location: LCCOMB_X25_Y34_N16
\ula|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~2_combout\ = (\ula|Mux7~2_combout\ & (\mux5E1|Mux4~combout\ & ((\mux5E2|Mux4~combout\) # (!\alu_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~2_combout\,
	datab => \alu_sel~combout\(0),
	datac => \mux5E1|Mux4~combout\,
	datad => \mux5E2|Mux4~combout\,
	combout => \ula|Mux3~2_combout\);

-- Location: LCCOMB_X25_Y34_N8
\ula|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux3~3_combout\ = (\ula|Mux3~2_combout\) # ((\ula|Mux3~5_combout\ & ((\alu_sel~combout\(2)) # (!\alu_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(1),
	datab => \alu_sel~combout\(2),
	datac => \ula|Mux3~5_combout\,
	datad => \ula|Mux3~2_combout\,
	combout => \ula|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y34_N22
\ula|result[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|result\(3) = (GLOBAL(\ula|Mux8~0clkctrl_outclk\) & (\ula|result\(3))) # (!GLOBAL(\ula|Mux8~0clkctrl_outclk\) & ((\ula|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula|result\(3),
	datac => \ula|Mux3~3_combout\,
	datad => \ula|Mux8~0clkctrl_outclk\,
	combout => \ula|result\(3));

-- Location: LCCOMB_X25_Y34_N2
\mux4|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux4~2_combout\ = (\sel_mux4e~combout\(1) & ((\mux4|Mux4~1_combout\ & ((\ula|result\(3)))) # (!\mux4|Mux4~1_combout\ & (\mux5E2|Mux4~combout\)))) # (!\sel_mux4e~combout\(1) & (((\mux4|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \mux5E2|Mux4~combout\,
	datac => \mux4|Mux4~1_combout\,
	datad => \ula|result\(3),
	combout => \mux4|Mux4~2_combout\);

-- Location: LCFF_X24_Y34_N27
\R1|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux4~2_combout\,
	aclr => \R1_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R1_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1|data_out\(3));

-- Location: LCCOMB_X24_Y34_N8
\mux5E2|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux4~1_combout\ = (\sel_5e2~combout\(0) & \R1|data_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_5e2~combout\(0),
	datad => \R1|data_out\(3),
	combout => \mux5E2|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y34_N26
\mux5E2|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux4~4_combout\ = (\mux5E2|Mux4~3_combout\ & (((\mux4|Mux4~2_combout\ & \mux5E2|Mux4~2_combout\)))) # (!\mux5E2|Mux4~3_combout\ & ((\mux5E2|Mux4~1_combout\) # ((!\mux5E2|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~3_combout\,
	datab => \mux5E2|Mux4~1_combout\,
	datac => \mux4|Mux4~2_combout\,
	datad => \mux5E2|Mux4~2_combout\,
	combout => \mux5E2|Mux4~4_combout\);

-- Location: LCCOMB_X25_Y34_N0
\mux5E2|Mux4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux4~combout\ = (\mux5E2|Mux4~0_combout\ & ((\mux5E2|Mux4~4_combout\ & (\R2|data_out\(3))) # (!\mux5E2|Mux4~4_combout\ & ((\R3|data_out\(3)))))) # (!\mux5E2|Mux4~0_combout\ & (\mux5E2|Mux4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~0_combout\,
	datab => \mux5E2|Mux4~4_combout\,
	datac => \R2|data_out\(3),
	datad => \R3|data_out\(3),
	combout => \mux5E2|Mux4~combout\);

-- Location: LCFF_X27_Y35_N27
\R2|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux5~2_combout\,
	aclr => \R2_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R2_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R2|data_out\(2));

-- Location: LCFF_X27_Y34_N11
\R3|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mux4|Mux5~2_combout\,
	aclr => \R3_clr~clkctrl_outclk\,
	ena => \R3_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R3|data_out\(2));

-- Location: LCCOMB_X27_Y35_N0
\mux5E1|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux5~1_combout\ = (\mux5E1|Mux7~2_combout\ & ((\mux5E1|Mux7~3_combout\ & ((\mux4|Mux5~2_combout\))) # (!\mux5E1|Mux7~3_combout\ & (\mux5E1|Mux5~0_combout\)))) # (!\mux5E1|Mux7~2_combout\ & (((!\mux5E1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux5~0_combout\,
	datab => \mux5E1|Mux7~2_combout\,
	datac => \mux4|Mux5~2_combout\,
	datad => \mux5E1|Mux7~3_combout\,
	combout => \mux5E1|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y35_N6
\mux5E1|Mux5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E1|Mux5~combout\ = (\mux5E1|Mux7~0_combout\ & ((\mux5E1|Mux5~1_combout\ & (\R2|data_out\(2))) # (!\mux5E1|Mux5~1_combout\ & ((\R3|data_out\(2)))))) # (!\mux5E1|Mux7~0_combout\ & (((\mux5E1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~0_combout\,
	datab => \R2|data_out\(2),
	datac => \R3|data_out\(2),
	datad => \mux5E1|Mux5~1_combout\,
	combout => \mux5E1|Mux5~combout\);

-- Location: LCCOMB_X27_Y35_N22
\compa|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|Equal0~1_combout\ = \mux5E2|Mux5~combout\ $ (\mux5E1|Mux5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux5~combout\,
	datad => \mux5E1|Mux5~combout\,
	combout => \compa|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y34_N26
\ula|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~4_combout\ = (\ula|Mux2~3_combout\ & (((\compa|Equal0~1_combout\) # (!\ula|Mux7~3_combout\)))) # (!\ula|Mux2~3_combout\ & (\ula|Add0~10_combout\ & ((\ula|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux2~3_combout\,
	datab => \ula|Add0~10_combout\,
	datac => \compa|Equal0~1_combout\,
	datad => \ula|Mux7~3_combout\,
	combout => \ula|Mux2~4_combout\);

-- Location: LCCOMB_X27_Y35_N14
\ula|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~2_combout\ = (\ula|Mux7~2_combout\ & (\mux5E1|Mux5~combout\ & ((\mux5E2|Mux5~combout\) # (!\alu_sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux5~combout\,
	datab => \alu_sel~combout\(0),
	datac => \ula|Mux7~2_combout\,
	datad => \mux5E1|Mux5~combout\,
	combout => \ula|Mux2~2_combout\);

-- Location: LCCOMB_X27_Y34_N18
\ula|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux2~5_combout\ = (\ula|Mux2~2_combout\) # ((\ula|Mux2~4_combout\ & ((\alu_sel~combout\(2)) # (!\alu_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(2),
	datab => \alu_sel~combout\(1),
	datac => \ula|Mux2~4_combout\,
	datad => \ula|Mux2~2_combout\,
	combout => \ula|Mux2~5_combout\);

-- Location: LCCOMB_X27_Y34_N6
\ula|result[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|result\(2) = (GLOBAL(\ula|Mux8~0clkctrl_outclk\) & (\ula|result\(2))) # (!GLOBAL(\ula|Mux8~0clkctrl_outclk\) & ((\ula|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|result\(2),
	datab => \ula|Mux2~5_combout\,
	datad => \ula|Mux8~0clkctrl_outclk\,
	combout => \ula|result\(2));

-- Location: LCCOMB_X27_Y34_N10
\mux4|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux5~2_combout\ = (\mux4|Mux5~1_combout\ & (((\ula|result\(2))) # (!\sel_mux4e~combout\(0)))) # (!\mux4|Mux5~1_combout\ & (\sel_mux4e~combout\(0) & (\mem|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|Mux5~1_combout\,
	datab => \sel_mux4e~combout\(0),
	datac => \mem|altsyncram_component|auto_generated|q_a\(2),
	datad => \ula|result\(2),
	combout => \mux4|Mux5~2_combout\);

-- Location: LCCOMB_X28_Y35_N28
\R1|data_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R1|data_out[2]~feeder_combout\ = \mux4|Mux5~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux4|Mux5~2_combout\,
	combout => \R1|data_out[2]~feeder_combout\);

-- Location: LCFF_X28_Y35_N29
\R1|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \R1|data_out[2]~feeder_combout\,
	aclr => \R1_clr~clkctrl_outclk\,
	ena => \R1_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1|data_out\(2));

-- Location: LCCOMB_X28_Y35_N18
\mux5E2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux5~0_combout\ = (\sel_5e2~combout\(0) & \R1|data_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_5e2~combout\(0),
	datad => \R1|data_out\(2),
	combout => \mux5E2|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y35_N20
\mux5E2|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux5~1_combout\ = (\mux5E2|Mux4~2_combout\ & ((\mux5E2|Mux4~3_combout\ & (\mux4|Mux5~2_combout\)) # (!\mux5E2|Mux4~3_combout\ & ((\mux5E2|Mux5~0_combout\))))) # (!\mux5E2|Mux4~2_combout\ & (((!\mux5E2|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~2_combout\,
	datab => \mux4|Mux5~2_combout\,
	datac => \mux5E2|Mux4~3_combout\,
	datad => \mux5E2|Mux5~0_combout\,
	combout => \mux5E2|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y35_N12
\mux5E2|Mux5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux5~combout\ = (\mux5E2|Mux4~0_combout\ & ((\mux5E2|Mux5~1_combout\ & ((\R2|data_out\(2)))) # (!\mux5E2|Mux5~1_combout\ & (\R3|data_out\(2))))) # (!\mux5E2|Mux4~0_combout\ & (\mux5E2|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~0_combout\,
	datab => \mux5E2|Mux5~1_combout\,
	datac => \R3|data_out\(2),
	datad => \R2|data_out\(2),
	combout => \mux5E2|Mux5~combout\);

-- Location: LCCOMB_X25_Y34_N12
\mux4|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux7~2_combout\ = (\mux4|Mux7~1_combout\ & (((\ula|result\(0))) # (!\sel_mux4e~combout\(0)))) # (!\mux4|Mux7~1_combout\ & (\sel_mux4e~combout\(0) & ((\mem|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|Mux7~1_combout\,
	datab => \sel_mux4e~combout\(0),
	datac => \ula|result\(0),
	datad => \mem|altsyncram_component|auto_generated|q_a\(0),
	combout => \mux4|Mux7~2_combout\);

-- Location: LCFF_X25_Y35_N21
\R1|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux4|Mux7~2_combout\,
	aclr => \R1_clr~clkctrl_outclk\,
	sload => VCC,
	ena => \R1_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R1|data_out\(0));

-- Location: LCCOMB_X25_Y35_N26
\mux5E2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux7~0_combout\ = (\sel_5e2~combout\(1) & (!\sel_5e2~combout\(0))) # (!\sel_5e2~combout\(1) & (\sel_5e2~combout\(0) & \R1|data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e2~combout\(1),
	datab => \sel_5e2~combout\(0),
	datac => \R1|data_out\(0),
	combout => \mux5E2|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y35_N20
\mux5E2|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux7~1_combout\ = (\sel_5e2~combout\(2) & (!\sel_5e2~combout\(0) & (\mux4|Mux7~2_combout\ & !\mux5E2|Mux7~0_combout\))) # (!\sel_5e2~combout\(2) & (((\mux5E2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e2~combout\(2),
	datab => \sel_5e2~combout\(0),
	datac => \mux4|Mux7~2_combout\,
	datad => \mux5E2|Mux7~0_combout\,
	combout => \mux5E2|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y34_N18
\mux5E2|Mux7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux7~combout\ = (\mux5E2|Mux4~0_combout\ & ((\mux5E2|Mux7~1_combout\ & (\R2|data_out\(0))) # (!\mux5E2|Mux7~1_combout\ & ((\R3|data_out\(0)))))) # (!\mux5E2|Mux4~0_combout\ & (\mux5E2|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~0_combout\,
	datab => \mux5E2|Mux7~1_combout\,
	datac => \R2|data_out\(0),
	datad => \R3|data_out\(0),
	combout => \mux5E2|Mux7~combout\);

-- Location: LCCOMB_X25_Y34_N6
\ula|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Add0~0_combout\ = \alu_sel~combout\(0) $ (\mux5E2|Mux7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel~combout\(0),
	datad => \mux5E2|Mux7~combout\,
	combout => \ula|Add0~0_combout\);

-- Location: LCCOMB_X31_Y34_N22
\ula|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~4_combout\ = (\ula|Mux7~4_combout\ & (\mux5E1|Mux6~combout\ $ (((\mux5E2|Mux6~combout\) # (!\ula|Mux7~3_combout\))))) # (!\ula|Mux7~4_combout\ & ((\ula|Mux7~3_combout\) # ((\mux5E2|Mux6~combout\) # (\mux5E1|Mux6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~3_combout\,
	datab => \ula|Mux7~4_combout\,
	datac => \mux5E2|Mux6~combout\,
	datad => \mux5E1|Mux6~combout\,
	combout => \ula|Mux1~4_combout\);

-- Location: LCCOMB_X31_Y34_N16
\ula|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~5_combout\ = (\ula|Mux1~4_combout\ & (((\ula|Add0~6_combout\) # (\ula|Mux7~4_combout\)) # (!\ula|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Mux7~3_combout\,
	datab => \ula|Add0~6_combout\,
	datac => \ula|Mux1~4_combout\,
	datad => \ula|Mux7~4_combout\,
	combout => \ula|Mux1~5_combout\);

-- Location: LCCOMB_X31_Y34_N8
\ula|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|Mux1~3_combout\ = (\ula|Mux1~2_combout\) # ((\ula|Mux1~5_combout\ & ((\alu_sel~combout\(2)) # (!\alu_sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel~combout\(2),
	datab => \ula|Mux1~2_combout\,
	datac => \ula|Mux1~5_combout\,
	datad => \alu_sel~combout\(1),
	combout => \ula|Mux1~3_combout\);

-- Location: LCCOMB_X31_Y34_N14
\ula|result[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ula|result\(1) = (GLOBAL(\ula|Mux8~0clkctrl_outclk\) & (\ula|result\(1))) # (!GLOBAL(\ula|Mux8~0clkctrl_outclk\) & ((\ula|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula|result\(1),
	datac => \ula|Mux8~0clkctrl_outclk\,
	datad => \ula|Mux1~3_combout\,
	combout => \ula|result\(1));

-- Location: LCCOMB_X31_Y34_N0
\mux4|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux6~1_combout\ = (\sel_mux4e~combout\(1) & (((\sel_mux4e~combout\(0))))) # (!\sel_mux4e~combout\(1) & ((\sel_mux4e~combout\(0) & ((\mem|altsyncram_component|auto_generated|q_a\(1)))) # (!\sel_mux4e~combout\(0) & (\mem_adr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \mem_adr~combout\(1),
	datac => \sel_mux4e~combout\(0),
	datad => \mem|altsyncram_component|auto_generated|q_a\(1),
	combout => \mux4|Mux6~1_combout\);

-- Location: LCCOMB_X31_Y34_N26
\mux4|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux4|Mux6~2_combout\ = (\sel_mux4e~combout\(1) & ((\mux4|Mux6~1_combout\ & ((\ula|result\(1)))) # (!\mux4|Mux6~1_combout\ & (\mux5E2|Mux6~combout\)))) # (!\sel_mux4e~combout\(1) & (((\mux4|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux4e~combout\(1),
	datab => \mux5E2|Mux6~combout\,
	datac => \ula|result\(1),
	datad => \mux4|Mux6~1_combout\,
	combout => \mux4|Mux6~2_combout\);

-- Location: LCCOMB_X30_Y35_N2
\mux5E2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux6~0_combout\ = (\sel_5e2~combout\(0) & (!\sel_5e2~combout\(1) & \R1|data_out\(1))) # (!\sel_5e2~combout\(0) & (\sel_5e2~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_5e2~combout\(0),
	datac => \sel_5e2~combout\(1),
	datad => \R1|data_out\(1),
	combout => \mux5E2|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y35_N16
\mux5E2|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux6~1_combout\ = (\sel_5e2~combout\(2) & (!\sel_5e2~combout\(0) & (\mux4|Mux6~2_combout\ & !\mux5E2|Mux6~0_combout\))) # (!\sel_5e2~combout\(2) & (((\mux5E2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_5e2~combout\(2),
	datab => \sel_5e2~combout\(0),
	datac => \mux4|Mux6~2_combout\,
	datad => \mux5E2|Mux6~0_combout\,
	combout => \mux5E2|Mux6~1_combout\);

-- Location: LCCOMB_X27_Y34_N24
\mux5E2|Mux6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux5E2|Mux6~combout\ = (\mux5E2|Mux4~0_combout\ & ((\mux5E2|Mux6~1_combout\ & (\R2|data_out\(1))) # (!\mux5E2|Mux6~1_combout\ & ((\R3|data_out\(1)))))) # (!\mux5E2|Mux4~0_combout\ & (\mux5E2|Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux4~0_combout\,
	datab => \mux5E2|Mux6~1_combout\,
	datac => \R2|data_out\(1),
	datad => \R3|data_out\(1),
	combout => \mux5E2|Mux6~combout\);

-- Location: LCCOMB_X31_Y34_N10
\compa|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|Equal0~0_combout\ = (\mux5E2|Mux7~combout\ & (\mux5E1|Mux7~combout\ & (\mux5E2|Mux6~combout\ $ (!\mux5E1|Mux6~combout\)))) # (!\mux5E2|Mux7~combout\ & (!\mux5E1|Mux7~combout\ & (\mux5E2|Mux6~combout\ $ (!\mux5E1|Mux6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux7~combout\,
	datab => \mux5E2|Mux6~combout\,
	datac => \mux5E1|Mux6~combout\,
	datad => \mux5E1|Mux7~combout\,
	combout => \compa|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y34_N20
\compa|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|Equal0~2_combout\ = (!\compa|Equal0~1_combout\ & (\compa|Equal0~0_combout\ & (\mux5E1|Mux4~combout\ $ (!\mux5E2|Mux4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compa|Equal0~1_combout\,
	datab => \compa|Equal0~0_combout\,
	datac => \mux5E1|Mux4~combout\,
	datad => \mux5E2|Mux4~combout\,
	combout => \compa|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y34_N24
\compa|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|Equal0~3_combout\ = (\mux5E2|Mux2~combout\ & (\mux5E1|Mux2~combout\ & (\mux5E2|Mux3~combout\ $ (!\mux5E1|Mux3~combout\)))) # (!\mux5E2|Mux2~combout\ & (!\mux5E1|Mux2~combout\ & (\mux5E2|Mux3~combout\ $ (!\mux5E1|Mux3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux2~combout\,
	datab => \mux5E2|Mux3~combout\,
	datac => \mux5E1|Mux2~combout\,
	datad => \mux5E1|Mux3~combout\,
	combout => \compa|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y34_N12
\compa|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|Equal0~5_combout\ = \mux5E1|Mux0~combout\ $ (\mux5E2|Mux0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux5E1|Mux0~combout\,
	datad => \mux5E2|Mux0~combout\,
	combout => \compa|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y34_N10
\compa|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|Equal0~6_combout\ = (\compa|Equal0~2_combout\ & (!\compa|Equal0~4_combout\ & (\compa|Equal0~3_combout\ & !\compa|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compa|Equal0~2_combout\,
	datab => \compa|Equal0~4_combout\,
	datac => \compa|Equal0~3_combout\,
	datad => \compa|Equal0~5_combout\,
	combout => \compa|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y34_N16
\compa|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan0~1_cout\ = CARRY((\mux5E1|Mux7~combout\ & !\mux5E2|Mux7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~combout\,
	datab => \mux5E2|Mux7~combout\,
	datad => VCC,
	cout => \compa|LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y34_N18
\compa|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan0~3_cout\ = CARRY((\mux5E1|Mux6~combout\ & (\mux5E2|Mux6~combout\ & !\compa|LessThan0~1_cout\)) # (!\mux5E1|Mux6~combout\ & ((\mux5E2|Mux6~combout\) # (!\compa|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux6~combout\,
	datab => \mux5E2|Mux6~combout\,
	datad => VCC,
	cin => \compa|LessThan0~1_cout\,
	cout => \compa|LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y34_N20
\compa|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan0~5_cout\ = CARRY((\mux5E1|Mux5~combout\ & ((!\compa|LessThan0~3_cout\) # (!\mux5E2|Mux5~combout\))) # (!\mux5E1|Mux5~combout\ & (!\mux5E2|Mux5~combout\ & !\compa|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux5~combout\,
	datab => \mux5E2|Mux5~combout\,
	datad => VCC,
	cin => \compa|LessThan0~3_cout\,
	cout => \compa|LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y34_N22
\compa|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan0~7_cout\ = CARRY((\mux5E1|Mux4~combout\ & (\mux5E2|Mux4~combout\ & !\compa|LessThan0~5_cout\)) # (!\mux5E1|Mux4~combout\ & ((\mux5E2|Mux4~combout\) # (!\compa|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux4~combout\,
	datab => \mux5E2|Mux4~combout\,
	datad => VCC,
	cin => \compa|LessThan0~5_cout\,
	cout => \compa|LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y34_N24
\compa|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan0~9_cout\ = CARRY((\mux5E1|Mux3~combout\ & ((!\compa|LessThan0~7_cout\) # (!\mux5E2|Mux3~combout\))) # (!\mux5E1|Mux3~combout\ & (!\mux5E2|Mux3~combout\ & !\compa|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux3~combout\,
	datab => \mux5E2|Mux3~combout\,
	datad => VCC,
	cin => \compa|LessThan0~7_cout\,
	cout => \compa|LessThan0~9_cout\);

-- Location: LCCOMB_X32_Y34_N26
\compa|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan0~11_cout\ = CARRY((\mux5E2|Mux2~combout\ & ((!\compa|LessThan0~9_cout\) # (!\mux5E1|Mux2~combout\))) # (!\mux5E2|Mux2~combout\ & (!\mux5E1|Mux2~combout\ & !\compa|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux2~combout\,
	datab => \mux5E1|Mux2~combout\,
	datad => VCC,
	cin => \compa|LessThan0~9_cout\,
	cout => \compa|LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y34_N28
\compa|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan0~13_cout\ = CARRY((\mux5E1|Mux1~combout\ & ((!\compa|LessThan0~11_cout\) # (!\mux5E2|Mux1~combout\))) # (!\mux5E1|Mux1~combout\ & (!\mux5E2|Mux1~combout\ & !\compa|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux1~combout\,
	datab => \mux5E2|Mux1~combout\,
	datad => VCC,
	cin => \compa|LessThan0~11_cout\,
	cout => \compa|LessThan0~13_cout\);

-- Location: LCCOMB_X32_Y34_N30
\compa|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan0~14_combout\ = (\mux5E2|Mux0~combout\ & (\compa|LessThan0~13_cout\ & \mux5E1|Mux0~combout\)) # (!\mux5E2|Mux0~combout\ & ((\compa|LessThan0~13_cout\) # (\mux5E1|Mux0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux5E2|Mux0~combout\,
	datad => \mux5E1|Mux0~combout\,
	cin => \compa|LessThan0~13_cout\,
	combout => \compa|LessThan0~14_combout\);

-- Location: LCCOMB_X32_Y34_N0
\compa|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan1~1_cout\ = CARRY((!\mux5E1|Mux7~combout\ & \mux5E2|Mux7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux7~combout\,
	datab => \mux5E2|Mux7~combout\,
	datad => VCC,
	cout => \compa|LessThan1~1_cout\);

-- Location: LCCOMB_X32_Y34_N2
\compa|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan1~3_cout\ = CARRY((\mux5E1|Mux6~combout\ & ((!\compa|LessThan1~1_cout\) # (!\mux5E2|Mux6~combout\))) # (!\mux5E1|Mux6~combout\ & (!\mux5E2|Mux6~combout\ & !\compa|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux6~combout\,
	datab => \mux5E2|Mux6~combout\,
	datad => VCC,
	cin => \compa|LessThan1~1_cout\,
	cout => \compa|LessThan1~3_cout\);

-- Location: LCCOMB_X32_Y34_N4
\compa|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan1~5_cout\ = CARRY((\mux5E1|Mux5~combout\ & (\mux5E2|Mux5~combout\ & !\compa|LessThan1~3_cout\)) # (!\mux5E1|Mux5~combout\ & ((\mux5E2|Mux5~combout\) # (!\compa|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux5~combout\,
	datab => \mux5E2|Mux5~combout\,
	datad => VCC,
	cin => \compa|LessThan1~3_cout\,
	cout => \compa|LessThan1~5_cout\);

-- Location: LCCOMB_X32_Y34_N6
\compa|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan1~7_cout\ = CARRY((\mux5E1|Mux4~combout\ & ((!\compa|LessThan1~5_cout\) # (!\mux5E2|Mux4~combout\))) # (!\mux5E1|Mux4~combout\ & (!\mux5E2|Mux4~combout\ & !\compa|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux4~combout\,
	datab => \mux5E2|Mux4~combout\,
	datad => VCC,
	cin => \compa|LessThan1~5_cout\,
	cout => \compa|LessThan1~7_cout\);

-- Location: LCCOMB_X32_Y34_N8
\compa|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan1~9_cout\ = CARRY((\mux5E1|Mux3~combout\ & (\mux5E2|Mux3~combout\ & !\compa|LessThan1~7_cout\)) # (!\mux5E1|Mux3~combout\ & ((\mux5E2|Mux3~combout\) # (!\compa|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux3~combout\,
	datab => \mux5E2|Mux3~combout\,
	datad => VCC,
	cin => \compa|LessThan1~7_cout\,
	cout => \compa|LessThan1~9_cout\);

-- Location: LCCOMB_X32_Y34_N10
\compa|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan1~11_cout\ = CARRY((\mux5E2|Mux2~combout\ & (\mux5E1|Mux2~combout\ & !\compa|LessThan1~9_cout\)) # (!\mux5E2|Mux2~combout\ & ((\mux5E1|Mux2~combout\) # (!\compa|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E2|Mux2~combout\,
	datab => \mux5E1|Mux2~combout\,
	datad => VCC,
	cin => \compa|LessThan1~9_cout\,
	cout => \compa|LessThan1~11_cout\);

-- Location: LCCOMB_X32_Y34_N12
\compa|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan1~13_cout\ = CARRY((\mux5E1|Mux1~combout\ & (\mux5E2|Mux1~combout\ & !\compa|LessThan1~11_cout\)) # (!\mux5E1|Mux1~combout\ & ((\mux5E2|Mux1~combout\) # (!\compa|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux5E1|Mux1~combout\,
	datab => \mux5E2|Mux1~combout\,
	datad => VCC,
	cin => \compa|LessThan1~11_cout\,
	cout => \compa|LessThan1~13_cout\);

-- Location: LCCOMB_X32_Y34_N14
\compa|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \compa|LessThan1~14_combout\ = (\mux5E2|Mux0~combout\ & ((\compa|LessThan1~13_cout\) # (!\mux5E1|Mux0~combout\))) # (!\mux5E2|Mux0~combout\ & (\compa|LessThan1~13_cout\ & !\mux5E1|Mux0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux5E2|Mux0~combout\,
	datad => \mux5E1|Mux0~combout\,
	cin => \compa|LessThan1~13_cout\,
	combout => \compa|LessThan1~14_combout\);

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[0]~I\ : cycloneii_io
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
	datain => \IR|data_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(0));

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[1]~I\ : cycloneii_io
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
	datain => \IR|data_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(1));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[2]~I\ : cycloneii_io
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
	datain => \IR|data_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(2));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[3]~I\ : cycloneii_io
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
	datain => \IR|data_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(3));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[4]~I\ : cycloneii_io
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
	datain => \IR|data_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(4));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[5]~I\ : cycloneii_io
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
	datain => \IR|data_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(5));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[6]~I\ : cycloneii_io
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
	datain => \IR|data_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(6));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[7]~I\ : cycloneii_io
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
	datain => \IR|data_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(7));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[8]~I\ : cycloneii_io
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
	datain => \IR|data_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(8));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[9]~I\ : cycloneii_io
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
	datain => \IR|data_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(9));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[10]~I\ : cycloneii_io
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
	datain => \IR|data_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(10));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[11]~I\ : cycloneii_io
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
	datain => \IR|data_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(11));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[12]~I\ : cycloneii_io
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
	datain => \IR|data_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(12));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[13]~I\ : cycloneii_io
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
	datain => \IR|data_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(13));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[14]~I\ : cycloneii_io
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
	datain => \IR|data_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(14));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IR_out[15]~I\ : cycloneii_io
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
	datain => \IR|data_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IR_out(15));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\comp_out[0]~I\ : cycloneii_io
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
	datain => \compa|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_comp_out(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\comp_out[1]~I\ : cycloneii_io
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
	datain => \compa|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_comp_out(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\comp_out[2]~I\ : cycloneii_io
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
	datain => \compa|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_comp_out(2));
END structure;


