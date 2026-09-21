`timescale 1ns/1ps

module clk_divider(
    input wire clk,
    input wire rst,
    output reg one_hz_tick
);

localparam max_count = 10_000_000 - 1;
reg [26:0] count;

always@(posedge clk) begin
    if(rst) begin
        count <= 27'b0;
        one_hz_tick <= 1'b0;
    end
    else if (count == max_count) begin
        count <= 27'b0;
        one_hz_tick <= 1'b1;
    end
    else begin
        count <= count + 1'b1;
        one_hz_tick <= 1'b0;
    end

end
endmodule


