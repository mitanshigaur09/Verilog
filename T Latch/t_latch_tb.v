module t_latchtb;
  reg T, En;
  wire Q;

  t_latch dut (.T(T), .En(En), .Q(Q));

  initial begin
    $dumpfile("t_latch.vcd");
    $dumpvars(0,T,En,Q);

    $monitor("Time=%0t | En=%b T=%b -> Q=%b", $time, En, T, Q);

    En=0; T=0; #10;
    En=1; T=0; #10;
    T=1; #10;
    T=1; #10;
    T=0; #10;
    En=0; T=1; #10;
    En=1; T=1; #10;
    #10;
    $finish;
  end
endmodule
