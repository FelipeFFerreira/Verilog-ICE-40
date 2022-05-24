`timescale 10ns/1ps
module frequencydiv;

     output reg clk, rst;
     input wire[3:0] out_clk;

     frequency_divider freq_tb(clk, rst, out_clk);
     
     initial
          clk = 1'b0;

     always
          #1 clk = ~clk;

     initial begin
          $monitor($time,"clk = %b, rst = %b, out_clk = %b", clk, rst, out_clk);

          rst = 0;
          #1 rst = 1;
          #31 $finish;
     end
     
     initial begin
          $dumpfile ("frequencydiv.vcd");
          $dumpvars (0,frequencydiv);
     end

endmodule