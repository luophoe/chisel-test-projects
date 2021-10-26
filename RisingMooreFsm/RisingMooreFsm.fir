circuit RisingMooreFsm :
  module RisingMooreFsm :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip din : UInt<1>, risingEdge : UInt<1>}

    reg stateReg : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[cmd4.sc 11:27]
    node _T = eq(UInt<2>("h0"), stateReg) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      when io.din : @[cmd4.sc 16:25]
        stateReg <= UInt<2>("h1") @[cmd4.sc 17:26]
    else :
      node _T_1 = eq(UInt<2>("h1"), stateReg) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        when io.din : @[cmd4.sc 21:25]
          stateReg <= UInt<2>("h2") @[cmd4.sc 22:26]
        else :
          stateReg <= UInt<2>("h0") @[cmd4.sc 24:26]
      else :
        node _T_2 = eq(UInt<2>("h2"), stateReg) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _T_3 = eq(io.din, UInt<1>("h0")) @[cmd4.sc 28:18]
          when _T_3 : @[cmd4.sc 28:26]
            stateReg <= UInt<2>("h0") @[cmd4.sc 29:26]
    node _T_4 = eq(stateReg, UInt<2>("h1")) @[cmd4.sc 35:31]
    io.risingEdge <= _T_4 @[cmd4.sc 35:19]

