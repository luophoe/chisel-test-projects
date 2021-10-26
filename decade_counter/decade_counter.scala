class decade_counter() extends Module {
  val io = IO(new Bundle {
    val clock = Input(UInt(1.W))
    val load_n = Input(UInt(1.W))
    val clear_n = Input(UInt(1.W))
    val updown = Input(UInt(1.W))
    val load_data = Input(UInt(4.W))
    val out = Output(UInt(4.W))
  })
 
  val out = RegInit(0.U(4.W))
    
  when(io.clock === 1.U){
       when(io.load_n === 0.U){
           out := io.load_data
       }.elsewhen(io.clear_n === 0.U){
           out := 0.U
       }.otherwise{
           when(io.updown === 1.U){
               out := (out+1.U)%10.U
           }.otherwise{
               when(out === 0.U){
                   out := 9.U
               }.otherwise{
                   out := out - 1.U
               }
           }
       }
  }
  io.out := out
}

println(getVerilog(new decade_counter()))

test(new decade_counter()) { c =>
    c.io.load_n.poke(0.U)
    c.io.clear_n.poke(1.U)
    c.io.load_data(0.U)
    step(1)
    c.io.load_n.poke(1.U)
}
