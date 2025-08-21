// Code your design here
module nor_latch(input s,r,output q,q_bar);
  nor(q,r,q_bar);
  nor(q_bar,q,s);
endmodule
