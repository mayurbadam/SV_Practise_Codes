module tasks;
int x,y,z,a,b;

task disp(int x);
   $display("number is %0d",x, $time);
   #10;
   $display("task can have delay", $time);
   return;
   $display("This line will not be displayed");
endtask

task automatic mul2(int x);//outside value cannot be changed
   x = x*2;
endtask

task automatic mul2_ref(ref int x);
   x = x*2;
endtask

initial begin
   x='d100;
   y='d1200;
   z='d123;
   a='d25;
   b='d35;
   disp(x);
   disp(y);
   disp(z);
$display("--------------");
   mul2(a);
   disp(a);
   mul2_ref(b);
   disp(b);

end
endmodule
