This project is a VHDL-based 8-bit CPU designed and simulated using Quartus II on an Altera FPGA. The project was originally a lab from my class, COE 328 (Digital Systems), where I needed to design a working processor from scratch using core digital hardware concepts such as registers, a Moore finite-state machine (FSM), a modified decoder, and an arithmetic logic unit (ALU) and verify its behaviour through rigorous waveform simulation.

Features
1. ALU 1 performs 8 standard arithmetic and bitwise operations (addition, subtraction, NOT, AND, OR, NAND, NOR, XOR).
2. ALU 2 performs 8 advanced operations including bit reversal, left shift, nibble inversion, Min(A,B), and XNOR.
3. ALU 3 compares split nibbles of register A against the FSM's student ID output, displaying Y or N on a 7-segment display.
4. Dual 7-segment LED displays for visualizing the 8-bit ALU output.
5. Full waveform-based functional verification for each CPU configuration.
6. Two 8-bit D flip-flop registers  that store input values, updated on a rising clock edge.
7. Moore FSM that cycles through 8 states, acting as the control unit and outputting a sequence.
