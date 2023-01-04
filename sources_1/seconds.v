`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2022 03:12:14 AM
// Design Name: 
// Module Name: h_counter
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


module seconds(clk, s1, s2, trig_m);
    input clk;
    output [3:0] s1;
    output [2:0] s2;
    output trig_m;
    reg trig_m;
    reg [3:0] s1;
    reg [2:0] s2;
    initial s1 = 0;
    initial s2 = 0;
    always @(posedge clk)
        begin
            if (s1 < 9)
                begin
                    s1 <= s1 + 1; // value of h_count incremented
                end
            else // value of h_count has reached 799
                begin
                    s1 <= 0;
                    if (s2 < 5)
                        begin
                            s2 <= s2 +1;
                        end
                    else
                        begin
                            trig_m = 1;
                            s2 = 0;
                        end 
                end
            if (s1 <= 1 && trig_m <= 1) // h_count is 1 after reset
                begin
                    trig_m = 0; // trig_v set to 0
                end
        end
endmodule
