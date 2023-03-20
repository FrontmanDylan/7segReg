
module mux8_4_tb ();

	reg [2:0] select;
	reg [31:0] in;
	
	wire [3:0] in0, in1, in2, in3, in4, in5, in6, in7;
	
	wire [3:0] out;
	
	mux8_4 dut (select, in, out);
	
	assign in0 = in[ 3:  0];
	assign in1 = in[ 7:  4];
	assign in2 = in[11:  8];
	assign in3 = in[15: 12];
	assign in4 = in[19: 16];
	assign in5 = in[23: 20];
	assign in6 = in[27: 24];
	assign in7 = in[31: 28];
	
	initial begin
		
		for (select = 0; select < 7; select = select) begin
		
			in = $random;
			#10;
			select = select+1;
		
		end

		$stop;
	
	end
	
endmodule