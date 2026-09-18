`timescale 1ns / 1ps

module t_latch(
    input rst,enb,t, output reg q,qbar
    );
    always@(*) 
       begin
          if(rst)
              q=1'b0;
          else if(enb)
              begin
                 if(t)
                     q = ~q;
               end
          qbar = ~q;
        end
endmodule
