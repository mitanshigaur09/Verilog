module nor_latch_tb;
  reg s,r;
  wire q,q_bar;

  nor_latch DUT(.s(s),.r(r),.q(q),.q_bar(q_bar));

  initial begin
    $dumpfile("dump.vcd");  
    $dumpvars(0, nor_latch_tb);  
    $monitor("t=%0t | S=%b R=%b | Q=%b Qbar=%b", $time, s, r, q, q_bar);

    s = 0; r = 0; #5;
    s = 0; r = 1; #5;
    s = 1; r = 0; #5;
    s = 1; r = 1; #5;  // invalid
    $finish;
  end
endmodule
