// Code your testbench here
// or browse Examples
module xor_gate_tb;
reg a,b;
wire y;
  xor_gate dut(.y(y),.a(a),.b(b));
initial begin
  $monitor("At time T=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
a=0;b=0;
#2 a=0;b=1;
#2 a=1;b=0;
#2 a=1;b=1;
end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,a,b,y);
end
endmodule
