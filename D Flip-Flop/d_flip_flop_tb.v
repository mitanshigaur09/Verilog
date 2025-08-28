module d_flipflop_tb;
  reg D, clk, rst;
  wire q;

  // Instantiate the design under test
  d_flipflop dut (.D(D), .clk(clk), .rst(rst), .q(q));

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,D,clk,rst,q);  // Dump everything under the testbench module

    rst = 1; D = 0;
    #10 rst = 0;

    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;

    #20 $finish;
  end

  // Monitor signal changes
  initial begin
    $monitor("T=%0t | D=%b | clk=%b | rst=%b | q=%b", $time, D, clk, rst, q);
  end
endmodule
