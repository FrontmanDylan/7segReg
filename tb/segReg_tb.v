
module segReg_tb ();

	reg clk;
	reg [7:0] in;
	
	wire [3:0] data;
	wire load;
	wire [2:0] position;
	
	assign data = in[3:0];
	assign load = in[4];
	assign position = in[7:5];
	
	wire [7:0] out;
	
	segReg dut (clk, in, out);
	
	initial begin
	
		clk = 0;
	
		//WRITE
	
		in[3:0] = $random;
	   in[4]   =       1;
		in[7:5] =       0;
		
		#10;
		in[3:0] = $random;
		in[4]   =       1;
		in[7:5] =       1;
		
		#10;
		in[3:0] = $random;
		in[4]   =       1;
		in[7:5] =       2;
		
		#10;
		in[3:0] = $random;
		in[4]   =       1;
		in[7:5] =       3;
		
		#10; 
		in[3:0] = $random;
		in[4]   =       1;
		in[7:5] =       4;
		
		#10;
		in[3:0] = $random;
		in[4]   =       1;
		in[7:5] =       5;
		
		#10;
		in[3:0] = $random;
		in[4]   =       1;
		in[7:5] =       6;
		
		#10;
		in[3:0] = $random;
		in[4]   =       1;
		in[7:5] =       7;
		
		//READ
		
		#10;
		in[3:0] = $random;
	   in[4]   =       0;
		in[7:5] =       0;
		
		#10;
		in[3:0] = $random;
		in[4]   =       0;
		in[7:5] =       1;
		
		#10;
		in[3:0] = $random;
		in[4]   =       0;
		in[7:5] =       2;
		
		#10;
		in[3:0] = $random;
		in[4]   =       0;
		in[7:5] =       3;
		
		#10; 
		in[3:0] = $random;
		in[4]   =       0;
		in[7:5] =       4;
		
		#10;
		in[3:0] = $random;
		in[4]   =       0;
		in[7:5] =       5;
		
		#10;
		in[3:0] = $random;
		in[4]   =       0;
		in[7:5] =       6;
		
		#10;
		in[3:0] = $random;
		in[4]   =       0;
		in[7:5] =       7;
		
		#10; $stop;
	
	end
	
	always begin
	
		#2;
		clk = ~clk;
	
	end

endmodule