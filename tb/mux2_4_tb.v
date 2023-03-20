
module mux2_4_tb ();

	reg select;
	reg [3:0] true, false;
	
	wire [3:0] out;
	
	mux2_4 dut (select, true, false, out);
	
	initial begin
	
		select = 0;
		true   = $random;
		false  = $random;
		
		#10;
		
		select = 0;
		true   = $random;
		false  = $random;
		
		#10;
		
		select = 0;
		true   = $random;
		false  = $random;
		
		#10;
		
		select = 0;
		true   = $random;
		false  = $random;
		
		#10;
		
		select = 1;
		true   = $random;
		false  = $random;
		
		#10
		
		select = 1;
		true   = $random;
		false  = $random;
		
		#10
		
		select = 1;
		true   = $random;
		false  = $random;
		
		#10
		
		select = 1;
		true   = $random;
		false  = $random;
		
		#10;
		
		$stop;
	
	end
	
endmodule