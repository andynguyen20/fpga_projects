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
// * Illuminates a yellow light whenever any of the following are true:
//  * Only the Coolant Level is low
//  * Only the Oil Level is low
//  * The Oil Temperature is too high and the Oil Level is OK
//  * The Coolant Temperature is too high and the Oil Level is too low
// * Illuminates a Red light (using the other LED package) whenever any of the following are true:
//  * The Coolant temperature is too high and the Coolant level is too low
//  * The Oil Temperature is too high and the Oil Level is too low
//  * The Coolant and Oil Temperatures are too high at the same time
//  * The Coolant and Oil levels are too low at the same time that the Coolant Temperature is too high and the Oil Temperature is OK.
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
