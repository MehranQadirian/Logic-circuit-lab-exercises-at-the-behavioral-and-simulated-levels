`timescale 1ns / 1ps

module Mux2to1_4bit_TB;
    reg [3:0] A, B;
    reg S, E;
    wire [3:0] Y;
    
    Mux2to1_4bit uut (.A(A), .B(B), .S(S), .E(E), .Y(Y));
    
    initial begin
        // ???? ??????? (E=1)
        E = 1; S = 0; A = 4'b0000; B = 4'b1111;
        #10;
        
        // ?????? A (E=0, S=0)
        E = 0; S = 0; A = 4'b1010; B = 4'b0101;
        #10;
        
        // ?????? B (E=0, S=1)
        E = 0; S = 1; A = 4'b1100; B = 4'b0011;
        #10;
        
    end
endmodule