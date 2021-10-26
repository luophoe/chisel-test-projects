module ManyDynamicElementVecFir(
  input        clock,
  input        reset,
  input  [7:0] io_in,
  input  [7:0] io_consts_0,
  input  [7:0] io_consts_1,
  input  [7:0] io_consts_2,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] REG; // @[cmd5.sc 13:62]
  reg [7:0] REG_1; // @[cmd5.sc 13:62]
  wire [15:0] muls_0 = io_in * io_consts_0; // @[cmd5.sc 18:61]
  wire [15:0] muls_1 = REG * io_consts_1; // @[cmd5.sc 18:61]
  wire [15:0] muls_2 = REG_1 * io_consts_2; // @[cmd5.sc 18:61]
  wire [15:0] scan_1 = muls_1 + muls_0; // @[cmd5.sc 24:67]
  wire [15:0] scan_2 = muls_2 + scan_1; // @[cmd5.sc 24:67]
  assign io_out = scan_2[7:0]; // @[cmd5.sc 27:10]
  always @(posedge clock) begin
    REG <= io_in; // @[cmd5.sc 12:30 cmd5.sc 12:30]
    REG_1 <= REG; // @[cmd5.sc 13:24 cmd5.sc 13:24]
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
  _RAND_1 = {1{`RANDOM}};
  REG_1 = _RAND_1[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
