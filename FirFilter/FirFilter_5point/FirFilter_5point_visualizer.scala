// 5-point FIR filter with a triangle impulse response
visualize(() => new FirFilter(8, Seq(1.U, 2.U, 3.U, 2.U, 1.U)))
