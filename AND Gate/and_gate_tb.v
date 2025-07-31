// Code your testbench here
// or browse Examples
module and_gate_tb;
wire y;
reg a,b;
  and_gate dut(.a(a),.b(b),.y(y));
initial begin
  $monitor("At time T=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,a,b,y);
end
endmodule
