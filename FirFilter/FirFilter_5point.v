module FirFilter(
  input         clock,
  input         reset,
  input  [7:0]  io_in,
  output [13:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] zs_0; // @[cmd6.sc 7:15]
  reg [7:0] zs_1; // @[cmd6.sc 7:15]
  reg [7:0] zs_2; // @[cmd6.sc 7:15]
  reg [7:0] zs_3; // @[cmd6.sc 7:15]
  reg [7:0] zs_4; // @[cmd6.sc 7:15]
  wire [8:0] _T = zs_0 * 1'h1; // @[cmd6.sc 14:61]
  wire [9:0] products_1 = zs_1 * 2'h2; // @[cmd6.sc 14:61]
  wire [9:0] products_2 = zs_2 * 2'h3; // @[cmd6.sc 14:61]
  wire [9:0] products_3 = zs_3 * 2'h2; // @[cmd6.sc 14:61]
  wire [8:0] _T_4 = zs_4 * 1'h1; // @[cmd6.sc 14:61]
  wire [9:0] products_0 = {{1'd0}, _T}; // @[cmd6.sc 14:49 cmd6.sc 14:49]
  wire [10:0] _T_5 = products_0 + products_1; // @[cmd6.sc 17:31]
  wire [10:0] _GEN_0 = {{1'd0}, products_2}; // @[cmd6.sc 17:31]
  wire [11:0] _T_6 = _T_5 + _GEN_0; // @[cmd6.sc 17:31]
  wire [11:0] _GEN_1 = {{2'd0}, products_3}; // @[cmd6.sc 17:31]
  wire [12:0] _T_7 = _T_6 + _GEN_1; // @[cmd6.sc 17:31]
  wire [9:0] products_4 = {{1'd0}, _T_4}; // @[cmd6.sc 14:49 cmd6.sc 14:49]
  wire [12:0] _GEN_2 = {{3'd0}, products_4}; // @[cmd6.sc 17:31]
  assign io_out = _T_7 + _GEN_2; // @[cmd6.sc 17:31]
  always @(posedge clock) begin
    zs_0 <= io_in; // @[cmd6.sc 8:9]
    zs_1 <= zs_0; // @[cmd6.sc 10:11]
    zs_2 <= zs_1; // @[cmd6.sc 10:11]
    zs_3 <= zs_2; // @[cmd6.sc 10:11]
    zs_4 <= zs_3; // @[cmd6.sc 10:11]
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
  _RAND_3 = {1{`RANDOM}};
  zs_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  zs_4 = _RAND_4[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
