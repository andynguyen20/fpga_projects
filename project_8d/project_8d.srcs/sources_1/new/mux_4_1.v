`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 08:33:51 PM
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(
    input [3:0] I0, 
    input [3:0] I1,
    input [3:0] I2,
    input [3:0] I3, 
    input [2:0] sel,
    output reg [3:0] Y
    );
    
    always @(*) begin
        case(sel) 
            2'b00: Y = I0;
            2'b01: Y = I1; 
            2'b10: Y = I2;
            2'b11: Y = I3;
            default Y = 4'b0000;
        endcase
    end
    
    
endmodule
