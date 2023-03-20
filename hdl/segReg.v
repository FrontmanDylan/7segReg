
/* Seven Segment Display Register File

	Inputs:
	clk     = clock signal
	in[3:0] = data in
	in[4]   = load signal
	in[7:5] = address
	
	Output:
	out = seven segment display code
	
	Data inputs are BCD, output is for negative 7segment display
	Data is read when load is 0, and data is written when load is 1
	There are 8 registers that can each hold a 4 bit BCD number

*/

module segReg (clk, in, out);

	input clk;
	input [7:0] in;
	
	wire [3:0] reg_out;
	
	output [7:0] out;
	
	
	regfile_4 register (clk, in[3:0], in[4], in[7:5], reg_out); 
	
	BCD_to_7seg translator (reg_out, out);

endmodule