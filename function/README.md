# function
- function to use def to write a function
- to test how to make use of Scala function while writing Chisel code and inspect what the generated code will be
- simple model used to show two characteristics:  
First, Scala (software language) and chisel (hardware description language) can be mixed when writing, but with no affect on the generation of Verilog.   
Second, when using functions like def and enum for finite state machine, the generated code will not be directly converted into Verilog code with the same function, but into simpler Verilog code.
