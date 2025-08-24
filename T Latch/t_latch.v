// T Latch (Level Sensitive)
module t_latch(input T,input En,output reg Q);
  initial Q=0;
  always@(*)begin
    if(En)begin
      if(T)
        Q=~Q;
      else 
        Q=Q;
    end
  end
endmodule
