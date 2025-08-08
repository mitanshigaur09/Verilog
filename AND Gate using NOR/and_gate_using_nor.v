// Code your design here
module andgate(a,b,y);
input a,b;
output y;
wire w1,w2;
  nor n1(w1,a,a);
  nor n2(w2,b,b);
  nor n3(y,w1,w2);
endmodule;
