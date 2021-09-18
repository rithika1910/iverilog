module e2q2_tb();
reg a,b,s1,s0;
wire y;

mux4x1 e2q2tb(a,b,s1,s0,y);
initial
begin
  $display(" | A | B | S1 | S0 | Y | ");
  $monitor(" | %b | %b | %b  | %b  | %b | ",a,b,s1,s0,y);
  a=0;b=0;s1=0;s0=0;#10;
  a=0;b=1;s1=0;s0=0;#10;
  a=1;b=0;s1=0;s0=0;#10;
  a=1;b=1;s1=0;s0=0;#10;

  a=0;b=0;s1=0;s0=1;#10;
  a=0;b=1;s1=0;s0=1;#10;
  a=1;b=0;s1=0;s0=1;#10;
  a=1;b=1;s1=0;s0=1;#10;

  a=0;b=0;s1=1;s0=0;#10;
  a=0;b=1;s1=1;s0=0;#10;
  a=1;b=0;s1=1;s0=0;#10;
  a=1;b=1;s1=1;s0=0;#10;

  a=0;b=0;s1=1;s0=1;#10;
  a=0;b=1;s1=1;s0=1;#10;
  a=1;b=0;s1=1;s0=1;#10;
  a=1;b=1;s1=1;s0=1;#10;

  $finish;
end
endmodule
