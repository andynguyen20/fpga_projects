`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 06:30:36 PM
// Design Name: 
// Module Name: state_machine
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


module state_machine(
    input start,
    input stop,
    input inc,
    input rst,
    input clk,
    output cen
    );
    
    localparam S0 = 2'b00; //Start
    localparam S1 = 2'b01; //Stop
    localparam S2 = 2'b10; //Increment
    localparam S3 = 2'b11; //Reset
    
    
    reg [1:0] pState, nState;
    
    reg inc_d;
    wire inc_pulse;

    always @(posedge clk or posedge rst) begin // edge detector for inc
        if (rst)
            inc_d <= 0;
        else
            inc_d <= inc;  
    end
    
    assign inc_pulse = inc & ~inc_d; 
    
    always @(*) begin
        case(pState)
            S0: begin
                if(rst)
                    nState = S3;
                else if (stop)
                    nState = S1;
                else 
                    nState = S0;
                 end
            S1: begin
                if(rst)
                    nState = S3;
                else if (stop)      // in case stop and inc or stop and start are pressed together so there is priority
                    nState = S1;
                else if (inc_pulse)
                    nState = S2;
                else if(start) 
                    nState = S0;
                else
                    nState = S1;
                end
            S2: begin
                if(rst)
                    nState = S3;
                else if (start)
                    nState = S0;
                else if (inc_pulse)
                    nState = S2;
                else 
                    nState = S1;
                end
            S3: begin
                if (stop)
                    nState = S1;
                else if(inc)
                    nState = S2;
                else if(start)
                    nState = S0;
                else
                    nState = S1;
                end
            default:
                nState = S1;
        endcase
    end

                
    always @(posedge(clk), posedge(rst)) begin
        if (rst == 1'b1) 
            pState <= S3;
        else
            pState <= nState;
    end
    
            
    assign cen = (pState == S0 || pState == S2) ? 1'b1 : 1'b0;         
    
endmodule
