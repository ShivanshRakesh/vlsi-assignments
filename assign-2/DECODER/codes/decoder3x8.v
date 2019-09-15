module decoder3x8 (a0, a1, a2, a3, a4, a5, a6, a7, x0, x1, x2, en);

	input  en, x0, x1, x2;
	output a0, a1, a2, a3, a4, a5, a6, a7;	
	wire out1, out2;
	decoder2x4 Decoder2x4_1 (.a0(out1), .a1(out2), .x0(x2), .x1(0), .en(en));
	decoder2x4 Decoder2x4_2 (.a0(a0), .a1(a1), .a2(a2), .a3(a3), .x0(x0), .x1(x1), .en(out1));
	decoder2x4 Decoder2x4_3 (.a0(a4), .a1(a5), .a2(a6), .a3(a7), .x0(x0), .x1(x1), .en(out2));
	
	
endmodule

module decoder2x4 (a0, a1, a2, a3, x0, x1, en);

	input en, x0, x1;
	output a0, a1, a2, a3;	
	wire out1, out2;
	decoder1x2 Decoder1x2_1 (.a0(out1), .a1(out2), .x0(x1), .en(en));
	decoder1x2 Decoder1x2_2 (.a0(a0), .a1(a1), .x0(x0), .en(out1));
	decoder1x2 Decoder1x2_3 (.a0(a2), .a1(a3), .x0(x0), .en(out2));

endmodule

module decoder1x2 (a0, a1, x0, en);

	input en, x0;
	output a0, a1;
	assign a0 = en?~x0:0;
	assign a1 = en?x0:0;

endmodule
