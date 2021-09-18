//AND Testbench
module and_tb();
reg t_a,t_b;
wire t_y;

andgate andtb(t_a, t_b, t_y);
initial
begin
  $display(" | a | b | y | ");
  $monitor(" | %b | %b | %b | ",t_a, t_b, t_y);
  t_a = 0; t_b = 0; 
  t_a = 0; t_b = 1; 
  t_a = 1; t_b = 0; 
  t_a = 1; t_b = 1;
  $finish;
end
endmodule

