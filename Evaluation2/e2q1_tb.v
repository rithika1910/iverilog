module twobitadder_tb();
reg t_a0,t_a1,t_b0,t_b1;
wire t_c,t_s1,t_s0;

twobitadder twobitaddertb(t_a0,t_a1,t_b0,t_b1,t_c,t_s1,t_s0);
initial
begin
  $display(" | A1 | A0 | B1 | B0 | C  | S1 | S0 | ");
  $monitor(" | %b  | %b  | %b  | %b  | %b  | %b  | %b  | ",t_a0,t_a1,t_b0,t_b1,t_c,t_s1,t_s0);
  t_a0 = 0; t_a1=0; t_b0 = 0; t_b1 = 0 ; #10;
  t_a0 = 0; t_a1=0; t_b0 = 0; t_b1 = 1 ; #10;
  t_a0 = 0; t_a1=0; t_b0 = 1; t_b1 = 0 ; #10;
  t_a0 = 0; t_a1=0; t_b0 = 1; t_b1 = 1 ; #10;
  t_a0 = 0; t_a1=1; t_b0 = 0; t_b1 = 0 ; #10;
  t_a0 = 0; t_a1=1; t_b0 = 0; t_b1 = 1 ; #10;
  t_a0 = 0; t_a1=1; t_b0 = 1; t_b1 = 0 ; #10;
  t_a0 = 0; t_a1=1; t_b0 = 1; t_b1 = 1 ; #10;
  t_a0 = 1; t_a1=0; t_b0 = 0; t_b1 = 0 ; #10;
  t_a0 = 1; t_a1=0; t_b0 = 0; t_b1 = 1 ; #10;
  t_a0 = 1; t_a1=0; t_b0 = 1; t_b1 = 0 ; #10;
  t_a0 = 1; t_a1=0; t_b0 = 1; t_b1 = 1 ; #10;
  t_a0 = 1; t_a1=1; t_b0 = 0; t_b1 = 0 ; #10;
  t_a0 = 1; t_a1=1; t_b0 = 0; t_b1 = 1 ; #10;
  t_a0 = 1; t_a1=1; t_b0 = 1; t_b1 = 0 ; #10;
  t_a0 = 1; t_a1=1; t_b0 = 1; t_b1 = 1 ; #10;
  $finish;
end
endmodule