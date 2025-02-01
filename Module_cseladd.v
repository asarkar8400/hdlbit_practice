module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin1, cin2, cin3;
    wire cout1, cout2, cout3;
    wire [15:0] sum1, sum2, sum3;
    
    assign cin1 = 1'b0;
    assign cin2 = 1'b0;
    assign cin3 = 1'b1;
    
    assign sum1 = sum[15:0];
  
    add16 lower(a[15:0], b[15:0], cin1, sum1, cout1);
    add16 upper1(a[31:16], b[31:16], cin2, sum2, cout2);
    add16 upper2(a[31:16], b[31:16], cin3, sum3, cout3);
    
    assign sum = cout1 ? {sum3, sum1} : {sum2, sum1};
    
endmodule
