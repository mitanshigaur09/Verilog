// Code your testbench here
// or browse Examples
module TFF_tb;
  reg T,clk,reset;
  wire q;
  TFF dut(.T(T),.clk(clk),.reset(reset),.q(q));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $dumpfile("TFF.vcd");
    $dumpvars(0,T,clk,reset);
    reset=1;T=0;
    #10 reset=0;
    #10 T=1;
    #10 T=1;
    #10 T=0;
    #10 T=1;
    #10 T=1;
    #10 T=0;
    #20 $finish;
  end
  initial begin
    $monitor("Time=%0t|T=%b|clk=%b|reset=%b|q=%b",$time,T,clk,reset,q);
  end
endmodule
