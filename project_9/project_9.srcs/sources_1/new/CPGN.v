`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2025 12:30:41 PM
// Design Name: 
// Module Name: CPGN
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


module CPGN(
    input [3:0] G, 
    input [3:0] P, 
    input Cin,
    output [3:0] Cout
    );
    
    assign Cout[0] = G[0] | (P[0] & Cin);
    assign Cout[1] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    assign Cout[2] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
    assign Cout[3] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
    
    
endmodule
