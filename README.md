## FPGA Projects

These are my FPGA projects using the Xilinx XC7Z007S Zynq SoC, where I learn to use Vivado, write testbenches, and implement digital designs on the FPGA fabric.

## File Formatting
* 📁 constr_1/new       → 📄 .xdc  (xdc files written in TCL mapping the Verilog design to FPGA)
* 📁 sims_1/new         → 📄 .v  (testbench files)
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