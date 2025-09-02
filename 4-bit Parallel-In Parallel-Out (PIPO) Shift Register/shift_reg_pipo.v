// Code your design here
module shift_reg_pipo (
    input  wire clk,
    input  wire rst_n,
    input  wire load,        // load enable
    input  wire [3:0] data_in, // parallel input
    output reg  [3:0] data_out // parallel output
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            data_out <= 4'b0000;
        else if (load)
            data_out <= data_in; // parallel load
    end

endmodule
