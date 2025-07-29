`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 05:45:46 AM
// Design Name: 
// Module Name: mux_8_1_tb
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


module mux_8_1_tb;

    reg I0, I1, I2, I3, I4, I5, I6, I7;
    reg [2:0] sel;
    wire Y;
    
    mux_8_1 cut(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .sel(sel), .Y(Y));
    
    integer k;
    
    initial begin 
    
    sel = 3'b000;
    for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
     sel = 3'b001;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
      sel = 3'b010;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
    
     sel = 3'b011;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
      sel = 3'b100;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
      sel = 3'b101;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
      sel = 3'b110;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
      sel = 3'b111;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
      sel = 3'b11x;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
      sel = 3'b11z;
     for(k=0;k<256;k=k+1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = k;
        #10;
     end
     
     $finish;
     
     end
     
    
endmodule
