`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 03:37:57 PM
// Design Name: 
// Module Name: mux_2_1_8
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


module mux_2_1_8(
    input [7:0] I0,
    input [7:0] I1,
    input sel,
    output reg [7:0] led
    );
    
   always @(*) begin
        case(sel)
            1'b0: led = I0;
            1'b1: led = I1;
            default: led = 8'b00000000;
       endcase
    end
    
endmodule
