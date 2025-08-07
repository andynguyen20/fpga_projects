`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 05:49:39 PM
// Design Name: 
// Module Name: PISO
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PISO(
    input [7:0] sw,
    input [1:0] btn, 
    input clk, 
    output [7:0] led1,
    output [7:0] led2
    );
    
    wire main_btn;
    wire [25:0] cntr;
    wire [7:0] led1_int;
    wire [7:0] led2_int;
   
    counter ctr(.clk(clk), .cntr(cntr));
            
    assign main_btn = btn[0] | btn[1];
    
    
    shift_register cut(.D(sw), .clk(cntr[25]), .PL(main_btn), .SDI(led2_int[7]), .Q(led1_int));
    assign led1 = led1_int;
    
    shift_register cut1(.D(sw), .clk(cntr[25]), .PL(main_btn), .SDI(led1_int[7]), .Q(led2_int));
    assign led2 = led2_int;
    
    
endmodule
