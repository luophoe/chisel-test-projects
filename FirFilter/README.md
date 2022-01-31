# FirFilter
- shows the special property of Chisel programming that hardware generators can be coded in inherently and be used to generate different circuits. Instead of using the Java and Python scripts as hardware generators for VHDL and Verilog, this is more convenient and advance.
  
- Fir filter that takes in parameter to parameterize the length of the filter and the coefficient (b0, b1, b2, ...) in a sequence. According to the input parameter, the width of the input, the number of register created with the use of Vector, and the length of the for loop is changed. The result is that with a change to the coefficient, the generated circuit and the Verilog code will be different.
![image](https://user-images.githubusercontent.com/60077499/138822105-a98007d0-ac9f-446a-b513-5b4445ea10a0.png)  
![image](https://user-images.githubusercontent.com/60077499/138822154-3673baf9-7921-4bb7-a9ef-afd5ccafc8be.png)  
  
- by making use of generators not instances, the example shows the special property of Chisel and how it is considered more efficient in these cases
  
- to demonstrate the effct, a movingSum3Filter, a delayFilter, and a triangleFilter will be generated
![delayFilter_visualizer_output](https://user-images.githubusercontent.com/60077499/139802503-39cdadd9-aa37-4a4d-b709-ef8bdd8803c3.jpg)
![movingSum3Filter_visualizer_output](https://user-images.githubusercontent.com/60077499/139802517-40980a8f-707a-4b9e-9458-c8d6850f811b.jpg)
![triangleFilter_visualizer_output](https://user-images.githubusercontent.com/60077499/139802533-9bbad323-fa15-4be7-850b-1a884c20257e.jpg)
  
- The name.scala file is the written Chisel file for testing and generation, the name.v, name.anno.json, and name.fir files are generated Verilog and transfer files, and the name_visualizer file is the files for generating visual graphs to represent the circuit for purpose of comparison between different types of Fir Filter.
  
- model shows the characteristics of a hardware generator. Hardware generator refers to the way of generating circuits of different hardware modules that pass in parameters and generate according to parameters. When writing VHDL or Verilog and you need to generate completely different hardware modules based upon the same sturcture, it needs to be implemented by a higher-level script language. Usually, the general hardware generator is implemented using Python or Java. However, using chisel, the parameters that are passed in have a high degree of freedom, and the circuits generated according to the incoming parameters are very different. Compared with the ordinary instantiation of a module, this method reflects the difference between writing Chisel and writing Verilog and the characteristics of chisel.  
At the same time, the parameters passed in have the characteristics of software parameters. It is not similar to ordinary input in chisel, nor is it constrained by bit width, array length, etc. like input in Verilog. For example, in this module, the parameters passed in as the coefficients of convolution sum can be arrays of any length, so as to generate a completely different FIR filter module.
  
## Reference
https://hub.gke2.mybinder.org/user/freechipsproject-chisel-bootcamp-evbrz9l2/lab/tree/0_demo.ipynb
