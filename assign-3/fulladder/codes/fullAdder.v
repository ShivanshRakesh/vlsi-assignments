module fullAdder(a, b, c, s_out, c_out);
	input a, b, c;
	output s_out, c_out; 
	
	assign s_out = a ^ b ^ c;
	assign c_out = ((a | b) & c) | (a & b);
endmodule
