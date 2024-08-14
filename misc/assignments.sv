module assignments();
reg [127:0] a,b,c;

initial begin
a=10; b=15;
#1 a=5; b=65;
end
always_comb begin
c=a+b;
$monitor("%0d = %0d + %0d", c,a,b);
end

/*
initial begin
a <= 256;
a <= 7376;
$display ("At time %0t a<= %0d, b<= %0d, c<= %0d", $time, a,b,c);
#50 b<= 231;
$display ("At time %0t a<= %0d, b<= %0d, c<= %0d", $time, a,b,c);
c<= 235;
$display ("At time %0t a<= %0d, b<= %0d, c<= %0d", $time, a,b,c);
end


initial begin
a <= 74345;
#10 $display ("At time %0t a<= %0d, b<= %0d, c<= %0d", $time, a,b,c);
b<= 500;
#10 $display ("At time %0t a<= %0d, b<= %0d, c<= %0d", $time, a,b,c);
c<= 123;
#10 $display ("At time %0t a<= %0d, b<= %0d, c<= %0d", $time, a,b,c);
end */
endmodule
