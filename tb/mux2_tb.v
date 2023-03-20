
module mux2_tb ();

	reg select, true, false;
	
	wire out;
	
	mux2 dut (select, true, false, out);
	
	initial begin
	
		select = 0;
		true   = 0;
		false  = 0;
		
		#10;
		
		select = 0;
		true   = 0;
		false  = 1;
		
		#10;
		
		select = 0;
		true   = 1;
		false  = 0;
		
		#10;
		
		select = 0;
		true   = 1;
		false  = 1;
		
		#10;
		
		select = 1;
		true   = 0;
		false  = 0;
		
		#10
		
		select = 1;
		true   = 0;
		false  = 1;
		
		#10
		
		select = 1;
		true   = 1;
		false  = 0;
		
		#10
		
		select = 1;
		true   = 1;
		false  = 1;
		
		#10;
		
		$stop;
	
	end
	
endmodule