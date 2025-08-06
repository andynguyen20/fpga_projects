`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 04:25:21 PM
// Design Name: 
// Module Name: d_e_register
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


module d_e_register(
    input [7:0] D,
    input E, 
    input clk, 
    output reg [7:0] Q
    );
    
    always @(posedge clk) begin
        if(E == 1) 
            Q = D;
        else 
            Q = Q; 
     end
    
endmodule
