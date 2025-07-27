`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 06:42:23 AM
// Design Name: 
// Module Name: top
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


module top(
    input ct, // outputs 1 if coolant temperature exceeds 200 degrees
    input cl,  // outputs 1 if coolant level falls below 60% capacity
    input ot,  // outputs 1 if oil temperature exceeds 180 degrees
    input ol, // outputs 1 if oil level falls below 75% capacity
    output [1:0] led_yellow, // two buses for blue and green to make yellow
    output led_red 
    );
    
    assign led_yellow[0] = cl | ol | (~ol & ot) | (ct & ol);
    assign led_yellow[1] = cl | ol | (~ol & ot) | (ct & ol);
    assign led_red = (ct & cl) | (ot & ol) | (ct & ot) | (cl & ol & ct & ~ot);
    
    
endmodule
