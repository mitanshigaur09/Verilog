// Code your testbench here
// or browse Examples
module encoder_tb;
reg I3,I1,I2,I0;
wire Y1,Y0;
  encoder dut(.I0(I0),.I1(I1),.I2(I2),.I3(I3),.Y1(Y1),.Y0(Y0));
initial begin
  $monitor("At time T=%0t,I0=%b,I1=%b,I2=%b,I3=%b,Y1=%b,Y0=%b",$time,I0,I1,I2,I3,Y1,Y0);
I3=0;I2=0;I1=0;I0=1;
#2 I3=0;I2=0;I1=1;I0=0;
#2 I3=0;I2=1;I1=0;I0=0;
#2 I3=1;I2=0;I1=0;I0=0;
end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,I0,I1,I2,I3,Y1,Y0);
end
endmodule
