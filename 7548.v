//-----------------------------------------------------------------------------
//
// Title       : top_module
// Design      : 7458
// Author      : aritro.sarkar9000@gmail.com
// Company     : Stony Brook University
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/7458/src/7548.v
// Generated   : Fri Jan 10 11:59:31 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : Design of a 7548 chip
//
//-----------------------------------------------------------------------------

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire and1;
    wire and2;
    wire and3;
    wire and4;
    wire or1;
    wire or2;
    
    assign and1 = p1a & p1b & p1c;
    assign and2 = p2a & p2b;
    assign and3 = p1f & p1e & p1d;
    assign and4 = p2c & p2d;
    
    assign or1 = and1 | and3;
    assign or2 = and2 | and4;
    
    assign p1y = or1;
    assign p2y = or2;

endmodule
