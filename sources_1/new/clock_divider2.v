`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 01:51:59 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider2(clk, clk_d);
parameter div_value = (100000000 / (1 * 2)) - 1 ;
input clk;
output clk_d;
    reg clk_d;
    reg [25:0] count;
        initial
            begin
            clk_d=0;
            count=0;
        end

        always @ (posedge clk)
            begin
                if (count == div_value)
                    count <=0;
                else
                    count <= count + 1;
            end
            
        always @ (posedge clk)
            begin
                if (count == div_value)
                    clk_d <= ~clk_d; // value of clk_d is inverted
            end
endmodule
