`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 08:23:41 PM
// Design Name: 
// Module Name: BCD_counter
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


module BCD_counter(
    input clk, 
    input CEN,
    output reg [3:0] B,
    output reg TC
    );
    
    always @(posedge clk) begin
        if (CEN) begin
            if (B == 4'b1001) begin
                B <= 4'b0000;
                TC <= 1'b1;
            end 
            else begin
                B <= B + 1;
                TC <= 1'b0;
            end
        end 
        else begin
            TC <= 1'b0;
        end
    end
endmodule
