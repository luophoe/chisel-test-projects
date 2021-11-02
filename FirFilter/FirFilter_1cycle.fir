circuit FirFilter :
  module FirFilter :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<8>, out : UInt}

    reg zs : UInt<8>[2], clock with :
      reset => (UInt<1>("h0"), zs) @[cmd5.sc 7:15]
    zs[0] <= io.in @[cmd5.sc 8:9]
    zs[1] <= zs[0] @[cmd5.sc 10:11]
    node _T = mul(zs[0], UInt<1>("h0")) @[cmd5.sc 14:61]
    node _T_1 = mul(zs[1], UInt<1>("h1")) @[cmd5.sc 14:61]
    wire products : UInt<9>[2] @[cmd5.sc 14:49]
    products[0] <= _T @[cmd5.sc 14:49]
    products[1] <= _T_1 @[cmd5.sc 14:49]
    node _T_2 = add(products[0], products[1]) @[cmd5.sc 17:31]
    io.out <= _T_2 @[cmd5.sc 17:10]

