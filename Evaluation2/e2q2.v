module mux4x1(a,b,s1,s0,y);
input a,b,s1,s0;
output y;
half_adder p1(a,b,i0);
half_sub p2(a,b,i1);
and(i2,a,b);
or(i3,a,b);

mux2x1 p3(i0,i1,s0,m1);
mux2x1 p4(i2,i3,s0,m2);
mux2x1 p5(m1,m2,s1,y);
endmodule
