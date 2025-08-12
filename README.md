## FPGA Projects

These are my FPGA projects using the Xilinx XC7Z007S Zynq SoC, where I learn to use Vivado, write testbenches, and implement digital designs on the FPGA

## File Formatting
* 📁 constr_1/new       → 📄 .xdc  (xdc constraint files written in Tcl mapping the Verilog design to FPGA)
* 📁 sims_1/new         → 📄 .v  (verilog testbench files for waveform simulation)
* 📁 sources_1/new      → 📄 .v  (verilog design source files)


## Project 1
* [**Project 1**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1/project_1.srcs)
  * Navigating Vivado design and contraint files and getting familiar with connecting to FPGA 
* [**Project 1a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1a/project_1a.srcs)
  * Creating Verilog and constraint files to map to FPGA using a switch and an LED
* [**Project 1b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1b/project_1b.srcs)
  * Creating Verilog and constraint files to map to FPGA using all switches and LEDs above it
* [**Project 1c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1c/project_1c.srcs)
  * Reversing order of switches to LED from project 1b
* [**Project 1d**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1d/project_1d.srcs)
  * Illuminating seven-segment display using buttons for anode display and switches for segments of sseg
* [**Project 1e**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1e/project_1e.srcs)
  * Driving an RGB LED using pushbuttons
* [**Project 1f**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1f/project_1f.srcs)
  * Driving an RGB LED using pushbuttons and a "Master ON/OFF" switch

