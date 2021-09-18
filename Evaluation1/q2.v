module q2(A,B,P,Q,R);
input A,B;
output P,Q,R;
not(A1,A);
not(B1,B);
and(P,A,B1);
and(R,A1,B);
xnor(Q,A,B);
endmodule

