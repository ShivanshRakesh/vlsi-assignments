module mux8x1_tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	reg f;
	reg g;
	reg h;
	reg x0;
	reg x1;
	reg x2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux8x1 uut (
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
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;
		g = 0;
		h = 0;
		x0 = 0;
		x1 = 0;
		x2 = 0;
	end
        
	// Add stimulus here
	always #1 a = ~a;
	always #2 b = ~b;
	always #4 c = ~c;
	always #8 d = ~d;
	always #16 e = ~e;
	always #32 f = ~f;
	always #64 g = ~g;
	always #128 h = ~h;
	always #256 x0 = ~x0;
	always #512 x1 = ~x1;
	always #1024 x2 = ~x2;
      
endmodule
