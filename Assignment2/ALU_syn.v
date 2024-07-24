/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09
// Date      : Tue Apr 26 00:02:30 2022
/////////////////////////////////////////////////////////////


module HalfAdder_0 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_31 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_30 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_29 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module CLG_0 ( Cin, P, G, Cout );
  input [3:0] P;
  input [3:0] G;
  output [3:0] Cout;
  input Cin;


  AO21X1 U1 ( .A0(P[3]), .A1(Cout[2]), .B0(G[3]), .Y(Cout[3]) );
  AO21X1 U2 ( .A0(P[2]), .A1(Cout[1]), .B0(G[2]), .Y(Cout[2]) );
  AO21X1 U3 ( .A0(P[1]), .A1(Cout[0]), .B0(G[1]), .Y(Cout[1]) );
  AO21X1 U4 ( .A0(P[0]), .A1(Cin), .B0(G[0]), .Y(Cout[0]) );
endmodule


module CLA_4bit_0 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;

  wire   [3:0] P;
  wire   [2:0] C;
  wire   [3:0] G;

  HalfAdder_0 HA0 ( .A(A[0]), .B(B[0]), .P(P[0]), .G(G[0]) );
  HalfAdder_31 HA1 ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  HalfAdder_30 HA2 ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  HalfAdder_29 HA3 ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  CLG_0 CLG0 ( .Cin(Cin), .P(P), .G(G), .Cout({Cout, C}) );
  XOR2X1 U1 ( .A(P[3]), .B(C[2]), .Y(S[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C[1]), .Y(S[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C[0]), .Y(S[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(Cin), .Y(S[0]) );
endmodule


module HalfAdder_28 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_27 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_26 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_25 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module CLG_7 ( Cin, P, G, Cout );
  input [3:0] P;
  input [3:0] G;
  output [3:0] Cout;
  input Cin;


  AO21X1 U1 ( .A0(P[3]), .A1(Cout[2]), .B0(G[3]), .Y(Cout[3]) );
  AO21X1 U2 ( .A0(P[2]), .A1(Cout[1]), .B0(G[2]), .Y(Cout[2]) );
  AO21X1 U3 ( .A0(P[1]), .A1(Cout[0]), .B0(G[1]), .Y(Cout[1]) );
  AO21X1 U4 ( .A0(P[0]), .A1(Cin), .B0(G[0]), .Y(Cout[0]) );
endmodule


module CLA_4bit_7 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;

  wire   [3:0] P;
  wire   [2:0] C;
  wire   [3:0] G;

  HalfAdder_28 HA0 ( .A(A[0]), .B(B[0]), .P(P[0]), .G(G[0]) );
  HalfAdder_27 HA1 ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  HalfAdder_26 HA2 ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  HalfAdder_25 HA3 ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  CLG_7 CLG0 ( .Cin(Cin), .P(P), .G(G), .Cout({Cout, C}) );
  XOR2X1 U1 ( .A(P[3]), .B(C[2]), .Y(S[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C[1]), .Y(S[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C[0]), .Y(S[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(Cin), .Y(S[0]) );
endmodule


module HalfAdder_24 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_23 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_22 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_21 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module CLG_6 ( Cin, P, G, Cout );
  input [3:0] P;
  input [3:0] G;
  output [3:0] Cout;
  input Cin;


  AO21X1 U1 ( .A0(P[3]), .A1(Cout[2]), .B0(G[3]), .Y(Cout[3]) );
  AO21X1 U2 ( .A0(P[2]), .A1(Cout[1]), .B0(G[2]), .Y(Cout[2]) );
  AO21X1 U3 ( .A0(P[1]), .A1(Cout[0]), .B0(G[1]), .Y(Cout[1]) );
  AO21X1 U4 ( .A0(P[0]), .A1(Cin), .B0(G[0]), .Y(Cout[0]) );
endmodule


module CLA_4bit_6 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;

  wire   [3:0] P;
  wire   [2:0] C;
  wire   [3:0] G;

  HalfAdder_24 HA0 ( .A(A[0]), .B(B[0]), .P(P[0]), .G(G[0]) );
  HalfAdder_23 HA1 ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  HalfAdder_22 HA2 ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  HalfAdder_21 HA3 ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  CLG_6 CLG0 ( .Cin(Cin), .P(P), .G(G), .Cout({Cout, C}) );
  XOR2X1 U1 ( .A(P[3]), .B(C[2]), .Y(S[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C[1]), .Y(S[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C[0]), .Y(S[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(Cin), .Y(S[0]) );
endmodule


module HalfAdder_20 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_19 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_18 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_17 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module CLG_5 ( Cin, P, G, Cout );
  input [3:0] P;
  input [3:0] G;
  output [3:0] Cout;
  input Cin;


  AO21X1 U1 ( .A0(P[3]), .A1(Cout[2]), .B0(G[3]), .Y(Cout[3]) );
  AO21X1 U2 ( .A0(P[2]), .A1(Cout[1]), .B0(G[2]), .Y(Cout[2]) );
  AO21X1 U3 ( .A0(P[1]), .A1(Cout[0]), .B0(G[1]), .Y(Cout[1]) );
  AO21X1 U4 ( .A0(P[0]), .A1(Cin), .B0(G[0]), .Y(Cout[0]) );
endmodule


module CLA_4bit_5 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;

  wire   [3:0] P;
  wire   [2:0] C;
  wire   [3:0] G;

  HalfAdder_20 HA0 ( .A(A[0]), .B(B[0]), .P(P[0]), .G(G[0]) );
  HalfAdder_19 HA1 ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  HalfAdder_18 HA2 ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  HalfAdder_17 HA3 ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  CLG_5 CLG0 ( .Cin(Cin), .P(P), .G(G), .Cout({Cout, C}) );
  XOR2X1 U1 ( .A(P[3]), .B(C[2]), .Y(S[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C[1]), .Y(S[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C[0]), .Y(S[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(Cin), .Y(S[0]) );
endmodule


module Adder_16bit_0 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;

  wire   [2:0] C;

  CLA_4bit_0 CLA0 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(C[0])
         );
  CLA_4bit_7 CLA1 ( .A(A[7:4]), .B(B[7:4]), .Cin(C[0]), .S(S[7:4]), .Cout(C[1]) );
  CLA_4bit_6 CLA2 ( .A(A[11:8]), .B(B[11:8]), .Cin(C[1]), .S(S[11:8]), .Cout(
        C[2]) );
  CLA_4bit_5 CLA3 ( .A(A[15:12]), .B(B[15:12]), .Cin(C[2]), .S(S[15:12]), 
        .Cout(Cout) );
endmodule


module HalfAdder_16 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_15 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_14 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_13 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module CLG_4 ( Cin, P, G, Cout );
  input [3:0] P;
  input [3:0] G;
  output [3:0] Cout;
  input Cin;


  AO21X1 U1 ( .A0(P[3]), .A1(Cout[2]), .B0(G[3]), .Y(Cout[3]) );
  AO21X1 U2 ( .A0(P[2]), .A1(Cout[1]), .B0(G[2]), .Y(Cout[2]) );
  AO21X1 U3 ( .A0(P[1]), .A1(Cout[0]), .B0(G[1]), .Y(Cout[1]) );
  AO21X1 U4 ( .A0(P[0]), .A1(Cin), .B0(G[0]), .Y(Cout[0]) );
endmodule


module CLA_4bit_4 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;

  wire   [3:0] P;
  wire   [2:0] C;
  wire   [3:0] G;

  HalfAdder_16 HA0 ( .A(A[0]), .B(B[0]), .P(P[0]), .G(G[0]) );
  HalfAdder_15 HA1 ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  HalfAdder_14 HA2 ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  HalfAdder_13 HA3 ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  CLG_4 CLG0 ( .Cin(Cin), .P(P), .G(G), .Cout({Cout, C}) );
  XOR2X1 U1 ( .A(P[3]), .B(C[2]), .Y(S[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C[1]), .Y(S[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C[0]), .Y(S[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(Cin), .Y(S[0]) );
endmodule


module HalfAdder_12 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_11 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_10 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_9 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module CLG_3 ( Cin, P, G, Cout );
  input [3:0] P;
  input [3:0] G;
  output [3:0] Cout;
  input Cin;


  AO21X1 U1 ( .A0(P[3]), .A1(Cout[2]), .B0(G[3]), .Y(Cout[3]) );
  AO21X1 U2 ( .A0(P[2]), .A1(Cout[1]), .B0(G[2]), .Y(Cout[2]) );
  AO21X1 U3 ( .A0(P[1]), .A1(Cout[0]), .B0(G[1]), .Y(Cout[1]) );
  AO21X1 U4 ( .A0(P[0]), .A1(Cin), .B0(G[0]), .Y(Cout[0]) );
endmodule


module CLA_4bit_3 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;

  wire   [3:0] P;
  wire   [2:0] C;
  wire   [3:0] G;

  HalfAdder_12 HA0 ( .A(A[0]), .B(B[0]), .P(P[0]), .G(G[0]) );
  HalfAdder_11 HA1 ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  HalfAdder_10 HA2 ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  HalfAdder_9 HA3 ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  CLG_3 CLG0 ( .Cin(Cin), .P(P), .G(G), .Cout({Cout, C}) );
  XOR2X1 U1 ( .A(P[3]), .B(C[2]), .Y(S[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C[1]), .Y(S[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C[0]), .Y(S[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(Cin), .Y(S[0]) );
endmodule


module HalfAdder_8 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_7 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_6 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_5 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module CLG_2 ( Cin, P, G, Cout );
  input [3:0] P;
  input [3:0] G;
  output [3:0] Cout;
  input Cin;


  AO21X1 U1 ( .A0(P[3]), .A1(Cout[2]), .B0(G[3]), .Y(Cout[3]) );
  AO21X1 U2 ( .A0(P[2]), .A1(Cout[1]), .B0(G[2]), .Y(Cout[2]) );
  AO21X1 U3 ( .A0(P[1]), .A1(Cout[0]), .B0(G[1]), .Y(Cout[1]) );
  AO21X1 U4 ( .A0(P[0]), .A1(Cin), .B0(G[0]), .Y(Cout[0]) );
endmodule


module CLA_4bit_2 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;

  wire   [3:0] P;
  wire   [2:0] C;
  wire   [3:0] G;

  HalfAdder_8 HA0 ( .A(A[0]), .B(B[0]), .P(P[0]), .G(G[0]) );
  HalfAdder_7 HA1 ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  HalfAdder_6 HA2 ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  HalfAdder_5 HA3 ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  CLG_2 CLG0 ( .Cin(Cin), .P(P), .G(G), .Cout({Cout, C}) );
  XOR2X1 U1 ( .A(P[3]), .B(C[2]), .Y(S[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C[1]), .Y(S[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C[0]), .Y(S[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(Cin), .Y(S[0]) );
endmodule


module HalfAdder_4 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_3 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_2 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module HalfAdder_1 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U1 ( .A(B), .B(A), .Y(P) );
  AND2X1 U2 ( .A(B), .B(A), .Y(G) );
endmodule


module CLG_1 ( Cin, P, G, Cout );
  input [3:0] P;
  input [3:0] G;
  output [3:0] Cout;
  input Cin;


  AO21X1 U1 ( .A0(P[3]), .A1(Cout[2]), .B0(G[3]), .Y(Cout[3]) );
  AO21X1 U2 ( .A0(P[2]), .A1(Cout[1]), .B0(G[2]), .Y(Cout[2]) );
  AO21X1 U3 ( .A0(P[1]), .A1(Cout[0]), .B0(G[1]), .Y(Cout[1]) );
  AO21X1 U4 ( .A0(P[0]), .A1(Cin), .B0(G[0]), .Y(Cout[0]) );
endmodule


module CLA_4bit_1 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;

  wire   [3:0] P;
  wire   [2:0] C;
  wire   [3:0] G;

  HalfAdder_4 HA0 ( .A(A[0]), .B(B[0]), .P(P[0]), .G(G[0]) );
  HalfAdder_3 HA1 ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  HalfAdder_2 HA2 ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  HalfAdder_1 HA3 ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  CLG_1 CLG0 ( .Cin(Cin), .P(P), .G(G), .Cout({Cout, C}) );
  XOR2X1 U1 ( .A(P[3]), .B(C[2]), .Y(S[3]) );
  XOR2X1 U2 ( .A(P[2]), .B(C[1]), .Y(S[2]) );
  XOR2X1 U3 ( .A(P[1]), .B(C[0]), .Y(S[1]) );
  XOR2X1 U4 ( .A(P[0]), .B(Cin), .Y(S[0]) );
endmodule


module Adder_16bit_1 ( A, B, Cin, S, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] S;
  input Cin;
  output Cout;

  wire   [2:0] C;

  CLA_4bit_4 CLA0 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(C[0])
         );
  CLA_4bit_3 CLA1 ( .A(A[7:4]), .B(B[7:4]), .Cin(C[0]), .S(S[7:4]), .Cout(C[1]) );
  CLA_4bit_2 CLA2 ( .A(A[11:8]), .B(B[11:8]), .Cin(C[1]), .S(S[11:8]), .Cout(
        C[2]) );
  CLA_4bit_1 CLA3 ( .A(A[15:12]), .B(B[15:12]), .Cin(C[2]), .S(S[15:12]), 
        .Cout(Cout) );
endmodule


module ALU ( A, B, Cin, Mode, Y, Cout, Overflow );
  input [15:0] A;
  input [15:0] B;
  input [3:0] Mode;
  output [15:0] Y;
  input Cin;
  output Cout, Overflow;
  wire   AtmpCout, BtmpCout, N201, N202, N203, \_0_net_[15] , \_0_net_[14] ,
         \_0_net_[13] , \_0_net_[12] , \_0_net_[11] , \_0_net_[10] ,
         \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] ,
         \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439;
  wire   [15:0] AtmpY;
  wire   [15:0] BtmpY;
  assign \_0_net_[0]  = B[0];

  Adder_16bit_0 A0 ( .A(A), .B({B[15:1], \_0_net_[0] }), .Cin(Cin), .S(AtmpY), 
        .Cout(AtmpCout) );
  Adder_16bit_1 A1 ( .A(A), .B({\_0_net_[15] , \_0_net_[14] , \_0_net_[13] , 
        \_0_net_[12] , \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , 
        \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , 
        \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] }), .Cin(1'b0), 
        .S(BtmpY), .Cout(BtmpCout) );
  TLATX1 Overflow_reg ( .G(N201), .D(N203), .Q(Overflow) );
  TLATX1 Cout_reg ( .G(N201), .D(N202), .Q(Cout) );
  NOR2XL U207 ( .A(n231), .B(n386), .Y(n385) );
  NOR2XL U208 ( .A(n231), .B(n376), .Y(n375) );
  NOR2XL U209 ( .A(n231), .B(n368), .Y(n367) );
  NOR2XL U210 ( .A(n231), .B(n360), .Y(n359) );
  NOR2XL U211 ( .A(n231), .B(n330), .Y(n329) );
  NOR2XL U212 ( .A(n231), .B(n283), .Y(n282) );
  XNOR2X1 U213 ( .A(n188), .B(B[9]), .Y(\_0_net_[9] ) );
  XNOR2X1 U214 ( .A(n189), .B(n190), .Y(\_0_net_[8] ) );
  NAND2X1 U215 ( .A(n191), .B(n192), .Y(n189) );
  XNOR2X1 U216 ( .A(n191), .B(B[7]), .Y(\_0_net_[7] ) );
  XNOR2X1 U217 ( .A(n193), .B(n194), .Y(\_0_net_[6] ) );
  NAND2X1 U218 ( .A(n195), .B(n196), .Y(n193) );
  XNOR2X1 U219 ( .A(n195), .B(B[5]), .Y(\_0_net_[5] ) );
  XNOR2X1 U220 ( .A(n197), .B(n198), .Y(\_0_net_[4] ) );
  NAND2X1 U221 ( .A(n199), .B(n200), .Y(n197) );
  XNOR2X1 U222 ( .A(n199), .B(B[3]), .Y(\_0_net_[3] ) );
  XNOR2X1 U223 ( .A(B[2]), .B(n201), .Y(\_0_net_[2] ) );
  NOR2X1 U224 ( .A(B[1]), .B(\_0_net_[0] ), .Y(n201) );
  XNOR2X1 U225 ( .A(n202), .B(B[1]), .Y(\_0_net_[1] ) );
  XNOR2X1 U226 ( .A(n203), .B(n204), .Y(\_0_net_[15] ) );
  NAND2X1 U227 ( .A(n205), .B(n206), .Y(n203) );
  XNOR2X1 U228 ( .A(n205), .B(B[14]), .Y(\_0_net_[14] ) );
  NOR2BX1 U229 ( .AN(n207), .B(B[13]), .Y(n205) );
  XNOR2X1 U230 ( .A(n207), .B(B[13]), .Y(\_0_net_[13] ) );
  NOR3X1 U231 ( .A(B[11]), .B(B[12]), .C(n208), .Y(n207) );
  XOR2X1 U232 ( .A(n209), .B(B[12]), .Y(\_0_net_[12] ) );
  OR2X1 U233 ( .A(n208), .B(B[11]), .Y(n209) );
  XOR2X1 U234 ( .A(n208), .B(B[11]), .Y(\_0_net_[11] ) );
  NAND3X1 U235 ( .A(n210), .B(n211), .C(n188), .Y(n208) );
  XNOR2X1 U236 ( .A(n212), .B(n210), .Y(\_0_net_[10] ) );
  NAND2X1 U237 ( .A(n188), .B(n211), .Y(n212) );
  NOR3X1 U238 ( .A(B[7]), .B(B[8]), .C(n213), .Y(n188) );
  CLKINVX1 U239 ( .A(n191), .Y(n213) );
  NOR3X1 U240 ( .A(B[5]), .B(B[6]), .C(n214), .Y(n191) );
  CLKINVX1 U241 ( .A(n195), .Y(n214) );
  NOR3X1 U242 ( .A(B[3]), .B(B[4]), .C(n215), .Y(n195) );
  NAND4X1 U243 ( .A(n216), .B(n217), .C(n218), .D(n219), .Y(Y[9]) );
  AOI221XL U244 ( .A0(A[10]), .A1(n220), .B0(BtmpY[9]), .B1(n221), .C0(n222), 
        .Y(n219) );
  OAI32X1 U245 ( .A0(n223), .A1(A[2]), .A2(n224), .B0(n225), .B1(n226), .Y(
        n222) );
  MX3XL U246 ( .A(n227), .B(n228), .C(n229), .S0(n230), .S1(B[9]), .Y(n218) );
  NOR2X1 U247 ( .A(n231), .B(n232), .Y(n229) );
  MXI2X1 U248 ( .A(n233), .B(n227), .S0(n230), .Y(n232) );
  NAND2X1 U249 ( .A(AtmpY[9]), .B(n234), .Y(n217) );
  MXI2X1 U250 ( .A(n235), .B(n236), .S0(n230), .Y(n216) );
  NAND4X1 U251 ( .A(n237), .B(n238), .C(n239), .D(n240), .Y(Y[8]) );
  AOI221XL U252 ( .A0(A[9]), .A1(n220), .B0(BtmpY[8]), .B1(n221), .C0(n241), 
        .Y(n240) );
  OAI32X1 U253 ( .A0(n242), .A1(A[2]), .A2(n223), .B0(n225), .B1(n243), .Y(
        n241) );
  MX3XL U254 ( .A(n227), .B(n228), .C(n244), .S0(n226), .S1(B[8]), .Y(n239) );
  NOR2X1 U255 ( .A(n231), .B(n245), .Y(n244) );
  MXI2X1 U256 ( .A(n233), .B(n227), .S0(n226), .Y(n245) );
  NAND2X1 U257 ( .A(AtmpY[8]), .B(n234), .Y(n238) );
  MXI2X1 U258 ( .A(n235), .B(n236), .S0(n226), .Y(n237) );
  NAND4X1 U259 ( .A(n246), .B(n247), .C(n248), .D(n249), .Y(Y[7]) );
  AOI221XL U260 ( .A0(n220), .A1(A[8]), .B0(BtmpY[7]), .B1(n221), .C0(n250), 
        .Y(n249) );
  OAI32X1 U261 ( .A0(n251), .A1(n252), .A2(n253), .B0(n225), .B1(n254), .Y(
        n250) );
  MX3XL U262 ( .A(n227), .B(n228), .C(n255), .S0(n243), .S1(B[7]), .Y(n248) );
  NOR2X1 U263 ( .A(n231), .B(n256), .Y(n255) );
  MXI2X1 U264 ( .A(n233), .B(n227), .S0(n243), .Y(n256) );
  NAND2X1 U265 ( .A(AtmpY[7]), .B(n234), .Y(n247) );
  MXI2X1 U266 ( .A(n235), .B(n236), .S0(n243), .Y(n246) );
  NAND4X1 U267 ( .A(n257), .B(n258), .C(n259), .D(n260), .Y(Y[6]) );
  AOI221XL U268 ( .A0(A[7]), .A1(n220), .B0(BtmpY[6]), .B1(n221), .C0(n261), 
        .Y(n260) );
  OAI22XL U269 ( .A0(n225), .A1(n262), .B0(n253), .B1(n263), .Y(n261) );
  CLKINVX1 U270 ( .A(n264), .Y(n263) );
  MX3XL U271 ( .A(n227), .B(n228), .C(n265), .S0(n254), .S1(B[6]), .Y(n259) );
  NOR2X1 U272 ( .A(n231), .B(n266), .Y(n265) );
  MXI2X1 U273 ( .A(n233), .B(n227), .S0(n254), .Y(n266) );
  NAND2X1 U274 ( .A(AtmpY[6]), .B(n234), .Y(n258) );
  MXI2X1 U275 ( .A(n235), .B(n236), .S0(n254), .Y(n257) );
  NAND4X1 U276 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(Y[5]) );
  AOI221XL U277 ( .A0(A[6]), .A1(n220), .B0(BtmpY[5]), .B1(n221), .C0(n271), 
        .Y(n270) );
  OAI22XL U278 ( .A0(n225), .A1(n272), .B0(n224), .B1(n253), .Y(n271) );
  MX3XL U279 ( .A(n227), .B(n228), .C(n273), .S0(n262), .S1(B[5]), .Y(n269) );
  NOR2X1 U280 ( .A(n231), .B(n274), .Y(n273) );
  MXI2X1 U281 ( .A(n233), .B(n227), .S0(n262), .Y(n274) );
  NAND2X1 U282 ( .A(AtmpY[5]), .B(n234), .Y(n268) );
  MXI2X1 U283 ( .A(n235), .B(n236), .S0(n262), .Y(n267) );
  NAND4X1 U284 ( .A(n275), .B(n276), .C(n277), .D(n278), .Y(Y[4]) );
  AOI221XL U285 ( .A0(A[5]), .A1(n220), .B0(BtmpY[4]), .B1(n221), .C0(n279), 
        .Y(n278) );
  OAI22XL U286 ( .A0(n280), .A1(n225), .B0(n242), .B1(n253), .Y(n279) );
  NAND2X1 U287 ( .A(A[2]), .B(n281), .Y(n253) );
  MX3XL U288 ( .A(n227), .B(n228), .C(n282), .S0(n272), .S1(B[4]), .Y(n277) );
  MXI2X1 U289 ( .A(n233), .B(n227), .S0(n272), .Y(n283) );
  NAND2X1 U290 ( .A(AtmpY[4]), .B(n234), .Y(n276) );
  MXI2X1 U291 ( .A(n235), .B(n236), .S0(n272), .Y(n275) );
  OR4X1 U292 ( .A(n284), .B(n285), .C(n286), .D(n287), .Y(Y[3]) );
  OAI22XL U293 ( .A0(n288), .A1(n289), .B0(n290), .B1(n272), .Y(n287) );
  OAI22XL U294 ( .A0(n291), .A1(n200), .B0(n225), .B1(n292), .Y(n286) );
  AO22X1 U295 ( .A0(AtmpY[3]), .A1(n234), .B0(BtmpY[3]), .B1(n221), .Y(n285)
         );
  MXI2X1 U296 ( .A(n293), .B(n294), .S0(n280), .Y(n284) );
  NOR2X1 U297 ( .A(n295), .B(n296), .Y(n294) );
  OAI31XL U298 ( .A0(n297), .A1(n298), .A2(n252), .B0(n299), .Y(n296) );
  MXI2X1 U299 ( .A(n227), .B(n228), .S0(n200), .Y(n295) );
  NOR2X1 U300 ( .A(n235), .B(n300), .Y(n293) );
  MXI2X1 U301 ( .A(n233), .B(n227), .S0(n200), .Y(n300) );
  OR4X1 U302 ( .A(n301), .B(n302), .C(n303), .D(n304), .Y(Y[2]) );
  OAI22XL U303 ( .A0(n280), .A1(n290), .B0(n291), .B1(n305), .Y(n304) );
  OAI22XL U304 ( .A0(n225), .A1(n251), .B0(n306), .B1(n289), .Y(n303) );
  AOI211X1 U305 ( .A0(n288), .A1(A[5]), .B0(n307), .C0(n308), .Y(n306) );
  AO21X1 U306 ( .A0(A[4]), .A1(n309), .B0(n310), .Y(n307) );
  AO22X1 U307 ( .A0(AtmpY[2]), .A1(n234), .B0(BtmpY[2]), .B1(n221), .Y(n302)
         );
  MXI2X1 U308 ( .A(n311), .B(n312), .S0(n292), .Y(n301) );
  AOI211X1 U309 ( .A0(n264), .A1(n281), .B0(n313), .C0(n236), .Y(n312) );
  MXI2X1 U310 ( .A(n227), .B(n228), .S0(n305), .Y(n313) );
  NOR2X1 U311 ( .A(n235), .B(n314), .Y(n311) );
  MXI2X1 U312 ( .A(n233), .B(n227), .S0(n305), .Y(n314) );
  CLKINVX1 U313 ( .A(B[2]), .Y(n305) );
  NAND4X1 U314 ( .A(n315), .B(n316), .C(n317), .D(n318), .Y(Y[1]) );
  AOI221XL U315 ( .A0(A[2]), .A1(n220), .B0(BtmpY[1]), .B1(n221), .C0(n319), 
        .Y(n318) );
  OAI22XL U316 ( .A0(n320), .A1(n289), .B0(n321), .B1(n252), .Y(n319) );
  AND2X1 U317 ( .A(n322), .B(n225), .Y(n321) );
  NOR4X1 U318 ( .A(n323), .B(n324), .C(A[14]), .D(n308), .Y(n320) );
  OA21XL U319 ( .A0(A[6]), .A1(A[7]), .B0(n288), .Y(n308) );
  AOI211X1 U320 ( .A0(n325), .A1(n326), .B0(A[5]), .C0(A[4]), .Y(n324) );
  NAND4X1 U321 ( .A(n327), .B(A[2]), .C(n226), .D(n230), .Y(n326) );
  NAND2X1 U322 ( .A(n288), .B(A[3]), .Y(n325) );
  OAI2BB1X1 U323 ( .A0N(A[10]), .A1N(n327), .B0(n328), .Y(n323) );
  MX3XL U324 ( .A(n227), .B(n228), .C(n329), .S0(n251), .S1(B[1]), .Y(n317) );
  MXI2X1 U325 ( .A(n233), .B(n227), .S0(n251), .Y(n330) );
  NAND2X1 U326 ( .A(AtmpY[1]), .B(n234), .Y(n316) );
  MXI2X1 U327 ( .A(n235), .B(n236), .S0(n251), .Y(n315) );
  OAI211X1 U328 ( .A0(n291), .A1(n204), .B0(n331), .C0(n332), .Y(Y[15]) );
  AOI221XL U329 ( .A0(BtmpY[15]), .A1(n221), .B0(AtmpY[15]), .B1(n234), .C0(
        n333), .Y(n332) );
  MXI2X1 U330 ( .A(n334), .B(n335), .S0(n336), .Y(n333) );
  NOR2X1 U331 ( .A(n236), .B(n337), .Y(n335) );
  MXI2X1 U332 ( .A(n227), .B(n228), .S0(n204), .Y(n337) );
  AOI211X1 U333 ( .A0(Mode[0]), .A1(n220), .B0(n338), .C0(n235), .Y(n334) );
  MXI2X1 U334 ( .A(n233), .B(n227), .S0(n204), .Y(n338) );
  AOI32X1 U335 ( .A0(A[1]), .A1(A[0]), .A2(n339), .B0(A[14]), .B1(n340), .Y(
        n331) );
  CLKINVX1 U336 ( .A(n225), .Y(n340) );
  CLKINVX1 U337 ( .A(n231), .Y(n291) );
  NAND4X1 U338 ( .A(n341), .B(n342), .C(n343), .D(n344), .Y(Y[14]) );
  AOI211X1 U339 ( .A0(n339), .A1(n264), .B0(n345), .C0(n346), .Y(n344) );
  OA21XL U340 ( .A0(n231), .A1(n347), .B0(B[14]), .Y(n346) );
  MXI2X1 U341 ( .A(n233), .B(n227), .S0(n348), .Y(n347) );
  OAI22XL U342 ( .A0(n225), .A1(n349), .B0(n227), .B1(n350), .Y(n345) );
  NOR2X1 U343 ( .A(n251), .B(A[0]), .Y(n264) );
  AOI22X1 U344 ( .A0(BtmpY[14]), .A1(n221), .B0(n220), .B1(A[15]), .Y(n343) );
  NAND2X1 U345 ( .A(AtmpY[14]), .B(n234), .Y(n342) );
  MXI2X1 U346 ( .A(n235), .B(n351), .S0(n348), .Y(n341) );
  OAI21XL U347 ( .A0(B[14]), .A1(n228), .B0(n299), .Y(n351) );
  NAND4X1 U348 ( .A(n352), .B(n353), .C(n354), .D(n355), .Y(Y[13]) );
  AOI221XL U349 ( .A0(A[14]), .A1(n220), .B0(BtmpY[13]), .B1(n221), .C0(n356), 
        .Y(n355) );
  OAI22XL U350 ( .A0(n225), .A1(n357), .B0(n224), .B1(n358), .Y(n356) );
  NAND2X1 U351 ( .A(A[0]), .B(n251), .Y(n224) );
  MX3XL U352 ( .A(n227), .B(n228), .C(n359), .S0(n349), .S1(B[13]), .Y(n354)
         );
  MXI2X1 U353 ( .A(n233), .B(n227), .S0(n349), .Y(n360) );
  NAND2X1 U354 ( .A(AtmpY[13]), .B(n234), .Y(n353) );
  MXI2X1 U355 ( .A(n235), .B(n236), .S0(n349), .Y(n352) );
  NAND4X1 U356 ( .A(n361), .B(n362), .C(n363), .D(n364), .Y(Y[12]) );
  AOI221XL U357 ( .A0(A[13]), .A1(n220), .B0(BtmpY[12]), .B1(n221), .C0(n365), 
        .Y(n364) );
  OAI22XL U358 ( .A0(n225), .A1(n366), .B0(n242), .B1(n358), .Y(n365) );
  CLKINVX1 U359 ( .A(n339), .Y(n358) );
  NOR2X1 U360 ( .A(n292), .B(n223), .Y(n339) );
  MX3XL U361 ( .A(n227), .B(n228), .C(n367), .S0(n357), .S1(B[12]), .Y(n363)
         );
  MXI2X1 U362 ( .A(n233), .B(n227), .S0(n357), .Y(n368) );
  NAND2X1 U363 ( .A(AtmpY[12]), .B(n234), .Y(n362) );
  MXI2X1 U364 ( .A(n235), .B(n236), .S0(n357), .Y(n361) );
  NAND4X1 U365 ( .A(n369), .B(n370), .C(n371), .D(n372), .Y(Y[11]) );
  AOI221XL U366 ( .A0(A[12]), .A1(n220), .B0(BtmpY[11]), .B1(n221), .C0(n373), 
        .Y(n372) );
  OAI32X1 U367 ( .A0(n297), .A1(n252), .A2(n223), .B0(n225), .B1(n374), .Y(
        n373) );
  MX3XL U368 ( .A(n227), .B(n228), .C(n375), .S0(n366), .S1(B[11]), .Y(n371)
         );
  MXI2X1 U369 ( .A(n233), .B(n227), .S0(n366), .Y(n376) );
  NAND2X1 U370 ( .A(AtmpY[11]), .B(n234), .Y(n370) );
  MXI2X1 U371 ( .A(n235), .B(n236), .S0(n366), .Y(n369) );
  NAND4X1 U372 ( .A(n377), .B(n378), .C(n379), .D(n380), .Y(Y[10]) );
  AOI221XL U373 ( .A0(A[11]), .A1(n220), .B0(BtmpY[10]), .B1(n221), .C0(n381), 
        .Y(n380) );
  OAI32X1 U374 ( .A0(n297), .A1(A[0]), .A2(n223), .B0(n225), .B1(n230), .Y(
        n381) );
  NAND2X1 U375 ( .A(n382), .B(n383), .Y(n225) );
  OR2X1 U376 ( .A(n298), .B(n280), .Y(n223) );
  CLKINVX1 U377 ( .A(n384), .Y(n297) );
  MX3XL U378 ( .A(n227), .B(n228), .C(n385), .S0(n374), .S1(B[10]), .Y(n379)
         );
  MXI2X1 U379 ( .A(n233), .B(n227), .S0(n374), .Y(n386) );
  NAND2X1 U380 ( .A(AtmpY[10]), .B(n234), .Y(n378) );
  MXI2X1 U381 ( .A(n235), .B(n236), .S0(n374), .Y(n377) );
  CLKINVX1 U382 ( .A(n299), .Y(n236) );
  NAND3X1 U383 ( .A(n387), .B(n388), .C(n389), .Y(Y[0]) );
  AOI221XL U384 ( .A0(A[1]), .A1(n220), .B0(n390), .B1(n391), .C0(n392), .Y(
        n389) );
  OAI31XL U385 ( .A0(n393), .A1(Mode[1]), .A2(n394), .B0(n395), .Y(n392) );
  OAI21XL U386 ( .A0(n231), .A1(n396), .B0(\_0_net_[0] ), .Y(n395) );
  MXI2X1 U387 ( .A(n233), .B(n227), .S0(n252), .Y(n396) );
  OA21XL U388 ( .A0(Mode[0]), .A1(n228), .B0(n397), .Y(n233) );
  OAI21XL U389 ( .A0(n398), .A1(n397), .B0(n399), .Y(n231) );
  NAND2X1 U390 ( .A(Mode[1]), .B(n400), .Y(n397) );
  AOI222XL U391 ( .A0(A[15]), .A1(n204), .B0(n401), .B1(n350), .C0(B[14]), 
        .C1(n348), .Y(n394) );
  NAND2X1 U392 ( .A(A[14]), .B(n206), .Y(n350) );
  CLKINVX1 U393 ( .A(B[14]), .Y(n206) );
  OAI2BB1X1 U394 ( .A0N(n349), .A1N(B[13]), .B0(n402), .Y(n401) );
  OAI221XL U395 ( .A0(B[12]), .A1(n357), .B0(B[13]), .B1(n349), .C0(n403), .Y(
        n402) );
  CLKINVX1 U396 ( .A(n404), .Y(n403) );
  AOI221XL U397 ( .A0(n366), .A1(B[11]), .B0(n357), .B1(B[12]), .C0(n405), .Y(
        n404) );
  CLKINVX1 U398 ( .A(n406), .Y(n405) );
  OAI221XL U399 ( .A0(B[10]), .A1(n374), .B0(B[11]), .B1(n366), .C0(n407), .Y(
        n406) );
  OAI221XL U400 ( .A0(A[10]), .A1(n210), .B0(A[9]), .B1(n211), .C0(n408), .Y(
        n407) );
  OAI221XL U401 ( .A0(B[8]), .A1(n226), .B0(B[9]), .B1(n230), .C0(n409), .Y(
        n408) );
  OAI221XL U402 ( .A0(A[7]), .A1(n192), .B0(A[8]), .B1(n190), .C0(n410), .Y(
        n409) );
  OAI221XL U403 ( .A0(B[6]), .A1(n254), .B0(B[7]), .B1(n243), .C0(n411), .Y(
        n410) );
  OAI221XL U404 ( .A0(A[5]), .A1(n196), .B0(A[6]), .B1(n194), .C0(n412), .Y(
        n411) );
  OAI221XL U405 ( .A0(B[4]), .A1(n272), .B0(B[5]), .B1(n262), .C0(n413), .Y(
        n412) );
  OAI222XL U406 ( .A0(A[3]), .A1(n200), .B0(n414), .B1(n415), .C0(A[4]), .C1(
        n198), .Y(n413) );
  CLKINVX1 U407 ( .A(B[4]), .Y(n198) );
  OAI22XL U408 ( .A0(B[3]), .A1(n280), .B0(B[2]), .B1(n416), .Y(n415) );
  AOI21X1 U409 ( .A0(n417), .A1(n418), .B0(A[2]), .Y(n416) );
  CLKINVX1 U410 ( .A(A[3]), .Y(n280) );
  NAND2X1 U411 ( .A(n419), .B(n215), .Y(n414) );
  CLKINVX1 U412 ( .A(n199), .Y(n215) );
  NOR3X1 U413 ( .A(B[2]), .B(\_0_net_[0] ), .C(B[1]), .Y(n199) );
  OAI21XL U414 ( .A0(n417), .A1(n202), .B0(n420), .Y(n419) );
  OAI22XL U415 ( .A0(B[2]), .A1(n251), .B0(n421), .B1(n292), .Y(n420) );
  NOR2X1 U416 ( .A(A[1]), .B(n418), .Y(n421) );
  CLKINVX1 U417 ( .A(\_0_net_[0] ), .Y(n202) );
  OA21XL U418 ( .A0(A[0]), .A1(n418), .B0(n242), .Y(n417) );
  NAND2X1 U419 ( .A(n252), .B(n251), .Y(n242) );
  CLKINVX1 U420 ( .A(B[1]), .Y(n418) );
  CLKINVX1 U421 ( .A(B[3]), .Y(n200) );
  CLKINVX1 U422 ( .A(A[5]), .Y(n262) );
  CLKINVX1 U423 ( .A(A[4]), .Y(n272) );
  CLKINVX1 U424 ( .A(B[6]), .Y(n194) );
  CLKINVX1 U425 ( .A(B[5]), .Y(n196) );
  CLKINVX1 U426 ( .A(A[7]), .Y(n243) );
  CLKINVX1 U427 ( .A(B[8]), .Y(n190) );
  CLKINVX1 U428 ( .A(B[7]), .Y(n192) );
  CLKINVX1 U429 ( .A(A[8]), .Y(n226) );
  CLKINVX1 U430 ( .A(B[9]), .Y(n211) );
  CLKINVX1 U431 ( .A(B[10]), .Y(n210) );
  CLKINVX1 U432 ( .A(A[10]), .Y(n374) );
  CLKINVX1 U433 ( .A(A[12]), .Y(n357) );
  OAI21XL U434 ( .A0(A[15]), .A1(n204), .B0(n422), .Y(n393) );
  OAI211X1 U435 ( .A0(A[14]), .A1(n349), .B0(n328), .C0(n423), .Y(n391) );
  AOI221XL U436 ( .A0(n288), .A1(A[7]), .B0(n424), .B1(n254), .C0(n425), .Y(
        n423) );
  NOR3X1 U437 ( .A(n310), .B(A[10]), .C(n230), .Y(n425) );
  CLKINVX1 U438 ( .A(A[9]), .Y(n230) );
  CLKINVX1 U439 ( .A(A[6]), .Y(n254) );
  OAI2BB2XL U440 ( .B0(A[4]), .B1(n426), .A0N(A[5]), .A1N(n288), .Y(n424) );
  AOI32X1 U441 ( .A0(n384), .A1(n309), .A2(n427), .B0(n288), .B1(A[3]), .Y(
        n426) );
  NOR2X1 U442 ( .A(A[14]), .B(A[12]), .Y(n427) );
  NOR2X1 U443 ( .A(n251), .B(A[2]), .Y(n384) );
  NOR2BX1 U444 ( .AN(n309), .B(n310), .Y(n288) );
  NOR4X1 U445 ( .A(A[10]), .B(A[11]), .C(A[8]), .D(A[9]), .Y(n309) );
  OA21XL U446 ( .A0(n310), .A1(n366), .B0(n336), .Y(n328) );
  CLKINVX1 U447 ( .A(A[11]), .Y(n366) );
  NAND3X1 U448 ( .A(n348), .B(n336), .C(n327), .Y(n310) );
  NOR2X1 U449 ( .A(A[12]), .B(A[13]), .Y(n327) );
  CLKINVX1 U450 ( .A(A[14]), .Y(n348) );
  CLKINVX1 U451 ( .A(A[13]), .Y(n349) );
  CLKINVX1 U452 ( .A(n289), .Y(n390) );
  NAND2X1 U453 ( .A(n422), .B(Mode[1]), .Y(n289) );
  NOR3X1 U454 ( .A(n398), .B(n383), .C(n428), .Y(n422) );
  CLKINVX1 U455 ( .A(n290), .Y(n220) );
  NAND2X1 U456 ( .A(n429), .B(n398), .Y(n290) );
  MXI2X1 U457 ( .A(n430), .B(n431), .S0(n252), .Y(n388) );
  CLKINVX1 U458 ( .A(A[0]), .Y(n252) );
  OAI211X1 U459 ( .A0(\_0_net_[0] ), .A1(n228), .B0(n299), .C0(n322), .Y(n431)
         );
  NAND3X1 U460 ( .A(n251), .B(n292), .C(n281), .Y(n322) );
  NOR2X1 U461 ( .A(n298), .B(A[3]), .Y(n281) );
  NAND3X1 U462 ( .A(n400), .B(n432), .C(Mode[3]), .Y(n298) );
  CLKINVX1 U463 ( .A(A[2]), .Y(n292) );
  CLKINVX1 U464 ( .A(A[1]), .Y(n251) );
  NAND2X1 U465 ( .A(n433), .B(n428), .Y(n299) );
  NAND2X1 U466 ( .A(n429), .B(Mode[3]), .Y(n228) );
  NOR2X1 U467 ( .A(n432), .B(Mode[2]), .Y(n429) );
  OAI21XL U468 ( .A0(\_0_net_[0] ), .A1(n227), .B0(n399), .Y(n430) );
  CLKINVX1 U469 ( .A(n235), .Y(n399) );
  NOR4X1 U470 ( .A(n428), .B(n432), .C(n383), .D(Mode[3]), .Y(n235) );
  CLKINVX1 U471 ( .A(Mode[1]), .Y(n432) );
  CLKINVX1 U472 ( .A(Mode[0]), .Y(n428) );
  NAND2X1 U473 ( .A(n433), .B(Mode[0]), .Y(n227) );
  NOR3X1 U474 ( .A(Mode[1]), .B(Mode[2]), .C(n398), .Y(n433) );
  CLKINVX1 U475 ( .A(Mode[3]), .Y(n398) );
  AOI22X1 U476 ( .A0(BtmpY[0]), .A1(n221), .B0(AtmpY[0]), .B1(n234), .Y(n387)
         );
  MXI2X1 U477 ( .A(n434), .B(n435), .S0(AtmpY[15]), .Y(N203) );
  NAND2X1 U478 ( .A(n436), .B(n336), .Y(n435) );
  CLKINVX1 U479 ( .A(A[15]), .Y(n336) );
  MXI2X1 U480 ( .A(n437), .B(n438), .S0(n204), .Y(n436) );
  NAND2X1 U481 ( .A(A[15]), .B(n439), .Y(n434) );
  MXI2X1 U482 ( .A(n438), .B(n437), .S0(n204), .Y(n439) );
  CLKINVX1 U483 ( .A(B[15]), .Y(n204) );
  AO22X1 U484 ( .A0(AtmpCout), .A1(n234), .B0(BtmpCout), .B1(n221), .Y(N202)
         );
  CLKINVX1 U485 ( .A(n437), .Y(n221) );
  CLKINVX1 U486 ( .A(n438), .Y(n234) );
  NAND2X1 U487 ( .A(n438), .B(n437), .Y(N201) );
  NAND3X1 U488 ( .A(n382), .B(Mode[2]), .C(Mode[0]), .Y(n437) );
  NAND2X1 U489 ( .A(n382), .B(n400), .Y(n438) );
  NOR2X1 U490 ( .A(n383), .B(Mode[0]), .Y(n400) );
  CLKINVX1 U491 ( .A(Mode[2]), .Y(n383) );
  NOR2X1 U492 ( .A(Mode[1]), .B(Mode[3]), .Y(n382) );
endmodule

