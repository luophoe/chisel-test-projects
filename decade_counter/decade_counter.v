module decade_counter(
  input        clock,
  input        reset,
  input        io_clock,
  input        io_load_n,
  input        io_clear_n,
  input        io_updown,
  input  [3:0] io_load_data,
  output [3:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] out; // @[decade_counter.scala 17:20]
  wire [3:0] _out_T_1 = out + 4'h1; // @[decade_counter.scala 26:27]
  wire [3:0] _GEN_2 = _out_T_1 % 4'ha; // @[decade_counter.scala 26:32]
  wire [3:0] _out_T_2 = _GEN_2[3:0]; // @[decade_counter.scala 26:32]
  wire [3:0] _out_T_4 = out - 4'h1; // @[decade_counter.scala 31:31]
  wire [3:0] _GEN_0 = out == 4'h0 ? 4'h9 : _out_T_4; // @[decade_counter.scala 28:33 decade_counter.scala 29:24 decade_counter.scala 31:24]
  wire [3:0] _GEN_1 = io_updown ? _out_T_2 : _GEN_0; // @[decade_counter.scala 25:35 decade_counter.scala 26:20]
  assign io_out = out; // @[decade_counter.scala 36:10]
  always @(posedge clock) begin
    if (reset) begin // @[decade_counter.scala 17:20]
      out <= 4'h0; // @[decade_counter.scala 17:20]
    end else if (io_clock) begin // @[decade_counter.scala 19:25]
      if (~io_load_n) begin // @[decade_counter.scala 20:31]
        out <= io_load_data; // @[decade_counter.scala 21:16]
      end else if (~io_clear_n) begin // @[decade_counter.scala 22:38]
        out <= 4'h0; // @[decade_counter.scala 23:16]
      end else begin
        out <= _GEN_1;
      end
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
  out = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
