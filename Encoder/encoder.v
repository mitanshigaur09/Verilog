// Code your design here
module encoder(I0,I1,I2,I3,Y1,Y0);
  input I0, I1, I2, I3;
  output Y1,Y0;
  or o1(Y1,I3,I2);
  or o2(Y0,I3,I1);
endmodule
