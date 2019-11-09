module fft2_tb;

	// Inputs
	reg [3:0] inp;

	// Outputs
	wire [2:0] rout_0;
	wire [2:0] rout_1;
	wire [2:0] rout_2;
	wire [2:0] rout_3;
	wire [2:0] iout_0;
	wire [2:0] iout_1;
	wire [2:0] iout_2;
	wire [2:0] iout_3;

	// Instantiate the Unit Under Test (UUT)
	fft2 uut (
		.inp(inp), 
		.rout_0(rout_0), 
		.rout_1(rout_1), 
		.rout_2(rout_2), 
		.rout_3(rout_3), 
		.iout_0(iout_0), 
		.iout_1(iout_1), 
		.iout_2(iout_2), 
		.iout_3(iout_3)
	);

	initial begin
		// Initialize Inputs
		inp = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #2 inp[0] = ~inp[0];
	always #4 inp[1] = ~inp[1];
	always #8 inp[2] = ~inp[2];
	always #16 inp[3] = ~inp[3];
      
endmodule

