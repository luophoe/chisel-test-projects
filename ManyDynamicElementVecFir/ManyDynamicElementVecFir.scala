package test

import chisel3._
import chisel3.util._
import chisel3.experimental._

class ManyDynamicElementVecFir(length: Int) extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(8.W))
    val consts = Input(Vec(length, UInt(8.W)))
    val out = Output(UInt(8.W))
  })

  // Reference solution
  var regs = VecInit(Seq.fill(length)(0.U(8.W)))

  for(i <- 0 until length) {
    if(i == 0) regs = VecInit(regs.takeRight(length - 1) :+ io.in)
    else regs = VecInit(regs.takeRight(length - 1) :+ RegNext(regs(length - 1)))
  }

  var muls = VecInit(Seq.fill(length)(0.U(8.W)))
  for(i <- 0 until length) {
      muls = VecInit(muls.takeRight(length - 1) :+ (regs(i) * io.consts(i)))
  }

  var scan = VecInit(Seq.fill(length)(0.U(8.W)))
  for(i <- 0 until length) {
      if(i == 0) scan = VecInit(scan.takeRight(length - 1) :+ muls(i))
      else scan = VecInit(scan.takeRight(length - 1) :+  (muls(i) + scan(length - 1)))
  }

  io.out := scan(length - 1)
}
