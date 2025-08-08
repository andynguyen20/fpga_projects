`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 06:41:51 PM
// Design Name: 
// Module Name: counter_clock_divider
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


module counter_clock_divider(
    input clk,
    input rst1,
    input rst2,
    output led
    );
    
    wire led1;
    
    clock_divider1 divider1(.clk(clk), .rst(rst1), .led(led1));
    
    clock_divider2 divider2(.clk(led1), .rst(rst2), .led(led));
    
endmodule
