module upcounter_tb;
reg clk, reset;
wire [3:0] counter;
up_counter up(clk, reset, counter);
initial
begin
$monitor("At time %2d, Clock:%b Counter:%b",$time,clk,counter);
clk = 1;
reset = 0;
#1 reset = 1;
#180 reset = 0;
#20 reset = 1;
#50 $finish;
end
always #5 clk=~clk;
endmodule

