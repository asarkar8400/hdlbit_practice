module top_module( 
    input a, b, sel,
    output out ); 
    
    always@(*) begin
        case(sel)
            0: out = a;
            default: out = b;
        endcase 
    end
endmodule
