
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 15 2019 08:38:47 IST (Sep 15 2019 03:08:47 UTC)

// Verification Directory fv/mux8x1 

module mux2x1(a, b, x0, out);
  input a, b, x0;
  output out;
  wire a, b, x0;
  wire out;
  MX2X1 g24(.A (a), .B (b), .S0 (x0), .Y (out));
endmodule

module mux2x1_1(a, b, x0, out);
  input a, b, x0;
  output out;
  wire a, b, x0;
  wire out;
  MX2X1 g24(.A (a), .B (b), .S0 (x0), .Y (out));
endmodule

module mux2x1_2(a, b, x0, out);
  input a, b, x0;
  output out;
  wire a, b, x0;
  wire out;
  MX2X1 g24(.A (a), .B (b), .S0 (x0), .Y (out));
endmodule

module mux4x1(a, b, c, d, x0, x1, out);
  input a, b, c, d, x0, x1;
  output out;
  wire a, b, c, d, x0, x1;
  wire out;
  wire out1, out2;
  mux2x1 Mux2x1_1(.a (a), .b (b), .x0 (x0), .out (out1));
  mux2x1_1 Mux2x1_2(.a (c), .b (d), .x0 (x0), .out (out2));
  mux2x1_2 Mux2x1_3(.a (out1), .b (out2), .x0 (x1), .out (out));
endmodule

module mux2x1_3(a, b, x0, out);
  input a, b, x0;
  output out;
  wire a, b, x0;
  wire out;
  MX2X1 g24(.A (a), .B (b), .S0 (x0), .Y (out));
endmodule

module mux2x1_4(a, b, x0, out);
  input a, b, x0;
  output out;
  wire a, b, x0;
  wire out;
  MX2X1 g24(.A (a), .B (b), .S0 (x0), .Y (out));
endmodule

module mux2x1_5(a, b, x0, out);
  input a, b, x0;
  output out;
  wire a, b, x0;
  wire out;
  MX2X1 g24(.A (a), .B (b), .S0 (x0), .Y (out));
endmodule

module mux4x1_1(a, b, c, d, x0, x1, out);
  input a, b, c, d, x0, x1;
  output out;
  wire a, b, c, d, x0, x1;
  wire out;
  wire out1, out2;
  mux2x1_3 Mux2x1_1(.a (a), .b (b), .x0 (x0), .out (out1));
  mux2x1_4 Mux2x1_2(.a (c), .b (d), .x0 (x0), .out (out2));
  mux2x1_5 Mux2x1_3(.a (out1), .b (out2), .x0 (x1), .out (out));
endmodule

module mux2x1_6(a, b, x0, out);
  input a, b, x0;
  output out;
  wire a, b, x0;
  wire out;
  MX2X1 g24(.A (a), .B (b), .S0 (x0), .Y (out));
endmodule

module mux4x1_2(a, b, c, d, x0, x1, out);
  input a, b, c, d, x0, x1;
  output out;
  wire a, b, c, d, x0, x1;
  wire out;
  mux2x1_6 Mux2x1_1(.a (a), .b (b), .x0 (x0), .out (out));
endmodule

module mux8x1(a, b, c, d, e, f, g, h, x0, x1, x2, out);
  input a, b, c, d, e, f, g, h, x0, x1, x2;
  output out;
  wire a, b, c, d, e, f, g, h, x0, x1, x2;
  wire out;
  wire UNCONNECTED_HIER_Z, UNCONNECTED_HIER_Z0, UNCONNECTED_HIER_Z1,
       out1, out2;
  mux4x1 Mux4x1_1(.a (a), .b (b), .c (c), .d (d), .x0 (x0), .x1 (x1),
       .out (out1));
  mux4x1_1 Mux4x1_2(.a (e), .b (f), .c (g), .d (h), .x0 (x0), .x1 (x1),
       .out (out2));
  mux4x1_2 Mux4x1_3(.a (out1), .b (out2), .c (UNCONNECTED_HIER_Z), .d
       (UNCONNECTED_HIER_Z0), .x0 (x2), .x1 (UNCONNECTED_HIER_Z1), .out
       (out));
endmodule

