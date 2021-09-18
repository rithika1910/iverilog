module and_using_nand (a,b,y);
input a,b;
output y;
nandgate s1(a,b,c);
nandgate s2(c,c,y);
endmodule


