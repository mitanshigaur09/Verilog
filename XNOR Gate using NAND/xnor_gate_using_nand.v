// Code your design here
module xnor_gate(y,a,b);
input a,b;
output y;
wire w1,w2,w3,w4;
  nand n1(w1,a,b);
  nand n2(w2,a,w1);
  nand n3(w3,b,w1);
  nand n4(w4,w2,w3);
  nand n5(y,w4,w4);
endmodule;
