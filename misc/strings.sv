module tb_strings;

string str1 = "Hello", str2="WELCOME";
string tmp;
initial begin 

$display ("%s", str1);

$display("length = " , str1.len());
tmp = str1;
tmp.putc(4,"!");
$display("new string = " , tmp);
$display("lower case = " , str2.tolower());
$display("substring = " , str1.substr(2,4));

foreach (str1[i]) begin

$display ("%s",str1[i]);

#5;
$display("%5d",str1.atoi());
end
end
endmodule
