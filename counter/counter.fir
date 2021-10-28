;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit counter : 
  module counter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip clk : UInt<1>, flip reset : UInt<1>, flip in : UInt<4>, out : UInt<4>}
    
    node _T = eq(io.clk, UInt<1>("h01")) @[counter.scala 15:15]
    when _T : @[counter.scala 15:23]
      node _T_1 = eq(io.reset, UInt<1>("h01")) @[counter.scala 16:22]
      when _T_1 : @[counter.scala 16:30]
        io.out <= UInt<1>("h00") @[counter.scala 17:19]
        skip @[counter.scala 16:30]
      else : @[counter.scala 18:19]
        node _io_out_T = add(io.in, UInt<1>("h01")) @[counter.scala 19:28]
        node _io_out_T_1 = tail(_io_out_T, 1) @[counter.scala 19:28]
        io.out <= _io_out_T_1 @[counter.scala 19:19]
        skip @[counter.scala 18:19]
      skip @[counter.scala 15:23]
    else : @[counter.scala 21:14]
      io.out <= io.in @[counter.scala 22:14]
      skip @[counter.scala 21:14]
    
