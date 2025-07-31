`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 01:43:12 AM
// Design Name: 
// Module Name: multiplexor_12_1_1
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


module multiplexor_12_1_1(
    input [11:0] I,
    input [3:0] sel,
    output reg [1:0] Y
    );
    
    always @(*) begin
        case(sel)
            4'b0000: Y <= {1'b0, I[0]}; 
            4'b0001: Y <= {1'b0, I[1]};
            4'b0010: Y <= {1'b0, I[2]};
            4'b0011: Y <= {1'b0, I[3]};
            4'b0100: Y <= {1'b0, I[4]}; 
            4'b0101: Y <= {1'b0, I[5]};
            4'b0110: Y <= {1'b0, I[6]};
            4'b0111: Y <= {1'b0, I[7]}; 
            4'b1000: Y <= {1'b0, I[8]};
            4'b1001: Y <= {1'b0, I[9]};
            4'b1010: Y <= {1'b0, I[10]};
            4'b1011: Y <= {1'b0, I[11]};
            4'b1011: Y <= 2'b10;
            4'b1100: Y <= 2'b10;
            4'b1101: Y <= 2'b10;
            4'b1111: Y <= 2'b10;
            default: Y <= 2'b00;
         endcase
     end
            
    
endmodule
