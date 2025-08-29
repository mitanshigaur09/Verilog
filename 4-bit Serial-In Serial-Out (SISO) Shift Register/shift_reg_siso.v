module shift_reg_siso (
    input  wire clk,
    input  wire rst_n,
    input  wire shift_en,
    input  wire data_in,    // serial input
    output reg  data_out    // serial output
);

    reg [3:0] shift_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg <= 4'b0000;
        else if (shift_en)
            shift_reg <= {shift_reg[2:0], data_in};
    end

    always @(*) begin
        data_out = shift_reg[3];  // MSB as serial output
    end

endmodule
