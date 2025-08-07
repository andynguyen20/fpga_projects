`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 08:32:22 AM
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
    output Q
    );
    
    always @(posedge clk) begin 
        D <= Q;
    end
    
endmodule
