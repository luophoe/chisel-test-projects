;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit decoder : 
  module decoder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<3>, out : UInt<4>}
    
    io.out <= UInt<1>("h00") @[decoder.scala 12:10]
    node _T = eq(UInt<1>("h00"), io.in) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      io.out <= UInt<4>("h0f") @[decoder.scala 14:22]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.in) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        io.out <= UInt<3>("h07") @[decoder.scala 15:22]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<3>("h05"), io.in) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          io.out <= UInt<4>("h0d") @[decoder.scala 16:22]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<3>("h07"), io.in) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            io.out <= UInt<4>("h0e") @[decoder.scala 17:22]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_4 = eq(UInt<2>("h03"), io.in) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              io.out <= UInt<4>("h0b") @[decoder.scala 18:22]
              skip @[Conditional.scala 39:67]
    
