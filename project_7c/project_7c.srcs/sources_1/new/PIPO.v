`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 03:29:59 PM
// Design Name: 
// Module Name: PIPO
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


module PIPO(
    input [7:0] I0, 
    input clk,
    input sel, 
    output [7:0] led
    );
    
    wire [7:0] I1;
    
    d_register cut(.D(I0), .clk(clk), .Q(I1));
    
    mux_2_1_8 cut1(.I0(I0), .I1(I1), .sel(sel), .led(led));
    
endmodule
