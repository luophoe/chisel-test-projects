;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit ManyDynamicElementVecFir : 
  module ManyDynamicElementVecFir : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<8>, flip consts : UInt<8>[2], out : UInt<8>}
    
    wire regs : UInt<8>[2] @[ManyDynamicElementVecFir.scala 15:21]
    regs[0] <= UInt<8>("h00") @[ManyDynamicElementVecFir.scala 15:21]
    regs[1] <= UInt<8>("h00") @[ManyDynamicElementVecFir.scala 15:21]
    wire _WIRE : UInt<8>[2] @[ManyDynamicElementVecFir.scala 18:30]
    _WIRE[0] <= regs[1] @[ManyDynamicElementVecFir.scala 18:30]
    _WIRE[1] <= io.in @[ManyDynamicElementVecFir.scala 18:30]
    reg REG : UInt, clock @[ManyDynamicElementVecFir.scala 19:62]
    REG <= _WIRE[1] @[ManyDynamicElementVecFir.scala 19:62]
    wire regs_1 : UInt[2] @[ManyDynamicElementVecFir.scala 19:24]
    regs_1[0] <= _WIRE[1] @[ManyDynamicElementVecFir.scala 19:24]
    regs_1[1] <= REG @[ManyDynamicElementVecFir.scala 19:24]
    wire muls : UInt<8>[2] @[ManyDynamicElementVecFir.scala 22:21]
    muls[0] <= UInt<8>("h00") @[ManyDynamicElementVecFir.scala 22:21]
    muls[1] <= UInt<8>("h00") @[ManyDynamicElementVecFir.scala 22:21]
    node _T = mul(regs_1[0], io.consts[0]) @[ManyDynamicElementVecFir.scala 24:61]
    wire _WIRE_1 : UInt[2] @[ManyDynamicElementVecFir.scala 24:21]
    _WIRE_1[0] <= muls[1] @[ManyDynamicElementVecFir.scala 24:21]
    _WIRE_1[1] <= _T @[ManyDynamicElementVecFir.scala 24:21]
    node _T_1 = mul(regs_1[1], io.consts[1]) @[ManyDynamicElementVecFir.scala 24:61]
    wire muls_1 : UInt[2] @[ManyDynamicElementVecFir.scala 24:21]
    muls_1[0] <= _WIRE_1[1] @[ManyDynamicElementVecFir.scala 24:21]
    muls_1[1] <= _T_1 @[ManyDynamicElementVecFir.scala 24:21]
    wire scan : UInt<8>[2] @[ManyDynamicElementVecFir.scala 27:21]
    scan[0] <= UInt<8>("h00") @[ManyDynamicElementVecFir.scala 27:21]
    scan[1] <= UInt<8>("h00") @[ManyDynamicElementVecFir.scala 27:21]
    wire _WIRE_2 : UInt[2] @[ManyDynamicElementVecFir.scala 29:32]
    _WIRE_2[0] <= scan[1] @[ManyDynamicElementVecFir.scala 29:32]
    _WIRE_2[1] <= muls_1[0] @[ManyDynamicElementVecFir.scala 29:32]
    node _T_2 = add(muls_1[1], _WIRE_2[1]) @[ManyDynamicElementVecFir.scala 30:67]
    node _T_3 = tail(_T_2, 1) @[ManyDynamicElementVecFir.scala 30:67]
    wire scan_1 : UInt[2] @[ManyDynamicElementVecFir.scala 30:26]
    scan_1[0] <= _WIRE_2[1] @[ManyDynamicElementVecFir.scala 30:26]
    scan_1[1] <= _T_3 @[ManyDynamicElementVecFir.scala 30:26]
    io.out <= scan_1[1] @[ManyDynamicElementVecFir.scala 33:10]
    
