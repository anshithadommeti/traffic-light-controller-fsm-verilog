module traffic_light_tb;
  reg clk;
  reg reset;
  wire red;
  wire green;
  wire yellow;
  traffic_light DUT(
    .clk(clk),
    .reset(reset),
    .red(red),
    .green(green),
    .yellow(yellow)
);
  always #5 clk= ~clk;
  initial begin
    $dumpfile("traffic_light.vcd");
    $dumpvars(0,traffic_light_tb);
    $monitor("time=%0t | reset=%b | red=%b | green=%b | yellow=%b | state=%b",
             $time,reset,red,yellow,green,DUT.current_state);
    reset=1;
    clk=0;
    #10;
    reset=0;
    #10;
    #10;
    #10;
    #10;
    #10;
    #10;
    $finish;
  end
endmodule
    
    