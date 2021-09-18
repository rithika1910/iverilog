module full_adder(a,b,cin,cout,s);
input a,b,cin;
output cout,s;
xor(d,a,b);
and(e,d,cin);
and(f,a,b);
or(cout,e,f);
xor(s,d,cin);
endmodule


