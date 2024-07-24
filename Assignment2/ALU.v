
module CLA_4bit(A, B, Cin, S, Cout);
	parameter n = 4;
	input [n - 1: 0] A, B;
	input Cin;
	
	output [n - 1: 0] S;
	output Cout;

endmodule

module Adder_16bit(A, B, Cin, S, Cout);

	parameter n = 16;
	parameter m = 4;

	input [n - 1: 0] A, B;
	input Cin;
	
	output [n - 1: 0] S;
	output Cout;
	
endmodule

module ALU(A, B, Cin, Mode, Y, Cout, Overflow);

	parameter n = 16;
	parameter m = 4;
	
	input [n - 1: 0] A, B;
	input Cin;
	input [m - 1: 0] Mode;	

	output reg [n - 1: 0] Y;
	output reg Cout;
	output reg Overflow;
	
	always@(*)begin
		case(Mode)
			//Logical shift A left by 1-bit.
			4'd0: begin
			end
			//Arithmetic shift A left by 1-bit.
			4'd1: begin
			end
			//Logical shift A right by 1-bit.
			4'd2: begin
			end
			//Arithmetic shift A right by 1-bit.
			4'd3: begin
			end
			//Add two numbers with cla.
			4'd4: begin
			end
			//Subtract B from A.
			4'd5: begin
			end
			//and
			4'd6: begin
			end
			//or
			4'd7: begin
			end
			//not A
			4'd8: begin
			end
			//xor
			4'd9: begin
			end
			//xnor
			4'd10: begin
			end
			//nor
			4'd11: begin
			end
			//binary to one-hot
			4'd12: begin
			end
			//Comparator
			4'd13: begin
			end
			//B
			4'd14: begin
			end
			//find first one from left
			4'd15: begin
			end
			default: begin
			end
		endcase
	end
endmodule


















