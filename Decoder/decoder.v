// Code your design here
module decoder(d0,d1,d2,d3,a,b);
input a,b;
output d0,d1,d2,d3;
wire w1,w2;
  not n1(w1,a);
  not n2(w2,b);
  and a1(d0,w1,w2);
  and a2(d1,w1,b);
  and a3(d2,a,w2);
  and a4(d3,a,b);
endmodule;
