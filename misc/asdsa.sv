module asds;
logic a;

initial begin
a=0;
forever begin
a = ~a;
$display("%d", a);
end
end
endmodule
