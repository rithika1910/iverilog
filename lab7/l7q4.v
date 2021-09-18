module Decoder2to4(EN,A,B,Y0,Y1,Y2,Y3);
input EN,A,B;
output Y0,Y1,Y2,Y3;
    assign Y0=(EN & ~A & ~B);
    assign Y1=(EN & ~A & B);
    assign Y2=(EN & A & ~B);
    assign Y3=(EN & A & B);
endmodule
module Decoder2to4_tb;
reg EN,A,B;
wire Y0,Y1,Y2,Y3;
Decoder2to4 decoder(.EN(EN), .A(A), .B(B), .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3));
initial
begin
    $display("EN | A | B | Y0 | Y1 | Y2 | Y3");
    $monitor("%b  | %b | %b | %b  | %b  | %b  | %b  ",EN,A,B,Y0,Y1,Y2,Y3);
    EN=1'b0; A=1'bX; B=1'bX; #10;
    EN=1'b1; A=1'b0; B=1'b0; #10;
    EN=1'b1; A=1'b0; B=1'b1; #10;
    EN=1'b1; A=1'b1; B=1'b0; #10;
    EN=1'b1; A=1'b1; B=1'b1; #10;
    $finish;
end
endmodule