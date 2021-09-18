module full_adder(a,b,cin,cout,s);
input a,b,cin;
output cout,s;
half_adder p1(a,b,s1,c1);
half_adder p2(s1,cin,s,c2);
or(cout,c1,c2);
endmodule 
