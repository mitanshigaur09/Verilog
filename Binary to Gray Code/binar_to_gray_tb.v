// Code your testbench here
// or browse Examples
module bin2gray_tb;
  reg [2:0] bin;
  wire [2:0] gray;
  bin2gray dut(.bin(bin),.gray(gray));
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,bin2gray_tb);
  $monitor("Time=%0t | bin=%b | gray=%b",$time,bin,gray);
  bin=3'b000;#2;
  bin=3'b001;#2;
  bin=3'b010;#2;
   bin = 3'b011; #2;
    bin = 3'b100; #2;
    bin = 3'b101; #2;
    bin = 3'b110; #2;
    bin = 3'b111; #2;

    $finish;
  end
endmodule
