// Code your testbench here
// or browse Examples
module tb_jk_flip_flop;
  reg clk,reset,j,k;
  wire q,q_bar;
  jk_flip_flop uut(.clk(clk),.reset(reset),.j(j),.k(k),.q(q),.q_bar(q_bar));
  initial begin
    clk=0;
    reset=1;
    j=0;k=0;
    #5 reset=0;
    //Test cases
    #5 {j,k}=2'b00;
    #10 {j,k}=2'b01;
    #10 {j,k}=2'b10;
    #10 {j,k}=2'b11;
    #10 {j,k}=2'b00;
    #10 $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,reset,j,k);
  end
  initial begin
    $monitor("At time T=%0t,j=%b,k=%b,clk=%b,q=%b,q_bar=%b",$time,j,k,clk,q,q_bar);
  end
  always #5 clk=~clk;
endmodule
