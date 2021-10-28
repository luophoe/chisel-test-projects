module ManyDynamicElementVecFir(
  input        clock,
  input        reset,
  input  [7:0] io_in,
  input  [7:0] io_consts_0,
  input  [7:0] io_consts_1,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] REG; // @[ManyDynamicElementVecFir.scala 19:62]
  wire [15:0] muls_1_0 = io_in * io_consts_0; // @[ManyDynamicElementVecFir.scala 24:61]
  wire [15:0] muls_1_1 = REG * io_consts_1; // @[ManyDynamicElementVecFir.scala 24:61]
  wire [15:0] scan_1_1 = muls_1_1 + muls_1_0; // @[ManyDynamicElementVecFir.scala 30:67]
  assign io_out = scan_1_1[7:0]; // @[ManyDynamicElementVecFir.scala 33:10]
  always @(posedge clock) begin
    REG <= io_in; // @[ManyDynamicElementVecFir.scala 18:30 ManyDynamicElementVecFir.scala 18:30]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  REG = _RAND_0[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
