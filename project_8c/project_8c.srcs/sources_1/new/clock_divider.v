`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 07:45:40 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input clk,
    input rst,
    output clk_dvdr
    );
    
    reg [27:0] counter;
    
    always @(posedge (clk), posedge (rst)) begin
        if (rst)
            counter <= {28{1'b0}};
        else 
            counter <= counter + 1;
    end
    
    assign clk_dvdr = counter[27];
           
    
endmodule
