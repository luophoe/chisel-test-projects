module RisingMooreFsm(
  input   clock,
  input   reset,
  input   io_din,
  output  io_risingEdge
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] stateReg; // @[RisingMooreFsm.scala 17:27]
  wire  _T = 2'h0 == stateReg; // @[Conditional.scala 37:30]
  wire  _T_1 = 2'h1 == stateReg; // @[Conditional.scala 37:30]
  wire  _T_2 = 2'h2 == stateReg; // @[Conditional.scala 37:30]
  wire [1:0] _GEN_2 = ~io_din ? 2'h0 : stateReg; // @[RisingMooreFsm.scala 34:26 RisingMooreFsm.scala 35:26 RisingMooreFsm.scala 17:27]
  assign io_risingEdge = stateReg == 2'h1; // @[RisingMooreFsm.scala 41:31]
  always @(posedge clock) begin
    if (reset) begin // @[RisingMooreFsm.scala 17:27]
      stateReg <= 2'h0; // @[RisingMooreFsm.scala 17:27]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_din) begin // @[RisingMooreFsm.scala 22:25]
        stateReg <= 2'h1; // @[RisingMooreFsm.scala 23:26]
      end
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (io_din) begin // @[RisingMooreFsm.scala 27:25]
        stateReg <= 2'h2; // @[RisingMooreFsm.scala 28:26]
      end else begin
        stateReg <= 2'h0; // @[RisingMooreFsm.scala 30:26]
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      stateReg <= _GEN_2;
    end
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
  stateReg = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
