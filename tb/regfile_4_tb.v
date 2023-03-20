
module regfile_4_tb ();

	reg clk;
	reg [3:0] data;
	reg load;
	reg [2:0] position;
	
	wire [3:0] out;
	
	regfile_4 dut (clk, data, load, position, out);
	
	initial begin
	
		clk = 0;
	
		//WRITE
	
		data     = $random;
	   load     =       1;
		position =       0;
		
		#10;
		data     = $random;
		load     =       1;
		position =       1;
		
		#10;
		data     = $random;
		load     =       1;
		position =       2;
		
		#10;
		data     = $random;
		load     =       1;
		position =       3;
		
		#10; 
		data     = $random;
		load     =       1;
		position =       4;
		
		#10;
		data     = $random;
		load     =       1;
		position =       5;
		
		#10;
		data     = $random;
		load     =       1;
		position =       6;
		
		#10;
		data     = $random;
		load     =       1;
		position =       7;
		
		//READ
		
		#10;
		data     = $random;
	   load     =       0;
		position =       0;
		
		#10;
		data     = $random;
		load     =       0;
		position =       1;
		
		#10;
		data     = $random;
		load     =       0;
		position =       2;
		
		#10;
		data     = $random;
		load     =       0;
		position =       3;
		
		#10; 
		data     = $random;
		load     =       0;
		position =       4;
		
		#10;
		data     = $random;
		load     =       0;
		position =       5;
		
		#10;
		data     = $random;
		load     =       0;
		position =       6;
		
		#10;
		data     = $random;
		load     =       0;
		position =       7;
		
		#10; $stop;
	
	end
	
	always begin
	
		#2;
		clk = ~clk;
	
	end

endmodule