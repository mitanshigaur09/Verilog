`timescale 1ns/1ps
module tb_piso;
    reg clk, rst_n, shift_en, load;
    reg [3:0] data_in;
    wire data_out;
  shift_reg_piso uut (.clk(clk), .rst_n(rst_n), .shift_en(shift_en), .load(load), .data_in(data_in), .data_out(data_out));
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        $dumpfile("piso.vcd");
        $dumpvars(1, tb_piso);
        $monitor("T=%0t | rst_n=%b load=%b shift_en=%b data_in=%b -> data_out=%b",
                  $time, rst_n, load, shift_en, data_in, data_out);
        rst_n = 0; shift_en = 0; load = 0; data_in = 0;
        #12 rst_n = 1;
        load = 1; data_in = 4'b1011; #10;
        load = 0;
        shift_en = 1; #40;
        shift_en = 0; #20;
        $display("PISO test complete.");
        $finish;
    end
endmodule
