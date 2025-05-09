`timescale 1ns / 1ps
module Comparator4bit (
    input [3:0] A, B,      // ????????? ? ????
    output A_lt_B,         // A < B
    output A_gt_B,         // A > B
    output A_eq_B          // A == B
);
    assign A_lt_B = (A < B);
    assign A_gt_B = (A > B);
    assign A_eq_B = (A == B);
endmodule