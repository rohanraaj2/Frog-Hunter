`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 02:19:08 AM
// Design Name: 
// Module Name: v_counter
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


module minutes_timer(clk, enable_m, m1, m2);
    input clk;
    input enable_m;
    output reg [3:0] m1 = 1;
    output reg [2:0] m2 = 0;
    always @(posedge clk)
    if (enable_m >= 1)
    begin
            if (m1 > 0)
                begin
                    m1 <= m1 - 1; // value of h_count incremented
                end
            else // value of h_count has reached 799
                begin
                    if (m2 > 0)
                        begin
                            m2 <= m2 - 1;
                            m1 = 9;
                        end
//                    else
//                        begin
//                            m2 = 5;
//                        end
                end
        end
endmodule
