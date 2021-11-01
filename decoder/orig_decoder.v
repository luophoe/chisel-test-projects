// test_file_3
// decoder
// 10/18/2021

module decoder(
  input [1:0] in,
  output [3:0] out
  );
  reg [3:0] out;
  
  always @(in)
    case(in)
      2'b00   :   out = 4'b1000;
      2'b01   :   out = 4'b0100;
      2'b10   :   out = 4'b0010;
      2'b11   :   out = 4'b0001;
      default :   out = 4'b0;
    endcase
endmodule

module decoder_testbench();
  reg [1:0] in;
  wire [3:0] out;
  
decoder u_decoder(in, out);
  initial
    begin
      in = 2'b00;
      #10 in = 2'b00;
      #10 in = 2'b10;
      #10 in = 2'b01;
      #10 in = 2'b11;
      #10 in = 2'b00;
      #10 in = 2'b01;
      #10 in = 2'b11;
      
      #10 $stop;
    end
  
  always
    @(in or out)
      $display("At time ", $time, ", input is %b, output is $b", in, out);
endmodule
