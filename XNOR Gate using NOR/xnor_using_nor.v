// Code your design here
module xnor_gate(a,b,y);
input a,b;
output y;
wire w1,w2,w3;
  nor n1(w1,a,b);
  nor n2(w2,w1,a);
  nor n3(w3,w1,b);
  nor n4(y,w2,w3);
endmodule;
