// MAC Unit: Y = (A * B) + C

module mac #(parameter WIDTH = 8) (
    input  wire signed [WIDTH-1:0] A, // Multiplicand
    input  wire signed [WIDTH-1:0] B, // Multiplier
    input  wire signed [2*WIDTH-1:0] C, // Accumulator input
    output wire signed [2*WIDTH-1:0] Y  // MAC output
);
    assign Y = (A * B) + C;
endmodule
