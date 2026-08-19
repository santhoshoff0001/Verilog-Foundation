`timescale 1ns / 1ps


module TB_SR_flipflop;
    reg rst,clk,s,r;
    wire q,qbar;
    integer i;
    
    SR_flipflop dut (rst,clk,s,r,q,qbar);
    
    initial begin
        clk=0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        $dumpfile("SR_flipflop.vcd");
        $dumpvars(0,TB_SR_flipflop);
        $monitor("rst=%b  s=%b r=%b q=%b qbar=%b",rst,s,r,q,qbar);
        rst=1; s=0; r=0; #10;
        
        rst=0;#10;
        
        for(i=0;i<4;i=i+1) begin
            {s,r} = i; #10;

        end
        $finish;
    end
endmodule
