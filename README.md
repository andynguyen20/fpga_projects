## FPGA Projects

These are my FPGA projects using the Xilinx XC7Z007S Zynq SoC, where I learn to use Vivado, write testbenches, and implement digital designs on the FPGA fabric.

## File Formatting
* 📁 constr_1/new       → 📄 .xdc  (xdc constraint files written in TCL mapping the Verilog design to FPGA)
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
  * Reverse engineering first three circuits from [**bit file**](https://github.com/andynguyen20/fpga_projects/tree/main/Blackboard_p2) on FPGA and creating truth table to simulate SOP duplicate circuit 
* [**Project 2a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2a/project_2a.srcs)
  * Creating POS duplicate circuit from truth table
* [**Project 2b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2b/project_2b.srcs)
  * Reverse engineering fourth circuit from [**bit file**](https://github.com/andynguyen20/fpga_projects/tree/main/Blackboard_p2) on FPGA and creating truth table to simulate karnaugh map simplified circuit
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
  * Design and simulate an 8:1 multiplexor using three push buttons as select inputs, eight slide switches as data input signals, and connect the output to a green LED
* [**Project 4a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4a/project_4a.srcs)
  * Implement a 4:1 3-bit bus multiplexor on FPGA using 12 switches as data inputs, 2 buttons as select inputs, and three LEDs as the output.
  * Design and simulate an 8:1 8-bit bus multiplexor
* [**Project 4b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4b/project_4b.srcs)
  * Implement a decoder circuit that can enable one of four LEDs to be turned on when a corresponding pushbutton is pressed. 
* [**Project 4c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4c/project_4c.srcs)
  * Create a Verilog description of a 4:2 priority encoder and a test bench that checks for all possible input patterns. Simulate the encoder to verify that it works properly. 
* [**Project 4d**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4d/project_4d.srcs)
  * Create and simulate a Verilog description for an 8-bit shifter that can shift or rotate left or right by 0, 1, 2, or 3 bit positions. Implement the shifter on the FPGA
* [**Project 4e**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4e/project_4e.srcs)
  * Implement a 12:1 1-bit multiplexor where the output should be connected to a green LED. The mux should turn on a red LED if the select input is out of range.
* [**Project 4f**](https://github.com/andynguyen20/fpga_projects/tree/main/project_4f/project_4f.srcs)
  * Create a four input, one output Verilog circuit that uses a 4:1 behavioral multiplexor where minterms 3, 4, 6, 8, 9, 10 and 13 cause the LED to illuminate.

## Project 5
* [**Project 5**](https://github.com/andynguyen20/fpga_projects/tree/main/project_5/project_5.srcs)
  * Design and simulate a Mux and Demux circuit using the Vivado IP integrator to create block designs and implement on FPGA
* [**Project 5a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_5a/project_5a.srcs)
  * Design and implement Single Digit Seven-Segment Display Decoder
* [**Project 5b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_5b/project_5b.srcs)
  * Design and Implement Two-Digit Seven-Segment Display Decoder Using a Button
* [**Project 5c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_5c/project_5c.srcs)
  * Design and Implement Two-Digit Seven-Segment Display Decoder Using a Counter

## Project 6
* [**Project 6**](https://github.com/andynguyen20/fpga_projects/tree/main/project_6/project_6.srcs)
  * Illustrate the formation of a glitch in the simulator 
* [**Project 6a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_6a/project_6a.srcs)
  * Change the OR Gate Delay and resimulate
* [**Project 6b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_6b/project_6b.srcs)
  * Change the Delay of All gates and resimulate

## Project 7
* [**Project 7**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7/project_7.srcs)
  * Implement and simulate a NAND basic cell SR latch with unstable condition "meta-stability" in waveform
* [**Project 7a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7a/project_7a.srcs)
  * Implement and simulate a NOR basic cell SR latch with unstable condiiton "meta-stability" in waveform
* [**Project 7b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7b/project_7b.srcs)
  * Design and simulate a D-Latch with unstable condition "meta-stabibility" in waveform
* [**Project 7c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_7c/project_7c.srcs)
  * Design and implement Parallel In Parallel Out (PIPO) Shift Register
  
  
  