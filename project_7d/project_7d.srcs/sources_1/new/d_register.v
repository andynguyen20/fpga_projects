`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 05:50:18 PM
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
    input D, 
    input clk, 
    output reg Q
    );
    
    always @(posedge clk) begin
        Q <= D;
    end
    
    
    
endmodule
