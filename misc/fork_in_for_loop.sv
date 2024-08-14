/*********************************************************************************************************************************
 * Name                 : .sv
 * Creation Date        : --2022
 * Last Modified        : --2022
----------------------------------------------------------------------------------------------------------------------------------
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
----------------------------------------------------------------------------------------------------------------------------------
 * Description          : 
**********************************************************************************************************************************/

module xyz;
   //int i;
   task display(int x);
      $display("@%0d: %0d",$time,x);
   endtask

   initial begin
   for(int i=0; i<5; i++) begin
      fork
         display(i);
         display(10);
      join_none
      #10;
   end
   end
endmodule
