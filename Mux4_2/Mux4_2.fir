circuit Mux4_2 :
  module Mux2 :
    input clock : Clock
    input reset : Reset
    output io : { flip sel : UInt<1>, flip in0 : UInt<1>, flip in1 : UInt<1>, out : UInt<1>}

    node _T = and(io.sel, io.in1) @[cmd3.sc 11:21]
    node _T_1 = not(io.sel) @[cmd3.sc 11:34]
    node _T_2 = and(_T_1, io.in0) @[cmd3.sc 11:42]
    node _T_3 = or(_T, _T_2) @[cmd3.sc 11:31]
    io.out <= _T_3 @[cmd3.sc 11:10]

  module Mux2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip sel : UInt<1>, flip in0 : UInt<1>, flip in1 : UInt<1>, out : UInt<1>}

    node _T = and(io.sel, io.in1) @[cmd3.sc 11:21]
    node _T_1 = not(io.sel) @[cmd3.sc 11:34]
    node _T_2 = and(_T_1, io.in0) @[cmd3.sc 11:42]
    node _T_3 = or(_T, _T_2) @[cmd3.sc 11:31]
    io.out <= _T_3 @[cmd3.sc 11:10]

  module Mux2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip sel : UInt<1>, flip in0 : UInt<1>, flip in1 : UInt<1>, out : UInt<1>}

    node _T = and(io.sel, io.in1) @[cmd3.sc 11:21]
    node _T_1 = not(io.sel) @[cmd3.sc 11:34]
    node _T_2 = and(_T_1, io.in0) @[cmd3.sc 11:42]
    node _T_3 = or(_T, _T_2) @[cmd3.sc 11:31]
    io.out <= _T_3 @[cmd3.sc 11:10]

  module Mux4_2 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in0 : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, flip in3 : UInt<1>, flip sel : UInt<2>, out : UInt<1>}

    inst Mux2 of Mux2 @[cmd3.sc 23:37]
    Mux2.clock <= clock
    Mux2.reset <= reset
    inst Mux2_1 of Mux2_1 @[cmd3.sc 23:37]
    Mux2_1.clock <= clock
    Mux2_1.reset <= reset
    inst Mux2_2 of Mux2_2 @[cmd3.sc 23:37]
    Mux2_2.clock <= clock
    Mux2_2.reset <= reset
    wire m : { flip sel : UInt<1>, flip in0 : UInt<1>, flip in1 : UInt<1>, out : UInt<1>}[3] @[cmd3.sc 23:18]
    m[0].out <= Mux2.io.out @[cmd3.sc 23:18]
    Mux2.io.in1 <= m[0].in1 @[cmd3.sc 23:18]
    Mux2.io.in0 <= m[0].in0 @[cmd3.sc 23:18]
    Mux2.io.sel <= m[0].sel @[cmd3.sc 23:18]
    m[1].out <= Mux2_1.io.out @[cmd3.sc 23:18]
    Mux2_1.io.in1 <= m[1].in1 @[cmd3.sc 23:18]
    Mux2_1.io.in0 <= m[1].in0 @[cmd3.sc 23:18]
    Mux2_1.io.sel <= m[1].sel @[cmd3.sc 23:18]
    m[2].out <= Mux2_2.io.out @[cmd3.sc 23:18]
    Mux2_2.io.in1 <= m[2].in1 @[cmd3.sc 23:18]
    Mux2_2.io.in0 <= m[2].in0 @[cmd3.sc 23:18]
    Mux2_2.io.sel <= m[2].sel @[cmd3.sc 23:18]
    node _T = bits(io.sel, 0, 0) @[cmd3.sc 24:21]
    m[0].sel <= _T @[cmd3.sc 24:12]
    m[0].in0 <= io.in0 @[cmd3.sc 25:12]
    m[0].in1 <= io.in1 @[cmd3.sc 26:12]
    node _T_1 = bits(io.sel, 0, 0) @[cmd3.sc 27:21]
    m[1].sel <= _T_1 @[cmd3.sc 27:12]
    m[1].in0 <= io.in2 @[cmd3.sc 28:12]
    m[1].in1 <= io.in3 @[cmd3.sc 29:12]
    node _T_2 = bits(io.sel, 1, 1) @[cmd3.sc 30:21]
    m[2].sel <= _T_2 @[cmd3.sc 30:12]
    m[2].in0 <= m[0].out @[cmd3.sc 31:12]
    m[2].in1 <= m[1].out @[cmd3.sc 32:12]
    io.out <= m[2].out @[cmd3.sc 33:10]

