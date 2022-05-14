// Testbench for full adder
 `timescale 1ns / 1ps

module test;
    
    reg a, b, cin; //  UUT inputs
    wire s, cout; // UUT outputs

    full_adder uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
    
    initial begin
        a = 0;
        b = 0;
        cin = 0;
        
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, test);

        #10
        cin = 1;
        #10
        b = 1; cin = 0;
        #10
        cin = 1;
        #10
        a = 1; b = 0; cin = 0;
        #10
        cin = 1;
        #10
        b = 1; cin = 0;
        #10
        cin = 1;

        #20 $finish;
    end

endmodule
