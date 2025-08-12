`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 08:21:07 PM
// Design Name: 
// Module Name: state_machine_tb
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


module state_machine_tb;

    reg start;
    reg stop;
    reg inc;
    reg rst;
    reg clk;
    wire cen;
    
    state_machine cut(.start(start), .stop(stop), .inc(inc), .rst(rst), .clk(clk), .cen(cen));
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        rst = 1'b1;
        #10;
        rst = 1'b0;
        
        start = 1'b1; // testing out from start on
        #10;
        rst = 1'b1; // test reset
        #10;
        rst = 1'b0; 
        stop = 1'b1; // stop should take priority
        #10;
        
        start = 1'b0;
        #10;
        
        rst = 1'b1;
        #10;
        rst = 1'b0;
        #10;
        
        stop = 1'b0;
        start = 1'b1;
        #10; // testing out start path from stop
        
        start = 1'b0;
        stop = 1'b1;
        #10;   // go to stop state
        
        stop = 1'b0;
        inc = 1'b1;
        #30;           //test incrementor
        
        inc = 1'b0;      // nothing turned on, should go to stop and cen should be disabled
        #10;
        
        rst = 1'b1;
        #10;
        
        
        inc = 1'b1;
        #10;
        
        inc = 1'b0;
        #10;
        
        rst = 1'b0;
        start = 1'b1;          // testing cen constant feeding of 1
        #10;
        
        start = 1'b0;
        rst = 1'b0;
        stop = 1'b0;
        #10;
        
        inc = 1'b1;
        #50;
     end
         
        
        
    
endmodule
