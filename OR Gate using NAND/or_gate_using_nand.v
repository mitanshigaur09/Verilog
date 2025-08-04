// Code your design here
module or_gate(a,b,y);
input a,b;
output y;
wire w1,w2;
  nand n1(w1,a,a);
  nand n2(w2,b,b);
  nand n3(y,w1,w2);
endmodule;
