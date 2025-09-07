`timescale 1ns/1ps

module mealy_101_tb;
  logic clk, rst_n, din;
  logic dout;

  // DUT
  mealy_101_nonoverlap dut (
    .clk (clk),
    .rst_n (rst_n),
    .din (din),
    .dout (dout)
  );

  // Clock
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 100 MHz
  end

  // FSDB dump (for Verdi)
  initial begin
    $dumpfile("mealy.vcd");   
    $dumpvars(0, mealy_101_tb);
  end

  // Stimulus helper: drive a string of 0/1 characters, one per cycle
  task automatic drive_bits(string bits);
    foreach (bits[i]) begin
      din = (bits[i] == "1");
      @(negedge clk); // align input setup before next posedge
    end
  endtask

  // Reset and stimulus
  initial begin
    rst_n = 0; din = 0;
    repeat (2) @(posedge clk);
    rst_n = 1;

    // Example stream with two non-overlapping "101" occurrences:
    // "1 0 1 1 0 1 0 0 1"
    // detections at the 3rd and 6th bits
    drive_bits("101101001");

    // Edge cases
    drive_bits("10");     // partial, no detect
    drive_bits("0");      // idle
    drive_bits("101");    // one clean detect

    repeat (4) @(posedge clk);
    $finish;
  end

  // Monitor
  initial begin
    $display("  time  | din dout");
    $monitor("%7t |  %0b    %0b", $time, din, dout);
  end
endmodule
