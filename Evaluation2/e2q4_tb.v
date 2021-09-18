module mux8x1_using_2x1mux_tb();
reg d7,d6,d5,d4,d3,d2,d1,d0,s0,s1,s2;
wire y;

mux8x1 muxtb(d7,d6,d5,d4,d3,d2,d1,d0,s0,s1,s2,y);
initial
begin
  $display(" | d7 | d6 | d5 | d4 | d3 | d2 | d1 | d0 | s0 | s1 | s2 | y | ");
  $monitor(" | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b  | %b | ",d7,d6,d5,d4,d3,d2,d1,d0,s0,s1,s2,y);
  d7 = 0; d6 = 0; d5 = 0; d4 = 0; d3 = 0; d2 = 0; d1 = 0; d0 = 0; s0=0; s1=0; s2=0; #10;
  d7 = 0; d6 = 0; d5 = 0; d4 = 1; d3 = 0; d2 = 0; d1 = 0; d0 = 1; s0=0; s1=1; s2=0; #10;
  d7 = 0; d6 = 0; d5 = 1; d4 = 0; d3 = 0; d2 = 0; d1 = 1; d0 = 0; s0=0; s1=1; s2=1; #10;
  d7 = 0; d6 = 1; d5 = 1; d4 = 1; d3 = 0; d2 = 1; d1 = 1; d0 = 1; s0=0; s1=0; s2=0; #10;
  d7 = 0; d6 = 1; d5 = 0; d4 = 0; d3 = 0; d2 = 1; d1 = 0; d0 = 0; s0=0; s1=1; s2=1; #10;
  d7 = 0; d6 = 1; d5 = 0; d4 = 1; d3 = 0; d2 = 1; d1 = 0; d0 = 1; s0=1; s1=1; s2=0; #10;
  $finish;
end
endmodule
