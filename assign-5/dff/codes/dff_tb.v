module dff_tb;

	// Inputs
	reg d;
	reg clk;
	reg rst;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.d(d), 
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		rst = 0;

		// Add stimulus here
	end
	always #4 d = ~d;
	always #5 clk = ~clk;
	// always #7 rst = ~rst;  
			
endmodule

