`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 08:01:23 PM
// Design Name: 
// Module Name: BCD_counter
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


module BCD_counter(
    input rst,
    input clk,
    output [6:0] sseg,
    output [3:0] anode
    );
    
    wire w1;
    wire [3:0] count;
    
    clock_divider dvdr(.clk(clk), .rst(rst), .clk_dvdr(w1));
    
    counter cntr(.clk(w1), .count(count));
    
    decoder dec(.I(count), .sseg(sseg));
    
    assign anode = 4'b1110;
    
    
endmodule
