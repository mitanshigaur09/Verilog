// Code your design here
module TFF(input wire T,input wire clk,input wire reset,output reg q);
  always @(posedge clk or posedge reset)begin
    if(reset)
      q<=1'b0;
    else if(T)
    q<=~q;
    else
      q<=q;
  end
endmodule

    
