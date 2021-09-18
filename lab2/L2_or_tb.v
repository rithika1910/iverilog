//OR Testbench
module or_tb();
reg t_a,t_b;
wire t_y;

orgate ortb(t_a,t_b,t_y);
initial
begin
  $display(" | a | b | y | ");
  $monitor(" | %b | %b | %b | ",t_a, t_b, t_y);
  t_a = 0; t_b = 0; #10;
  t_a = 0; t_b = 1; #10;
  t_a = 1; t_b = 0; #10;
  t_a = 1; t_b = 1; #10;
  $finish;
end
endmodule

