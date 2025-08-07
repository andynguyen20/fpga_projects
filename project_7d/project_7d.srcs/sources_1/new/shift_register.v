`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 08:04:39 PM
// Design Name: 
// Module Name: shift_register
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


module shift_register(
    input [7:0] D, 
    input clk, 
    input R,
    input PL, 
    input SDI,
    output [7:0] Q
    );
    
    wire w1, w2, w3, w4, w5, w6, w7, w8;
    wire Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8;
    
    mux_2_1 mux1(.I1(SDI), .I0(D[0]), .sel(PL), .Y(Y1));
    d_register cut1(.D(Y1), .clk(clk), .Q(w1));
    assign Q[0] = w1;
    
    mux_2_1 mux2(.I1(w1), .I0(D[1]), .sel(PL), .Y(Y2));
    d_register cut2(.D(Y2), .clk(clk), .Q(w2));
    assign Q[1] = w2;
    
    mux_2_1 mux3(.I1(w2), .I0(D[2]), .sel(PL), .Y(Y3));
    d_register cut3(.D(Y3), .clk(clk), .Q(w3));
    assign Q[2] = w3;   
    
    mux_2_1 mux4(.I1(w3), .I0(D[3]), .sel(PL), .Y(Y4));
    d_register cut4(.D(Y4), .clk(clk), .Q(w4));
    assign Q[3] = w4;
    
    mux_2_1 mux5(.I1(w4), .I0(D[4]), .sel(PL), .Y(Y5));
    d_register cut5(.D(Y5), .clk(clk), .Q(w5));
    assign  Q[4] = w5;
    
    mux_2_1 mux6(.I1(w5), .I0(D[5]), .sel(PL), .Y(Y6));
    d_register cut6(.D(Y6), .clk(clk), .Q(w6));
    assign Q[5] = w6;
    
    mux_2_1 mux7(.I1(w6), .I0(D[6]), .sel(PL), .Y(Y7));
    d_register cut7(.D(Y7), .clk(clk), .Q(w7));
    assign Q[6] = w7;
        
    mux_2_1 mux8(.I1(w7), .I0(D[7]), .sel(PL), .Y(Y8));
    d_register cut8(.D(Y8), .clk(clk), .Q(w8));
    assign Q[7] = w8;
    
endmodule
