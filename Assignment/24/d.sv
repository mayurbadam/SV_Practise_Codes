/*********************************************************************************************************************************
 * Name                 : d.sv
 * Creation Date        : 25-03-2022
 * Last Modified        : 25-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Q. Write five time consuming tasks with a condition that all tasks should end at different instances
 										Execute any three tasks concurrently and the remaining two tasks also should run concurrently irrespective of the status of those three tasks.
********************************************************************************************************************************/
module xyz;
	task t1();
		$display($time, " Task 1 - started");
		#10 $display($time, " Task 1 - done");
	endtask
	
	task t2();
		$display($time, " Task 2 - started");
		#20 $display($time, " Task 2 - done");
	endtask
	
	task t3();
		$display($time, " Task 3 - started");
		#30 $display($time, " Task 3 - done");
	endtask
	
	task t4();
		$display($time, " Task 4 - started");
		#40 $display($time, " Task 4 - done");
	endtask
	
	task t5();
		$display($time, " Task 5 - started");
		#50 $display($time, " Task 5 - done");
	endtask
	
	
	initial begin
		begin
			fork
				t1();
				t2();
				t3();
			join_none

			fork
				t4();
				t5();
			join
		end
	end
endmodule
