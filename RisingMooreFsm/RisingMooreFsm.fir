;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit RisingMooreFsm : 
  module RisingMooreFsm : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip din : UInt<1>, risingEdge : UInt<1>}
    
    reg stateReg : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[RisingMooreFsm.scala 17:27]
    node _T = eq(UInt<2>("h00"), stateReg) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      when io.din : @[RisingMooreFsm.scala 22:25]
        stateReg <= UInt<2>("h01") @[RisingMooreFsm.scala 23:26]
        skip @[RisingMooreFsm.scala 22:25]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<2>("h01"), stateReg) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        when io.din : @[RisingMooreFsm.scala 27:25]
          stateReg <= UInt<2>("h02") @[RisingMooreFsm.scala 28:26]
          skip @[RisingMooreFsm.scala 27:25]
        else : @[RisingMooreFsm.scala 29:24]
          stateReg <= UInt<2>("h00") @[RisingMooreFsm.scala 30:26]
          skip @[RisingMooreFsm.scala 29:24]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), stateReg) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          node _T_3 = eq(io.din, UInt<1>("h00")) @[RisingMooreFsm.scala 34:18]
          when _T_3 : @[RisingMooreFsm.scala 34:26]
            stateReg <= UInt<2>("h00") @[RisingMooreFsm.scala 35:26]
            skip @[RisingMooreFsm.scala 34:26]
          skip @[Conditional.scala 39:67]
    node _io_risingEdge_T = eq(stateReg, UInt<2>("h01")) @[RisingMooreFsm.scala 41:31]
    io.risingEdge <= _io_risingEdge_T @[RisingMooreFsm.scala 41:19]
    
