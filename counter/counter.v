module counter(
  input        clock,
  input        reset,
  input        io_clk,
  input        io_reset,
  input  [3:0] io_in,
  output [3:0] io_out
);
  wire [3:0] _io_out_T_1 = io_in + 4'h1; // @[counter.scala 19:28]
  wire [3:0] _GEN_0 = io_reset ? 4'h0 : _io_out_T_1; // @[counter.scala 16:30 counter.scala 17:19 counter.scala 19:19]
  assign io_out = io_clk ? _GEN_0 : io_in; // @[counter.scala 15:23 counter.scala 22:14]
endmodule
