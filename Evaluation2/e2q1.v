module twobitadder(a1,a0,b1,b0,c,s1,s0);
input a0,a1,b0,b1;
output c,s1,s0;
xorgate p1(a0,b0,s0);
andgate p2(a0,b0,c0);
xorgate p3(a1,b1,a1b1xor);
andgate p4(a1,b1,a1b1and);
xorgate p5(c0,a1b1xor,s1);
andgate p6(c0,a1b1xor,d);
orgate p7(a1b1and,d,c);
endmodule