# Verilog-Foundation

## Overview
This repository contains a foundational collection of core digital logic circuits implemented in Verilog. It serves as a structured reference for understanding combinational and sequential hardware design fundamentals.

## Repository Structure
The codebase is separated by domain, keeping synthesizable designs and their verification environments self-contained:

* **`combinational/`**:
  * `rtl/`: Synthesizable Verilog source files for combinational logic.
  * `tb/`: Corresponding testbench verification files.
* **`sequential/`**:
  * `rtl/`: Synthesizable Verilog source files for clock-dependent and state-holding circuits.
  * `tb/`: Corresponding testbench verification files.
* **`.gitignore`**: Excludes temporary simulation artifacts, waveform dumps (`.vcd`), and tool-generated build files.

## Included Modules

### Combinational Logic
* **Adders**: Half Adder, Full Adder, BCD Adder, and Ripple Carry Adder (RCA).
* **Subtractors**: Half Subtractor and Full Subtractor.
* **Multiplexers**: 2x1 MUX and 4x1 MUX.
* **Demultiplexers**: 1x2 DEMUX and 1x4 DEMUX.
* **Encoders**: 4-to-2 Encoder and 4-to-2 Priority Encoder.
* **Decoders**: 2-to-4 Decoder.

### Sequential Logic
* **Latches**: SR Latch, D Latch, T Latch, and JK Latch.
* **Flip-Flops**: SR Flip-Flop and T Flip-Flop.
* **Shift Registers**: SISO, SIPO, PISO, and PIPO.

## Simulation Details
* Every module has a dedicated testbench located in the adjacent `tb/` folder.
* Both the RTL source and testbench files must be passed to the compiler for simulation.
* Testbenches include `$dumpfile` and `$dumpvars` to dump Value Change Dump (`.vcd`) files for waveform inspection.
* Console logging uses `$monitor` or `$display` to log signal transitions during simulation runs.

## Supported Tools
* **Simulation & Synthesis**: Compatible with standard EDA environments like Icarus Verilog, Gowin EDA, or Xilinx Vivado.
* **Waveform Viewing**: Generated `.vcd` files can be inspected using GTKWave or integrated EDA viewers.

## Quick Start Example: Running a Simulation

Step-by-step example running the Half Adder simulation from the root directory using Icarus Verilog (`iverilog`) and GTKWave:

* **1. Compile the design:**  
  `iverilog -o sim_out combinational/rtl/half_adder.v combinational/tb/tb_half_adder.v`
* **2. Run the simulation:**  
  `vvp sim_out`
* **3. View the waveforms:**  
  `gtkwave half_adder.vcd`