`timescale 1ns/1ps

module tb_half_subtractor;

    reg a,b;
    wire diff,borrow;

    half_subtractor dut (.a(a),.b(b),.diff(diff),.borrow(borrow));

    initial begin
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0,tb_half_subtractor);
    end

    initial begin
        $monitor("a : %b b : %b diff : %b borrow : %b",a,b,diff,borrow);

        {a,b} = 2'b00; #10;
        {a,b} = 2'b01; #10;
        {a,b} = 2'b10; #10;
        {a,b} = 2'b11; #10;
    end
endmodule
