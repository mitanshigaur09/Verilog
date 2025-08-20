// Code your testbench here
// or browse Examples
module xnor_gate_tb;
reg a,b;
wire y;
  xnor_gate dut(.a(a),.b(b),.y(y));
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
