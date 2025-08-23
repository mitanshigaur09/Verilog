// Code your design here
module d_latch(input D,input En,output reg q);
  always @(D or En)begin
    if(En)
      q=D;
  end
endmodule
