`timescale 1ns / 1ps

module sr_flip_flop_tb;
    reg S, R, clk;
    wire Q, Q_bar;

    sr_flip_flop uut (.S(S), .R(R), .clk(clk), .Q(Q), .Q_bar(Q_bar));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        S = 0; R = 0;
        #3;
        $dumpfile("sr_flip_flop_tb.vcd");
        $dumpvars(0, sr_flip_flop_tb);
        $display("Time\tS R | Q Q_bar");
        $monitor("%0dns\t%b %b | %b %b", $time, S, R, Q, Q_bar);

        #7  S = 1; R = 0;
        #10;
        #7  S = 0; R = 1;
        #10;
        #7  S = 0; R = 0;
        #10;
        #7  S = 1; R = 1;
        #10;
        #7  S = 0; R = 0;
        #10;
        $finish;
    end
endmodule
