`timescale 1ns / 1ps

module tb_t_latch;
    reg rst,enb,t;
    wire q,qbar;
    
    t_latch dut (rst,enb,t,q,qbar);
    

    initial begin
        $dumpfile("t_latch.vcd");
        $dumpvars(0,tb_t_latch);
    end
    initial 
        begin
            $monitor("rst=%b enb=%b t=%b q=%b qbar=%b",rst,enb,t,q,qbar);
            rst =1'b1; #10;
            
            rst=1'b0;enb=1'b0;#10;
            
            enb=1'b1;t=1'b0;#10;
            
            t=1'b1; #10;
            $display("To toggle t-latch again: ");
            t=1'b0; #10;
            t=1'b1; #10;
            $finish;
        end
endmodule
