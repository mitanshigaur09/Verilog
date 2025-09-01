module shift_reg_piso (
    input  wire clk,
    input  wire rst_n,
    input  wire shift_en,
    input  wire load,        // load enable
    input  wire [3:0] data_in, // parallel input
    output reg  data_out       // serial output
);

    reg [3:0] shift_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            shift_reg <= 4'b0000;
        else if (load)
            shift_reg <= data_in;              // load parallel
        else if (shift_en)
            shift_reg <= {shift_reg[2:0], 1'b0}; // shift left
    end

    always @(*) begin
        data_out = shift_reg[3]; // MSB as serial output
    end

endmodule
