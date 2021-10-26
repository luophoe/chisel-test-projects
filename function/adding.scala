def adder (x:UInt, y:UInt) = {
    x+y
}

class adding extends Module{
  val io = IO(new Bundle {
    val a = Input(UInt(1.W))
    val b = Input(UInt(1.W))
    val c = Input(UInt(1.W))
    val d = Input(UInt(1.W))
    val out1 = Output(UInt(1.W))
    val out2 = Output(UInt(1.W))
  })
    val x = adder(io.a, io.b)
    val y = adder(io.c, io.d)
    io.out1 := x
    io.out2 := y
}
