`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 01:11:03 PM
// Design Name: 
// Module Name: comparator
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


module comparator(
    input [7:0] A,
    input [7:0] B,
    output reg [2:0] led
    );
    
    always @(*) begin
        if (A > B) 
            led = 3'b001;
        else if (A == B) 
            led = 3'b010;
        else
            led = 3'b100;
    end
        
    
    
endmodule
