module q2(opcode,fc,cs);
input[1:0] opcode;
input[5:0] fc; 
output[8:0] cs;
reg[8:0] cs;
always @(fc or opcode)
begin
    if(opcode==00) begin
        if(fc==000000)
            cs=9'b010001000; end
    else if (opcode==01) begin
        if(fc==000000)
        cs=9'b000000101; end
    else
        cs=9'b100100010;
end

endmodule