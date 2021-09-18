module q2_tb;
reg[5:0] fc;
reg[1:0] opcode;
wire[8:0] csig;
q2 q2_tb(opcode,fc,csig);
initial
    begin
        $display("opcode | funcode     | Control signal");
        $monitor("%b     | %b      |   %b ",opcode,fc,csig);
        opcode=00;fc=000000;#10;//sw
        opcode=01;fc=000000;#10;//beq
        opcode=10;fc=100000;#10;//add
    end
endmodule