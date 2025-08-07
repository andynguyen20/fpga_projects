`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 08:37:06 AM
// Design Name: 
// Module Name: SIPO
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


module SIPO(
    input SDI,
    input clk, 
    output [7:0] led
    );
    
    wire [25:0] cntr;
    
    counter ctr(.clk(clk), .cntr(cntr));
    
    wire w1, w2, w3, w4, w5, w6, w7, w8;
    
    d_register cut(.D(SDI), .clk(cntr[25]), .Q(w1));
    assign led[0] = w1;
    
    d_register cut1(.D(w1), .clk(cntr[25]), .Q(w2));
    assign led[1] = w2;
    
    d_register cut3(.D(w2), .clk(cntr[25]), .Q(w3));
    assign led[2] = w3;
    
    d_register cut4(.D(w3), .clk(cntr[25]), .Q(w4));
    assign led[3] = w4;
    
    d_register cut5(.D(w4), .clk(cntr[25]), .Q(w5));
    assign led[4] = w5;
    
    d_register cut6(.D(w5), .clk(cntr[25]), .Q(w6));
    assign led[5] = w6;
    
    d_register cut7(.D(w6), .clk(cntr[25]), .Q(w7));
    assign led[6] = w7;
    
    d_register cut8(.D(w7), .clk(cntr[25]), .Q(w8));
    assign led[7] = w8;
endmodule
