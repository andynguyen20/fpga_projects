`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2025 01:13:00 PM
// Design Name: 
// Module Name: CLA
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


module CLA(
    input clk,
    input Cin, 
    input [3:0] A,
    input [3:0] B,
    output [3:0] S, 
    output [6:0] sseg,
    output reg [3:0] anode,
    output Cout
    );
   
   wire [3:0] P;
   wire [3:0] G;
   wire [3:0] Cout_int;
   
   full_adder FA1(.A(A[0]), .B(B[0]), .Cin(Cin), .P(P[0]), .G(G[0]), .S(S[0]));
   full_adder FA2(.A(A[1]), .B(B[1]), .Cin(Cout_int[0]), .P(P[1]), .G(G[1]), .S(S[1]));
   full_adder FA3(.A(A[2]), .B(B[2]), .Cin(Cout_int[1]), .P(P[2]), .G(G[2]), .S(S[2]));
   full_adder FA4(.A(A[3]), .B(B[3]), .Cin(Cout_int[2]), .P(P[3]), .G(G[3]), .S(S[3]));
   
   CPGN genprop(.G(G), .P(P), .Cin(Cin), .Cout(Cout_int));
   
   assign Cout = Cout_int[3];  
   wire [7:0] floating;
   wire [3:0] tens;
   wire [3:0] ones;
   bin2bcd bcd1(.bin({{9{1'b0}}, Cout_int[3], S}), .bcd({floating, tens, ones}));
   
   wire sel;
   counter count(.clk(clk), .Y(sel));
   wire [3:0] sseg_int;
   mux_2_1 mux1(.I0(ones), .I1(tens), .sel(sel), .Y(sseg_int)); 
   
   decoder_sseg dec(.Y(sseg_int), .sseg(sseg));
   
   always @(posedge clk) begin
        if (sel == 0)
            anode <= ~4'b0001;
        else
            anode <= ~4'b0010;
    end
   
   
  
endmodule
