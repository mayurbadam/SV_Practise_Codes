module loops;
logic [3:0] a,b;
logic [0:3] c [3:0] = {12,2,6,11};

initial begin

foreach (c[i]) begin
$display("c[%0d] is %0d",i, c[i]);

end
end




endmodule
