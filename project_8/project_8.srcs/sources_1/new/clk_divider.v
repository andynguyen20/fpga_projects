`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 03:09:46 PM
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input clk, 
    input rst,
    output led
    );
    
    wire [26:0] din;
    wire [26:0] clkdiv;
    
    dff dff_inst0(.D(din[0]), .clk(clk), .rst(rst), .Q(clkdiv[0]));
    
    genvar i;
    generate 
        for (i = 1; i < 27; i = i + 1)
        begin : dff_gen_label
            dff dff_inst (
                .D(din[i]),
                .clk(clkdiv[i-1]), 
                .rst(rst), 
                .Q(clkdiv[i])
                );
        end
     endgenerate
     
     
    assign din = ~clkdiv;   
    
    assign led = clkdiv[26];     
    
    
    
endmodule
