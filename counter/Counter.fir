circuit counter :
  module counter :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip clk : UInt<1>, flip reset : UInt<1>, flip in : UInt<4>, out : UInt<4>}

    node _T = eq(io.clk, UInt<1>("h1")) @[cmd5.sc 9:15]
    when _T : @[cmd5.sc 9:23]
      node _T_1 = eq(io.reset, UInt<1>("h1")) @[cmd5.sc 10:22]
      when _T_1 : @[cmd5.sc 10:30]
        io.out <= UInt<1>("h0") @[cmd5.sc 11:19]
      else :
        node _T_2 = add(io.in, UInt<1>("h1")) @[cmd5.sc 13:28]
        node _T_3 = tail(_T_2, 1) @[cmd5.sc 13:28]
        io.out <= _T_3 @[cmd5.sc 13:19]
    else :
      io.out <= io.in @[cmd5.sc 16:14]

