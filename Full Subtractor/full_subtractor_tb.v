// Code your testbench here
// or browse Examples
module full_subtractor_tb;
wire diff,borr;
reg a,b,c;

  full_subtractor dut(.a(a),.b(b),.c(c),.diff(diff),.borr(borr));

initial begin
  $dumpfile("dump.vcd");  
  $dumpvars(1, full_subtractor_tb);
  $monitor("At time T=%0t,a=%b,b=%b,c=%b,diff=%b,borr=%b",$time,a,b,c,diff,borr);
  
  a=0;b=0;c=0;
  #10 a=0;b=0;c=1;
  #10 a=0;b=1;c=0;
  #10 a=0;b=1;c=1;
  #10 a=1;b=0;c=0;
  #10 a=1;b=0;c=1;
  #10 a=1;b=1;c=0;
  #10 a=1;b=1;c=1;
end
endmodule
