circuit decade_counter :
  module decade_counter :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip clock : UInt<1>, flip load_n : UInt<1>, flip clear_n : UInt<1>, flip updown : UInt<1>, flip load_data : UInt<4>, out : UInt<4>}

    reg out : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[cmd4.sc 11:20]
    node _T = eq(io.clock, UInt<1>("h1")) @[cmd4.sc 13:17]
    when _T : @[cmd4.sc 13:25]
      node _T_1 = eq(io.load_n, UInt<1>("h0")) @[cmd4.sc 14:23]
      when _T_1 : @[cmd4.sc 14:31]
        out <= io.load_data @[cmd4.sc 15:16]
      else :
        node _T_2 = eq(io.clear_n, UInt<1>("h0")) @[cmd4.sc 16:30]
        when _T_2 : @[cmd4.sc 16:38]
          out <= UInt<1>("h0") @[cmd4.sc 17:16]
        else :
          node _T_3 = eq(io.updown, UInt<1>("h1")) @[cmd4.sc 19:27]
          when _T_3 : @[cmd4.sc 19:35]
            node _T_4 = add(out, UInt<1>("h1")) @[cmd4.sc 20:27]
            node _T_5 = tail(_T_4, 1) @[cmd4.sc 20:27]
            node _T_6 = rem(_T_5, UInt<4>("ha")) @[cmd4.sc 20:32]
            out <= _T_6 @[cmd4.sc 20:20]
          else :
            node _T_7 = eq(out, UInt<1>("h0")) @[cmd4.sc 22:25]
            when _T_7 : @[cmd4.sc 22:33]
              out <= UInt<4>("h9") @[cmd4.sc 23:24]
            else :
              node _T_8 = sub(out, UInt<1>("h1")) @[cmd4.sc 25:31]
              node _T_9 = tail(_T_8, 1) @[cmd4.sc 25:31]
              out <= _T_9 @[cmd4.sc 25:24]
    io.out <= out @[cmd4.sc 30:10]

