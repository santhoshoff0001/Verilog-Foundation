`timescale 1ns / 1ps


module full_adder_tb;
   reg a_tb,b_tb,cin_tb;
   wire sum_tb,carry_tb;
   
   full_adder dut (a_tb,b_tb,cin_tb,sum_tb,carry_tb);
   initial
      begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0,full_adder_tb);
      end
   initial 
     begin 
        $monitor(" a_fa : %d b_fa : %d cin_fa : %d sum_fa : %d carry _fa : %d ",a_tb,b_tb,cin_tb,sum_tb,carry_tb);
        
        {a_tb,b_tb,cin_tb} = 3'b000;#5;
        {a_tb,b_tb,cin_tb} = 3'b001;#5;
        {a_tb,b_tb,cin_tb} = 3'b010;#5;
        {a_tb,b_tb,cin_tb} = 3'b011;#5;
        {a_tb,b_tb,cin_tb} = 3'b100;#5;
        {a_tb,b_tb,cin_tb} = 3'b101;#5;
        {a_tb,b_tb,cin_tb} = 3'b110;#5;
        {a_tb,b_tb,cin_tb} = 3'b111;#5;
        
      end  
        
    
endmodule
