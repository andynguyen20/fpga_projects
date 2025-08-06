`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2025 03:32:23 AM
// Design Name: 
// Module Name: bin2seg_tb
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


module bin2seg_tb;

    reg [3:0] sw;
    wire [6:0] sseg;
    wire [3:0] anode;
    
    bin2seg cut(.sw(sw), .sseg(sseg), .anode(anode));
    
    integer k;
    
    initial begin
        
        for(k=0; k<16; k=k+1) begin 
            sw = k;
            #10;
        end
        
        $finish;
     end
    
    
    endmodule
