# FirFilter
- shows the sepcial porperty of Chisel programming that hardware generators can be coded in inherently and be used to generate different circuits. Instead of using the Java and Python scripts as hardware generators for VHDL and Verilog, this is more convenient and advance.
- Fir filter that takes in coefficient to parameterize the length of the filter. According to the input coefficient, the number of inputs, the number of register created with the use of Vector, and the length of the for loop is changed. The result is that with a change to the coefficient, the generated circuit and the Verilog code will be different.
![image](https://user-images.githubusercontent.com/60077499/138822105-a98007d0-ac9f-446a-b513-5b4445ea10a0.png)  
![image](https://user-images.githubusercontent.com/60077499/138822154-3673baf9-7921-4bb7-a9ef-afd5ccafc8be.png)  
- by making use of generators not instances, the example shows the special property of Chisel and how it is considered more efficient in these cases
