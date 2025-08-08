`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 07:57:10 PM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [3:0] I, 
    output reg [6:0] sseg
    );
    
     always @(*) begin
        case(I)
            4'b0000: sseg = ~7'b0111111;
            4'b0001: sseg = ~7'b0000110;
            4'b0010: sseg = ~7'b1011011;
            4'b0011: sseg = ~7'b1001111;
            4'b0100: sseg = ~7'b1100110;
            4'b0101: sseg = ~7'b1101101;
            4'b0110: sseg = ~7'b1111101;
            4'b0111: sseg = ~7'b0000111;
            4'b1000: sseg = ~7'b1111111;
            4'b1001: sseg = ~7'b1100111;
            4'b1010: sseg = ~7'b1110111;
            4'b1011: sseg = ~7'b1111100;
            4'b1100: sseg = ~7'b0111001;
            4'b1101: sseg = ~7'b1011110;
            4'b1110: sseg = ~7'b1111001;
            4'b1111: sseg = ~7'b1110001;
            default: sseg = ~7'b0000000;
        endcase
     end
endmodule
