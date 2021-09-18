module mux2x1(a,b,s,y);
input a,b,s;
output y;
and(c,b,s);
not(s1,s);
and(d,s1,a);
or(y,c,d);
endmodule

