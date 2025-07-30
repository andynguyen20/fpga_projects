`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 12:43:47 AM
// Design Name: 
// Module Name: shifter_8
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
// Create and simulate a Verilog description for an 8-bit shifter that can shift or rotate left or right by 0, 1, 2, or 3 bit positions. 
// Implement the shifter on your Blackboard, using eight slide switches for shifter input, eight LEDs for outputs, and the four premaining 
// slide switches to select shifter function. Two switches will be used for shift amount, one for direction, and one for shift/rotate selection. 
// When shifting, use a pushbutton to define the fill input. Verify the shifter works correctly on your board.


module shifter_8(
    input [7:0] I,
    input [1:0] En,
    input R,
    input D,
    input F,
    output reg [7:0] Y
    );
    
    always @(*) begin
        if (En == 2'b00) 
            Y <= I;
        else if(En == 2'b01) begin
            if (R == 0) //shift mode
                Y <= (D == 0) ? {I[6:0], F} : {F, I[7:1]};
            else 
                Y <= (D  == 0) ? {I[6:0], I[7]} : {I[0], I[7:1]};
        end
        else if(En == 2'b10) begin
            if (R == 0) 
                Y <= (D == 0) ? {I[5:0], F, F} : {F, F, I[7:2]};
            else 
                Y <= (D == 0) ? {I[5:0], I[7:6]} : {I[1:0], I[7:2]};
        end
        else begin
            if (R == 0)
                Y <= (D == 0) ? {I[4:0], F, F, F} : {F, F, F, I[7:3]};
            else 
                Y <= (D == 0) ? {I[4:0], I[7:5]} : {I[2:0], I[7:3]};
        end
    end
                        
    
    
endmodule