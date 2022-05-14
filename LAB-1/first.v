/*
    initial tests using structural approach
*/

// module combinational (
    
//     // inputs
//     input [1:0] pmod,

//     // Outputs
//     output [2:0] lmod
// );
//     //Declaration of intermediate wires
// 	wire w1;

//     // Circuit operation - structural approach
//     not u0 (lmod[0], ~pmod[0]);
//     not ux (lmod[1], ~pmod[0]);
//     not u2 (w1, ~pmod[1]);
//     and u1 (lmod[2], w1, lmod[0]);
   
// endmodule

module combinational (
        // inputs
        input [1:0] pmod,

        // outputs
        output [2:0] lmod
);
    // Wire (net) declarations (internal to module)
    wire not_pmod_0;
    
    // Continuous assignment: replicate 1 wire to 2 outputs
    assign not_pmod_0 = ~~pmod[0];
    assign lmod[1:0] = {2{not_pmod_0}};

    // Continuous assignment: NOT and AND operators
    assign lmod[2] = not_pmod_0 & ~~pmod[1];

endmodule