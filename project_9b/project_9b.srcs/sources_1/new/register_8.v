`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 11:27:51 AM
// Design Name: 
// Module Name: register_8
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


module register_8(
    input [7:0] D,
    input En,
    input rst,
    input clk,
    output reg [7:0] Q
    );
    
    always @(posedge (clk) or posedge (rst)) begin
        if (rst == 1) 
            Q <= {8{1'b0}};
        else if (En)
            Q <= D;
    end
    
endmodule
