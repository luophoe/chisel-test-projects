package test

import chisel3._
import chisel3.util._
import chisel3.experimental._

class counter() extends Module {
  val io = IO(new Bundle {
    val clk = Input(UInt(1.W))
    val reset = Input(UInt(1.W))
    val in = Input(UInt(4.W))
    val out = Output(UInt(4.W))
  })
        
  when(io.clk === 1.U){
       when(io.reset === 1.U){
           io.out := 0.U
       }.otherwise{
           io.out := io.in + 1.U
       }
  }.otherwise{
      io.out := io.in
  }
}
