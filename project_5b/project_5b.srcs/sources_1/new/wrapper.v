`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2025 05:17:47 AM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input btn,
    input [3:0] sw1,
    input [3:0] sw2,
    output [6:0] sseg,
    output reg [3:0] anode
    );
    
    wire [3:0] sdata;
    
    mux_2_1 cut(.sseg1(sw1), .sseg2(sw2), .btn(btn), .Y(sdata));
    
    bin2seg cut1(.sw(sdata),.sseg(sseg));
    
    always @(btn) begin
        if (btn == 0) 
            anode = 4'b1110;
        else 
            anode = 4'b1101;
    end
    
    
endmodule
