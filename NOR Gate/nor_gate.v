// Code your design here
module nor_gate(y,a,b);
input a,b;
output reg y;
  always @(a,b)
    y=~(a|b);
endmodule;
