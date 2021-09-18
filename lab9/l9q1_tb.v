module testbench;
reg Clock;
reg D;
reg Rst;
wire Q;
integer i;
d_ff q1_testbech(Clock,D,Rst,Q);
initial
begin
    D = 0;
    #8 D= 1;
    #10 D= 0;
    #10 D= 0;
    #10 D =1;
    #10 D =0;
    #10 D = 1;
    #40;
end
initial 
 begin
    Clock = 0;
    for ( i =0; i <=10; i= i+1)
    #10 Clock = ~Clock;
end
initial 
 begin
     $monitor("Clock=%d  D=%d  Q=%d",Clock,D,Q);
 end
endmodule