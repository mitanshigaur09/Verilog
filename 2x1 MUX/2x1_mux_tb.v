// Code your testbench here
// or browse Examples
module mux_tb;
reg s,i0,i1;
wire y;

  mux dut(.s(s),.i0(i0),.i1(i1),.y(y));

initial begin
  $dumpfile("dump.vcd");          
  $dumpvars(1, mux_tb);     
  $monitor("AT time T=%0t,s=%b,i0=%b,i1=%b,y=%b",$time,s,i0,i1,y);

  s=0; i0=0; i1=0;
  #10 s=0; i0=0; i1=1;
  #10 s=0; i0=1; i1=0;
  #10 s=0; i0=1; i1=1;
  #10 s=1; i0=0; i1=0;
  #10 s=1; i0=0; i1=1;
  #10 s=1; i0=1; i1=0;
  #10 s=1; i0=1; i1=1;
end
endmodule
