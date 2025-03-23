`timescale 1ns / 1ns

module instruction_memory(
    input [31:0] address,   //Address of instruction to Fetch   
    output [31:0] instruction, //Fetched Instruction out
    
    //Test Inputs
    input [31:0] instruction_input, //Writing Instruction to Memory
    input [31:0] instruction_input_address //Writing Instruction to Memory at this address 
    );

reg [7:0] instruction_mem [63:0] ;  //Word Address so each instruction = 32 bits

assign instruction[7:0] = instruction_mem[address] ;
assign instruction[15:8] = instruction_mem[address+1] ;
assign instruction[23:16] = instruction_mem[address+2] ;
assign instruction[31:24] = instruction_mem[address+3] ;

 
//Testing
always@(instruction_input_address) begin
    instruction_mem[instruction_input_address] = instruction_input[7:0];
    instruction_mem[instruction_input_address + 32'd1] = instruction_input[15:8];
    instruction_mem[instruction_input_address + 32'd2] = instruction_input[23:16];
    instruction_mem[instruction_input_address + 32'd3] = instruction_input[31:24];
end
  
endmodule
