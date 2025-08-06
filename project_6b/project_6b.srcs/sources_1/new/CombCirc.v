`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2025 09:22:20 AM
// Design Name: 
// Module Name: CombCirc
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


module CombCirc(
   input A,
   input B,
   input C,
   output X
   );

    wire N1, N2, N3;
    
    // AND gate with 5 ns delay
    assign #5 N1 = A & B;
    // NOT gate with 5 ns delay
    assign #5 N2 = ~B; 
    // AND gate with 5 ns delay
    assign #5 N3 = N2 & C;
    // OR gate with 5 ns delay
    assign #5 X = N1 | N3;

endmodule

