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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/26/2024 10:24:36"

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

ENTITY 	problem1 IS
    PORT (
	R_first_four : OUT std_logic_vector(0 TO 6);
	Clock : IN std_logic;
	latchReset : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	FSM_reset : IN std_logic;
	R_last_four : OUT std_logic_vector(0 TO 6);
	Sign : OUT std_logic_vector(0 TO 6);
	student_ID : OUT std_logic_vector(0 TO 6)
	);
END problem1;

-- Design Ports Information
-- R_first_four[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[1]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[2]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[4]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[6]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[4]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[5]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[6]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[0]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[1]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[2]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[3]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[4]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[5]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[6]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[4]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[6]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- latchReset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF problem1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R_first_four : std_logic_vector(0 TO 6);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_latchReset : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_R_last_four : std_logic_vector(0 TO 6);
SIGNAL ww_Sign : std_logic_vector(0 TO 6);
SIGNAL ww_student_ID : std_logic_vector(0 TO 6);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \latchReset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Selector2~5_combout\ : std_logic;
SIGNAL \inst|Selector0~5_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|RESULT~1_combout\ : std_logic;
SIGNAL \inst|Sign~1_combout\ : std_logic;
SIGNAL \latchReset~combout\ : std_logic;
SIGNAL \latchReset~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|yfsm.s2~regout\ : std_logic;
SIGNAL \inst3|yfsm.s3~regout\ : std_logic;
SIGNAL \inst3|yfsm.s4~regout\ : std_logic;
SIGNAL \inst3|yfsm.s5~regout\ : std_logic;
SIGNAL \inst3|yfsm.s6~regout\ : std_logic;
SIGNAL \inst3|yfsm.s7~regout\ : std_logic;
SIGNAL \inst3|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s0~regout\ : std_logic;
SIGNAL \inst3|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst3|yfsm.s1~regout\ : std_logic;
SIGNAL \inst|output[7]~3_combout\ : std_logic;
SIGNAL \inst|Selector1~5_combout\ : std_logic;
SIGNAL \inst|output[7]~2_combout\ : std_logic;
SIGNAL \inst|Selector1~4_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Selector1~8_combout\ : std_logic;
SIGNAL \inst|Selector1~6_combout\ : std_logic;
SIGNAL \inst|Selector1~7_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Selector3~4_combout\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Selector3~8_combout\ : std_logic;
SIGNAL \inst|Selector3~5_combout\ : std_logic;
SIGNAL \inst|Selector3~6_combout\ : std_logic;
SIGNAL \inst|Selector3~7_combout\ : std_logic;
SIGNAL \inst9|Q[7]~feeder_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Selector0~4_combout\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|Selector0~8_combout\ : std_logic;
SIGNAL \inst|Selector0~6_combout\ : std_logic;
SIGNAL \inst|Selector0~7_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|output[7]~1_combout\ : std_logic;
SIGNAL \inst|Selector2~4_combout\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Selector2~8_combout\ : std_logic;
SIGNAL \inst|Selector2~6_combout\ : std_logic;
SIGNAL \inst|Selector2~7_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst|Selector6~3_combout\ : std_logic;
SIGNAL \inst|Selector6~4_combout\ : std_logic;
SIGNAL \inst|output[0]~4_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|output[0]~5_combout\ : std_logic;
SIGNAL \inst|output[0]~6_combout\ : std_logic;
SIGNAL \inst|output[0]~7_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|output[0]~8_combout\ : std_logic;
SIGNAL \inst|output[0]~9_combout\ : std_logic;
SIGNAL \inst|output[0]~0_combout\ : std_logic;
SIGNAL \inst|output[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|Selector5~2_combout\ : std_logic;
SIGNAL \inst|Selector5~3_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Selector5~4_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|RESULT~0_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|Selector4~3_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Mux1~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux4~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~14_combout\ : std_logic;
SIGNAL \inst|Sign~0_combout\ : std_logic;
SIGNAL \inst|Sign~2_combout\ : std_logic;
SIGNAL \inst|Sign~regout\ : std_logic;
SIGNAL \inst3|WideOr11~combout\ : std_logic;
SIGNAL \inst3|WideOr12~combout\ : std_logic;
SIGNAL \inst3|WideOr13~combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_WideOr13~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_yfsm.s0~regout\ : std_logic;
SIGNAL \inst|ALT_INV_Sign~regout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

R_first_four <= ww_R_first_four;
ww_Clock <= Clock;
ww_latchReset <= latchReset;
ww_A <= A;
ww_B <= B;
ww_FSM_reset <= FSM_reset;
R_last_four <= ww_R_last_four;
Sign <= ww_Sign;
student_ID <= ww_student_ID;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\latchReset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \latchReset~combout\);

\FSM_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FSM_reset~combout\);
\inst4|ALT_INV_Mux5~0_combout\ <= NOT \inst4|Mux5~0_combout\;
\inst4|ALT_INV_Mux3~0_combout\ <= NOT \inst4|Mux3~0_combout\;
\inst3|ALT_INV_WideOr13~combout\ <= NOT \inst3|WideOr13~combout\;
\inst3|ALT_INV_yfsm.s0~regout\ <= NOT \inst3|yfsm.s0~regout\;
\inst|ALT_INV_Sign~regout\ <= NOT \inst|Sign~regout\;
\inst10|ALT_INV_Mux6~0_combout\ <= NOT \inst10|Mux6~0_combout\;
\inst11|ALT_INV_Mux6~0_combout\ <= NOT \inst11|Mux6~0_combout\;

