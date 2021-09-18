//AND Testbench
module and_tb();
reg t_a,t_b;
//initializing the wire 't_y=0'
wire t_y=0;

andgate andtb(t_a, t_b, t_y);
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





