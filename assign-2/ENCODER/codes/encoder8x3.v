module encoder8x3 (a0, a1, a2, a3, a4, a5, a6, a7, x0, x1, x2, en);

	input a0, a1, a2, a3, a4, a5, a6, a7, en;
	output x0, x1, x2;
	// Used 0 instead of 'bz for dumping on FPGA
	assign x0 = (en & (a0|a1|a2|a3|a4|a5|a6|a7)) ? (a1 | a3 | a5 | a7) : 0;
	assign x1 = (en & (a0|a1|a2|a3|a4|a5|a6|a7)) ? (a2 | a3 | a6 | a7) : 0;
	assign x2 = (en & (a0|a1|a2|a3|a4|a5|a6|a7)) ? (a4 | a5 | a6 | a7) : 0;

endmodule
