`timescale 1ns / 1ps


module tb_demux_1x2;
   reg s_tb,i_tb;
   wire [1:0]y_tb;
   integer i;
   
   demux_1x2 dut (s_tb,i_tb,y_tb);
   
   initial begin
     $dumpfile("demux_1x2.vcd");
     $dumpvars(0,tb_demux_1x2);
   end
   
   initial begin
     $monitor(" s : %b i : %b y: %b",s_tb,i_tb,y_tb);
     for(i=0;i<4;i=i+1) begin
       {s_tb,i_tb} = i;
       #10;
       
     end
   end
     
endmodule
