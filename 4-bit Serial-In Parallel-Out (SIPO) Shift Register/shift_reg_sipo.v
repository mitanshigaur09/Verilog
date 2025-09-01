module shift_reg_sipo (
    input  wire clk,
    input  wire rst_n,
    input  wire shift_en,
    input  wire data_in,     // serial input
    output reg  [3:0] data_out // parallel output
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            data_out <= 4'b0000;
        else if (shift_en)
            data_out <= {data_out[2:0], data_in};
    end

endmodule
