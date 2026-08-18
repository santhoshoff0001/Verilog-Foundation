`timescale 1ns / 1ps

module TB_T_flipflop;
    reg rst,clk,t,enb;
    wire q,qbar;
    
    
    T_flipflop dut (rst,clk,t,enb,q,qbar);
    
    initial begin
        clk =0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        $dumpfile("T_flipflop.vcd");
        $dumpvars(0,TB_T_flipflop);
        $monitor("rst=%b enb=%b t=%b q=%b qbar=%b",rst,enb,t,q,qbar);
        rst = 1; t = 0; enb=1'b0; #10;
        
        rst= 0; enb = 0; #10; //hold
        
        t = 1; enb =1'b1; #10; //togglr
        
        t = 0; #10;   //hold
        $finish;
    end
endmodule
