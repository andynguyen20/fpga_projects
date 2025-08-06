`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2025 04:08:39 PM
// Design Name: 
// Module Name: decoder_3_8
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


module decoder_3_8(
    input EN, 
    input [2:0] I,
    output [7:0] Y
    );
    
    reg [7:0] tmp;
    
    always @(*) begin
        if (EN == 1) begin
            case(I)
                3'b000: tmp = 8'b00000001;
                3'b001: tmp = 8'b00000010;
                3'b010: tmp = 8'b00000100;
                3'b011: tmp = 8'b00001000;
                3'b100: tmp = 8'b00010000;
                3'b101: tmp = 8'b00100000;
                3'b110: tmp = 8'b01000000;
                3'b111: tmp = 8'b10000000; 
             endcase
         end
         else 
            tmp = 8'b00000000;
      end
      
      assign Y = tmp;
                 
endmodule
