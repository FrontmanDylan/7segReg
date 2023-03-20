
module mux2_4 (select, true, false, out);

	input select;
	input [3:0] true, false;
	output [3:0] out;
	
	mux2 mux0 (select, true[0], false[0], out[0]);
	mux2 mux1 (select, true[1], false[1], out[1]);
	mux2 mux2 (select, true[2], false[2], out[2]);
	mux2 mux3 (select, true[3], false[3], out[3]);

endmodule