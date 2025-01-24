module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] d1, d2, d3;
    wire [7:0] q1, q2, q3;
    
    assign d1 = d;
    assign d2 = q1;
    assign d3 = q2;
    
    my_dff8 instance1(clk, d1, q1);
    my_dff8 instance2(clk, d2, q2);
    my_dff8 instance3(clk, d3, q3);
    
    always@(*) begin
        case (sel)
            2'b00: q = d1;
            2'b01: q = d2;
            2'b10: q = d3;
            2'b11: q = q3;
        endcase 
    end
endmodule
