`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 08:39:11 PM
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(
    input [1:0] I, 
    input [3:0] btn,
    output reg [3:0] Y
    );
    
    always@(I, btn) begin
        if((btn[0]) && (I == 2'b00))
            Y <= 4'b0001;
        else if ((btn[1]) && (I == 2'b01))
            Y <= 4'b0010;
        else if ((btn[2]) && (I == 2'b10))
            Y <= 4'b0100;
        else if ((btn[3]) && (I == 2'b11))
            Y <= 4'b1000;
        else 
            Y <= 4'b0000;
    end    
    
endmodule
