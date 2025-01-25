module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] a1, a2, b1, b2, sum1, sum2;
    wire cin1, cout1, cin2, cout2;
    
    assign a2 = a[31:16];
    assign a1 = a[15:0];
    
    assign b2 = b[31:16];
    assign b1 = b[15:0];
    
    assign sum2 = sum[31:16];
    assign sum1 = sum[15:0];
    
    assign cin2 = cout1;
    
    add16 lower(a1, b1, cin1, sum1, cout1);
    add16 upper(a2, b2, cin2, sum2, cout2);
    
    assign sum = {sum2, sum1};

endmodule
