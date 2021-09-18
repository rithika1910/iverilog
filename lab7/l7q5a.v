module encoder;
reg a,b,c,d,e,f,g,h;
wire q0,q1,q2;

or(q0,h,g,f,e);
or(q1,h,g,d,c);
or(q2,h,f,d,b);

initial
begin
    $display("D1|D2|D3|D4|D5|D6|D7|D8|B1|B2|B3");
    $monitor("%b |%b |%b |%b |%b |%b |%b |%b |%b |%b |%b ",a,b,c,d,e,f,g,h,q0,q1,q2);
    a=1;b=0;c=0;d=0;e=0;f=0;g=0;h=0;#10;
    a=0;b=1;c=0;d=0;e=0;f=0;g=0;h=0;#10;
    a=0;b=0;c=1;d=0;e=0;f=0;g=0;h=0;#10;
    a=0;b=0;c=0;d=1;e=0;f=0;g=0;h=0;#10;
    a=0;b=0;c=0;d=0;e=1;f=0;g=0;h=0;#10;
    a=0;b=0;c=0;d=0;e=0;f=1;g=0;h=0;#10;
    a=0;b=0;c=0;d=0;e=0;f=0;g=1;h=0;#10;
    a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=1;#10;
    $finish;
end
endmodule