# 8-Bit Programmable CPU Design

## Project Overview
This repository contains the design and implementation of an 8-bit Central Processing Unit (CPU) architecture. The system is engineered to execute a variety of arithmetic, logic, and data manipulation instructions using a modular design. It integrates a custom Arithmetic Logic Unit (ALU), a Moore Finite State Machine (FSM) controller, and a visual output interface for real-time data verification.

## Key Features
* **8-Bit Data Path:** Processes 8-bit binary data through dedicated high-speed registers (Latch A and Latch B) synchronized with a rising clock edge.
* **Custom Moore FSM Controller:** A central control unit that manages operational states (0–7) to coordinate instruction execution and data flow.
* **16-Bit Microcode Decoder:** A modified 3:8 decoder that translates FSM states into 16-bit control signals (opcodes) for the ALU.
* **Versatile ALU:** Supports multiple operational modes, including standard arithmetic, bitwise logic, and conditional data processing.
* **Peripheral Interfacing:** Features a sign-aware output module that decodes 8-bit results for display on dual 7-segment LED units.

## System Architecture
The CPU is built upon four primary logic modules:
1.  **Register Unit:** Provides temporary storage for inputs, ensuring stable data is available for computational cycles.
2.  **Control Unit (FSM):** Orchestrates the timing and sequence of operations, moving the system through defined states to process instructions.
3.  **Instruction Decoder:** Acts as the bridge between the controller and the ALU, generating the specific microcode required for each task.
4.  **Arithmetic Logic Unit (ALU):** The core execution engine responsible for all mathematical and logical computations.


## Instruction Sets
The CPU is programmed to handle three distinct instruction categories:

### 1. Fundamental Arithmetic & Logic
* **Addition & Subtraction:** Performs standard 8-bit binary operations with sign detection.
* **Boolean Operations:** Executes core logic including AND, OR, and bitwise NOT.
* **Data Passthrough:** Validates signal integrity through direct identity outputs.

### 2. Advanced Data Manipulation
* **Bitwise Inversion:** Reverses bit-significance order for complex data encoding.
* **Logical Shifting:** Supports 4-bit left shifts (SHL) for rapid multiplication or data alignment.
* **Conditional Selection:** Includes logic for finding minimum values ($Min(A,B)$) and bit-level replacement.

### 3. Comparison & Identity Logic
A specialized hardware mode that compares internal register values against dynamic sequence inputs. This module outputs a specific visual confirmation ('Y' or 'N') based on equality checks, demonstrating the CPU's ability to handle conditional branching and status flags.

## Performance Validation
The following timing diagrams illustrate the operational integrity of the CPU across its primary instruction sets.

### Basic Arithmetic Cycles
This waveform validates the precision of the summation and Boolean logic gates during high-frequency clock cycles.
<img width="778" height="337" alt="image" src="https://github.com/user-attachments/assets/55652243-873e-4936-b63a-5c52485e8596" />

### Data Shift & Rotation Cycles
Validation of the bitwise manipulation instructions, highlighting the stability of the 4-bit shift and inversion logic.
<img width="822" height="322" alt="image" src="https://github.com/user-attachments/assets/01e38fad-df11-4f6c-8ad6-2edcef4e03ec" />

### Conditional Branching Logic
Simulation results showing the comparison module successfully generating binary status outputs for equality conditions.
<img width="882" height="211" alt="image" src="https://github.com/user-attachments/assets/8b73c445-a5ff-44f6-9087-f6c0ea28d505" />
