`timescale 1ns/1ps
module tb_pipo;
    reg clk, rst_n, load;
    reg [3:0] data_in;
    wire [3:0] data_out;
    shift_reg_pipo uut (
        .clk(clk), .rst_n(rst_n),
        .load(load),
        .data_in(data_in),
        .data_out(data_out)
    );
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        $dumpfile("pipo.vcd");
        $dumpvars(1, tb_pipo);
        $monitor("T=%0t | rst_n=%b load=%b data_in=%b -> data_out=%b",
                  $time, rst_n, load, data_in, data_out);
        rst_n = 0; load = 0; data_in = 0;
        #12 rst_n = 1;
        load = 1; data_in = 4'b1101; #10;
        load = 0; #20;
        load = 1; data_in = 4'b0110; #10;
        load = 0; #20;
        $display("PIPO test complete. Final parallel = %b", data_out);
        $finish;
    end
endmodule
