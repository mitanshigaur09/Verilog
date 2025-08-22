// Code your design here
module jk_latch (
    input wire J,
    input wire K,
    input wire enable,   // acts as clock/control input (level-sensitive)
    output reg Q,
    output wire Q_bar
);

assign Q_bar = ~Q;

always @ (J or K or enable) begin
    if (enable) begin
        case ({J, K})
            2'b00: Q = Q;         // No change
            2'b01: Q = 0;         // Reset
            2'b10: Q = 1;         // Set
            2'b11: Q = ~Q;        // Toggle
        endcase
    end
end

endmodule
