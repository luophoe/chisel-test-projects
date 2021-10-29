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
