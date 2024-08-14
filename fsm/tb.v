`define CD 10
module tb;
	reg clk=0,rstn;
	reg [1:0] coin;
	wire pr,ch;

	vending_machine v1(clk,rstn,coin,pr,ch);

	always #(`CD/2) clk = ~clk;

	task reset();
	begin
		rstn = 0;
		#`CD;
		rstn = 1;
	end
	endtask

	initial begin
	$monitor("product: %b, change: %b", pr,ch);
		#5 reset();
		#10;
		//repeat(1000)
		//	#10 coin = $urandom_range(2,0);
		
		//IDLE -> 0 ->... 
		#10 coin = 0;
		#10 coin = 1;
		#10 coin = 1;
		#10 coin = 1;

		#10 coin = 0;
		#10 coin = 1;
		#10 coin = 1;
		#10 coin = 2;

		#10 coin = 0;
		#10 coin = 2;
		#10 coin = 1;
			
		#10 coin = 0;
		#10 coin = 2;
		#10 coin = 2;

		#10 coin = 0;
		#10 coin = 1;
		#10 coin = 0;
		#10 coin = 1;
		#10 coin = 0;
		#10 coin = 1;

		#10 coin = 0;
		#10 coin = 1;
		#10 coin = 0;
		#10 coin = 1;
		#10 coin = 0;
		#10 coin = 2;

		
		#10 coin = 0;
		#10 coin = 2;
		#10 coin = 0;
		#10 coin = 1;

		#10 coin = 0;
		#10 coin = 2;
		#10 coin = 0;
		#10 coin = 2;

		//IDLE -> 1 -> ... 
		#10 coin = 1;
		#10 coin = 1;
		#10 coin = 1;
		#10 coin = 1;
		#10 coin = 2;
		#10 coin = 1;
		#10 coin = 1;
		#10 coin = 2;
		#10 coin = 2;
		#10 coin = 1;
		#10 coin = 0;
		//IDLE -> 2 -> ... 
		#10 coin = 2;
		#10 coin = 0;
		#10 coin = 1;
		#10 coin = 2;
		#10 coin = 2;

		
		//TIMEOUT
		#10 coin = 1;
		#150 coin =1;
		#10 coin = 2;
		#150 coin =2;
		#10 coin = 1;
		#10 coin = 1;
		#10 coin = 0;
		#10 coin = 1;
		#150 coin =2;
		#10 coin = 2;
		#150 coin =2;
		#10 coin = 1;
		#10 coin = 1;
		#150 coin =2;
		#10 $finish;

	end
endmodule
