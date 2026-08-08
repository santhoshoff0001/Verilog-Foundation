`timescale 1ns / 1ps

module mux_2x1(
    input s, input [1:0] i, output reg y
    );
   always@(*) begin
      case (s)
         0 : y = i[0];
         1 : y = i[1];
         default : y =1'b0;
       endcase
   end   

   //  always@(*) begin
   //     if(s) 
   //        y=i[1];
   //     else
   //        y=i[0];
   //   end
endmodule
