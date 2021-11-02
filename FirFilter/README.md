# FirFilter
- shows the sepcial porperty of Chisel programming that hardware generators can be coded in inherently and be used to generate different circuits. Instead of using the Java and Python scripts as hardware generators for VHDL and Verilog, this is more convenient and advance.
- Fir filter that takes in parameter to parameterize the length of the filter and the coefficient (b0, b1, b2, ...) in a sequence. According to the input parameter, the width of the input, the number of register created with the use of Vector, and the length of the for loop is changed. The result is that with a change to the coefficient, the generated circuit and the Verilog code will be different.
![image](https://user-images.githubusercontent.com/60077499/138822105-a98007d0-ac9f-446a-b513-5b4445ea10a0.png)  
![image](https://user-images.githubusercontent.com/60077499/138822154-3673baf9-7921-4bb7-a9ef-afd5ccafc8be.png)  
- by making use of generators not instances, the example shows the special property of Chisel and how it is considered more efficient in these cases
- The name.scala file is the written Chisel file for testing and generation, the name.v, name.anno.json, and name.fir files are generated Verilog and transfer files, and the name_visualizer file is the files for generating visual graphs to represent the circuit for purpose of comparison between different types of Fir Filter.
