`timescale 1ns/1ps

module up_counter #(
    parameter WIDTH = 4
)(
    input  wire              clk,
    input  wire              rst_n,   // active-low async reset
    input  wire              en,      // count enable
    output reg  [WIDTH-1:0]  count
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= {WIDTH{1'b0}};
        else if (en)
            count <= count + 1'b1;   // wraps naturally at 2^WIDTH
    end
endmodule
