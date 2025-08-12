`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 09:21:34 PM
// Design Name: 
// Module Name: decimal_counter
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


module decimal_counter(
    input cen,
    input clk,
    input rst, 
    output reg [3:0] B,
    output reg TC
    );
    
    always @(posedge clk) begin
        if (rst) begin
            TC <= 1'b0;
            B <= 4'b0000;
        end else if (cen) begin
            if (B == 4'b1001) begin
                B <= 4'b0000;
                TC <= 1'b1;
            end else begin
                B <= B + 1;
                TC <= 1'b0;
            end
        end else begin
            TC <= 1'b0;
        end
    end

            
            
    
    
    
endmodule
