// Code your design here
module mux(s,i0,i1,y);
input s,i0,i1;
output y;
  assign y=(~s&i0)|(s&i1);
endmodule;

