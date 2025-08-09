`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 11:30:39 AM
// Design Name: 
// Module Name: multiplier_8
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


module multiplier_8(
    input [7:0] A,
    input [7:0] B,
    output reg [13:0] Y,
    output reg overflow
    );
    
    wire [15:0] Z; 
    
    assign Z = A * B;
    
    always @(*) begin
        if (Z > 16'd9999) begin // decimal 9999
            Y = 14'd9999;      
            overflow = 1'b1;
        end 
        else begin
            Y = Z[13:0];       
            overflow = 1'b0;
        end
    end
    
endmodule

