`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2025 05:13:34 AM
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
    input [3:0] sseg1,
    input [3:0] sseg2,
    input btn,
    output reg [3:0] Y
    );
    
    always @(*) begin
        if(btn == 0) 
            Y = sseg1;
        else
            Y = sseg2;
    end
    
endmodule
