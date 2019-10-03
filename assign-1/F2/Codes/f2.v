// Verilog code for F2
module f2 (a, b, c, d, e, f, out);

input a, b, c, d, e, f;
output out;
assign out = ((a & b & c) | (d & e)) & f;

endmodule
