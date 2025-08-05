// Code your design here
module andgate(a,b,y);
input a,b;
output y;
wire w1 , w2 ;
  nand n1(w1,a,b);
  nand n2(y,w1,w1);
endmodule;
