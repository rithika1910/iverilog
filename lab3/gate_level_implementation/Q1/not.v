module gatelevelnot();
reg a;
wire y;

not(y,a);
initial
begin
  $display(" | a | y | ");
  $monitor(" | %b | %b | ",a,y);
 
  a = 0; #10;
  a = 1; #10;
  $finish;
end
endmodule

