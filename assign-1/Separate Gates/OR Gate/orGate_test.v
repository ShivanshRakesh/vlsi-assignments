module orGate_test();
wire tb_out;
reg tb_a, tb_b;

orGate gate(.a(tb_a), .b(tb_b), .out(tb_out));

initial
begin
	$monitor(tb_a, tb_b, tb_out);
	tb_a = 1'b0;
	tb_b = 1'b0;
	#5
	tb_a = 1'b0;
	tb_b = 1'b1;
	#5
	tb_a = 1'b1;
	tb_b = 1'b0;
	#5
	tb_a = 1'b1;
	tb_b = 1'b1;
	#5
	tb_a = 1'b0;
	tb_b = 1'b0;
end
endmodule

