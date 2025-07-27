`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 10:49:23 PM
// Design Name: 
// Module Name: led_sw
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


module led_sw(
    input [2:0] btn,
    input mbtn,
    output [2:0] led
    );
    
    assign led[0] = btn[0] & ~mbtn;
    assign led[1] = btn[1] & ~mbtn;
    assign led[2] = btn[2] & ~mbtn; 
    
endmodule
