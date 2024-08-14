module functions2;
   int a1,a2,a3,p1,p2,p3;

   task automatic assign_r(ref int y, x);// without ref we cannot assign_ different values to a single variable also, by passing lhs,rhs as parameters
	  y=x;
	  //$display(y,x);
   endtask//:assign_l//label can be given to task

   task automatic assign_l(ref int y,x);
	  y=x;
	  //$display(y,x);
   endtask//:assign_l//label can be given to task

   initial begin
	  p1='d5;
	  p2='d7;
	  p3='d9;
	  $display("a1, a2, a3, p1, p2, p3: %0d %0d %0d %0d %0d %0d",a1,a2,a3,p1,p2,p3);
	  assign_l(a1,p1);
	  $display("a1, a2, a3, p1, p2, p3: %0d %0d %0d %0d %0d %0d",a1,a2,a3,p1,p2,p3);
	  assign_l(a2,p2);
	  $display("a1, a2, a3, p1, p2, p3: %0d %0d %0d %0d %0d %0d",a1,a2,a3,p1,p2,p3);
	  assign_l(a3,p3);
	  $display("a1, a2, a3, p1, p2, p3: %0d %0d %0d %0d %0d %0d",a1,a2,a3,p1,p2,p3);

	 // assign_r(a1,p1);
	 // $display("a1, a2, a3, p1, p2, p3: %0d %0d %0d %0d %0d %0d",a1,a2,a3,p1,p2,p3);
	 // assign_r(a1,p2);
	 // $display("a1, a2, a3, p1, p2, p3: %0d %0d %0d %0d %0d %0d",a1,a2,a3,p1,p2,p3);
	 // assign_r(a1,p3);
	 // $display("a1, a2, a3, p1, p2, p3: %0d %0d %0d %0d %0d %0d",a1,a2,a3,p1,p2,p3);
   end
endmodule
