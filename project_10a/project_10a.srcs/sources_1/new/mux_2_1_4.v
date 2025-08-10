`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 08:54:28 PM
// Design Name: 
// Module Name: mux_2_1_4
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


module mux_2_1_4(
    input [3:0] I0,
    input [3:0] I1,
    input sel,
    output reg [3:0] Y
    );
    
    always @(*) begin
        case(sel)
            1'b0: Y = I0;
            1'b1: Y = I1;
        endcase
    end
    
    
endmodule