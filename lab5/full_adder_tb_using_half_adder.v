module full_adder_using_half_adder_tb();
reg t_a,t_b,t_cin;
wire t_cout,t_s;

full_adder_using_half_adder fulladdertb(t_a, t_b, t_cin, t_cout, t_s);
initial
begin
  $display(" | A | B | C-in | C-out | S | ");
  $monitor(" | %b | %b |  %b   |   %b   | %b | ",t_a, t_b, t_cin, t_cout, t_s);
  t_a = 0; t_b = 0; t_cin = 0 ; #10;
  t_a = 0; t_b = 0; t_cin = 1 ; #10;
  t_a = 0; t_b = 1; t_cin = 0 ; #10;
  t_a = 0; t_b = 1; t_cin = 1 ; #10;
  t_a = 1; t_b = 0; t_cin = 0 ; #10;
  t_a = 1; t_b = 0; t_cin = 1 ; #10;
  t_a = 1; t_b = 1; t_cin = 0 ; #10;
  t_a = 1; t_b = 1; t_cin = 1 ; #10;
  $finish;
end
endmodule
