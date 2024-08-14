module fact();
	int a,fact;

	function automatic int factorial(int f);
	begin
		if(f<=1) begin
			if(f==0) return 1;
			return f;
		end
		else// begin   
			factorial = f*(factorial(f-1));
			$display("factorial of %0d: %0d",f,factorial);
	end
	endfunction

	initial begin
	  a=5;
	  fact=factorial(a);
	  $display("a:%0d, a!:%0d",a,fact);
	end

endmodule
