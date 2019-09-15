module encoder8x3_tb;

	// Inputs
	reg a0;
	reg a1;
	reg a2;
	reg a3;
	reg a4;
	reg a5;
	reg a6;
	reg a7;
	reg en;

	// Outputs
	wire x0;
	wire x1;
	wire x2;

	// Instantiate the Unit Under Test (UUT)
	encoder8x3 uut (
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
		a0 = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;
		a4 = 0;
		a5 = 0;
		a6 = 0;
		a7 = 0;
		en = 0;	
	
		#5 
		 en = 1;
		#5
		 a0 = 1;
		#5 
		 a0 = 0;
		 a1 = 1;
		#5 
		 a1 = 0;
		 a2 = 1;
		#5 
		 a2 = 0;
		 a3 = 1;
		#5 
		 a3 = 0;
		 a4 = 1;
		#5 
		 a4 = 0;
		 a5 = 1;
		#5 
		 a5 = 0;
		 a6 = 1;
		#5 
		 a6 = 0;
		 a7 = 1;
	end
      
endmodule

