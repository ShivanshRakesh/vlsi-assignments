module notGate_test();
wire tb_out;
reg tb_a;

notGate gate(.a(tb_a), .out(tb_out));

initial
begin
	$monitor(tb_a, tb_out);
	tb_a = 1'b0
	#5
	tb_a = 1'b1;
	#5
	tb_a = 1'b0;
end
endmodule

