// Verilog code for NOR Gate
module norGate (a, b, out);

input a, b;
output out;
assign out = ~(a|b);

endmodule
