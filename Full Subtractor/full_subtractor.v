// Code your design here
module full_subtractor(a,b,c,diff,borr);
input a,b,c;
output diff,borr;
wire w1,w2,w3,w4;
  not n1(w1,a);
  and a1(w2,w1,b);
  and a2(w3,b,c);
  and a3(w4,w1,c);
  or o1(borr,w2,w3,w4);
  xor x1(diff,a,b,c);
endmodule;
