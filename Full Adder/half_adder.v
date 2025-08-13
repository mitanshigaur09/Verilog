// Code your design here
module  FA(a,b,c,s,cout);
input a,b,c;
output s,cout;
wire w1,w2,w3;
assign s=a^b^c;
assign w1=a&b;
assign w2=b&c;
assign w3=c&a;
assign cout=w1|w2|w3;
endmodule;
