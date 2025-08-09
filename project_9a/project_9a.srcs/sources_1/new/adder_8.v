`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 09:33:24 AM
// Design Name: 
// Module Name: adder_8
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


module adder_8(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] S,
    output reg overflow,
    output reg neg,
    output Cout
    );
    
    assign {Cout, S} = A + B + Cin;
    
    always @(*) begin
          if (A[7] == 0 && B[7] == 0 && S[7] == 1)
            overflow = 1'b1;
        else if (A[7] == 1 && B[7] == 1 && S[7] == 0)
            overflow = 1'b1;
        else
            overflow = 1'b0;
    end
    
    always @(*) begin
        if (S[7] == 1)
            neg = 1'b1;
        else 
            neg = 1'b0;
    end
    
endmodule
