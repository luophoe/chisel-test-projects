// test_file_7
// adding
// 11/1/2021

module adding{
  input a, b, c, d,
  output out1, out2
  );
  
function adder(input in1, in2);
  adder = in1 + in2;
endfunction

assign out1 = adder(a, b);
assign out2 = adder(c, d);

endmodule

module adding_testbench();
  reg a_in, b_in, c_in, d_in;
  wire out1_out, out2_out;
  
adding u_adding(a_in, b_in, c_in, d_in, out1_out, out2_out);
  initial
    begin
      // 0+1
      a_in = 1'b0;
      b_in = 1'b1;
      // 1+1
      c_in = 1'b1;
      d_in = 1'b1;
      
      #10
      // 0+0
      a_in = 1'b0;
      b_in = 1'b0;
      // 1+0
      c_in = 1'b1;
      d_in = 1'b0;
      
      #10 $stop;
    end
    
  always
    @(out1_out or out2_out)
      $display("At time ", $time, ", output 1 is %b, output 2 is %b", out1_out, out2_out);
      
endmodule
      