## Project 2 
* [**Project 2**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2/project_2.srcs)
  * Reverse engineering first three circuits from [**bit file**](https://github.com/andynguyen20/fpga_projects/tree/main/Blackboard_p2) on FPGA and recreating circuit
* [**Project 2a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2a/project_2a.srcs)
  * Creating POS duplicate circuit from truth table
* [**Project 2b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2b/project_2b.srcs)
  * Reverse engineering fourth circuit from [**bit file**](https://github.com/andynguyen20/fpga_projects/tree/main/Blackboard_p2) on FPGA and creating circuit
* [**Project 2c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2c/project_2c.srcs)
  * Creating a new circuit that flashes yellow or red depending on specification (specification is defined in comments of source file)
* [**Project 2d**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2d/project_2d.srcs)
  * Illuminating an LED when exactly two of the first four switches are set to "1" and illuminating a second LED when exactly 3 of the next four switches are set to "0"

## Project 3
* [**Project 3**](https://github.com/andynguyen20/fpga_projects/tree/main/project_3/project_3.srcs)
  * Designing a five-way light switch using truth tables and K-maps before testing with FPGA
* [**Project 3a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_3a/project_3a.srcs)
  * Designing a majority-of-five circuit, writing testbenches and simulating waveform diagrams before testing with FPGA
* [**Project 3b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_3b/project_3b.srcs)
  * Designing a temperature indicator, writing testbenches and simulating waveform diagrams before testing with FPGA
* [**Project 3c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_3c/project_3c.srcs)
  * Designing a circuit for dashboard indicator (specification in source file) and testing with FPGA
* [**Project 3d**](https://github.com/andynguyen20/fpga_projects/tree/main/project_3d/project_3d.srcs)
  * Implementing a circuit that illuminates an LED when an odd number of switches are turned on and another LED when an even number of switches are turned on
* [**Project 3e**](https://github.com/andynguyen20/fpga_projects/tree/main/project_3e/project_3e.srcs)
  * Enhanced Project 3d with an illuminated led when an odd number of switches are turned on and an even number of pushbuttons are pressed 

## Project 4
* [**Project 4**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4/project_4.srcs)
  * Design, simulate, and implement an 8:1 multiplexor
* [**Project 4a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4a/project_4a.srcs)
  * Design and implement a 4:1 3-bit bus multiplexor
  * Design and simulate an 8:1 8-bit bus multiplexor
* [**Project 4b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4b/project_4b.srcs)
  * Design and implement a decoder circuit.
* [**Project 4c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4c/project_4c.srcs)
  * Design, simulate and implement a 4:2 priority encoder.
* [**Project 4d**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4d/project_4d.srcs)
  * Design, simulate and implement an 8-bit shifter that can shift or rotate left or right by 0, 1, 2, or 3 bit positions. 
* [**Project 4e**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4e/project_4e.srcs)
  * Design and implement a 12:1 1-bit multiplexor
* [**Project 4f**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4f/project_4f.srcs)
  * Design and implement 4:1 behavioral multiplexor where minterms 3, 4, 6, 8, 9, 10 and 13 cause the LED to illuminate.

## Project 5
* [**Project 5**](https://github.com/andynguyen20/fpga_projects/tree/main/project_5/project_5.srcs)
  * Design, implement and simulate a Mux and Demux circuit using the Vivado IP integrator to create block designs
* [**Project 5a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_5a/project_5a.srcs)
  * Design and implement Single Digit Seven-Segment Display Decoder
* [**Project 5b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_5b/project_5b.srcs)
  * Design and Implement Two-Digit Seven-Segment Display Decoder Using a Button
* [**Project 5c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_5c/project_5c.srcs)
  * Design and Implement Two-Digit Seven-Segment Display Decoder Using a Counter

## Project 6
* [**Project 6**](https://github.com/andynguyen20/fpga_projects/tree/main/project_6/project_6.srcs)
  * Design and simulate the formation of a glitch
* [**Project 6a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_6a/project_6a.srcs)
  * Change the OR Gate Delay from Project 6 and resimulate a glitch
* [**Project 6b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_6b/project_6b.srcs)
  * Change the Delay of All gates in Project 6 and resimulate a glitch

## Project 7
* [**Project 7**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7/project_7.srcs)
  * Implement and simulate a NAND basic cell SR latch with unstable condition in waveform
* [**Project 7a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7a/project_7a.srcs)
  * Implement and simulate a NOR basic cell SR latch with unstable condiiton in waveform
* [**Project 7b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7b/project_7b.srcs)
  * Design and simulate a D-Latch with unstable condition in waveform
* [**Project 7c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7c/project_7c.srcs)
  * Design and implement Parallel In Parallel Out (PIPO) Shift Register
* [**Project 7d**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7d/project_7d.srcs)
  * Design and implement Parallel In Serial Out (PISO) Shift Register
* [**Project 7e**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7e/project_7e.srcs)
  * Design and implement Serial In Parallel Out (SIPO) Shift Register

## Project 8
* [**Project 8**](https://github.com/andynguyen20/fpga_projects/tree/main/project_8/project_8.srcs)
  * Design a clock divider based on an asynchronous counter toggling below 1Hz
* [**Project 8a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_8a/project_8a.srcs)
  * Design a clock divider based on a synchronous binary counter toggling at .5Hz
* [**Project 8b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_8b/project_8b.srcs)
  * Design a Counter Based Clock Divider driven by a 1Hz clock using two clock dividers 
* [**Project 8c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_8c/project_8c.srcs)
  * Create and implement a BCD Counter driven by a 1Hz clock using a clock divider
* [**Project 8d**](https://github.com/andynguyen20/fpga_projects/tree/main/project_8d/project_8d.srcs)
  * Create and implement a 4-digit BCD Counter driven by a 1KHz clock using a clock divider
  
## Project 9
* [**Project 9**](https://github.com/andynguyen20/fpga_projects/tree/main/project_9/project_9.srcs)
  * Design, simulate and implement a 4-bit Carry look-ahead adder using a Carry Propagate/Generate Network with structural verilog 
* [**Project 9a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_9a/project_9a.srcs)
  * Design and implement an Adder/Subtractor circuit connected to a BCD converter using Double Dabble algorithm on seven segment display
* [**Project 9b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_9b/project_9b.srcs)
  * Design and implement a multiplier circuit connected to sseg display using BCD converter from project 9a
* [**Project 9c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_9c/project_9c.srcs)
  * Design and implement a comparator circuit connected to sseg display using BCD converter from project 9a

## Project 10
* [**Project 10**](https://github.com/andynguyen20/fpga_projects/tree/main/project_10/project_10.srcs)
  * Design and implement an 8-bit ALU that supports the functions shown in the table below

| OpCode | Description | Output F |
| ----- | ----- | ----- |
| 000 | Addition | A + B |
| 001 | Increment | A + 1 |
| 010 | Subtract | A - B |
| 011 | Multiply | A * B |
| 100 | Not | not A |
| 101 | Bit-wise XOR | A XOR B |
| 110 | Bit-wise OR | A OR B |
| 111 | Bit-wise AND | A AND B |

* [**Project 10a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_10a/project_10a.srcs)
  * Add zero, negative, carry, and overflow detection to ALU

  ## Project 11
* [**Project 11**](https://github.com/andynguyen20/fpga_projects/tree/main/project_11/project_11.srcs)
  * Design and simulate a serial adder testing for all possible cases in testbench using Finite State Machine logic
* [**Project 11**](https://github.com/andynguyen20/fpga_projects/tree/main/project_11/project_11.srcs)
  * Design, simulate and implement a stopwatch using FSM logic, 