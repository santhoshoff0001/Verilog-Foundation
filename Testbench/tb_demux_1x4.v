`timescale 1ns / 1ps

module tb_demux_1x4;
   reg [1:0]s_tb;
   reg i_tb;
   wire [3:0]y_tb;
   integer i;
   
   demux_1x4 dut (s_tb,i_tb,y_tb);
   
   initial begin
       $dumpfile("demux_1x4.vcd");
       $dumpvars(0,tb_demux_1x4);
   end
   
   initial begin
     $monitor("s : %b i : %b y : %b",s_tb,i_tb,y_tb);
     for(i=0;i<8;i=i+1) begin
       {s_tb,i_tb}=i; #10;
     end
   end
   
   
endmodule
