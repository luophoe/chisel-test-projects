# decade_counter  
- decade counter to count from 0 to 9 and back to 0. When input *clock* is 1, start choosing function and count; when *load_n* is 0, *out* is set to the same number as *load_data*; when *clear_n* is 0, *out* is set to 0; when *updown* is 1, count up; when *updown* is 0, count down  
- register declaration *out*, event triggering *clock*
- simple model used to understand the characteristics of Verilog code converted from chisel code, including the register and memory configuration code blocks generated in Verilog code after using registers in Chisel, and the use of the generated Verilog code on the implicit input clock and reset of the module.  
**Although clock and reset signals are not written in the chisel code, they can be seen when generating Verilog, because they are implicitly generated, and the register component of chisel will automatically connect with these two signals if necessary*
