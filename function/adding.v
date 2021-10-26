module adding(
  input   clock,
  input   reset,
  input   io_a,
  input   io_b,
  input   io_c,
  input   io_d,
  output  io_out1,
  output  io_out2
);
  assign io_out1 = io_a + io_b; // @[cmd3.sc 2:6]
  assign io_out2 = io_c + io_d; // @[cmd3.sc 2:6]
endmodule
