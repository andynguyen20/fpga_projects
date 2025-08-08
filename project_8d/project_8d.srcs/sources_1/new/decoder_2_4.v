`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 08:39:50 PM
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
    input [1:0] count,
    output reg [3:0] anode
    );
    
    always @(*) begin   
        case(count) 
            2'b00: anode = 4'b1110;
            2'b01: anode = 4'b1101;
            2'b10: anode = 4'b1011;
            2'b11: anode = 4'b0111;
        endcase
    end
    
endmodule
