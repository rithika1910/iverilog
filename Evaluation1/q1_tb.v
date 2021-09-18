module q1_tb();
reg t_a,t_b,t_c;
wire t_y;

q1 q1tb(t_a, t_b, t_c, t_y);
initial
begin
  $display(" | a | b | c | y | ");
  $monitor(" | %b | %b | %b | %b | ",t_a, t_b, t_c, t_y);
  t_a = 0; t_b = 0; t_c = 0 ; #10;
  t_a = 0; t_b = 0; t_c = 1 ; #10;
  t_a = 0; t_b = 1; t_c = 0 ; #10;
  t_a = 0; t_b = 1; t_c = 1 ; #10;
  t_a = 1; t_b = 0; t_c = 0 ; #10;
  t_a = 1; t_b = 0; t_c = 1 ; #10;
  t_a = 1; t_b = 1; t_c = 0 ; #10;
  t_a = 1; t_b = 1; t_c = 1 ; #10;
  $finish;
end
endmodule
