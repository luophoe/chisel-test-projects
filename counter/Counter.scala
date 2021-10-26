circuit Counter :
  module Counter :
    input clock : Clock
    input reset : UInt<1>
    output io : { out : UInt<4>}

    reg r1 : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[cmd5.sc 6:19]
    node _T = add(r1, UInt<1>("h1")) @[cmd5.sc 7:12]
    node _T_1 = tail(_T, 1) @[cmd5.sc 7:12]
    r1 <= _T_1 @[cmd5.sc 7:6]
    io.out <= r1 @[cmd5.sc 9:10]

