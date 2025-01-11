//-----------------------------------------------------------------------------
//
// Title       : Vector1
// Design      : 7458
// Author      : aritro.sarkar9000@gmail.com
// Company     : Stony Brook University
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/7458/src/Vector1.v
// Generated   : Sat Jan 11 14:16:22 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : Solution to problem Vector1 in HDLBits
//
//-----------------------------------------------------------------------------

`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    
    assign out_hi = in[15:8];
    assign out_lo = in[7:0];

endmodule
