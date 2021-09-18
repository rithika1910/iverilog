//NOT Testbench
module not_tb();
reg t_a;
wire t_y;

notgate nottb(t_a,t_y);
initial
begin
  $display(" | a | y | ");
  $monitor(" | %b | %b | ",t_a,t_y);
  t_a = 0; #10;
  t_a = 1; #10;
  $finish;
end
endmodule


