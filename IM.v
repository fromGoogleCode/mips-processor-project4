module IM(clk,address,instruction);
	input clk;
	input [3:0] address;
	output [31:0] instruction;
	reg [31:0] InstMem;
	
	
	always@(*) begin
    case(address[3:0])
      4'b : InstMem=32'b;	//add
      4'b : InstMem=32'b;	//sub
      4'b : InstMem=32'b; //lw
      4'b : InstMem=32'b; //sw
      4'b : InstMem=32'b; //beq
      4'b : InstMem=32'b; //ori
      4'b : InstMem=32'b; //j
      4'b : InstMem=32'b; //and 
		4'b : InstMem=32'b; //slt
    endcase
  end
  assign instruction=InstMem;
  endmodule