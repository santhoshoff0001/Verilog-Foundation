`timescale 1ns / 1ps


module full_subtractor(input a_fs,b_fs,cin_fs, output reg diff_fs,borrow_fs);
     always@(*)
       begin
         diff_fs = a_fs ^ b_fs ^ cin_fs;
         borrow_fs = (~a_fs & b_fs) | (b_fs & cin_fs) | (cin_fs & ~a_fs);
       end
         
endmodule