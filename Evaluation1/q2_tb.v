module q2_tb();
reg t_a,t_b;
wire t_p,t_q,t_r;

q2 q2tb(t_a, t_b, t_p, t_q, t_r);
initial
begin
  $display(" | A | B | P | Q | R | ");
  $monitor(" | %b | %b | %b | %b | %b | ",t_a, t_b, t_p, t_q, t_r);
  t_a = 0; t_b = 0; #10;
  t_a = 0; t_b = 1; #10;
  t_a = 1; t_b = 0; #10;
  t_a = 1; t_b = 1; #10;
  $finish;
end
endmodule

