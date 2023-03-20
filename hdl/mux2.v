
module mux2 (select, true, false, out);

	input select, true, false;

	wire T_nand_S;
	wire not_S_nand_F;
	
	output out;
	
	assign T_nand_S     = ~(true & select);
	assign not_S_nand_F = ~(~select & false);
	
	assign out          = ~(T_nand_S & not_S_nand_F);

endmodule