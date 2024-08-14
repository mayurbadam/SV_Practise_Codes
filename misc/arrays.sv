module arrays;
int arr[$];

initial begin
arr.push_back(10);
$display("%0d, %0d, %0d",arr[0], arr[$], arr.size());
arr.push_back(9);
$display("%0d, %0d, %0d",arr[0], arr[$], arr.size());
end
endmodule
