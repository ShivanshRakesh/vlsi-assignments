// Verilog code for F3
module f3 (a, b, c, d, e, out);

input a, b, c, d, e;
output out;
assign out = ~((a | ~b) & ((c & d) | e));

endmodule
