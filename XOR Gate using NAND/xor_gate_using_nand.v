// Code your design here
module xor_gate(y,a,b);
input a,b;
output y;
wire w1,w2,w3;
  nand n1(w1,a,b);
  nand n2(w2,a,w1);
  nand n3(w3,b,w1);
  nand n4(y,w2,w3);
endmodule;
