module up_counter(clk, reset, counter_up);
input clk, reset;
output reg [3:0] counter_up;
// up counter
/*This always block will be triggered at the rising edge of clk (0->1).Once inside this block,it checks if the reset is 0,
if yes then change out to zero.If reset is 1,then design should be allowed to count up,so increment counter*/
always @(posedge clk)
begin
if(reset==0)
counter_up <= 4'b0000;
else
counter_up <= counter_up + 4'b0001;
end
endmodule