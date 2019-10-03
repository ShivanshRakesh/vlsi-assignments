// Verilog code for AND Gate
module andGate (a, b, out);

input a, b;
output and_out, nand_out, or_out, nor_out, xor_out, xnor_out, not_out;
assign and_out = a & b;
assign nand_out = ~and_out;
assign or_out = a | b;
assign nor_out = ~or_out;
assign xor_out = a ^ b;
assign xnor_out = ~xor_out;
assign not_out = ~a;

endmodule
