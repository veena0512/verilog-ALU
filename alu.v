module alu (Y,sel,A,B);
input [7:0]A,B;
input [1:0]sel;
output reg [7:0]Y;
always @(*)
begin
    case(sel)
        2'b00: Y=A+B;   // Addition
        2'b01: Y=A-B;   // Subtraction
        2'b10: Y=A&B;   // AND
        2'b11: Y=A|B;   // OR
        default: Y=8'b00000000
    endcase
end
endmodule
