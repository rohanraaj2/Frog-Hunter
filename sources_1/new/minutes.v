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


module minutes(clk, enable_m, m1, m2);
    input clk;
    input enable_m;
    output [3:0] m1;
    output [2:0] m2;
    reg [3:0] m1;
    reg [2:0] m2;
//    initial m1 = 0;
    always @(posedge clk)
        if (enable_m > 0) //begins if enable_v is 1
            if (m1 < 9)
                begin
                    m1 <= m1 + 1; // value of h_count incremented
                end
            else // value of h_count has reached 799
                begin
                    m1 <= 0;
                    if (m2 < 5)
                        begin
                            m2 <= m2 +1;
                        end
                    else
                        begin
                            m2 <= 0;
                        end
                end
//        end
endmodule
