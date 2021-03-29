//plug pmod-led on PMOD2

module status(input clk, output [7:0] P2);
    reg [23:0] counter;
    wire lclk = counter[23];

    initial begin
        P2 = 8'b11111110;
    end

    always @(posedge clk)
    begin
        counter = counter + 1;
    end

    always @(posedge lclk)
    begin
        P2 = {P2[6:0], P2[7]};
    end

endmodule
