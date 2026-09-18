`timescale 1ns / 1ps


module full_subtractor_tb;
   reg a_tb,b_tb,cin_tb;
   wire diff_tb,borrow_tb;
   
   full_subtractor dut (a_tb,b_tb,cin_tb,diff_tb,borrow_tb);
   initial
      begin
        $dumpfile("full_subtractor.vcd");
        $dumpvars(0,full_subtractor_tb);
      end
   initial 
     begin 
        $monitor(" a : %d b : %d cin : %d diff : %d borrow : %d ",a_tb,b_tb,cin_tb,diff_tb,borrow_tb);
        
        for(integer i = 0;i <8;i = i+1) begin
            {a_tb,b_tb,cin_tb} = i;
            #10;
        end
        $finish;
      end  
        
    
endmodule