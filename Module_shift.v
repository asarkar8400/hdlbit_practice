module top_module ( input clk, input d, output q );
    
    wire q1, q2, q3;
    wire d1, d2, d3;
    
    assign d1 = d;
    assign d2 = q1;
    assign d3 = q2;
    assign q = q3;
    
    my_dff instance1(clk, d1, q1);
    my_dff instance2(clk, d2, q2);
    my_dff instance3(clk, d3, q3);

endmodule
