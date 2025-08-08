`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 05:58:44 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input clk,
    input rst1,
    input rst2,
    input ce,
    output led,
    output [3:0] led1
    );
    
    wire led_int;
    
    clock_divider cut( .clk(clk), .rst(rst1), .led(led_int));
    assign led = led_int;
    
    counter cut1(.clk(led_int), .rst(rst2), .ce(ce), .counterout(led1));
    
endmodule
