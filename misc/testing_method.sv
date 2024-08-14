/*********************************************************************************************************************************
 * Name                 : .sv
 * Creation Date        : --2022
 * Last Modified        : --2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : 
**********************************************************************************************************************************/
class a;
int abc=20;
task build(int abc);
this.abc = abc;
endtask

task disp();
$display(abc);
endtask
endclass

module a2;

a a1;

initial begin
a1=new();
a1.disp();
a1.build('d100);
a1.disp();
end

endmodule
