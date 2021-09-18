module q1(A,B,C,Y);
input A,B,C;
output Y;
nandgate p(A,B,P);
norgate q(A,B,Q);
andgate f(P,Q,C,Y);
endmodule