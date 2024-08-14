class abc;
  bit[15:0] word = 16'b0000_0000_0000_0000;
  randc bit [3:0] idx;
  //constraint c_idx{ idx inside {[0:15]};};

//  function new(string name = "A");
//    super.new(name);
//  endfunction : new

  task drive_wlk_one();
      word[idx] = 1'b1;
      $display("@%t: word: %b",$time,word);
      #2ns;
      word = 16'h0;
      //$display("@%t: word: %b",$time,word);
  endtask
endclass

module abcd;
  abc A;

  initial begin
    A = new();
    for(int i=50; i<66; i++) begin
      A.randomize();
      A.drive_wlk_one();
      $display("@%t: i: %0d",$time,i);
    end
    A.word = $urandom_range('h1,'h15);
    $display("@%t: word: %0d",$time,A.word);
    for(int i=32; i <=42; i++) begin
      if(i inside {37,38,41}) continue;
      $display("i: %d",i);
    end

  end
endmodule

