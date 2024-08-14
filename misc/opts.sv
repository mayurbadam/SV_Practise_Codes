module opts;
logic [3:0] m= 4'h4;
logic [3:0] n= 4'h9;
logic [2:0] p= 4'o5;
logic [3:0] a= 4'h4;
logic [3:0] b= 4'h9;
logic [3:0] c= 4'h5;
logic [3:0] d= 4'h0;
logic [7:0] e= 8'h17;


initial begin
$display("m: %d, n: %d ~m: %d, ~n: %d !m: %d, !n: %d !(!n): %d",m,n,~m,~n, !m, !n, !(!n)); 
$display("m+n: %d, m*n: %d",m+n,m*n); 
$display("m&n: %d, m&&n: %d m|n: %d, m||n: %d",m&n,m&&n,m|n, m||n); 
$display("m==a: %B, n===b: %d m|n: %d, m||n: %d",m&n,m&&n,m|n, m||n); 
$display("m&n: %d, m&&n: %d m|n: %d, m||n: %d",m&n,m&&n,m|n, m||n); 
$display("e: %d ",e);
end
endmodule
