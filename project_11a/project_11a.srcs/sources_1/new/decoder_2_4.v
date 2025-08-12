`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 10:49:10 PM
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(
    input [1:0] count,
    output reg [3:0] anode,
    output reg cathode_decimal
    );
    
    always @(*) begin   
        case(count) 
            2'b00: begin
                   anode = 4'b1110;
                   cathode_decimal = ~1'b0;
                   end
            2'b01: begin
                   anode = 4'b1101;
                   cathode_decimal = ~1'b0;
                   end
            2'b10: begin
                   anode = 4'b1011;
                   cathode_decimal = ~1'b0;
                   end
            2'b11: begin
                   anode = 4'b0111;
                   cathode_decimal = ~1'b1;
                   end
        endcase
    end
    
endmodule
