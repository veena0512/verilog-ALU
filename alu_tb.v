module alu_tb;
reg [7:0] A, B;
reg [1:0] sel;
wire [7:0] Y;
alu uut(Y,sel,A,B);
initial 
  begin
    // Test addition
    A = 8'd10; B = 8'd5; sel = 2'b00;

    // Test subtraction
    #10 A = 8'd15; B = 8'd3; sel = 2'b01;

    // Test AND
    #10 A = 8'd12; B = 8'd10; sel = 2'b10;

    // Test OR
    #10 A = 8'd12; B = 8'd10; sel = 2'b11;
    #10 $stop;
end
endmodule
