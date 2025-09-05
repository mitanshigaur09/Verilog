module down_counter #(parameter WIDTH=4) (
    input  wire clk,
    input  wire rst_n,
    input  wire en,
    output reg [WIDTH-1:0] count
);
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        count <= {WIDTH{1'b1}};
    else if (en)
        count <= count - 1'b1;
end
endmodule
