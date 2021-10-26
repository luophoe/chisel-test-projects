class deoder() extends Module { 
  val io = IO(new Bundle {
    val in = Input(UInt(3.W))
    val out = Output(UInt(4.W))
  })
  io.out := 0.U
  switch(io.in){
      is(0.U){io.out := 15.U}
      is(1.U){io.out := 7.U}
      is(5.U){io.out := 13.U}
      is(7.U){io.out := 14.U}
      is(3.U){io.out := 11.U}
  }
}
