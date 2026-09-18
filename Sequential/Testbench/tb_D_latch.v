`timescale 1ns / 1ps


module tb_D_latch;
     reg rst,enb,d;
     wire q,q_bar;
     
     d_latch dut (rst,enb,d,q,q_bar);

     initial begin
        $dumpfile("d_latch.vcd");
        $dumpvars(0,tb_D_latch);
     end
     
     initial begin
        $monitor("rst : %b  enb : %b    d : %b  q : %b  q_bar : %b",rst,enb,d,q,q_bar);
         rst =1; #10;
         
         rst =0;enb =0; #10
         
         enb=1;d =1'b0; #10;
         
         d =1'b1; #10;
         $finish;
     end
endmodule
    