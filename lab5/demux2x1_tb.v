module demux2x1_tb();
reg t_a,t_b;
wire t_y1,t_y0;

demux2x1 demux2x1tb(t_a, t_b, t_y1, t_y0);
initial
begin
  $display(" | S | D | Y1 | Y0 | ");
  $monitor(" | %b | %b | %b  | %b  | ",t_a, t_b, t_y1, t_y0);
  t_a = 0; t_b = 0; #10;
  t_a = 0; t_b = 1; #10;
  t_a = 1; t_b = 0; #10;
  t_a = 1; t_b = 1; #10;
  $finish;
end
endmodule


