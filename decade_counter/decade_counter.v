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
  reg [3:0] out; // @[cmd4.sc 11:20]
  wire [3:0] _T_5 = out + 4'h1; // @[cmd4.sc 20:27]
  wire [3:0] _GEN_2 = _T_5 % 4'ha; // @[cmd4.sc 20:32]
  wire [3:0] _T_6 = _GEN_2[3:0]; // @[cmd4.sc 20:32]
  wire [3:0] _T_9 = out - 4'h1; // @[cmd4.sc 25:31]
  wire [3:0] _GEN_0 = out == 4'h0 ? 4'h9 : _T_9; // @[cmd4.sc 22:33 cmd4.sc 23:24 cmd4.sc 25:24]
  wire [3:0] _GEN_1 = io_updown ? _T_6 : _GEN_0; // @[cmd4.sc 19:35 cmd4.sc 20:20]
  assign io_out = out; // @[cmd4.sc 30:10]
  always @(posedge clock) begin
    if (reset) begin // @[cmd4.sc 11:20]
      out <= 4'h0; // @[cmd4.sc 11:20]
    end else if (io_clock) begin // @[cmd4.sc 13:25]
      if (~io_load_n) begin // @[cmd4.sc 14:31]
        out <= io_load_data; // @[cmd4.sc 15:16]
      end else if (~io_clear_n) begin // @[cmd4.sc 16:38]
        out <= 4'h0; // @[cmd4.sc 17:16]
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
