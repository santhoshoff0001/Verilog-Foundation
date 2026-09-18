`timescale 1ns / 1ps


module tb_mux_2x1;
   reg s_tb;
   reg [1:0]i_tb;
   wire y_tb;
   integer i;
   
   
   mux_2x1 dut (s_tb,i_tb,y_tb);
   
   initial begin
      $dumpfile("mux_2x1.vcd");
      $dumpvars(0,tb_mux_2x1);
   end
   initial begin
      {s_tb,i_tb}=0;
    end
    
   initial begin
      $monitor(" s = %b, i = %b, y = %b",s_tb,i_tb,y_tb);
       for(i=0;i<8;i=i+1) begin
         {s_tb,i_tb} = i;
         #10;
        end
     end
    
//      initial begin
//         for(i=0;i<2;i=i+1) begin
//           s_tb= i;
//           for(j=0;j<4;j=j+1) begin
//             i_tb = j;
//             #10;
//            end
//          end
//       end
endmodule
