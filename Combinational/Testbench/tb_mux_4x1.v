`timescale 1ns / 1ps

module tb_mux_4x1;
   reg [3:0] i_tb;
   reg [1:0] s_tb;
   wire y_tb;
   
   mux_4x1 dut (i_tb,s_tb,y_tb);
   integer i;
   integer j;

  initial begin
    $dumpfile("mux_4x1.vcd");
    $dumpvars(0,tb_mux_4x1);
  end

  initial begin
    $monitor(" s : %b  i : %b y : %b",s_tb,i_tb,y_tb);
     
    for(i=0;i<4;i=i+1) begin
      s_tb= i;
      for(j=0;j<16;j=j+1) begin
        i_tb = j;#10;
      end
    end
  $finish;
  end  
       
   
endmodule
