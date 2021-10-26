circuit adding :
  module adding :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, flip c : UInt<1>, flip d : UInt<1>, out1 : UInt<1>, out2 : UInt<1>}

    node _T = add(io.a, io.b) @[cmd3.sc 2:6]
    node x = tail(_T, 1) @[cmd3.sc 2:6]
    node _T_1 = add(io.c, io.d) @[cmd3.sc 2:6]
    node y = tail(_T_1, 1) @[cmd3.sc 2:6]
    io.out1 <= x @[cmd3.sc 16:13]
    io.out2 <= y @[cmd3.sc 17:13]

