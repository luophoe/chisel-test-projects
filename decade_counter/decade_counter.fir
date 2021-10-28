;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit decade_counter : 
  module decade_counter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip clock : UInt<1>, flip load_n : UInt<1>, flip clear_n : UInt<1>, flip updown : UInt<1>, flip load_data : UInt<4>, out : UInt<4>}
    
    reg out : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[decade_counter.scala 17:20]
    node _T = eq(io.clock, UInt<1>("h01")) @[decade_counter.scala 19:17]
    when _T : @[decade_counter.scala 19:25]
      node _T_1 = eq(io.load_n, UInt<1>("h00")) @[decade_counter.scala 20:23]
      when _T_1 : @[decade_counter.scala 20:31]
        out <= io.load_data @[decade_counter.scala 21:16]
        skip @[decade_counter.scala 20:31]
      else : @[decade_counter.scala 22:38]
        node _T_2 = eq(io.clear_n, UInt<1>("h00")) @[decade_counter.scala 22:30]
        when _T_2 : @[decade_counter.scala 22:38]
          out <= UInt<1>("h00") @[decade_counter.scala 23:16]
          skip @[decade_counter.scala 22:38]
        else : @[decade_counter.scala 24:19]
          node _T_3 = eq(io.updown, UInt<1>("h01")) @[decade_counter.scala 25:27]
          when _T_3 : @[decade_counter.scala 25:35]
            node _out_T = add(out, UInt<1>("h01")) @[decade_counter.scala 26:27]
            node _out_T_1 = tail(_out_T, 1) @[decade_counter.scala 26:27]
            node _out_T_2 = rem(_out_T_1, UInt<4>("h0a")) @[decade_counter.scala 26:32]
            out <= _out_T_2 @[decade_counter.scala 26:20]
            skip @[decade_counter.scala 25:35]
          else : @[decade_counter.scala 27:23]
            node _T_4 = eq(out, UInt<1>("h00")) @[decade_counter.scala 28:25]
            when _T_4 : @[decade_counter.scala 28:33]
              out <= UInt<4>("h09") @[decade_counter.scala 29:24]
              skip @[decade_counter.scala 28:33]
            else : @[decade_counter.scala 30:27]
              node _out_T_3 = sub(out, UInt<1>("h01")) @[decade_counter.scala 31:31]
              node _out_T_4 = tail(_out_T_3, 1) @[decade_counter.scala 31:31]
              out <= _out_T_4 @[decade_counter.scala 31:24]
              skip @[decade_counter.scala 30:27]
            skip @[decade_counter.scala 27:23]
          skip @[decade_counter.scala 24:19]
      skip @[decade_counter.scala 19:25]
    io.out <= out @[decade_counter.scala 36:10]
    
