`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 03:30:27 PM
// Design Name: 
// Module Name: d_register
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


module d_register(
    input [7:0] D, 
    input clk,
    output reg [7:0] Q
    );
    
    always @(posedge clk) begin
        Q <= D;
    end 
    
endmodule
