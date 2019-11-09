`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:53:39 11/09/2019
// Design Name:   fsm
// Module Name:   /home/shivansh/verilog/verilog-proj/fsm_tb.v
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

module fsm_tb;

	// Inputs
	reg CLK;
	reg RESET;
	reg INP;

	// Outputs
	wire OUT;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.INP(INP), 
		.OUT(OUT)
	);
	
	always #1 CLK = ~CLK;
	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		INP = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Add stimulus here
		#2
		RESET = 0;
		#2;
		INP = 1;
		#2; 
		INP = 0;
		#2; 
		INP = 0;
		#2; 
		INP = 0;	
		#2; 
		INP = 1;
		#10;
		RESET = 1;
		
		#2
		RESET = 0;
		#2;
		INP = 1;
		#2; 
		INP = 0;
		#2; 
		INP = 1;
		#2; 
		INP = 0;	
		#2; 
		INP = 1;
		#10;
		RESET = 1;
		
		#2
		RESET = 0;
		#2;
		INP = 1;
		#2; 
		INP = 0;
		#2; 
		INP = 0;
		#2; 
		INP = 0;	
		#2; 
		INP = 0;
		#10;
		RESET = 1;
		
		#2
		RESET = 0;
		#2;
		INP = 1;
		#2; 
		INP = 1;
		#2; 
		INP = 0;
		#2; 
		INP = 0;	
		#2; 
		INP = 0;
		#10;
		RESET = 1;
		
   end   
endmodule

