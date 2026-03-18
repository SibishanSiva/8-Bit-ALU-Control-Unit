# Simple Central Processing Unit (CPU) Design

## Project Overview

[cite_start]This project involves the design and implementation of a simple Central Processing Unit (CPU) capable of performing a variety of arithmetic and logic operations[cite: 4, 5]. [cite_start]The system is designed to process 8-bit data inputs stored in registers and execute instructions determined by a custom control unit[cite: 5, 7, 8]. [cite_start]The final outputs are visualized through dual 7-segment LED displays[cite: 10].

## Key Features

  * [cite_start]**8-Bit Data Storage:** Utilizes two dedicated registers (Latch A and Latch B) for temporary storage of binary values, which are updated on a rising clock trigger[cite: 11, 27].
  * [cite_start]**Multi-Mode ALU:** An Arithmetic and Logic Unit (ALU) that supports three distinct operation sets ranging from basic Boolean logic to complex bitwise manipulations[cite: 25, 39, 52].
  * [cite_start]**Advanced Control Unit:** Features a Moore Finite State Machine (FSM) that cycles through eight states (0–7) and a modified 3:8 decoder that generates 16-bit microcode instructions for the ALU[cite: 5, 8, 9, 20].
  * [cite_start]**Visual Output Interface:** Decodes 8-bit ALU results into signals for two 7-segment displays, including a dedicated sign output for negative results[cite: 31, 35, 46].

## CPU Architecture & Components

The system is built upon several core digital logic components:

  * [cite_start]**Registers:** Temporary storage devices that hold 8-bit binary values for processing[cite: 6, 11].
  * [cite_start]**Moore FSM:** Coordinates the operational flow by transitioning through states to drive the instruction decoder[cite: 20].
  * [cite_start]**Modified 3:8 Decoder:** Interprets the FSM state to produce specific microcode opcodes that define the current ALU function[cite: 8, 15, 20].
  * [cite_start]**Arithmetic Logic Unit (ALU):** The computational core that executes operations based on the microcode provided by the control unit[cite: 25, 28].

## Operational Modes

The CPU is designed to operate in three primary configurations:

### 1\. Basic Arithmetic & Boolean Logic

Performs fundamental operations including:

  * [cite_start]Addition and Subtraction[cite: 36].
  * [cite_start]Standard Boolean operations (AND, OR, NOT)[cite: 36, 64].
  * [cite_start]Student-specific identity outputs[cite: 36].

### 2\. Complex Bitwise Operations

Executes more advanced instructions such as:

  * [cite_start]Bit-significance inversion and 4-bit left shifts[cite: 50, 65].
  * [cite_start]Minimum value determination ($Min(A,B)$)[cite: 50].
  * [cite_start]Conditional bit replacement and XNOR operations[cite: 50, 51].

### 3\. Identity Validation & Comparison

[cite_start]A specialized mode that compares stored register values against dynamic FSM-generated IDs[cite: 52, 57]. [cite_start]It outputs a binary result representing 'Y' (Yes) or 'N' (No) on the display interface[cite: 58, 61, 66].

## Result Validation (Waveform Simulations)

The following waveforms demonstrate the timing accuracy and logic validation of the CPU components during various operational cycles:

### ALU Mode 1: Basic Operations

[cite_start]Verification of summation, subtraction, and Boolean logic execution[cite: 38].

### ALU Mode 2: Complex Operations

[cite_start]Validation of bit shifting, rotations, and summation with offsets[cite: 51].

### ALU Mode 3: Conditional Logic

[cite_start]Validation of the comparison logic and 'Y/N' output generation[cite: 63].
