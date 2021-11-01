// test_file_6
// decade_counter
//10/19/2021

module decade_counter
  #(parameter SIZE = 4)
  (input clock, load_n, clear_n, updown,
   input [SIZE - 1:0] load_data,
   output [SIZE - 1:0] out
  );
  
  reg [SIZE - 1:0] out;
  
  always @(posedge clock)
    if(!load_n)
      out <= load_data;
    else if(!clear_n)
      out <= 0;
    else
      if(updown)
        out <= (out+1)%10;
      else
        begin
          if(out == 0)
            out <= 0;
          else
            out <= out - 1;
        end
endmodule

module decade_counter_testbench
  #(parameter SIZE = 4);
  reg clk, ld_n, cle_n, ud;
  reg [SIZE - 1:0] ld_data;
  wire [SIZE - 1:0] out;
  
decade_counter u_decade_counter(clk, ld_n, cle_n, ud, ld_data, out);
  initial
    begin
      clk = 1'b0;
      forever
        #5 clk = ~ clk;
    end
  
  initial
    begin
      //test
      ld_n = 0; // low active signal
      cle_n = 1; // low active signal
      ld_data = 0;
      ud = 1;
      #10 ld_n = 1;
      
      #100 cle_n = 0;
      ud = 0;
      #5 cle_n = 1;
      
      #100 ld_n = 0;
      ld_data = 6;
      #5 ld_n = 1;
      
      #100 $stop;
    end
  
  always
    @(out)
      $display("At time ", $time, ", counter output is ", out);
endmodule
      
