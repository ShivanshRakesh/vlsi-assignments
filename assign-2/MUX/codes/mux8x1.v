module mux8x1 (a, b, c, d, e, f, g, h, x0, x1, x2, out);

	input a, b, c, d, e, f, g, h, x0, x1, x2;
	output out;	
	wire out1, out2;
	mux4x1 Mux4x1_1 (.a(a), .b(b), .c(c), .d(d), .x0(x0), .x1(x1), .out(out1));
	mux4x1 Mux4x1_2 (.a(e), .b(f), .c(g), .d(h), .x0(x0), .x1(x1), .out(out2));
	mux4x1 Mux4x1_3 (.a(out1), .b(out2), .c(0), .d(0), .x0(x2), .x1(0), .out(out));
	
endmodule

module mux4x1 (a, b, c, d, x0, x1, out);

	input a, b, c, d, x0, x1;
	output out;	
	wire out1, out2;
	mux2x1 Mux2x1_1 (.a(a), .b(b), .x0(x0), .out(out1));
	mux2x1 Mux2x1_2 (.a(c), .b(d), .x0(x0), .out(out2));
	mux2x1 Mux2x1_3 (.a(out1), .b(out2), .x0(x1), .out(out));

endmodule

module mux2x1 (a, b, x0, out);

	input a, b, x0;
	output out;
	assign out = (a & ~x0) | (b & x0);

endmodule
