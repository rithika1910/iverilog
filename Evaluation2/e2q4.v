module mux8x1(d7,d6,d5,d4,d3,d2,d1,d0,s0,s1,s2,y);
input d7,d6,d5,d4,d3,d2,d1,d0,s0,s1,s2;
output y;
mux2x1 p1(d0,d1,s0,d0d1);
mux2x1 p2(d2,d3,s0,d2d3);
mux2x1 p3(d4,d5,s0,d4d5);
mux2x1 p4(d6,d7,s0,d6d7);

mux2x1 p5(d0d1,d2d3,s1,d0d1d2d3);
mux2x1 p6(d4d5,d6d7,s1,d4d5d6d7);

mux2x1 p7(d0d1d2d3,d4d5d6d7,s2,y);

endmodule 
