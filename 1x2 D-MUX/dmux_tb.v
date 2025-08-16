`timescale 1ns/1ps
module tb_dmux;
    reg din;
    reg sel;
    wire y0, y1;

    dmux uut (
        .din(din),
        .sel(sel),
        .y0(y0),
        .y1(y1)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_dmux);
        $display("Time\t din sel | y0 y1");
        $display("--------------------------");
        $monitor("%0t\t  %b   %b  |  %b  %b", $time, din, sel, y0, y1);

        din = 0; sel = 0; #10;
        din = 1; sel = 0; #10;
        din = 1; sel = 1; #10;
        din = 0; sel = 1; #10;
        din = 1; sel = 0; #10;
        din = 0; sel = 0; #10;

        $finish;
    end
endmodule
