module logicGates_test();
wire tb_and_out, tb_nand_out, tb_or_out, tb_nor_out, tb_xor_out, tb_xnor_out, tb_not_out;
reg tb_a, tb_b;

logicGates gate(.a(tb_a), .b(tb_b), .and_out(tb_and_out), .nand_out(tb_nand_out), .or_out(tb_or_out), .nor_out(tb_nor_out), .xor_out(tb_xor_out), .xnor_out(tb_xnor_out), .not_out(tb_not_out));

initial
begin
	$monitor(tb_a, tb_b, tb_and_out, tb_nand_out, tb_or_out, tb_nor_out, tb_xor_out, tb_xnor_out, tb_not_out);
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

