`timescale 1ns/1ps

module mealy_101_nonoverlap (
  input  logic clk,
  input  logic rst_n,   // active-low async reset
  input  logic din,     // serial input
  output logic dout     // 1 for one cycle when "101" seen (non-overlap)
);

  typedef enum logic [1:0] { S0=2'b00, S1=2'b01, S10=2'b10 } state_t;
  state_t state, next;

  // Mealy output depends on current state and input
  always_comb begin
    dout = 1'b0;
    unique case (state)
      S10: if (din) dout = 1'b1;  // ... got "101" on this input
      default: /* dout = 0 */;
    endcase
  end

  // Next-state logic (non-overlapping: after detect, go to S0)
  always_comb begin
    next = state;
    unique case (state)
      S0:   next = din ? S1  : S0;    // seen '1'? -> S1
      S1:   next = din ? S1  : S10;   // seen '10'? -> S10
      S10:  next = din ? S0  : S0;    // detect on din=1, else reset
      default: next = S0;
    endcase
  end

  // State register
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) state <= S0;
    else        state <= next;
  end

endmodule
