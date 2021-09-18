module gatelevelxnor();
reg a;
reg b;
wire y;

xnor(y,a, b);
initial
begin
  $display(" | a | b | y | ");
  $monitor(" | %b | %b | %b | ", a, b, y);
 
  a = 0; b = 0; #10;
  a = 0; b = 1; #10;
  a = 1; b = 0; #10;
  a = 1; b = 1; #10;
  $finish;
end
endmodule

