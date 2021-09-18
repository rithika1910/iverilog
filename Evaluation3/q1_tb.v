module q1_tb;
reg[3:0] month;
reg enable;
wire[2:0] days;
q1 q1_tb(enable,month,days);
initial
    begin
        $display("E month days");
        $monitor("%b %b  %b",enable,month,days);
        enable=0;month=4'b0000;#10;
        enable=1;month=4'b0000;#10;
        enable=1;month=4'b0001;#10;
        enable=1;month=4'b0010;#10;
        enable=1;month=4'b0011;#10;
        enable=1;month=4'b0100;#10;
        enable=1;month=4'b0101;#10;
        enable=1;month=4'b0110;#10;
        enable=1;month=4'b0111;#10;
        enable=1;month=4'b1000;#10;
        enable=1;month=4'b1001;#10;
        enable=1;month=4'b1010;#10;
        enable=1;month=4'b1011;#10;
    end
endmodule
