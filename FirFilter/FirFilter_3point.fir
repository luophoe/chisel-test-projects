circuit FirFilter :
  module FirFilter :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<8>, out : UInt}

    reg zs : UInt<8>[3], clock with :
      reset => (UInt<1>("h0"), zs) @[cmd4.sc 7:15]
    zs[0] <= io.in @[cmd4.sc 8:9]
    zs[1] <= zs[0] @[cmd4.sc 10:11]
    zs[2] <= zs[1] @[cmd4.sc 10:11]
    node _T = mul(zs[0], UInt<1>("h1")) @[cmd4.sc 14:61]
    node _T_1 = mul(zs[1], UInt<1>("h1")) @[cmd4.sc 14:61]
    node _T_2 = mul(zs[2], UInt<1>("h1")) @[cmd4.sc 14:61]
    wire products : UInt<9>[3] @[cmd4.sc 14:49]
    products[0] <= _T @[cmd4.sc 14:49]
    products[1] <= _T_1 @[cmd4.sc 14:49]
    products[2] <= _T_2 @[cmd4.sc 14:49]
    node _T_3 = add(products[0], products[1]) @[cmd4.sc 17:31]
    node _T_4 = add(_T_3, products[2]) @[cmd4.sc 17:31]
    io.out <= _T_4 @[cmd4.sc 17:10]

