module demux1x8 (a, b, c, d, e, f, g, h, x0, x1, x2, in);

	input  in, x0, x1, x2;
	output a, b, c, d, e, f, g, h;	
	wire out1, out2;
	demux1x4 Demux1x4_1 (.a(out1), .b(out2), .x0(x2), .x1(0), .in(in));
	demux1x4 Demux1x4_2 (.a(a), .b(b), .c(c), .d(d), .x0(x0), .x1(x1), .in(out1));
	demux1x4 Demux1x4_3 (.a(e), .b(f), .c(g), .d(h), .x0(x0), .x1(x1), .in(out2));
	
endmodule

module demux1x4 (a, b, c, d, x0, x1, in);

	input in, x0, x1;
	output a, b, c, d;	
	wire out1, out2;
	demux1x2 Demux1x2_1 (.a(out1), .b(out2), .x0(x1), .in(in));
	demux1x2 Demux1x2_2 (.a(a), .b(b), .x0(x0), .in(out1));
	demux1x2 Demux1x2_3 (.a(c), .b(d), .x0(x0), .in(out2));

endmodule

module demux1x2 (a, b, x0, in);

	input in, x0;
	output a, b;
	// Used 0 instead of 'bz for dumping on FPGA
	assign a = x0 ? 0 : in;
	assign b = x0 ? in : 0;

endmodule
