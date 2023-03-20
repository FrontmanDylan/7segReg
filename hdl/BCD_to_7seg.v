
module BCD_to_7seg (in, out);

	input [3:0] in;
	output reg [7:0] out;
	
	always @(*) begin
	
		case (in)
			
			4'h0:    out <= 8'b10000001; //0
			4'h1:    out <= 8'b11001111; //1
			4'h2:    out <= 8'b10010010; //2
			4'h3:    out <= 8'b10000110; //3
			4'h4:    out <= 8'b11001100; //4
			4'h5:    out <= 8'b10100100; //5
			4'h6:    out <= 8'b10100000; //6
			4'h7:    out <= 8'b10001111; //7
			4'h8:    out <= 8'b10000100; //8
			4'h9:    out <= 8'b10000100; //9
			4'ha:    out <= 8'b10001000; //A
			4'hb:    out <= 8'b11100000; //b
			4'hc:    out <= 8'b10110001; //C
			4'hd:    out <= 8'b11000010; //d
			4'he:    out <= 8'b10110000; //E
			4'hf:    out <= 8'b10111000; //F
			default: out <= 8'b11111111; //BLANK
		
		endcase
	
	end

endmodule