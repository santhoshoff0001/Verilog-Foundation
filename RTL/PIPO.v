`timescale 1ns / 1ps


module PIPO(
    input rst,clk,load, input [3:0] p_in, output reg [3:0] p_out
    );
    reg [3:0] t;
    always@(posedge clk)
    begin
        if(rst)
            p_out <= 4'b0000;
        else if(load)
            t <= p_in;
        else
            p_out <= t;
    end
endmodule
