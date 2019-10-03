// Verilog code for NAND Gate
module nandGate (a, b, out);

input a, b;
output out;
assign out = ~(a & b);

endmodule
