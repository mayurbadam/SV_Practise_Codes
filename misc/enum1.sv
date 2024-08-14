/*
module enum1;
typedef enum {BLACK=1, RED = 3, YELLOW, GREEN} laptop;

laptop dell;
dell=RED;

if(dell = RED) $display("You should not buy this laptop");

if(dell = BLACK) $display("Buy compulsory");
else  $display (" chose other color ");
*/

module enum1;
typedef enum {BLACK=5, SILVER=23, WHITE = 8, RED, PINK} laptop;

initial begin
laptop dell1;
dell1 = BLACK;
$display ("laptop = %0d, colour = %s", dell1, dell1.name);
dell1 = SILVER;
$display ("laptop = %0d, colour = %s", dell1, dell1.next);
dell1 = WHITE;
$display ("laptop = %0d, colour = %s", dell1, dell1.name);
dell1 = RED;
$display ("laptop = %0d, colour = %s", dell1, dell1.name);
dell1 = PINK;
$display ("laptop = %0d, colour = %s", dell1, dell1.name);


end
endmodule



