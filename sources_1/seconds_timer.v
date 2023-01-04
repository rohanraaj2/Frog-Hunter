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

module seconds_timer(clk, reset, s1, s2);
    input clk;
    input reset;
    output reg [3:0] s1 = 9;
    output reg [2:0] s2 = 5;
//    output reg trig_m;
    always @(posedge clk, posedge reset)
        begin
//        posedge res)
            if (reset)
                begin
                    s1 <= 9;
                    s2 <= 5;
                end
            else
                if (s1 > 0)
                    begin
    //                    if (s1 == 1 && s2 == 0)
    //                        begin
    //                            trig_m = 1;
    //                        end
                        s1 <= s1 - 1; // value of h_count incremented
                    end
                else // value of h_count has reached 799
                    begin
                        if (s2 > 0)
                            begin
                                s2 <= s2 - 1;
                                s1 <= 9;
                            end
//                        else
//                            begin
//                                trig_m <= 1;
//                                s2 <= 5;
//                            end
                    end
//            if (s1 >= 9 && trig_m == 1) // h_count is 1 after reset
//                begin
//                    trig_m <= 0; // trig_v set to 0
//                end
            end
//        end
endmodule
