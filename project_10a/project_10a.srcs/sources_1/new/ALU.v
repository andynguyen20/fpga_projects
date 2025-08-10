`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 08:32:52 PM
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
    output reg [7:0] Y,
    output reg zero,
    output reg neg,
    output reg carry,
    output reg overflow
    );
    
    
    wire [15:0] mult;
    assign mult = A * B;
    
    reg [7:0] tmp_mult;
    reg carry_mult;
    
    always @(*) begin 
        if(mult > 16'd255) begin // only 8-bit fit on seven segment display (4 bits per hex digit)
            tmp_mult = 8'b11111111; 
            carry_mult = 1'b1;  
        end
        else begin  
            tmp_mult = mult[7:0];
            carry_mult = 1'b0;
        end
    end     
    
    wire [7:0] tmp_add;
    wire Cout_add;
    reg carry_add;
    assign {Cout_add, tmp_add} = A + B;
    
    always @(*) begin           
        if(Cout_add) 
            carry_add = 1'b1;
        else
            carry_add = 1'b0;
     end
        
    wire overflow_add;    
    assign overflow_add = (A[7] == B[7]) && (tmp_add[7] != A[7]);
     
     wire [7:0] tmp_inc;
     wire Cout_inc;
     reg carry_inc;
     
     assign {Cout_inc, tmp_inc} = A + 1;
     
     always @(*) begin
        if (Cout_inc)
            carry_inc = 1'b1;
        else    
            carry_inc = 1'b0;
     end
     
     wire overflow_inc;
     assign overflow_inc = (A[7] == 0 && tmp_inc[7] == 1) || (A[7] == 1 && tmp_inc[7] == 0 && A != 8'hFF);
     
     wire [7:0] tmp_sub;
     assign tmp_sub = A - B;
     
     wire overflow_sub;
     assign overflow_sub = (A[7] != B[7]) && (tmp_sub[7] != A[7]);

    
    always @(*) begin
        case(opcode)
            3'b000: begin
                    Y = tmp_add;
                    carry = carry_add;
                    overflow = overflow_add;
                    end
            3'b001: begin
                    Y = tmp_inc;
                    carry = carry_inc;
                    overflow = overflow_inc;
                    end
            3'b010: begin
                    Y = tmp_sub;
                    overflow = overflow_sub;
                    end
            3'b011: begin
                    Y = tmp_mult;
                    carry = carry_mult;
                    end
            3'b100: Y = ~A;
            3'b101: Y = A ^ B;
            3'b110: Y = A | B;
            3'b111: Y = A & B;
            default: Y = 8'b00000000;
        endcase
    end
    
    always @(*) begin               
        if (Y == 8'b00000000)
            zero = 1'b1;
        else 
            zero = 1'b0;
    end
    
    always @(*) begin               
        if (Y[7] == 1) 
            neg = 1'b1;
        else 
            neg = 1'b0;
    end
        
    
endmodule
