// Code your testbench here
// or browse Examples
module d_latch_tb;
reg D,En;
  wire q;
  d_latch dut(.D(D),.En(En),.q(q));
initial begin
  $dumpfile("d_latch.vcd");
  $dumpvars(0,D,En,q);
  $monitor("Time=%0t | En=%b D=%b q=%b",$time ,En,D,q);
En=0;D=0;#10
  En=0;D=1;#10;//En=0,Q should hold
  En=1;#10;
  D=0;#10;
  En=0;D=1;#10;
  En=1;#10;
  $finish;
end
endmodule
