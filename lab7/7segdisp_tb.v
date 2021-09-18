module sevensegdisp_tb;
reg[3:0] button;
reg enable;
wire[6:0] yout;
sevensegdisp sevensegdisp_tb(enable,button,yout);
initial
    begin
        $display("E num. abcdefg");
        $monitor("%b %b %b",enable,button,yout);
        enable=0;button=4'b0000;#10;
        enable=1;button=4'b0000;#10;
        enable=1;button=4'b0001;#10;
        enable=1;button=4'b0010;#10;
        enable=1;button=4'b0011;#10;
        enable=1;button=4'b0100;#10;
        enable=1;button=4'b0101;#10;
        enable=1;button=4'b0110;#10;
        enable=1;button=4'b0111;#10;
        enable=1;button=4'b1000;#10;
        enable=1;button=4'b1001;#10;
    end
endmodule