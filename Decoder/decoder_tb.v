// Code your testbench here
// or browse Examples
module decoder_tb;
reg a,b;
wire d0,d1,d2,d3;
  decoder dut(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.a(a),.b(b));
initial begin
  $monitor("At time T=%0t,a=%b,b=%b,d0=%b,d1=%b,d2=%b,d3=%b",$time,a,b,d0,d1,d2,d3);
  a=0;b=0;
#2 a=0;b=1;
#2 a=1;b=0;
#2 a=1;b=1;
end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,a,b,d0,d1,d2,d3);
end
endmodule;
  
  
