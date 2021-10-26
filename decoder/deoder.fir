circuit deoder :
  module deoder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in : UInt<3>, out : UInt<4>}

    io.out <= UInt<1>("h0") @[cmd3.sc 6:10]
    node _T = eq(UInt<1>("h0"), io.in) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      io.out <= UInt<4>("hf") @[cmd3.sc 8:22]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.in) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        io.out <= UInt<3>("h7") @[cmd3.sc 9:22]
      else :
        node _T_2 = eq(UInt<3>("h5"), io.in) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          io.out <= UInt<4>("hd") @[cmd3.sc 10:22]
        else :
          node _T_3 = eq(UInt<3>("h7"), io.in) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            io.out <= UInt<4>("he") @[cmd3.sc 11:22]
          else :
            node _T_4 = eq(UInt<2>("h3"), io.in) @[Conditional.scala 37:30]
            when _T_4 : @[Conditional.scala 39:67]
              io.out <= UInt<4>("hb") @[cmd3.sc 12:22]

