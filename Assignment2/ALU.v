module HalfAdder(A, B, P, G);
	input A, B;
	output P, G;

	assign P = A ^ B;
	assign G = A & B;
endmodule

module CLG(Cin, P, G, Cout);
	input Cin;
	input [3:0] G, P;
	output [3:0] Cout;

	assign Cout[0] = G[0] | (P[0]&Cin);
	assign Cout[1] = G[1] | (P[1]&G[0] | P[0]&P[1]&Cin);
	assign Cout[2] = G[2] | (P[2]&G[1] | P[1]&P[2]&G[0] | P[0]&P[1]&P[2]&Cin);
	assign Cout[3] = G[3] | (P[3]&G[2] | P[2]&P[3]&G[1] | P[1]&P[2]&P[3]&G[0] | P[0]&P[1]&P[2]&P[3]&Cin);
endmodule

module CLA_4bit(A, B, Cin, S, Cout);
	input [3:0] A, B;
	input Cin;

	output [3:0] S;
	output Cout;

	wire [3:0] C, P, G;

	assign S[0] = Cin ^ P[0];
	assign S[1] = C[0] ^ P[1];
	assign S[2] = C[1] ^ P[2];
	assign S[3] = C[2] ^ P[3];
	assign Cout = C[3];

	HalfAdder HA0(A[0], B[0], P[0], G[0]);
	HalfAdder HA1(A[1], B[1], P[1], G[1]);
	HalfAdder HA2(A[2], B[2], P[2], G[2]);
	HalfAdder HA3(A[3], B[3], P[3], G[3]);

	CLG CLG0(Cin, P, G, C);
endmodule

module Adder_16bit(A, B, Cin, S, Cout);
	parameter n = 16;
	parameter m = 4;

	input [n-1:0] A, B;
	input Cin;

	output [n-1:0] S;
	output Cout;

	wire [2:0] C;

	CLA_4bit CLA0(A[3:0], B[3:0], Cin, S[3:0], C[0]);
	CLA_4bit CLA1(A[7:4], B[7:4], C[0], S[7:4], C[1]);
	CLA_4bit CLA2(A[11:8], B[11:8], C[1], S[11:8], C[2]);
	CLA_4bit CLA3(A[15:12], B[15:12], C[2], S[15:12], Cout);
endmodule

module ALU(A, B, Cin, Mode, Y, Cout, Overflow);

	parameter n = 16;
	parameter m = 4;
	
	input signed [n - 1: 0] A, B;
	input Cin;
	input [m - 1: 0] Mode;	

	output reg [n - 1: 0] Y;
	output reg Cout;
	output reg Overflow;
	
	wire [n-1:0] AtmpY, BtmpY;
	wire AtmpCout, BtmpCout;
	
	always@(*)begin
		case(Mode)
			//Logical shift A left by 1-bit.
			4'd0: begin
				Y = A<<1;
			end
			//Arithmetic shift A left by 1-bit.
			4'd1: begin
				Y = A<<<1;
			end
			//Logical shift A right by 1-bit.
			4'd2: begin
				Y = A>>1;
			end
			//Arithmetic shift A right by 1-bit.
			4'd3: begin
				Y = A>>>1;
			end
			//Add two numbers with cla.
			4'd4: begin
				Y = AtmpY;
				Cout = AtmpCout;
				Overflow = (A[n-1]&B[n-1]&(~AtmpY[n-1])) | ((~A[n-1])&(~B[n-1])&AtmpY[n-1]);
			end
			//Subtract B from A.
			4'd5: begin
				Y = BtmpY;
				Cout = BtmpCout;
				Overflow = (A[n-1]&(~B[n-1])&(~AtmpY[n-1])) | ((~A[n-1])&(B[n-1])&AtmpY[n-1]);
			end
			//and
			4'd6: begin
				Y = A&B;
			end
			//or
			4'd7: begin
				Y = A|B;
			end
			//not A
			4'd8: begin
				Y = ~A;
			end
			//xor
			4'd9: begin
				Y = A^B;
			end
			//xnor
			4'd10: begin
				Y = ~(A^B);
			end
			//nor
			4'd11: begin
				Y = ~(A|B);
			end
			//binary to one-hot
			4'd12: begin
				Y = 1<<A[3:0];
			end
			//Comparator
			4'd13: begin
				if(A >= B)
				begin
					Y = 16'd0;
				end
				else
				begin
					Y = 16'd1;
				end
			end
			//B
			4'd14: begin
				Y = B;
			end
			//find first one from left
			4'd15: begin
				if((A&(1<<15)) != 0) Y = 15'd15;
				else if((A&(1<<14)) != 0) Y = 15'd14;
				else if((A&(1<<13)) != 0) Y = 15'd13;
				else if((A&(1<<12)) != 0) Y = 15'd12;
				else if((A&(1<<11)) != 0) Y = 15'd11;
				else if((A&(1<<10)) != 0) Y = 15'd10;
				else if((A&(1<<9)) != 0)  Y = 15'd9;
				else if((A&(1<<8)) != 0)  Y = 15'd8;
				else if((A&(1<<7)) != 0)  Y = 15'd7;
				else if((A&(1<<6)) != 0)  Y = 15'd6;
				else if((A&(1<<5)) != 0)  Y = 15'd5;
				else if((A&(1<<4)) != 0)  Y = 15'd4;
				else if((A&(1<<3)) != 0)  Y = 15'd3;
				else if((A&(1<<2)) != 0)  Y = 15'd2;
				else if((A&(1<<1)) != 0)  Y = 15'd1;
				else Y = 15'd0;
			end
			default: begin
			end
		endcase
	end
	Adder_16bit A0(A, B, Cin, AtmpY, AtmpCout);
	Adder_16bit A1(A, -B, 1'b0, BtmpY, BtmpCout);
endmodule
