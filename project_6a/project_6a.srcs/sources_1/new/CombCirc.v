`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2025 09:17:44 AM
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
    
    // AND gate with 1 ns delay
    assign #1 N1 = A & B;
    // NOT gate with 1 ns delay
    assign #1 N2 = ~B; 
    // AND gate with 1 ns delay
    assign #1 N3 = N2 & C;
    // OR gate with 2 ns delay
    assign #2 X = N1 | N3;

endmodule
