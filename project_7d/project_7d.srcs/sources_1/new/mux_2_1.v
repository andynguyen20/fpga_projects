`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 08:07:27 PM
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(
    input I0,
    input I1,
    input sel,
    output reg Y
    );
    
    always @(*) begin
        case(sel) 
            1'b0: Y = I0;
            1'b1: Y = I1;
        endcase
    end
    
endmodule
