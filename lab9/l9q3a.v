module sci(in,op,type,rs,rt,rd,address,jump_address,control_signals);
input[31:0] in;
output[5:0] op; 
reg[5:0] op;
output[2:0] type;
reg[2:0] type;
output[4:0] rs;
reg[4:0] rs;
output[4:0] rt;
reg[4:0] rt;
output[4:0] rd;
reg[4:0] rd;
output[4:0] control_signals;
reg[4:0] control_signals;
output[15:0] address;
reg[15:0] address;
output[25:0] jump_address;
reg[25:0] jump_address;
always @(in)
begin
op=in[32:26];
case(op)
 6'b000000:begin
  type=3'b001;
  control_signals=5'b10010;
  rs=in[26:21];
  rt=in[21:16];
  rd=in[16:10];
  address=16'bxxxxxxxxxxxxxxxx;
  jump_address=26'bxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end 
 6'b100011:begin
  type=3'b010;
  control_signals=5'b11000;
  rs=in[26:21];
  rt=in[21:16];
  rd=5'bxxxxx;
  address=in[16:0];
  jump_address=26'bxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end
 6'b101011:begin
  type=3'b010;
  control_signals=5'b00100;
  rs=in[26:21];
  rt=in[21:16];
  rd=5'bxxxxx;
  address=in[16:0];
  jump_address=26'bxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end
 6'b000100:begin
  type=3'b010;
  control_signals=5'b00001;
   rs=in[26:21];
  rt=in[21:16];
  rd=5'bxxxxx;
  address=in[16:0];
  jump_address=26'bxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end
 6'b000010:begin
  type=3'b100;
  control_signals=5'bxxxxx;
  rs=5'bxxxxx;
  rt=5'bxxxxx;
  rd=5'bxxxxx;
  address=16'bxxxxxxxxxxxxxxxx;
  jump_address=in[26:0];
  end 
endcase
end
endmodule