-- Location: LCCOMB_X28_Y33_N20
\inst|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = ((\inst9|Q\(2) $ (\inst8|Q\(2) $ (\inst|Add3~3\)))) # (GND)
-- \inst|Add3~5\ = CARRY((\inst9|Q\(2) & (\inst8|Q\(2) & !\inst|Add3~3\)) # (!\inst9|Q\(2) & ((\inst8|Q\(2)) # (!\inst|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(2),
	datab => \inst8|Q\(2),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X30_Y33_N24
\inst|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~5_combout\ = (\inst|Selector7~0_combout\ & (((\inst8|Q\(5) & \inst9|Q\(5))) # (!\inst|output[7]~3_combout\))) # (!\inst|Selector7~0_combout\ & ((\inst|output[7]~3_combout\) # ((!\inst8|Q\(5) & !\inst9|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst8|Q\(5),
	datac => \inst|output[7]~3_combout\,
	datad => \inst9|Q\(5),
	combout => \inst|Selector2~5_combout\);

-- Location: LCCOMB_X27_Y33_N24
\inst|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~5_combout\ = (\inst|Selector7~0_combout\ & (((\inst8|Q\(7) & \inst9|Q\(7))) # (!\inst|output[7]~3_combout\))) # (!\inst|Selector7~0_combout\ & ((\inst|output[7]~3_combout\) # ((!\inst8|Q\(7) & !\inst9|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst8|Q\(7),
	datac => \inst9|Q\(7),
	datad => \inst|output[7]~3_combout\,
	combout => \inst|Selector0~5_combout\);

-- Location: LCCOMB_X28_Y33_N10
\inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|Selector7~0_combout\ & (\inst9|Q\(2) & (\inst8|Q\(2)))) # (!\inst|Selector7~0_combout\ & (((\inst|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(2),
	datab => \inst8|Q\(2),
	datac => \inst|Add3~4_combout\,
	datad => \inst|Selector7~0_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X32_Y33_N20
\inst|RESULT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RESULT~1_combout\ = (\inst8|Q\(3) & \inst9|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Q\(3),
	datac => \inst9|Q\(3),
	combout => \inst|RESULT~1_combout\);

-- Location: LCCOMB_X30_Y33_N30
\inst|Sign~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Sign~1_combout\ = (!\inst3|yfsm.s4~regout\ & ((\inst3|yfsm.s1~regout\) # ((\inst3|yfsm.s5~regout\ & \inst3|yfsm.s3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s1~regout\,
	datab => \inst3|yfsm.s4~regout\,
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst3|yfsm.s3~regout\,
	combout => \inst|Sign~1_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\latchReset~I\ : cycloneii_io
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
	padio => ww_latchReset,
	combout => \latchReset~combout\);

-- Location: CLKCTRL_G1
\latchReset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \latchReset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \latchReset~clkctrl_outclk\);

-- Location: LCFF_X28_Y33_N29
\inst8|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(6));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N17
\inst8|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(5));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N15
\inst9|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|Q\(4));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N23
\inst9|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|Q\(3));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N3
\inst8|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N31
\inst8|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N5
\inst9|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|Q\(0));

