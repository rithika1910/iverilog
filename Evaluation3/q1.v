module q1(enable,xin,yout);
input[3:0] xin; 
input enable;
output[2:0] yout;
reg[2:0] yout;
always @(xin or enable)
begin
    if(enable==1)
        case(xin)
            4'b0000,4'b0010,4'b0100,4'b0110,4'b0111,4'b1001,4'b1011:yout=3'b001;
            4'b0001:yout=3'b100;
            4'b0010,4'b0011,4'b0101,4'b1000,4'b1010:yout=3'b010;            
            default:yout=3'b000;
        endcase
    else
        yout=3'b000;
end
endmodule
