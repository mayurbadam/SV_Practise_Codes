`define IDLE  3'b000
`define RS1  3'b001
`define RS2  3'b010
`define PRODUCT 3'b011
`define CHANGE 3'b100

module vending_machine(clk,
			rstn,
			coin,
			pr,
			ch);

input clk, rstn;
input [1:0] coin;
output pr,ch;


/*parameter IDLE = 3'b000,
	RS1 = 3'b001,
	RS2 = 3'b010,
	PRODUCT = 3'b011,
	CHANGE = 3'b100;
*/

reg [2:0] pr_state, next_state;

wire time_out;

always@(posedge clk)
	if(!rstn)
		pr_state <= `IDLE;
	else if (time_out)
	   pr_state <= `IDLE;
	else begin
		pr_state <=next_state;
	end

//--------------------------- TIMER LOGIC --------------------------------------------
parameter TIME_OUT = 20,
          COUNTER_WIDTH = 5;


reg [2:0] temp_state;

wire state_change_detected;

reg [(COUNTER_WIDTH-1):0] timer;

//pipelined pr_state
always@(posedge clk)
 temp_state <= pr_state;


//state change detection logic
assign state_change_detected = (pr_state != temp_state);
 
//timer logic
always@(posedge clk)
 if (!rstn)
    timer <= 5'd0;
 else if (timer == TIME_OUT || state_change_detected)
    timer <= 5'd0;
 else if (pr_state != `IDLE)
    timer <= timer + 1'b1;
 
 //timeout
 assign time_out = (timer == TIME_OUT) ? 1'b1 : 1'b0; 
 
always@(pr_state,coin) begin
	case(pr_state)
		`IDLE :if (coin ==1)
			next_state=`RS1;
		else if (coin == 2)
			next_state=`RS2;
		else
			next_state= `IDLE;

		`RS1: 	if(coin ==1) begin
				next_state=`RS2;
				end
		else if (coin==2) begin
			next_state = `PRODUCT;
			end
		//else if (time_out) 
		//	next_state = `CHANGE;

		else
			next_state = `RS1;


		`RS2: 
		if (coin ==1) begin
			next_state = `PRODUCT;
						end
						
		else if (coin ==2) begin
			next_state= `CHANGE;
			end
			
		//else if (time_out) 
		//	next_state = `CHANGE;

		else
			next_state =`RS2;
			`PRODUCT : next_state = `IDLE;

		`CHANGE : next_state = `IDLE;
		default : next_state = `IDLE;
	endcase
end

assign pr = (pr_state == `PRODUCT)||(pr_state == `CHANGE);

assign ch = (pr_state == `CHANGE);

endmodule
