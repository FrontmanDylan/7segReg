
module mux8_4 (select, in, out);

	input [2:0] select;
	
	input [31:0] in;
	
	wire [3:0] A, B, C, D, E, F;
	
	output [3:0] out;
	
	mux2_4 muxA (select[0], in[ 7: 4], in[ 3: 0], A);  
	mux2_4 muxB (select[0], in[15:12], in[11: 8], B);
	mux2_4 muxC (select[0], in[23:20], in[19:16], C);
	mux2_4 muxD (select[0], in[31:28], in[27:24], D);
	
	mux2_4 muxE (select[1], B, A, E);
	mux2_4 muxF (select[1], D, C, F);
	
	mux2_4 muxG (select[2], F, E, out);

endmodule