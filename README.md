## FPGA Projects

These are my FPGA projects using the Xilinx XC7Z007S Zynq SoC, where I learn to use Vivado and implement digital designs on the FPGA fabric.

## Project 1
* [**Project 1**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1)
  * Navigating Vivado design and contraint files and getting familiar with connecting to FPGA 
* [**Project 1a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1a)
  * Creating Verilog and constraint files to map to FPGA using a switch and an LED
* [**Project 1b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1b)
  * Creating Verilog and constraint files to map to FPGA using all switches and LEDs above it
* [**Project 1c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1c)
  * Reversing order of switches to LED from project 1b
* [**Project 1d**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1d)
  * Illuminating seven-segment display using buttons for anode display and switches for segments of sseg
* [**Project 1e**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1e)
  * Driving an RGB LED using pushbuttons
* [**Project 1f**](https://github.com/andynguyen20/fpga_projects/tree/main/project_1f)
  * Driving an RGB LED using pushbuttons and a "Master ON/OFF" switch

## Project 2 
* [**Project 2**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2)
  * Reverse engineering first three circuits from [**bit file**](https://github.com/andynguyen20/fpga_projects/tree/main/Blackboard_p2) on FPGA and creating truth table to simulate SOP duplicate circuit 
* [**Project 2a**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2a)
  * Creating POS duplicate circuit from truth table
* [**Project 2b**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2b)
  * Reverse engineering fourth circuit from [**bit file**](https://github.com/andynguyen20/fpga_projects/tree/main/Blackboard_p2) on FPGA and creating truth table to simulate karnaugh map simplified circuit
* [**Project 2c**](https://github.com/andynguyen20/fpga_projects/tree/main/project_2c)
  * Creating a brand new circuit that follows these rules:
    * Illuminates a yellow light whenever any of the following are true:
      * Only the Coolant Level is low
      * Only the Oil Level is low
      * The Oil Temperature is too high and the Oil Level is OK
      * The Coolant Temperature is too high and the Oil Level is too low
    * Illuminates a Red light (using the other LED package) whenever any of the following are true:
      * The Coolant temperature is too high and the Coolant level is too low
      * The Oil Temperature is too high and the Oil Level is too low
      * The Coolant and Oil Temperatures are too high at the same time
      * The Coolant and Oil levels are too low at the same time that the Coolant Temperature is too high and the Oil Temperature is OK.

