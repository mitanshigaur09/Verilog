// Code your design here
module xnor_gate(y,a,b);
input a,b;
output reg y;
  assign y=~(a^b);
endmodule;
