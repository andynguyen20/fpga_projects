`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 09:31:58 AM
// Design Name: 
// Module Name: inverter_8
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


module inverter_8(
    input [7:0] in,
    input inv,
    output reg [7:0] out
    );
    
    always @(*) begin
        if (inv)
            out = ~in;
        else
            out = in;
    end
    
    
endmodule
