`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:13 11/09/2019
// Design Name:   univShiftReg
// Module Name:   /home/shivansh/verilog/verilog-proj/shiftreg_tb.v
// Project Name:  verilog-proj
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: univShiftReg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftreg_tb;

	// Inputs
	reg CLK;
	reg [3:0] INP;
	reg [1:0] select;
	reg leftInp;
	reg rightInp;

	// Outputs
	wire [3:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	univShiftReg uut (
		.CLK(CLK), 
		.INP(INP), 
		.OUT(OUT),
		.select(select), 
		.leftInp(leftInp), 
		.rightInp(rightInp)
	);

	initial begin
		// Initialize Inputs
		INP = 4'b1001;
		rightInp = 0;
		leftInp = 1;
		select[1] = 0;
		select[0] = 0;
		CLK = 0;
		
		select[0] = 0; select[1] = 0;
		
		#10;
		select[0] = 1; select[1] = 0;
		
		#10;
		select[0] = 0; select[1] = 1;
		
		#10;
		select[0] = 1; select[1] = 1;
		
		#10;
		  
		// Add stimulus here

	end
	
	always #5 CLK = ~CLK;
      
endmodule

