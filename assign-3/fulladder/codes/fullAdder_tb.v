module fullAdder_tb;

	reg a;
	reg b;
	reg c;

	wire s_out;
	wire c_out;

	fullAdder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.s_out(s_out), 
		.c_out(c_out)
	);

	initial begin
		a = 0;
		b = 0;
		c = 0;

		#100;
	end
	always #1 a = ~a;
	always #2 b = ~b;
	always #4 c = ~c;

endmodule

