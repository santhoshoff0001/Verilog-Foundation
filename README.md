# Verilog-Foundation

## Overview
This repository contains a foundational collection of core digital logic circuits implemented in Verilog. It serves as a building block for understanding combinatorial logic and basic hardware design. 

## Repository Structure
* **`RTL/`**: Contains all the synthesizable Verilog design files.
* **`Testbench/`**: Contains the corresponding simulation files used to verify the functionality of each design.
* **`.gitignore`**: Excludes temporary simulation logs, waveform dumps, and tool-generated build files.

## Included Modules
* **Adders**: Half Adder, Full Adder, BCD Adder, and Ripple Carry Adder (RCA).
* **Subtractors**: Half Subtractor and Full Subtractor.
* **Multiplexers**: 2x1 MUX and 4x1 MUX.
* **Demultiplexers**: 1x2 DEMUX and 1x4 DEMUX.
* **Encoder**: 4-to-2 Encoder

## Simulation Details
* Every module in the `RTL/` directory has a dedicated testbench prefixed with `tb_` in the `Testbench/` folder.
* Both the testbench file and the source RTL file must be provided to the compiler to run the simulation successfully.
* The testbenches include `$dumpfile` and `$dumpvars` commands to generate `.vcd` (Value Change Dump) files for waveform analysis.
* Real-time signal changes are printed to the simulation console using the `$monitor` command.

## Supported Tools
* **Simulation & Synthesis**: Compatible with standard EDA environments like Xilinx Vivado, GOWIN EDA, or Icarus Verilog.
* **Waveform Viewing**: Generated `.vcd` files can be viewed using tools like GTKWave or built-in EDA waveform viewers.

## Quick Start Example: Running a Simulation

Here is a step-by-step example of how to compile and simulate the Half Adder module from the root directory using Icarus Verilog (`iverilog`) and GTKWave.

* **1. Compile the design:** `iverilog -o sim_out RTL/half_adder.v Testbench/tb_half_adder.v`
* **2. Run the simulation:** `vvp sim_out`
* **3. View the waveforms:** `gtkwave half_adder.vcd`
