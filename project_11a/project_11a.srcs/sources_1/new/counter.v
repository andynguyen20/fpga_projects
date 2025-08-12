`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 09:28:20 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input cen,
    input clk,
    input rst,
    output [15:0] sseg_second
    );
    
    wire [3:0] TC;
    
    decimal_counter count1(.cen(cen), .clk(clk), .rst(rst), .B(sseg_second[3:0]), .TC(TC[0]));
    
    wire [2:0] TC_int;
    assign TC_int[0] = TC[0];
    
    decimal_counter count2(.cen(TC_int[0]), .clk(clk), .rst(rst), .B(sseg_second[7:4]), .TC(TC[1]));
    
    assign TC_int[1] = TC[1];
    
    decimal_counter count3(.cen(TC_int[1]), .clk(clk), .rst(rst), .B(sseg_second[11:8]), .TC(TC[2]));
    
    assign TC_int[2] = TC[2];
    
    decimal_counter count4(.cen(TC_int[2]), .clk(clk), .rst(rst), .B(sseg_second[15:12]), .TC(TC[3]));
    
endmodule
