module f2_test;
	reg tb_a, tb_b, tb_c, tb_d, tb_e, tb_f;
	wire out;

	f2 test (.a(tb_a), .b(tb_b), .c(tb_c), .d(tb_d), .e(tb_e), .f(tb_f), .out(tb_out));

	initial begin
		tb_a = 0;
		tb_b = 0;
		tb_c = 0;
		tb_d = 0;
		tb_e = 0;
		tb_f = 0;
	end
	
	always #1 tb_a = ~tb_a;
	always #2 tb_b = ~tb_b;
	always #4 tb_c = ~tb_c;
	always #8 tb_d = ~tb_d;
	always #16 tb_e = ~tb_e;
	always #32 tb_f = ~tb_f;
	
endmodule

