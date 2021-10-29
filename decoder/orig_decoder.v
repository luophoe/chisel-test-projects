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
