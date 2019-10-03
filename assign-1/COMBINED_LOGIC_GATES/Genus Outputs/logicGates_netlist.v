
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep  5 2019 18:04:09 IST (Sep  5 2019 12:34:09 UTC)

// Verification Directory fv/logicGates 

module logicGates(a, b, and_out, nand_out, or_out, nor_out, xor_out,
     xnor_out, not_out);
  input a, b;
  output and_out, nand_out, or_out, nor_out, xor_out, xnor_out, not_out;
  wire a, b;
  wire and_out, nand_out, or_out, nor_out, xor_out, xnor_out, not_out;
  INVXL g30(.A (xor_out), .Y (xnor_out));
  MXI2XL g33(.A (not_out), .B (a), .S0 (b), .Y (xor_out));
  INVXL g31(.A (nor_out), .Y (or_out));
  INVXL g32(.A (nand_out), .Y (and_out));
  NOR2XL g34(.A (b), .B (a), .Y (nor_out));
  NAND2XL g35(.A (b), .B (a), .Y (nand_out));
  INVXL g36(.A (a), .Y (not_out));
endmodule

