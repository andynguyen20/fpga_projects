`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 05:30:47 AM
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(
    input I0, I1, I2, I3, I4, I5, I6, I7,
    input[2:0] sel, 
    output Y
    );
    
    reg tmp;
    
    always@(I0, I1, I2, I3, I4, I5, I6, I7, sel) begin
        case(sel)
            3'b000: tmp <= I0;
            3'b001: tmp <= I1;
            3'b010: tmp <= I2;
            3'b011: tmp <= I3;
            3'b100: tmp <= I4;
            3'b101: tmp <= I5; 
            3'b110: tmp <= I6; 
            3'b111: tmp <= I7;
            default: tmp <= 1'b0;
        endcase
     end 
     
     assign Y = tmp;
        
endmodule
