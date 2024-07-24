
module D_FF(D, clk, rst, Q, Qbar);
	input D, clk, rst;
	output reg Q = 0, Qbar = 1;

	always @(posedge clk, posedge rst) begin
		if(rst == 1) begin
			Q <= 0;
			Qbar <= 1;
		end
		else begin
			Q <= D;
			Qbar <= ~D;
		end
	end
endmodule

module PAT(clk, reset, data, flag);
	
	input clk, reset, data;
	output reg flag;
	wire AQ, AQbar, BQ, BQbar, CQ, CQbar, DQ, DQbar;

	always @(posedge clk, posedge reset) begin
		if(reset == 1) begin
			flag <= 0;
		end
		else begin
			flag <= AQbar & BQ & CQ & DQ & data;
		end
	end
	
	D_FF A( 
		(BQ & CQ & DQ) | (AQ & BQbar & CQbar & DQbar & data),
		clk, reset, AQ, AQbar
	);
	D_FF B( 
		(AQbar & BQbar & CQ & DQ & data) | (AQbar & BQ & CQ & DQbar) | (BQ & DQbar & (~data)) | (BQ & CQbar & DQ & data) | (AQ & DQ & data), 
		clk, reset, BQ, BQbar
	);
	D_FF C( 
		(BQbar & CQbar & DQ & data) | (AQbar & BQbar & CQ & DQbar & (~data)) | (AQbar & BQ & CQ & data) | (AQbar & BQ & DQ & data) | (AQ & DQ), 
		clk, reset, CQ, CQbar
	);
	D_FF D( 
		(AQbar & BQbar & (~data)) | (AQbar & BQ & CQ & DQbar) | (AQbar & BQ & CQbar & (~data)) | (AQ & DQbar & (~data)) | (AQ & DQ) | (AQ & BQbar), 
		clk, reset, DQ, DQbar
	);

endmodule
