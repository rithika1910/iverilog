module sevensegdisp(enable,xin, yout);
input[3:0] xin; 
input enable;
output[6:0] yout;
reg[6:0] yout;
always @(xin or enable)
begin
    if(enable==1)
        case(xin)
            4'b0000:yout=7'b1111110;
            4'b0001:yout=7'b0110000;
            4'b0010:yout=7'b1101101;
            4'b0011:yout=7'b1111001;
            4'b0100:yout=7'b0110011;
            4'b0101:yout=7'b1011011;
            4'b0110:yout=7'b1011111;
            4'b0111:yout=7'b1110000;
            4'b1000:yout=7'b1111111;
            4'b1001:yout=7'b1111011;
            default:yout=7'b0000000;
        endcase
    else
        yout=7'b0000000;
end
endmodule


