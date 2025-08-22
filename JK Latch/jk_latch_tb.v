`timescale 1ns / 1ps

module jk_latch_tb;
    reg J, K, enable;
    wire Q, Q_bar;

  jk_latch uut ( .J(J), .K(K), .enable(enable), .Q(Q), .Q_bar(Q_bar));

    initial begin
        $dumpfile("jk_latch.vcd");
        $dumpvars(0, jk_latch_tb);

        $display("Time\tJ K EN | Q Q_bar");
        $monitor("%0dns\t%b %b %b  | %b %b", $time, J, K, enable, Q, Q_bar);

        J = 0; K = 0; enable = 0; #10;
        enable = 1; J = 1; K = 0; #10;
        J = 0; K = 0; #10;
        J = 0; K = 1; #10;
        J = 1; K = 1; #10;

        #10;

        enable = 0; J = 0; K = 0; #10;

        J = 1; K = 0; #10;
        J = 0; K = 1; #10;
        J = 1; K = 1; #10;

        enable = 1; #10;

        $finish;
    end
endmodule
