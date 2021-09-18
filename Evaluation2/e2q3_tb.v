module e2q3_tb();
reg a,b,c;
wire rw,rd,alu,mr,mw,mtor,br,j;

e2q3 e2q3tb(a,b,c,rw,rd,alu,mr,mw,mtor,br,j);
initial
begin
  $display(" | A | B | C | RW | RD | ALUsrc | MR | MW | MToR | Branch | J | ");
  $monitor(" | %b | %b | %b |  %b | %b  | %b | %b  | %b  | %b | %b  | %b | ",a, b, c,rw,rd,alu,mr,mw,mtor,br,j);
  a = 0; b = 0; c=1; #10;
  a = 0; b = 1; c=0; #10;
  a = 0; b = 1; c=1; #10;
  a = 1; b = 0; c=0; #10;
  a = 1; b = 0; c=1; #10;
  $finish;
end
endmodule