-- Location: LCCOMB_X31_Y33_N14
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst8|Q\(0) & (\inst9|Q\(0) $ (VCC))) # (!\inst8|Q\(0) & (\inst9|Q\(0) & VCC))
-- \inst|Add0~1\ = CARRY((\inst8|Q\(0) & \inst9|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(0),
	datab => \inst9|Q\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X31_Y33_N16
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst9|Q\(1) & ((\inst8|Q\(1) & (\inst|Add0~1\ & VCC)) # (!\inst8|Q\(1) & (!\inst|Add0~1\)))) # (!\inst9|Q\(1) & ((\inst8|Q\(1) & (!\inst|Add0~1\)) # (!\inst8|Q\(1) & ((\inst|Add0~1\) # (GND)))))
-- \inst|Add0~3\ = CARRY((\inst9|Q\(1) & (!\inst8|Q\(1) & !\inst|Add0~1\)) # (!\inst9|Q\(1) & ((!\inst|Add0~1\) # (!\inst8|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(1),
	datab => \inst8|Q\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X31_Y33_N18
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\inst9|Q\(2) $ (\inst8|Q\(2) $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\inst9|Q\(2) & ((\inst8|Q\(2)) # (!\inst|Add0~3\))) # (!\inst9|Q\(2) & (\inst8|Q\(2) & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(2),
	datab => \inst8|Q\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X31_Y33_N20
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst8|Q\(3) & ((\inst9|Q\(3) & (\inst|Add0~5\ & VCC)) # (!\inst9|Q\(3) & (!\inst|Add0~5\)))) # (!\inst8|Q\(3) & ((\inst9|Q\(3) & (!\inst|Add0~5\)) # (!\inst9|Q\(3) & ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\inst8|Q\(3) & (!\inst9|Q\(3) & !\inst|Add0~5\)) # (!\inst8|Q\(3) & ((!\inst|Add0~5\) # (!\inst9|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(3),
	datab => \inst9|Q\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X31_Y33_N22
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst8|Q\(4) $ (\inst9|Q\(4) $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst8|Q\(4) & ((\inst9|Q\(4)) # (!\inst|Add0~7\))) # (!\inst8|Q\(4) & (\inst9|Q\(4) & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(4),
	datab => \inst9|Q\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X31_Y33_N24
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst9|Q\(5) & ((\inst8|Q\(5) & (\inst|Add0~9\ & VCC)) # (!\inst8|Q\(5) & (!\inst|Add0~9\)))) # (!\inst9|Q\(5) & ((\inst8|Q\(5) & (!\inst|Add0~9\)) # (!\inst8|Q\(5) & ((\inst|Add0~9\) # (GND)))))
-- \inst|Add0~11\ = CARRY((\inst9|Q\(5) & (!\inst8|Q\(5) & !\inst|Add0~9\)) # (!\inst9|Q\(5) & ((!\inst|Add0~9\) # (!\inst8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(5),
	datab => \inst8|Q\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X31_Y33_N26
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = ((\inst9|Q\(6) $ (\inst8|Q\(6) $ (!\inst|Add0~11\)))) # (GND)
-- \inst|Add0~13\ = CARRY((\inst9|Q\(6) & ((\inst8|Q\(6)) # (!\inst|Add0~11\))) # (!\inst9|Q\(6) & (\inst8|Q\(6) & !\inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(6),
	datab => \inst8|Q\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_reset~I\ : cycloneii_io
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
	padio => ww_FSM_reset,
	combout => \FSM_reset~combout\);

-- Location: CLKCTRL_G2
\FSM_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM_reset~clkctrl_outclk\);

-- Location: LCFF_X29_Y33_N13
\inst3|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s1~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s2~regout\);

-- Location: LCFF_X29_Y33_N21
\inst3|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s2~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s3~regout\);

-- Location: LCFF_X29_Y33_N25
\inst3|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s3~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s4~regout\);

-- Location: LCFF_X29_Y33_N23
\inst3|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s4~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s5~regout\);

-- Location: LCFF_X29_Y33_N27
\inst3|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s5~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s6~regout\);

-- Location: LCFF_X29_Y33_N1
\inst3|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst3|yfsm.s6~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s7~regout\);

-- Location: LCCOMB_X29_Y33_N10
\inst3|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s0~0_combout\ = !\inst3|yfsm.s7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s7~regout\,
	combout => \inst3|yfsm.s0~0_combout\);

-- Location: LCFF_X29_Y33_N11
\inst3|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s0~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s0~regout\);

-- Location: LCCOMB_X29_Y33_N2
\inst3|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|yfsm.s1~0_combout\ = !\inst3|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst3|yfsm.s1~0_combout\);

-- Location: LCFF_X29_Y33_N3
\inst3|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|yfsm.s1~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|yfsm.s1~regout\);

-- Location: LCCOMB_X29_Y33_N26
\inst|output[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[7]~3_combout\ = (\inst3|yfsm.s1~regout\) # ((\inst3|yfsm.s5~regout\ & !\inst3|yfsm.s4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s5~regout\,
	datad => \inst3|yfsm.s4~regout\,
	combout => \inst|output[7]~3_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N7
\inst9|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|Q\(6));

-- Location: LCCOMB_X27_Y33_N22
\inst|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~5_combout\ = (\inst|Selector7~0_combout\ & (((\inst9|Q\(6) & \inst8|Q\(6))) # (!\inst|output[7]~3_combout\))) # (!\inst|Selector7~0_combout\ & ((\inst|output[7]~3_combout\) # ((!\inst9|Q\(6) & !\inst8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst|output[7]~3_combout\,
	datac => \inst9|Q\(6),
	datad => \inst8|Q\(6),
	combout => \inst|Selector1~5_combout\);

-- Location: LCCOMB_X29_Y33_N20
\inst|output[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[7]~2_combout\ = (\inst3|yfsm.s2~regout\) # (\inst3|yfsm.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datad => \inst3|yfsm.s6~regout\,
	combout => \inst|output[7]~2_combout\);

-- Location: LCCOMB_X28_Y33_N6
\inst|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~4_combout\ = (\inst|output[7]~1_combout\ & (((!\inst9|Q\(6) & !\inst|output[7]~2_combout\)) # (!\inst8|Q\(6)))) # (!\inst|output[7]~1_combout\ & ((\inst8|Q\(6) & ((!\inst|output[7]~2_combout\) # (!\inst9|Q\(6)))) # (!\inst8|Q\(6) & 
-- (\inst9|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[7]~1_combout\,
	datab => \inst8|Q\(6),
	datac => \inst9|Q\(6),
	datad => \inst|output[7]~2_combout\,
	combout => \inst|Selector1~4_combout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N27
\inst9|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|Q\(5));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X29_Y33_N31
\inst8|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(0));

-- Location: LCCOMB_X28_Y33_N16
\inst|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst9|Q\(0) & (\inst8|Q\(0) $ (VCC))) # (!\inst9|Q\(0) & ((\inst8|Q\(0)) # (GND)))
-- \inst|Add3~1\ = CARRY((\inst8|Q\(0)) # (!\inst9|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(0),
	datab => \inst8|Q\(0),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X28_Y33_N18
\inst|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst9|Q\(1) & ((\inst8|Q\(1) & (!\inst|Add3~1\)) # (!\inst8|Q\(1) & ((\inst|Add3~1\) # (GND))))) # (!\inst9|Q\(1) & ((\inst8|Q\(1) & (\inst|Add3~1\ & VCC)) # (!\inst8|Q\(1) & (!\inst|Add3~1\))))
-- \inst|Add3~3\ = CARRY((\inst9|Q\(1) & ((!\inst|Add3~1\) # (!\inst8|Q\(1)))) # (!\inst9|Q\(1) & (!\inst8|Q\(1) & !\inst|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(1),
	datab => \inst8|Q\(1),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X28_Y33_N22
\inst|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst8|Q\(3) & ((\inst9|Q\(3) & (!\inst|Add3~5\)) # (!\inst9|Q\(3) & (\inst|Add3~5\ & VCC)))) # (!\inst8|Q\(3) & ((\inst9|Q\(3) & ((\inst|Add3~5\) # (GND))) # (!\inst9|Q\(3) & (!\inst|Add3~5\))))
-- \inst|Add3~7\ = CARRY((\inst8|Q\(3) & (\inst9|Q\(3) & !\inst|Add3~5\)) # (!\inst8|Q\(3) & ((\inst9|Q\(3)) # (!\inst|Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(3),
	datab => \inst9|Q\(3),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X28_Y33_N24
\inst|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = ((\inst8|Q\(4) $ (\inst9|Q\(4) $ (\inst|Add3~7\)))) # (GND)
-- \inst|Add3~9\ = CARRY((\inst8|Q\(4) & ((!\inst|Add3~7\) # (!\inst9|Q\(4)))) # (!\inst8|Q\(4) & (!\inst9|Q\(4) & !\inst|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(4),
	datab => \inst9|Q\(4),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X28_Y33_N26
\inst|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst8|Q\(5) & ((\inst9|Q\(5) & (!\inst|Add3~9\)) # (!\inst9|Q\(5) & (\inst|Add3~9\ & VCC)))) # (!\inst8|Q\(5) & ((\inst9|Q\(5) & ((\inst|Add3~9\) # (GND))) # (!\inst9|Q\(5) & (!\inst|Add3~9\))))
-- \inst|Add3~11\ = CARRY((\inst8|Q\(5) & (\inst9|Q\(5) & !\inst|Add3~9\)) # (!\inst8|Q\(5) & ((\inst9|Q\(5)) # (!\inst|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(5),
	datab => \inst9|Q\(5),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X28_Y33_N28
\inst|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = ((\inst9|Q\(6) $ (\inst8|Q\(6) $ (\inst|Add3~11\)))) # (GND)
-- \inst|Add3~13\ = CARRY((\inst9|Q\(6) & (\inst8|Q\(6) & !\inst|Add3~11\)) # (!\inst9|Q\(6) & ((\inst8|Q\(6)) # (!\inst|Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(6),
	datab => \inst8|Q\(6),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: LCCOMB_X27_Y33_N2
\inst|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~8_combout\ = (\inst3|yfsm.s1~regout\ & (((\inst|Add3~12_combout\)))) # (!\inst3|yfsm.s1~regout\ & ((\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst|Add3~12_combout\,
	combout => \inst|Selector1~8_combout\);

-- Location: LCCOMB_X27_Y33_N28
\inst|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~6_combout\ = (\inst|Selector1~5_combout\ & ((\inst|Selector1~8_combout\) # ((\inst|Selector7~0_combout\ & \inst|Selector1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst|Selector1~5_combout\,
	datac => \inst|Selector1~4_combout\,
	datad => \inst|Selector1~8_combout\,
	combout => \inst|Selector1~6_combout\);

-- Location: LCCOMB_X27_Y33_N10
\inst|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~7_combout\ = (\inst3|yfsm.s0~regout\ & ((\inst|Selector1~6_combout\))) # (!\inst3|yfsm.s0~regout\ & (\inst|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Selector1~6_combout\,
	combout => \inst|Selector1~7_combout\);

-- Location: LCFF_X27_Y33_N11
\inst|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|output\(6));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N25
\inst8|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(4));

-- Location: LCCOMB_X28_Y33_N14
\inst|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~4_combout\ = (\inst|output[7]~1_combout\ & (((!\inst9|Q\(4) & !\inst|output[7]~2_combout\)) # (!\inst8|Q\(4)))) # (!\inst|output[7]~1_combout\ & ((\inst8|Q\(4) & ((!\inst|output[7]~2_combout\) # (!\inst9|Q\(4)))) # (!\inst8|Q\(4) & 
-- (\inst9|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[7]~1_combout\,
	datab => \inst8|Q\(4),
	datac => \inst9|Q\(4),
	datad => \inst|output[7]~2_combout\,
	combout => \inst|Selector3~4_combout\);

-- Location: LCCOMB_X27_Y33_N16
\inst|Selector3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~8_combout\ = (\inst3|yfsm.s1~regout\ & (((\inst|Add3~8_combout\)))) # (!\inst3|yfsm.s1~regout\ & ((\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst|Add3~8_combout\,
	combout => \inst|Selector3~8_combout\);

-- Location: LCCOMB_X27_Y33_N26
\inst|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~5_combout\ = (\inst|Selector7~0_combout\ & (((\inst9|Q\(4) & \inst8|Q\(4))) # (!\inst|output[7]~3_combout\))) # (!\inst|Selector7~0_combout\ & ((\inst|output[7]~3_combout\) # ((!\inst9|Q\(4) & !\inst8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst|output[7]~3_combout\,
	datac => \inst9|Q\(4),
	datad => \inst8|Q\(4),
	combout => \inst|Selector3~5_combout\);

-- Location: LCCOMB_X27_Y33_N0
\inst|Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~6_combout\ = (\inst|Selector3~5_combout\ & ((\inst|Selector3~8_combout\) # ((\inst|Selector7~0_combout\ & \inst|Selector3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst|Selector3~4_combout\,
	datac => \inst|Selector3~8_combout\,
	datad => \inst|Selector3~5_combout\,
	combout => \inst|Selector3~6_combout\);

-- Location: LCCOMB_X27_Y33_N8
\inst|Selector3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~7_combout\ = (\inst3|yfsm.s0~regout\ & ((\inst|Selector3~6_combout\))) # (!\inst3|yfsm.s0~regout\ & (\inst|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Selector3~6_combout\,
	combout => \inst|Selector3~7_combout\);

-- Location: LCFF_X27_Y33_N9
\inst|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|output\(4));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y33_N18
\inst9|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Q[7]~feeder_combout\ = \B~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B~combout\(7),
	combout => \inst9|Q[7]~feeder_combout\);

-- Location: LCFF_X27_Y33_N19
\inst9|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst9|Q[7]~feeder_combout\,
	aclr => \latchReset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|Q\(7));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N9
\inst8|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(7));

-- Location: LCCOMB_X31_Y33_N28
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = \inst9|Q\(7) $ (\inst|Add0~13\ $ (\inst8|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Q\(7),
	datad => \inst8|Q\(7),
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X28_Y33_N8
\inst|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~4_combout\ = (\inst|output[7]~1_combout\ & (((!\inst9|Q\(7) & !\inst|output[7]~2_combout\)) # (!\inst8|Q\(7)))) # (!\inst|output[7]~1_combout\ & ((\inst9|Q\(7) & ((!\inst|output[7]~2_combout\) # (!\inst8|Q\(7)))) # (!\inst9|Q\(7) & 
-- (\inst8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[7]~1_combout\,
	datab => \inst9|Q\(7),
	datac => \inst8|Q\(7),
	datad => \inst|output[7]~2_combout\,
	combout => \inst|Selector0~4_combout\);

-- Location: LCCOMB_X28_Y33_N30
\inst|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = \inst8|Q\(7) $ (\inst|Add3~13\ $ (!\inst9|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Q\(7),
	datad => \inst9|Q\(7),
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\);

-- Location: LCCOMB_X27_Y33_N12
\inst|Selector0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~8_combout\ = (\inst3|yfsm.s1~regout\ & (((\inst|Add3~14_combout\)))) # (!\inst3|yfsm.s1~regout\ & ((\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst|Add3~14_combout\,
	combout => \inst|Selector0~8_combout\);

-- Location: LCCOMB_X27_Y33_N6
\inst|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~6_combout\ = (\inst|Selector0~5_combout\ & ((\inst|Selector0~8_combout\) # ((!\inst|output[7]~3_combout\ & \inst|Selector0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~5_combout\,
	datab => \inst|output[7]~3_combout\,
	datac => \inst|Selector0~4_combout\,
	datad => \inst|Selector0~8_combout\,
	combout => \inst|Selector0~6_combout\);

-- Location: LCCOMB_X27_Y33_N20
\inst|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~7_combout\ = (\inst3|yfsm.s0~regout\ & ((\inst|Selector0~6_combout\))) # (!\inst3|yfsm.s0~regout\ & (\inst|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|Selector0~6_combout\,
	combout => \inst|Selector0~7_combout\);

-- Location: LCFF_X27_Y33_N21
\inst|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|output\(7));

-- Location: LCCOMB_X29_Y33_N16
\inst|output[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[7]~1_combout\ = (\inst3|yfsm.s3~regout\) # (\inst3|yfsm.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst|output[7]~1_combout\);

-- Location: LCCOMB_X30_Y33_N22
\inst|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~4_combout\ = (\inst9|Q\(5) & (((!\inst|output[7]~2_combout\ & !\inst|output[7]~1_combout\)) # (!\inst8|Q\(5)))) # (!\inst9|Q\(5) & ((\inst|output[7]~1_combout\ & ((!\inst8|Q\(5)) # (!\inst|output[7]~2_combout\))) # 
-- (!\inst|output[7]~1_combout\ & ((\inst8|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(5),
	datab => \inst|output[7]~2_combout\,
	datac => \inst|output[7]~1_combout\,
	datad => \inst8|Q\(5),
	combout => \inst|Selector2~4_combout\);

-- Location: LCCOMB_X29_Y33_N14
\inst|Selector2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~8_combout\ = (\inst3|yfsm.s1~regout\ & (((\inst|Add3~10_combout\)))) # (!\inst3|yfsm.s1~regout\ & ((\inst3|yfsm.s5~regout\) # ((\inst3|yfsm.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s5~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst3|yfsm.s4~regout\,
	datad => \inst|Add3~10_combout\,
	combout => \inst|Selector2~8_combout\);

-- Location: LCCOMB_X30_Y33_N18
\inst|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~6_combout\ = (\inst|Selector2~5_combout\ & ((\inst|Selector2~8_combout\) # ((!\inst|output[7]~3_combout\ & \inst|Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~5_combout\,
	datab => \inst|output[7]~3_combout\,
	datac => \inst|Selector2~4_combout\,
	datad => \inst|Selector2~8_combout\,
	combout => \inst|Selector2~6_combout\);

-- Location: LCCOMB_X30_Y33_N8
\inst|Selector2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~7_combout\ = (\inst3|yfsm.s0~regout\ & ((\inst|Selector2~6_combout\))) # (!\inst3|yfsm.s0~regout\ & (\inst|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst|Add0~10_combout\,
	datad => \inst|Selector2~6_combout\,
	combout => \inst|Selector2~7_combout\);

-- Location: LCFF_X30_Y33_N9
\inst|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|output\(5));

-- Location: LCCOMB_X23_Y33_N16
\inst11|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (\inst|output\(6) & (!\inst|output\(5) & (\inst|output\(4) $ (!\inst|output\(7))))) # (!\inst|output\(6) & (\inst|output\(4) & (\inst|output\(7) $ (!\inst|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(6),
	datab => \inst|output\(4),
	datac => \inst|output\(7),
	datad => \inst|output\(5),
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y33_N18
\inst11|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (\inst|output\(7) & ((\inst|output\(4) & ((\inst|output\(5)))) # (!\inst|output\(4) & (\inst|output\(6))))) # (!\inst|output\(7) & (\inst|output\(6) & (\inst|output\(4) $ (\inst|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(6),
	datab => \inst|output\(4),
	datac => \inst|output\(7),
	datad => \inst|output\(5),
	combout => \inst11|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y33_N0
\inst11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (\inst|output\(6) & (\inst|output\(7) & ((\inst|output\(5)) # (!\inst|output\(4))))) # (!\inst|output\(6) & (!\inst|output\(4) & (!\inst|output\(7) & \inst|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(6),
	datab => \inst|output\(4),
	datac => \inst|output\(7),
	datad => \inst|output\(5),
	combout => \inst11|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y33_N22
\inst11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = (\inst|output\(4) & (\inst|output\(6) $ (((!\inst|output\(5)))))) # (!\inst|output\(4) & ((\inst|output\(6) & (!\inst|output\(7) & !\inst|output\(5))) # (!\inst|output\(6) & (\inst|output\(7) & \inst|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(6),
	datab => \inst|output\(4),
	datac => \inst|output\(7),
	datad => \inst|output\(5),
	combout => \inst11|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y33_N12
\inst11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = (\inst|output\(5) & (((\inst|output\(4) & !\inst|output\(7))))) # (!\inst|output\(5) & ((\inst|output\(6) & ((!\inst|output\(7)))) # (!\inst|output\(6) & (\inst|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(6),
	datab => \inst|output\(4),
	datac => \inst|output\(7),
	datad => \inst|output\(5),
	combout => \inst11|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y33_N10
\inst11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = (\inst|output\(6) & (\inst|output\(4) & (\inst|output\(7) $ (\inst|output\(5))))) # (!\inst|output\(6) & (!\inst|output\(7) & ((\inst|output\(4)) # (\inst|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(6),
	datab => \inst|output\(4),
	datac => \inst|output\(7),
	datad => \inst|output\(5),
	combout => \inst11|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y33_N8
\inst11|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = (\inst|output\(4) & ((\inst|output\(7)) # (\inst|output\(6) $ (\inst|output\(5))))) # (!\inst|output\(4) & ((\inst|output\(5)) # (\inst|output\(6) $ (\inst|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(6),
	datab => \inst|output\(4),
	datac => \inst|output\(7),
	datad => \inst|output\(5),
	combout => \inst11|Mux6~0_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N19
\inst9|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|Q\(1));

-- Location: LCCOMB_X30_Y33_N14
\inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|output[7]~1_combout\ & (((!\inst|output[7]~2_combout\ & !\inst9|Q\(1))) # (!\inst8|Q\(1)))) # (!\inst|output[7]~1_combout\ & ((\inst8|Q\(1) & ((!\inst9|Q\(1)) # (!\inst|output[7]~2_combout\))) # (!\inst8|Q\(1) & 
-- ((\inst9|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[7]~1_combout\,
	datab => \inst|output[7]~2_combout\,
	datac => \inst8|Q\(1),
	datad => \inst9|Q\(1),
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X31_Y33_N4
\inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|output[7]~3_combout\ & (\inst9|Q\(1) & (\inst8|Q\(1)))) # (!\inst|output[7]~3_combout\ & (((\inst|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(1),
	datab => \inst8|Q\(1),
	datac => \inst|output[7]~3_combout\,
	datad => \inst|Selector6~0_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: LCCOMB_X29_Y33_N30
\inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (!\inst3|yfsm.s1~regout\ & !\inst3|yfsm.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s4~regout\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X31_Y33_N10
\inst|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~2_combout\ = (\inst3|yfsm.s0~regout\ & (!\inst9|Q\(1) & (!\inst8|Q\(1)))) # (!\inst3|yfsm.s0~regout\ & (((\inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(1),
	datab => \inst8|Q\(1),
	datac => \inst|Add0~2_combout\,
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst|Selector6~2_combout\);

-- Location: LCCOMB_X31_Y33_N0
\inst|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~3_combout\ = (\inst3|yfsm.s0~regout\ & ((\inst|output[7]~3_combout\ & (\inst|Add3~2_combout\)) # (!\inst|output[7]~3_combout\ & ((\inst|Selector6~2_combout\))))) # (!\inst3|yfsm.s0~regout\ & (((\inst|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst|output[7]~3_combout\,
	datac => \inst|Add3~2_combout\,
	datad => \inst|Selector6~2_combout\,
	combout => \inst|Selector6~3_combout\);

-- Location: LCCOMB_X31_Y33_N8
\inst|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~4_combout\ = (\inst3|yfsm.s0~regout\ & ((\inst|Selector7~0_combout\ & (\inst|Selector6~1_combout\)) # (!\inst|Selector7~0_combout\ & ((\inst|Selector6~3_combout\))))) # (!\inst3|yfsm.s0~regout\ & (((\inst|Selector6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst|Selector6~1_combout\,
	datac => \inst|Selector7~0_combout\,
	datad => \inst|Selector6~3_combout\,
	combout => \inst|Selector6~4_combout\);

-- Location: LCFF_X31_Y33_N9
\inst|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|output\(1));

-- Location: LCCOMB_X29_Y33_N24
\inst|output[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[0]~4_combout\ = (\inst3|yfsm.s2~regout\ & (((!\inst8|Q\(0))))) # (!\inst3|yfsm.s2~regout\ & (!\inst3|yfsm.s5~regout\ & (!\inst3|yfsm.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datab => \inst3|yfsm.s5~regout\,
	datac => \inst3|yfsm.s3~regout\,
	datad => \inst8|Q\(0),
	combout => \inst|output[0]~4_combout\);

-- Location: LCCOMB_X29_Y33_N4
\inst|output[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[0]~5_combout\ = (\inst8|Q\(0) & ((\inst9|Q\(0) & (!\inst3|yfsm.s3~regout\)) # (!\inst9|Q\(0) & ((!\inst3|yfsm.s5~regout\))))) # (!\inst8|Q\(0) & (!\inst3|yfsm.s5~regout\ & ((\inst3|yfsm.s3~regout\) # (\inst9|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst8|Q\(0),
	datac => \inst9|Q\(0),
	datad => \inst3|yfsm.s5~regout\,
	combout => \inst|output[0]~5_combout\);

-- Location: LCCOMB_X29_Y33_N8
\inst|output[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[0]~6_combout\ = (\inst3|yfsm.s6~regout\ & (!\inst3|yfsm.s4~regout\ & (\inst|output[0]~4_combout\))) # (!\inst3|yfsm.s6~regout\ & ((\inst3|yfsm.s4~regout\ & (\inst|output[0]~4_combout\ & !\inst|output[0]~5_combout\)) # (!\inst3|yfsm.s4~regout\ 
-- & ((\inst|output[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s6~regout\,
	datab => \inst3|yfsm.s4~regout\,
	datac => \inst|output[0]~4_combout\,
	datad => \inst|output[0]~5_combout\,
	combout => \inst|output[0]~6_combout\);

-- Location: LCCOMB_X30_Y33_N4
\inst|output[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[0]~7_combout\ = (\inst3|yfsm.s1~regout\ & (!\inst3|yfsm.s6~regout\)) # (!\inst3|yfsm.s1~regout\ & (\inst|output[0]~6_combout\ & ((\inst|Add0~0_combout\) # (!\inst3|yfsm.s6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s1~regout\,
	datab => \inst3|yfsm.s6~regout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|output[0]~6_combout\,
	combout => \inst|output[0]~7_combout\);

-- Location: LCCOMB_X29_Y33_N0
\inst|output[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[0]~8_combout\ = (\inst|Add3~0_combout\ & (\inst|output[0]~5_combout\ $ (!\inst|output[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[0]~5_combout\,
	datab => \inst|Add3~0_combout\,
	datad => \inst|output[0]~6_combout\,
	combout => \inst|output[0]~8_combout\);

-- Location: LCCOMB_X29_Y33_N18
\inst|output[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[0]~9_combout\ = ((\inst|output[0]~4_combout\ & \inst|output[0]~8_combout\)) # (!\inst3|yfsm.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|yfsm.s1~regout\,
	datac => \inst|output[0]~4_combout\,
	datad => \inst|output[0]~8_combout\,
	combout => \inst|output[0]~9_combout\);

-- Location: LCCOMB_X30_Y33_N10
\inst|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[0]~0_combout\ = (\inst3|yfsm.s2~regout\ & (\inst|output[0]~4_combout\)) # (!\inst3|yfsm.s2~regout\ & (((\inst|output[0]~7_combout\ & \inst|output[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s2~regout\,
	datab => \inst|output[0]~4_combout\,
	datac => \inst|output[0]~7_combout\,
	datad => \inst|output[0]~9_combout\,
	combout => \inst|output[0]~0_combout\);

-- Location: LCCOMB_X30_Y33_N0
\inst|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|output[0]~feeder_combout\ = \inst|output[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|output[0]~0_combout\,
	combout => \inst|output[0]~feeder_combout\);

-- Location: LCFF_X30_Y33_N1
\inst|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|output[0]~feeder_combout\,
	sdata => \inst|Add0~0_combout\,
	sload => \inst3|ALT_INV_yfsm.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|output\(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y33_N1
\inst9|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|Q\(2));

-- Location: LCCOMB_X28_Y33_N0
\inst|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = (\inst|output[7]~1_combout\ & (((!\inst9|Q\(2) & !\inst|output[7]~2_combout\)) # (!\inst8|Q\(2)))) # (!\inst|output[7]~1_combout\ & ((\inst8|Q\(2) & ((!\inst|output[7]~2_combout\) # (!\inst9|Q\(2)))) # (!\inst8|Q\(2) & 
-- (\inst9|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[7]~1_combout\,
	datab => \inst8|Q\(2),
	datac => \inst9|Q\(2),
	datad => \inst|output[7]~2_combout\,
	combout => \inst|Selector5~1_combout\);

-- Location: LCCOMB_X28_Y33_N2
\inst|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~2_combout\ = (\inst|Selector7~0_combout\ & (((\inst|Selector5~1_combout\)))) # (!\inst|Selector7~0_combout\ & (!\inst9|Q\(2) & (!\inst8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(2),
	datab => \inst|Selector7~0_combout\,
	datac => \inst8|Q\(2),
	datad => \inst|Selector5~1_combout\,
	combout => \inst|Selector5~2_combout\);

-- Location: LCCOMB_X28_Y33_N4
\inst|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~3_combout\ = (\inst|output[7]~3_combout\ & (\inst|Selector5~0_combout\)) # (!\inst|output[7]~3_combout\ & ((\inst|Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~0_combout\,
	datab => \inst|output[7]~3_combout\,
	datad => \inst|Selector5~2_combout\,
	combout => \inst|Selector5~3_combout\);

-- Location: LCCOMB_X28_Y33_N12
\inst|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~4_combout\ = (\inst3|yfsm.s0~regout\ & (\inst|Selector5~3_combout\)) # (!\inst3|yfsm.s0~regout\ & ((\inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datac => \inst|Selector5~3_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|Selector5~4_combout\);

-- Location: LCFF_X28_Y33_N13
\inst|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|output\(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X29_Y33_N7
\inst8|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \latchReset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Q\(3));

-- Location: LCCOMB_X32_Y33_N22
\inst|RESULT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|RESULT~0_combout\ = (\inst8|Q\(3)) # (\inst9|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Q\(3),
	datac => \inst9|Q\(3),
	combout => \inst|RESULT~0_combout\);

-- Location: LCCOMB_X29_Y33_N28
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|output[7]~1_combout\ & (((!\inst9|Q\(3) & !\inst|output[7]~2_combout\)) # (!\inst8|Q\(3)))) # (!\inst|output[7]~1_combout\ & ((\inst9|Q\(3) & ((!\inst|output[7]~2_combout\) # (!\inst8|Q\(3)))) # (!\inst9|Q\(3) & 
-- (\inst8|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output[7]~1_combout\,
	datab => \inst9|Q\(3),
	datac => \inst8|Q\(3),
	datad => \inst|output[7]~2_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X32_Y33_N30
\inst|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|output[7]~3_combout\ & ((\inst|RESULT~1_combout\) # ((!\inst|Selector7~0_combout\)))) # (!\inst|output[7]~3_combout\ & (((\inst|Selector7~0_combout\ & \inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RESULT~1_combout\,
	datab => \inst|output[7]~3_combout\,
	datac => \inst|Selector7~0_combout\,
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X32_Y33_N28
\inst|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|Selector7~0_combout\ & (((\inst|Selector4~1_combout\)))) # (!\inst|Selector7~0_combout\ & ((\inst|Selector4~1_combout\ & ((\inst|Add3~6_combout\))) # (!\inst|Selector4~1_combout\ & (!\inst|RESULT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~0_combout\,
	datab => \inst|RESULT~0_combout\,
	datac => \inst|Add3~6_combout\,
	datad => \inst|Selector4~1_combout\,
	combout => \inst|Selector4~2_combout\);

-- Location: LCCOMB_X32_Y33_N0
\inst|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~3_combout\ = (\inst3|yfsm.s0~regout\ & ((\inst|Selector4~2_combout\))) # (!\inst3|yfsm.s0~regout\ & (\inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst|Add0~6_combout\,
	datad => \inst|Selector4~2_combout\,
	combout => \inst|Selector4~3_combout\);

-- Location: LCFF_X32_Y33_N1
\inst|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|output\(3));

-- Location: LCCOMB_X36_Y33_N16
\inst10|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (\inst|output\(2) & (!\inst|output\(1) & (\inst|output\(0) $ (!\inst|output\(3))))) # (!\inst|output\(2) & (\inst|output\(0) & (\inst|output\(1) $ (!\inst|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(1),
	datab => \inst|output\(0),
	datac => \inst|output\(2),
	datad => \inst|output\(3),
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y33_N2
\inst10|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux1~0_combout\ = (\inst|output\(1) & ((\inst|output\(0) & ((\inst|output\(3)))) # (!\inst|output\(0) & (\inst|output\(2))))) # (!\inst|output\(1) & (\inst|output\(2) & (\inst|output\(0) $ (\inst|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(1),
	datab => \inst|output\(0),
	datac => \inst|output\(2),
	datad => \inst|output\(3),
	combout => \inst10|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y33_N12
\inst10|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = (\inst|output\(2) & (\inst|output\(3) & ((\inst|output\(1)) # (!\inst|output\(0))))) # (!\inst|output\(2) & (\inst|output\(1) & (!\inst|output\(0) & !\inst|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(1),
	datab => \inst|output\(0),
	datac => \inst|output\(2),
	datad => \inst|output\(3),
	combout => \inst10|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y33_N10
\inst10|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = (\inst|output\(0) & (\inst|output\(1) $ ((!\inst|output\(2))))) # (!\inst|output\(0) & ((\inst|output\(1) & (!\inst|output\(2) & \inst|output\(3))) # (!\inst|output\(1) & (\inst|output\(2) & !\inst|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(1),
	datab => \inst|output\(0),
	datac => \inst|output\(2),
	datad => \inst|output\(3),
	combout => \inst10|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y33_N4
\inst10|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux4~0_combout\ = (\inst|output\(1) & (\inst|output\(0) & ((!\inst|output\(3))))) # (!\inst|output\(1) & ((\inst|output\(2) & ((!\inst|output\(3)))) # (!\inst|output\(2) & (\inst|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(1),
	datab => \inst|output\(0),
	datac => \inst|output\(2),
	datad => \inst|output\(3),
	combout => \inst10|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y33_N26
\inst10|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst|output\(1) & (!\inst|output\(3) & ((\inst|output\(0)) # (!\inst|output\(2))))) # (!\inst|output\(1) & (\inst|output\(0) & (\inst|output\(2) $ (!\inst|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(1),
	datab => \inst|output\(0),
	datac => \inst|output\(2),
	datad => \inst|output\(3),
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y33_N8
\inst10|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst|output\(0) & ((\inst|output\(3)) # (\inst|output\(1) $ (\inst|output\(2))))) # (!\inst|output\(0) & ((\inst|output\(1)) # (\inst|output\(2) $ (\inst|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|output\(1),
	datab => \inst|output\(0),
	datac => \inst|output\(2),
	datad => \inst|output\(3),
	combout => \inst10|Mux6~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
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
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y33_N2
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((!\inst8|Q\(0) & \inst9|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(0),
	datab => \inst9|Q\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y33_N4
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst8|Q\(1) & ((!\inst|LessThan0~1_cout\) # (!\inst9|Q\(1)))) # (!\inst8|Q\(1) & (!\inst9|Q\(1) & !\inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(1),
	datab => \inst9|Q\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y33_N6
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst9|Q\(2) & ((!\inst|LessThan0~3_cout\) # (!\inst8|Q\(2)))) # (!\inst9|Q\(2) & (!\inst8|Q\(2) & !\inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(2),
	datab => \inst8|Q\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y33_N8
\inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst9|Q\(3) & (\inst8|Q\(3) & !\inst|LessThan0~5_cout\)) # (!\inst9|Q\(3) & ((\inst8|Q\(3)) # (!\inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(3),
	datab => \inst8|Q\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y33_N10
\inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst9|Q\(4) & ((!\inst|LessThan0~7_cout\) # (!\inst8|Q\(4)))) # (!\inst9|Q\(4) & (!\inst8|Q\(4) & !\inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Q\(4),
	datab => \inst8|Q\(4),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X32_Y33_N12
\inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst8|Q\(5) & ((!\inst|LessThan0~9_cout\) # (!\inst9|Q\(5)))) # (!\inst8|Q\(5) & (!\inst9|Q\(5) & !\inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(5),
	datab => \inst9|Q\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y33_N14
\inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst8|Q\(6) & (\inst9|Q\(6) & !\inst|LessThan0~11_cout\)) # (!\inst8|Q\(6) & ((\inst9|Q\(6)) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Q\(6),
	datab => \inst9|Q\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X32_Y33_N16
\inst|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~14_combout\ = (\inst8|Q\(7) & (\inst|LessThan0~13_cout\ & \inst9|Q\(7))) # (!\inst8|Q\(7) & ((\inst|LessThan0~13_cout\) # (\inst9|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Q\(7),
	datad => \inst9|Q\(7),
	cin => \inst|LessThan0~13_cout\,
	combout => \inst|LessThan0~14_combout\);

-- Location: LCCOMB_X30_Y33_N28
\inst|Sign~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Sign~0_combout\ = (\inst3|yfsm.s0~regout\ & (!\inst3|yfsm.s6~regout\ & !\inst3|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst3|yfsm.s6~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst|Sign~0_combout\);

-- Location: LCCOMB_X31_Y33_N2
\inst|Sign~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Sign~2_combout\ = (\inst|Sign~1_combout\ & (\inst|LessThan0~14_combout\ & \inst|Sign~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Sign~1_combout\,
	datac => \inst|LessThan0~14_combout\,
	datad => \inst|Sign~0_combout\,
	combout => \inst|Sign~2_combout\);

-- Location: LCFF_X31_Y33_N3
\inst|Sign\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Sign~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Sign~regout\);

-- Location: LCCOMB_X30_Y33_N6
\inst3|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr11~combout\ = ((\inst3|yfsm.s4~regout\) # ((\inst3|yfsm.s1~regout\) # (\inst3|yfsm.s2~regout\))) # (!\inst3|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s0~regout\,
	datab => \inst3|yfsm.s4~regout\,
	datac => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s2~regout\,
	combout => \inst3|WideOr11~combout\);

-- Location: LCCOMB_X30_Y33_N20
\inst3|WideOr12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr12~combout\ = (\inst3|yfsm.s3~regout\) # ((\inst3|yfsm.s1~regout\) # (!\inst3|yfsm.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s3~regout\,
	datab => \inst3|yfsm.s1~regout\,
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst3|WideOr12~combout\);

-- Location: LCCOMB_X29_Y33_N12
\inst3|WideOr13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr13~combout\ = (\inst3|yfsm.s7~regout\) # ((\inst3|yfsm.s6~regout\) # ((\inst3|yfsm.s2~regout\) # (!\inst3|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|yfsm.s7~regout\,
	datab => \inst3|yfsm.s6~regout\,
	datac => \inst3|yfsm.s2~regout\,
	datad => \inst3|yfsm.s0~regout\,
	combout => \inst3|WideOr13~combout\);

-- Location: LCCOMB_X30_Y33_N2
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst3|WideOr11~combout\ & (\inst3|WideOr12~combout\ & !\inst3|WideOr13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr11~combout\,
	datac => \inst3|WideOr12~combout\,
	datad => \inst3|WideOr13~combout\,
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y33_N6
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (!\inst3|WideOr11~combout\ & (\inst3|WideOr13~combout\ $ (\inst3|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr11~combout\,
	datab => \inst3|WideOr13~combout\,
	datad => \inst3|WideOr12~combout\,
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y33_N22
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst3|WideOr11~combout\ & (\inst3|WideOr13~combout\ & !\inst3|WideOr12~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr11~combout\,
	datab => \inst3|WideOr13~combout\,
	datad => \inst3|WideOr12~combout\,
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y33_N16
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst3|WideOr13~combout\) # (\inst3|WideOr11~combout\ $ (\inst3|WideOr12~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr11~combout\,
	datac => \inst3|WideOr12~combout\,
	datad => \inst3|WideOr13~combout\,
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y33_N26
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst3|WideOr11~combout\ & (\inst3|WideOr12~combout\ & \inst3|WideOr13~combout\)) # (!\inst3|WideOr11~combout\ & ((\inst3|WideOr12~combout\) # (\inst3|WideOr13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr11~combout\,
	datac => \inst3|WideOr12~combout\,
	datad => \inst3|WideOr13~combout\,
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y33_N12
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst3|WideOr11~combout\ & (\inst3|WideOr12~combout\)) # (!\inst3|WideOr11~combout\ & (!\inst3|WideOr12~combout\ & !\inst3|WideOr13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr11~combout\,
	datac => \inst3|WideOr12~combout\,
	datad => \inst3|WideOr13~combout\,
	combout => \inst4|Mux6~0_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[0]~I\ : cycloneii_io
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
	datain => \inst11|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(0));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[1]~I\ : cycloneii_io
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
	datain => \inst11|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(1));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[2]~I\ : cycloneii_io
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
	datain => \inst11|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[3]~I\ : cycloneii_io
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
	datain => \inst11|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(3));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[4]~I\ : cycloneii_io
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
	datain => \inst11|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(4));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[5]~I\ : cycloneii_io
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
	datain => \inst11|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(5));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[6]~I\ : cycloneii_io
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
	datain => \inst11|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(6));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[0]~I\ : cycloneii_io
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
	datain => \inst10|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(0));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[1]~I\ : cycloneii_io
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
	datain => \inst10|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(1));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[2]~I\ : cycloneii_io
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
	datain => \inst10|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(2));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[3]~I\ : cycloneii_io
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
	datain => \inst10|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(3));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[4]~I\ : cycloneii_io
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
	datain => \inst10|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(4));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[5]~I\ : cycloneii_io
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
	datain => \inst10|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(5));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[6]~I\ : cycloneii_io
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
	datain => \inst10|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(6));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(0));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(1));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(2));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[3]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(3));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[4]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(4));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(5));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[6]~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_Sign~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(6));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[0]~I\ : cycloneii_io
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
	datain => \inst4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[1]~I\ : cycloneii_io
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
	datain => \inst4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[2]~I\ : cycloneii_io
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
	datain => \inst4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[3]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(3));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[4]~I\ : cycloneii_io
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
	datain => \inst3|ALT_INV_WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(4));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[5]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(5));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[6]~I\ : cycloneii_io
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
	datain => \inst4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(6));
END structure;


