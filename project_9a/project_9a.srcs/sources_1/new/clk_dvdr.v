`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 09:36:47 AM
// Design Name: 
// Module Name: clk_dvdr
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


module clk_dvdr(
    input clk,
    output count
    );
    
    reg [27:0] counter;
    
    always @(posedge clk) begin
        counter <= counter + 1;
    end
    
    assign count = counter[17];
    
endmodule
