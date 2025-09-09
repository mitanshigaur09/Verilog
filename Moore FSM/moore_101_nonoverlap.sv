`timescale 1ns/1ps

module moore_101_nonoverlap (
  input  logic clk,
  input  logic rst_n,   // active-low async reset
  input  logic din,     // serial input
  output logic dout     // 1 for one cycle when "101" recognized (state-based)
);

  typedef enum logic [1:0] { S0=2'b00, S1=2'b01, S10=2'b10, S101=2'b11 } state_t;
  state_t state, next;

  // Moore output = 1 only in S101
  always_comb begin
    dout = (state == S101);
  end

  // Next-state logic (non-overlapping: after S101 -> S0)
  always_comb begin
    next = state;
    unique case (state)
      S0:   next = din ? S1    : S0;    // saw '1'?
      S1:   next = din ? S1    : S10;   // saw '10'?
      S10:  next = din ? S101  : S0;    // if next '1' -> S101
      S101: next = S0;                  // non-overlap: drop to S0
      default: next = S0;
    endcase
  end

  // State register
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) state <= S0;
    else        state <= next;
  end

endmodule
