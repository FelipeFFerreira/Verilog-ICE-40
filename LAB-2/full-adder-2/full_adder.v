/*
   Full-Adder
   Structure by data flow
*/

module full_adder 
(
        //Port declaration
            //Inputs            
            input a,
            input b,
            input cin,
            //Outputs
            output s,
            output cout
);
	// Wire (net) declarations (internal to module)
	wire p, g;

    assign p = a ^ b;
    assign g = a & b;

    // Create output logic
    assign s = p ^ cin;
    assign cout = g | (p &cin);
 	
endmodule
