`timescale 1ns / 1ps
module FullAdder4bit (
    input [3:0] A, B,
    input C_in,
    output [3:0] Sum,
    output C_out
);
    assign {C_out, Sum} = A + B + C_in;
endmodule