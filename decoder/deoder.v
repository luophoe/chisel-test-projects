module deoder(
  input        clock,
  input        reset,
  input  [2:0] io_in,
  output [3:0] io_out
);
  wire  _T = 3'h0 == io_in; // @[Conditional.scala 37:30]
  wire  _T_1 = 3'h1 == io_in; // @[Conditional.scala 37:30]
  wire  _T_2 = 3'h5 == io_in; // @[Conditional.scala 37:30]
  wire  _T_3 = 3'h7 == io_in; // @[Conditional.scala 37:30]
  wire  _T_4 = 3'h3 == io_in; // @[Conditional.scala 37:30]
  wire [3:0] _GEN_0 = _T_4 ? 4'hb : 4'h0; // @[Conditional.scala 39:67 cmd3.sc 12:22 cmd3.sc 6:10]
  wire [3:0] _GEN_1 = _T_3 ? 4'he : _GEN_0; // @[Conditional.scala 39:67 cmd3.sc 11:22]
  wire [3:0] _GEN_2 = _T_2 ? 4'hd : _GEN_1; // @[Conditional.scala 39:67 cmd3.sc 10:22]
  wire [3:0] _GEN_3 = _T_1 ? 4'h7 : _GEN_2; // @[Conditional.scala 39:67 cmd3.sc 9:22]
  assign io_out = _T ? 4'hf : _GEN_3; // @[Conditional.scala 40:58 cmd3.sc 8:22]
endmodule
