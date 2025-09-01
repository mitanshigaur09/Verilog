`timescale 1ns/1ps
module tb_sipo;
    reg clk, rst_n, shift_en, data_in;
    wire [3:0] data_out;
    shift_reg_sipo uut (
        .clk(clk), .rst_n(rst_n),
        .shift_en(shift_en),
        .data_in(data_in),
        .data_out(data_out)
    );
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        $dumpfile("sipo.vcd");
        $dumpvars(1, tb_sipo);
        $monitor("T=%0t | rst_n=%b shift_en=%b data_in=%b -> data_out=%b",
                  $time, rst_n, shift_en, data_in, data_out);
        rst_n = 0; shift_en = 0; data_in = 0;
        #12 rst_n = 1;
        shift_en = 1;
        data_in = 1; #10;
        data_in = 0; #10;
        data_in = 1; #10;
        data_in = 1; #10;
        shift_en = 0; #20;
        $display("SIPO test complete. Final parallel = %b", data_out);
        $finish;
    end
endmodule
