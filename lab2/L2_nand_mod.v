//NAND Module
module nandgate(a,b,y);
input a,b;
output y;
assign y = !(a&b);    
endmodule

