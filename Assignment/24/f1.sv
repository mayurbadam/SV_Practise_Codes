/*********************************************************************************************************************************
 * Name                 : d.sv
 * Creation Date        : 25-03-2022
 * Last Modified        : 25-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Q. Write five time consuming tasks with a condition that all tasks should end at different instances
 										Execute task 1,2,3 concurrently, Now the task 4 should start to execute if any one of the tasks above started completed its execution, And task 5 should execute only after the completion of task 1,2, and 3.
********************************************************************************************************************************/
module xyz;
	event e1,e2;
	task t1();
		$display($time, " Task 1 - started");
		#70 $display($time, " Task 1 - done");
	endtask
	
	task t2();
		$display($time, " Task 2 - started");
		#40 $display($time, " Task 2 - done");
	endtask
	
	task t3();
		$display($time, " Task 3 - started");
		#10 $display($time, " Task 3 - done");
	endtask
	
	task t4();
		$display($time, " Task 4 - started");
		#100 $display($time, " Task 4 - done");
	endtask
	
	task t5();
		$display($time, " Task 5 - started");
		#50 $display($time, " Task 5 - done");
	endtask
	
	
	initial begin
		fork: F3
			begin
				fork : F2
					begin
						fork : F1
							t1();       //fork t1 join 
							t2();       //fork 
							t3();
						join_any : F1
						-> e1;
					end
				join : F2
				->e2;
			end
			fork : F4
				@(e1.triggered) begin
					t4();
				end
				@(e2.triggered) begin
					t5();
				end
			join : F4
		join : F3
	end
endmodule
