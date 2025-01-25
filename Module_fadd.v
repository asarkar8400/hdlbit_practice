module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	
    wire [15:0] sum1, sum2;
    wire cin1, cin2, cout1, cout2;
    
    assign sum2 = sum[31:16];
    assign sum1 = sum[15:0];
    assign cin2 = cout1;
    
    add16 lower(a[15:0], b[15:0], cin1, sum1, cout1);
    add16 upper(a[31:16], b[31:16], cin2, sum2, cout2);

    assign sum = {sum2, sum1};
endmodule

module add1 ( input a, input b, input cin, output sum, output cout );
	assign sum = a ^ b ^ cin;
	assign cout = a&b | a&cin | b&cin;  
endmodule
