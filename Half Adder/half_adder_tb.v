// Code your testbench here
// or browse Examples
module HA_tb;
reg a,b;
wire s,c;
  HA dut(.a(a),.b(b),.s(s),.c(c));
initial begin
  $monitor("At time T=%0t,a=%b,b=%b,s=%b,c=%b", $time,a,b,s,c);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
#10;$finish;
end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,a,b,s,c);
end
endmodule
