module demux2x1(s,d,y1,y0);
input s,d;
output y0,y1;
not(s1,s);
and(y0,s1,d);
and(y1,s,d);
endmodule


