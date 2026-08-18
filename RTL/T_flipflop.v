`timescale 1ns / 1ps


module T_flipflop(
    input rst,clk,t,enb, output reg q,output qbar
    );
    always@(negedge clk) begin
        if(rst)
            q <= 0;
        else if(enb & t)
                q <= ~q;
        end 
     assign qbar = ~q;   
endmodule
