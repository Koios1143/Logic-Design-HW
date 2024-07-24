module Fib_tb;
	parameter delay = 100;

	wire out_G, out_D, out_B;
	reg [3:0] in;
	
	wire isFib;
	assign isFib = in == 0 || in == 1 || in == 2 || in == 3 || in == 5 || in == 8 || in == 13;

	initial begin
		in = 0;
		repeat (16) begin
			#delay
			$display("in = %2d\tout_G = %1b\tout_D = %1b\tout_B = %1b", in, out_G, out_D, out_B);
			if((isFib && (out_G & out_D & out_B) == 0) || (!isFib && (out_G | out_D | out_B) == 1))
				begin
					$display("Wrong Answer!");
					$finish;
				end
			in = in + 1;
		end
		$display("\t=============");
		$display("\t| Accepted! |");
		$display("\t=============");
		$finish;
	end

	Fib_G FG(in, out_G);
	Fib_D FD(in, out_D);
	Fib_B FB(in, out_B);

endmodule	
