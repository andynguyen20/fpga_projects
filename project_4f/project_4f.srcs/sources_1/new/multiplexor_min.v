`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 02:40:55 AM
// Design Name: 
// Module Name: multiplexor_min
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
// Create a four input (SW0, SW1, SW2 and SW3), one output (LED0) Verilog circuit that uses a 4:1 behavioral multiplexor. 
// Connect the multiplexor output to an LED, and connect the four inputs in such a way that minterms 3, 4, 6, 8, 9, 10 and 13 
// cause the LED to illuminate. 
//////////////////////////////////////////////////////////////////////////////////


module multiplexor_min(
    input [1:0] sel,
    input [1:0] I,
    output Y
    );
    
    reg tmp;
    
    always @(I, sel) begin
        case(sel) 
            2'b00: tmp <= I[1] & I[0];
            2'b01: tmp <= ~I[0];
            2'b10: tmp <= ~I[1] | ~I[0];
            2'b11: tmp <= ~I[1] & I[0];
         endcase 
      end
      
      assign Y = tmp;
    
endmodule
