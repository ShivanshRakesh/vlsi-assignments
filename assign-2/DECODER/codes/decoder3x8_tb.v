module decoder3x8_tb;

	// Inputs
	reg x0;
	reg x1;
	reg x2;
	reg en;

	// Outputs
	wire a0;
	wire a1;
	wire a2;
	wire a3;
	wire a4;
	wire a5;
	wire a6;
	wire a7;

	// Instantiate the Unit Under Test (UUT)
	decoder3x8 uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.a3(a3), 
		.a4(a4), 
		.a5(a5), 
		.a6(a6), 
		.a7(a7), 
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.en(en)
	);

	initial begin
		// Initialize Inputs
		x0 = 0;
		x1 = 0;
		x2 = 0;
		en = 0;
	end
   
	always #1 x0 = ~x0;
	always #2 x1 = ~x1;
	always #4 x2 = ~x2;
	always #8 en = ~en;
		
endmodule

