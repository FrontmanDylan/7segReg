
module regfile_4 (clk, data, load, position, out);

	input clk;
	input [3:0] data;
	input load;
	input [2:0] position;
	
	wire [7:0] address; //decoded address bus
	wire [31:0] D, Q;   //input/output to each 4b dff
	
	output [3:0] out;
	
	//Address Decoder
	
	decoder_8 decoder (position, address);
	
	//Input Mux's
	
	mux2_4 m0 (load & address[0], data, Q[ 3: 0], D[ 3: 0]); 
	mux2_4 m1 (load & address[1], data, Q[ 7: 4], D[ 7: 4]); 
	mux2_4 m2 (load & address[2], data, Q[11: 8], D[11: 8]); 
	mux2_4 m3 (load & address[3], data, Q[15:12], D[15:12]); 
	mux2_4 m4 (load & address[4], data, Q[19:16], D[19:16]); 
	mux2_4 m5 (load & address[5], data, Q[23:20], D[23:20]); 
	mux2_4 m6 (load & address[6], data, Q[27:24], D[27:24]); 
	mux2_4 m7 (load & address[7], data, Q[31:28], D[31:28]); 
	
	//Registers
	
	dff_4 d0 (clk, D[ 3: 0], Q[ 3: 0]);
	dff_4 d1 (clk, D[ 7: 4], Q[ 7: 4]);
	dff_4 d2 (clk, D[11: 8], Q[11: 8]);
	dff_4 d3 (clk, D[15:12], Q[15:12]);
	dff_4 d4 (clk, D[19:16], Q[19:16]);
	dff_4 d5 (clk, D[23:20], Q[23:20]);
	dff_4 d6 (clk, D[27:24], Q[27:24]);
	dff_4 d7 (clk, D[31:28], Q[31:28]);
	
	//Output Mux
	
	mux8_4 mux_out (position, Q, out);
	

endmodule