`timescale 1ns/1ps

module tb_down_counter;
    reg        clk;
    reg        rst_n;
    reg        en;
    wire [3:0] count;

    down_counter #(.WIDTH(4)) dut (.clk(clk), .rst_n(rst_n), .en(en), .count(count));

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("down_counter.vcd");
        $dumpvars(0, tb_down_counter);

        rst_n = 1'b0; en = 1'b0;
        repeat (2) @(posedge clk);
        rst_n = 1'b1;
        @(posedge clk);
        en = 1'b1;
        repeat (20) @(posedge clk);
        en = 1'b0;
        repeat (4) @(posedge clk);
        en = 1'b1;
        repeat (20) @(posedge clk);
        $finish;
    end

    initial begin
        $display(" time  | rst_n en | count");
        $monitor("%5t |   %b    %b |  0x%0h (%0d)", $time, rst_n, en, count, count);
    end
endmodule
