`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 03:26:48 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] A,
    input [7:0] B,
    input [2:0] opcode,
    output reg [7:0] Y
    );
    
    
    wire [15:0] mult;
    assign mult = A * B;
    
    reg [7:0] tmp_mult;
    
    always @(*) begin 
        if(mult > 8'b11111111)  // only 8-bit fit on seven segment display (4 bits per hex digit)
            tmp_mult = 8'b11111111; 
        else  
            tmp_mult = mult[7:0];
    end     
            
    
    always @(*) begin
        case(opcode)
            3'b000: Y = A + B;
            3'b001: Y = A + 1;
            3'b010: Y = A - B;
            3'b011: Y = tmp_mult;
            3'b100: Y = ~A;
            3'b101: Y = A ^ B;
            3'b110: Y = A | B;
            3'b111: Y = A & B;
            default: Y = 8'b00000000;
        endcase
    end
    
        
    
endmodule
