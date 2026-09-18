`timescale 1ns / 1ps


module SR_latch(
    input enb,reset,s,r, output reg q,q_bar
    );
    always@(*) begin
       if(reset) begin
          q=1'b0;
          q_bar=1;
        end
       else if(enb) begin
           case ({s,r})
             2'b00 : q=q;
             2'b01 : q=1'b0;
             2'b10 : q=1'b1;
             2'b11 : q=1'bx;
           endcase
         end
         else
             q=q;
         q_bar = ~q;
         
      end
endmodule
