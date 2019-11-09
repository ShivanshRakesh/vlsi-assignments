module encoder8x3 (a0, a1, a2, a3, a4, a5, a6, a7, v, x0, x1, x2, en);

	input a0, a1, a2, a3, a4, a5, a6, a7, en;
	output x0, x1, x2, v;
	// Used 0 instead of 'bz for dumping on FPGA
	assign v = a0|a1|a2|a3|a4|a5|a6|a7;
	assign x0 = en ? (a1 | a3 | a5 | a7) : 0;
	assign x1 = en ? (a2 | a3 | a6 | a7) : 0;
	assign x2 = en ? (a4 | a5 | a6 | a7) : 0;

endmodule
