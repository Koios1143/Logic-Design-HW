module Fib_G(in, out);
	input [3:0] in;
	output out;
	
	wire a0, a1, a2;
	
	and and0(a0, ~in[3], ~in[2]);
	and and1(a1, in[2], ~in[1], in[0]);
	and and2(a2, ~in[2], ~in[1], ~in[0]);

	or or0(out, a0, a1, a2);
endmodule

module Fib_D(in, out);
	input [3:0] in;
	output out;

	assign out = (!in[3] & !in[2]) | (in[2] & !in[1] & in[0]) | (!in[2] & !in[1] & !in[0]);
endmodule

module Fib_B(in, out);
	input [3:0] in;
	output out;
	reg out;

	always@(*) begin
		case(in)
			0, 1, 2, 3, 5, 8, 13: out = 1'b1;
			default: out = 1'b0;
		endcase
	end
endmodule
