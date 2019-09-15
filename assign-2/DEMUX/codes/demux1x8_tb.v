module demux1x8_tb;

	// Inputs
	reg x0;
	reg x1;
	reg x2;
	reg in;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;
	wire h;

	// Instantiate the Unit Under Test (UUT)
	demux1x8 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g), 
		.h(h), 
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		x0 = 0;
		x1 = 0;
		x2 = 0;
		in = 0;
	end
	
	always #1 x0 = ~x0;
	always #2 x1 = ~x1;
	always #4 x2 = ~x2;
	always #8 in = ~in;
      
endmodule

