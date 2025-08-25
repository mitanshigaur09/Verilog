module sr_flip_flop (
    input wire S,       // Set
    input wire R,       // Reset
    input wire clk,     // Clock
    output reg Q,
    output wire Q_bar
);

assign Q_bar = ~Q;

always @(posedge clk) begin
    case ({S, R})
        2'b00: Q <= Q;       // No change
        2'b01: Q <= 0;       // Reset
        2'b10: Q <= 1;       // Set
        2'b11: Q <= 1'bx;    // Invalid condition
    endcase
end

endmodule
