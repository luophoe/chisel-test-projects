module FirFilter(
  input         clock,
  input         reset,
  input  [7:0]  io_in,
  output [10:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] zs_0; // @[cmd4.sc 7:15]
  reg [7:0] zs_1; // @[cmd4.sc 7:15]
  reg [7:0] zs_2; // @[cmd4.sc 7:15]
  wire [8:0] products_0 = zs_0 * 1'h1; // @[cmd4.sc 14:61]
  wire [8:0] products_1 = zs_1 * 1'h1; // @[cmd4.sc 14:61]
  wire [8:0] products_2 = zs_2 * 1'h1; // @[cmd4.sc 14:61]
  wire [9:0] _T_3 = products_0 + products_1; // @[cmd4.sc 17:31]
  wire [9:0] _GEN_0 = {{1'd0}, products_2}; // @[cmd4.sc 17:31]
  assign io_out = _T_3 + _GEN_0; // @[cmd4.sc 17:31]
  always @(posedge clock) begin
    zs_0 <= io_in; // @[cmd4.sc 8:9]
    zs_1 <= zs_0; // @[cmd4.sc 10:11]
    zs_2 <= zs_1; // @[cmd4.sc 10:11]
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
  zs_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  zs_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  zs_2 = _RAND_2[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
