// Code your testbench here
// or browse Examples
module bcd_to_excess3_tb;
  reg [3:0] bcd;
  wire [3:0] ex3;

  bcd_to_excess3 dut(.bcd(bcd), .ex3(ex3));

  initial begin
    // VCD dump setup
    $dumpfile("dump.vcd");   // Name of the VCD file
    $dumpvars(0, bcd_to_excess3_tb); // Dump all variables in testbench

    $monitor("At time T=%0t, bcd=%b, ex3=%b", $time, bcd, ex3);
    bcd = 4'b0000;
    #10 bcd = 4'b0001;
    #10 bcd = 4'b0010;
    #10 bcd = 4'b0011;
    #10 $finish; // end simulation
  end
endmodule
