// Code your testbench here
// or browse Examples
module FA_tb;
reg a,b,c;
wire s,cout;
  FA dut(.a(a),.b(b),.c(c),.s(s),.cout(cout));
initial begin
  $monitor("At time T=%0t,a=%b,b=%b,c=%b,s=%b,cout=%b",$time,a,b,c,s,cout);
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
#10;$finish;
end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,a,b,s,cout);
end
endmodule

