module tb_mac;
    reg signed [7:0] A, B;
    reg signed [15:0] C;
    wire signed [15:0] Y;

    // Instantiate MAC
    mac #(8) uut (
        .A(A),
        .B(B),
        .C(C),
        .Y(Y)
    );

    initial begin
        // Test 1
        A = 8'd5;
        B = -8'd3;
        C = 16'd10;
        #10;
        $display("A=%d B=%d C=%d Y=%d", A, B, C, Y);

        // Test 2
        A = 8'd12;
        B = 8'd9;
        C = 16'd0;
        #10;
        $display("A=%d B=%d C=%d Y=%d", A, B, C, Y);
        
        $finish;
    end
endmodule
