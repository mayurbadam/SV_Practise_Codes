 typedef enum int { // Discrete Input Signal Names.
                   PIN_GPIO_1,
                   PIN_GPIO_2,
                   PIN_GPIO_3,
                   PIN_GPIO_4,
                   PIN_GPIO_5,
                   PIN_GPIO_6,
                   PIN_GPIO_7,
                   PIN_GPIO_8,
                   PIN_GPIO_9,
                   PIN_GPIO_10,
                   PIN_GPIO_11,
                   PIN_GPIO_12
                  } pins_e;

module sub_string;
  int all_pins[pins_e];
  int pin = 0;
  string str,substr;
  int strlen;

  string forstr;

  initial begin

    //str = "DI_PIN_MON_DO_OG_EXT_28V_DIS_01_VMON";
    //strlen = str.len();
    //$display("string length: %0d", strlen);
    //substr = str.substr(7,strlen);
    //$display("substring: %s", substr);
    //$display("substring: %s", str.substr(7, str.len()-1));

    for(int i =0; i<12; i++) begin
      all_pins[i] = 0;
    end

    foreach(all_pins[sig_name]) begin
      //forstr = sig_name.name;
      if((pin != 'd3) && (pin != 'd6)) begin
        //`uvm_info("SEND_DI_PIN",$psprintf("sig_name: %0s, pin: %0d", sig_name.name.substr(7, str.len()-1)), pin),UVM_LOW)
        $display("sig_name: %0s: %0s, pin: %0d", sig_name.name,sig_name.name.substr(4, sig_name.name.len()-1), pin);
      end
      pin++;
    end
  end
endmodule
