
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep  5 2019 18:30:36 IST (Sep  5 2019 13:00:36 UTC)

// Verification Directory fv/f3 

module f3(a, b, c, d, e, out);
  input a, b, c, d, e;
  output out;
  wire a, b, c, d, e;
  wire out;
  wire n_0, n_1;
  OAI22XL g33(.A0 (n_1), .A1 (e), .B0 (n_0), .B1 (a), .Y (out));
  AND2X1 g34(.A (d), .B (c), .Y (n_1));
  INVXL g35(.A (b), .Y (n_0));
endmodule

