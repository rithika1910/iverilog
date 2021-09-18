module mux4x1_using_2x1mux(s0,s1,i0,i1,i2,i3,y);
input s0,s1,i0,i1,i2,i3;
output y;
mux2x1 p1(i0,i1,s0,m1);
mux2x1 p2(i2,i3,s0,m2);
mux2x1 p3(m1,m2,s1,y);
endmodule

