package test

import chisel3._
import chisel3.util._
import chisel3.experimental._
 
class Mux2 extends Module {
  val io = IO(new Bundle{
    val sel = Input(UInt(1.W))
    val in0 = Input(UInt(1.W))
    val in1 = Input(UInt(1.W))
    val out = Output(UInt(1.W))
  })
 
  io.out := (io.sel & io.in1) | (~io.sel & io.in0)
}

class Mux4_2 extends Module {
  val io = IO(new Bundle {
    val in0 = Input(UInt(1.W))
    val in1 = Input(UInt(1.W))
    val in2 = Input(UInt(1.W))
    val in3 = Input(UInt(1.W))
    val sel = Input(UInt(2.W))
    val out = Output(UInt(1.W))
  })
  val m = VecInit(Seq.fill(3)(Module(new Mux2).io))  // instantiate 3 Mux2, and the parameter is io
  m(0).sel := io.sel(0)  // the module ports are indexed by (number), and the path does not contain "io"
  m(0).in0 := io.in0
  m(0).in1 := io.in1
  m(1).sel := io.sel(0)
  m(1).in0 := io.in2
  m(1).in1 := io.in3
  m(2).sel := io.sel(1)
  m(2).in0 := m(0).out
  m(2).in1 := m(1).out
  io.out := m(2).out
}

println(getVerilog(new Mux4_2))
