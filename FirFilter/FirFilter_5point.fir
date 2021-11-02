circuit FirFilter :
  module FirFilter :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<8>, out : UInt}

    reg zs : UInt<8>[5], clock with :
      reset => (UInt<1>("h0"), zs) @[cmd6.sc 7:15]
    zs[0] <= io.in @[cmd6.sc 8:9]
    zs[1] <= zs[0] @[cmd6.sc 10:11]
    zs[2] <= zs[1] @[cmd6.sc 10:11]
    zs[3] <= zs[2] @[cmd6.sc 10:11]
    zs[4] <= zs[3] @[cmd6.sc 10:11]
    node _T = mul(zs[0], UInt<1>("h1")) @[cmd6.sc 14:61]
    node _T_1 = mul(zs[1], UInt<2>("h2")) @[cmd6.sc 14:61]
    node _T_2 = mul(zs[2], UInt<2>("h3")) @[cmd6.sc 14:61]
    node _T_3 = mul(zs[3], UInt<2>("h2")) @[cmd6.sc 14:61]
    node _T_4 = mul(zs[4], UInt<1>("h1")) @[cmd6.sc 14:61]
    wire products : UInt<10>[5] @[cmd6.sc 14:49]
    products[0] <= _T @[cmd6.sc 14:49]
    products[1] <= _T_1 @[cmd6.sc 14:49]
    products[2] <= _T_2 @[cmd6.sc 14:49]
    products[3] <= _T_3 @[cmd6.sc 14:49]
    products[4] <= _T_4 @[cmd6.sc 14:49]
    node _T_5 = add(products[0], products[1]) @[cmd6.sc 17:31]
    node _T_6 = add(_T_5, products[2]) @[cmd6.sc 17:31]
    node _T_7 = add(_T_6, products[3]) @[cmd6.sc 17:31]
    node _T_8 = add(_T_7, products[4]) @[cmd6.sc 17:31]
    io.out <= _T_8 @[cmd6.sc 17:10]

