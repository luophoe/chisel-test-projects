module Mux2(
  input   io_sel,
  input   io_in0,
  input   io_in1,
  output  io_out
);
  assign io_out = io_sel & io_in1 | ~io_sel & io_in0; // @[cmd3.sc 11:31]
endmodule
module Mux4_2(
  input        clock,
  input        reset,
  input        io_in0,
  input        io_in1,
  input        io_in2,
  input        io_in3,
  input  [1:0] io_sel,
  output       io_out
);
  wire  Mux2_io_sel; // @[cmd3.sc 23:37]
  wire  Mux2_io_in0; // @[cmd3.sc 23:37]
  wire  Mux2_io_in1; // @[cmd3.sc 23:37]
  wire  Mux2_io_out; // @[cmd3.sc 23:37]
  wire  Mux2_1_io_sel; // @[cmd3.sc 23:37]
  wire  Mux2_1_io_in0; // @[cmd3.sc 23:37]
  wire  Mux2_1_io_in1; // @[cmd3.sc 23:37]
  wire  Mux2_1_io_out; // @[cmd3.sc 23:37]
  wire  Mux2_2_io_sel; // @[cmd3.sc 23:37]
  wire  Mux2_2_io_in0; // @[cmd3.sc 23:37]
  wire  Mux2_2_io_in1; // @[cmd3.sc 23:37]
  wire  Mux2_2_io_out; // @[cmd3.sc 23:37]
  Mux2 Mux2 ( // @[cmd3.sc 23:37]
    .io_sel(Mux2_io_sel),
    .io_in0(Mux2_io_in0),
    .io_in1(Mux2_io_in1),
    .io_out(Mux2_io_out)
  );
  Mux2 Mux2_1 ( // @[cmd3.sc 23:37]
    .io_sel(Mux2_1_io_sel),
    .io_in0(Mux2_1_io_in0),
    .io_in1(Mux2_1_io_in1),
    .io_out(Mux2_1_io_out)
  );
  Mux2 Mux2_2 ( // @[cmd3.sc 23:37]
    .io_sel(Mux2_2_io_sel),
    .io_in0(Mux2_2_io_in0),
    .io_in1(Mux2_2_io_in1),
    .io_out(Mux2_2_io_out)
  );
  assign io_out = Mux2_2_io_out; // @[cmd3.sc 23:18 cmd3.sc 23:18]
  assign Mux2_io_sel = io_sel[0]; // @[cmd3.sc 24:21]
  assign Mux2_io_in0 = io_in0; // @[cmd3.sc 23:18 cmd3.sc 25:12]
  assign Mux2_io_in1 = io_in1; // @[cmd3.sc 23:18 cmd3.sc 26:12]
  assign Mux2_1_io_sel = io_sel[0]; // @[cmd3.sc 27:21]
  assign Mux2_1_io_in0 = io_in2; // @[cmd3.sc 23:18 cmd3.sc 28:12]
  assign Mux2_1_io_in1 = io_in3; // @[cmd3.sc 23:18 cmd3.sc 29:12]
  assign Mux2_2_io_sel = io_sel[1]; // @[cmd3.sc 30:21]
  assign Mux2_2_io_in0 = Mux2_io_out; // @[cmd3.sc 23:18 cmd3.sc 23:18]
  assign Mux2_2_io_in1 = Mux2_1_io_out; // @[cmd3.sc 23:18 cmd3.sc 23:18]
endmodule
