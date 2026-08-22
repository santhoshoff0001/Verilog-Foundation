`timescale 1ns / 1ps

module SIPO(
    input rst,clk,shift,s_in, output reg [3:0] p_out
    );
    reg [3:0] temp;
    always@(posedge clk) begin
        if(rst)
            temp <= 4'b0000;
        else if (shift)
            temp <= {s_in,temp[3:1]};
        else if(!shift)
             p_out <= temp;
    end

endmodule
