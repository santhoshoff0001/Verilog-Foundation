`timescale 1ns / 1ps


module tb_sr_latch;
  reg enb,rst,s,r;
  wire q,q_bar;
  integer i;
  
  SR_latch dut(enb,rst,s,r,q,q_bar);

  initial begin
      $dumpfile("tb_sr_latch.vcd");
      $dumpvars(0,tb_sr_latch);
  end

  initial begin
      $monitor("rst = %b enb = %b   s = %b r = %b  q = %b q_bar = %b",rst,enb,s,r,q,q_bar);
      rst=1 ; #10;
       
      rst=0;enb = 0; #10;
      
      enb=1;
      for(i=0;i<4;i=i+1) begin
           {s,r}=i;
           #10;
        end
       
     end
endmodule
