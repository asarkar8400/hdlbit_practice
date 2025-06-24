module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin1, cin2;
    wire cout1, cout2, cout3;
    wire [15:0] sum1, sum2, sum3;
    
    assign cin1 = 1'b0;
    assign cin2 = 1'b1;
    
    add16 instance1(.a(a[15:0]), .b(b[15:0]), .cin(cin1), .sum(sum1), .cout(cout1));
    add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(cin1), .sum(sum2), .cout(cout2));
    add16 instance3(.a(a[31:16]), .b(b[31:16]), .cin(cin2), .sum(sum3), .cout(cout3));
    
    always @ (*) begin
        if(cout1 == 1)
            sum = {sum3, sum1};
        else
            sum = {sum2, sum1};
    end 
endmodule
