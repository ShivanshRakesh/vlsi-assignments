
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Oct 22 2019 22:47:25 IST (Oct 22 2019 17:17:25 UTC)

// Verification Directory fv/seradd 

module seradd(a, b, c_in, c_out, s_out, clk, rst);
  input a, b, c_in, clk, rst;
  output c_out, s_out;
  wire a, b, c_in, clk, rst;
  wire c_out, s_out;
  wire UNCONNECTED, c, firstitr, n_0, n_1, n_2, n_3;
  SDFFQX1 c_reg(.CK (clk), .D (n_2), .SI (c), .SE (rst), .Q (c));
  DFFRHQX1 s_out_reg(.RN (n_0), .CK (clk), .D (n_3), .Q (s_out));
  ADDFXL g181(.A (a), .B (b), .CI (n_1), .CO (n_2), .S (n_3));
  MX2X1 g182(.A (c), .B (c_in), .S0 (firstitr), .Y (n_1));
  DFFSHQX1 firstitr_reg(.SN (n_0), .CK (clk), .D (1'b0), .Q (firstitr));
  TLATXL c_out_reg(.G (rst), .D (c), .Q (c_out), .QN (UNCONNECTED));
  INVXL g185(.A (rst), .Y (n_0));
endmodule

