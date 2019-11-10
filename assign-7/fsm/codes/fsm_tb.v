`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:52:00 11/10/2019
// Design Name:   fsm
// Module Name:   /home/shivansh/verilog/verilog-proj/fsmtb1.v
// Project Name:  verilog-proj
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsmtb1;

	// Inputs
	reg CLK;
	reg RESET;
	reg ONE;
	reg ZERO;

	// Outputs
	wire OUT;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.ONE(ONE), 
		.ZERO(ZERO), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		ONE = 0;
		ZERO = 0;

		// Wait 100 ns for global reset to finish
		#10;
		RESET = 0;
        
		// Add stimulus here
		#2;
		ONE = 1;
		#2;
		ONE = 0;
		ZERO = 1;
		#2;
		ZERO = 0;
		ONE = 1;
		#2;
		ZERO =1;
		ONE = 0;
		#2;
		ZERO = 0;
		#2;
		RESET = 1;
		#2;
		RESET = 0;
		
		#2;
		ONE = 0;
		#2;
		ZERO = 1;
		#2;
		ZERO = 0;
		#2;
		ZERO = 1;
		#2;
		ZERO = 0;
		#2;
		ZERO = 1;
		#2;
		ZERO = 0;
		#2;
		ZERO = 1;

		#2;
		ONE = 0;
		#2;
		ONE = 1;
		#2;
		ONE = 0;
		#2;
		ONE = 1;
		#2;
		ONE = 0;
		#2;
		ONE = 1;
		#2;
		ONE = 0;

	end
	always #1 CLK = ~CLK;
      
endmodule

