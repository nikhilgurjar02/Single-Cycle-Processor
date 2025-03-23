`timescale 1ns / 1ns

module datapath #(parameter data_width = 32, parameter address_width = 5)
    (input clk,rst,
    //Instruction Memory Filling
    input [31:0] instruction_input, //Writing Instruction to Memory
    input [31:0] instruction_input_address, //Writing Instruction to Memory at this address 
    //Data Memory Filling
    input [31:0] test_address,
    input [31:0] test_data
    );


wire [data_width - 1 : 0] current_pc_address;
wire [data_width - 1 : 0] next_pc_address;
program_counter pc(.clk(clk),.rst(rst),.next_pc_address(next_pc_address),.current_pc_address(current_pc_address));      //PC
wire [data_width - 1 : 0] pc_four;      
assign pc_four = current_pc_address + 32'd4;        //PC ---> PC+4


wire [31:0] instruction;
instruction_memory inst_mem(.address(current_pc_address),.instruction(instruction),.instruction_input(instruction_input),.instruction_input_address(instruction_input_address));


wire [5:0] opcode;  
assign opcode = instruction[31:26] ;

wire RegDst;  //This decides the reg3_addr of register file(i.e 3rd input rd), it will be 1 for R-type and 0 for lw in J-type, for other instruction it is don't care
wire jump;    //IF Jump Instruction set 1 Used by Mux to update PC accordingly
wire branch;  //If branching instr. set 1, Used by an AND gate to choose address for updateing PC to branch address
wire MemRead; //If we want to read from Data Memory i.e In case of LoadWord
wire MemtoReg; //Decide if write_data in Reg File will be from ALU_result or Data_Mmemory
wire MemWrite; //If we want to write data set 1 i.e In case of StoreWord
wire ALUsrc;  //Decide if Operand_2 will be a register or Offset(i.e 15:0 bits of Instruction)
wire RegWrite;    //Write enable for writing in Register File
wire [1:0] ALUop;

Control controller(.opcode(opcode),.RegDst(RegDst),.jump(jump),.branch(branch),.MemRead(MemRead),.MemtoReg(MemtoReg),.MemWrite(MemWrite),.ALUsrc(ALUsrc),.RegWrite(RegWrite),.ALUop(ALUop));

wire [address_width - 1 : 0] reg1_addr;  ///rs of R-type Instruction
wire [address_width - 1 : 0] reg2_addr;  ///rt of R-type Instruction
wire [address_width - 1 : 0] reg3_addr;  ///rd of R-type and rt of I-type Instruction
wire [data_width - 1 : 0] write_data; ///Writing data into register file from ALU in R-type Instruction and from Data memory in I-type
wire [data_width -1 : 0] reg1_dataout;  ///this will be data output from reg file which will be going in ALU
wire [data_width -1 : 0] reg2_dataout;
reg_file register_file(.reg1_addr(reg1_addr),.reg2_addr(reg2_addr),.reg3_addr(reg3_addr),.write_data(write_data),.RegWrite(RegWrite),.clk(clk),.rst(rst),.reg1_dataout(reg1_dataout),.reg2_dataout(reg2_dataout));

assign reg1_addr = instruction[25:21];
assign reg2_addr = instruction[20:16];
assign reg3_addr = (RegDst == 1'b0) ? instruction[20:16] : instruction[15:11] ;
wire [data_width -1 : 0] MemtoReg_data;         //////****connect this later with MUX and Data Memory***** 
assign write_data = MemtoReg_data;

wire [2:0] op_select; // which operation to be done selected by controller
wire [data_width - 1 : 0] operand_a; // it will be always coming from rs of register file
wire [data_width - 1 :0] operand_b; // rt of R-Type , offset of lw,sw and rt for beq of I Type
wire [data_width - 1 :0] result;
wire zero; // Used in branch statement beq to compare if they are equal
alu_main alu_op(.op_select(op_select),.operand_a(operand_a),.operand_b(operand_b),.result(result),.zero(zero));

assign operand_a = reg1_dataout;

wire [31:0] sign_ext_data;
assign sign_ext_data = {{16{instruction[15]}},instruction[15:0]} ;
assign operand_b = (ALUsrc==1'b0) ? reg2_dataout : sign_ext_data;

wire [31:0] address;
assign address = result ;
//wire [31:0] write_data; we connect reg2_dataout with mem
//wire ren;
//wire wen; //read enable or write enable => ren_wen[1] = read_enable and ren_wen[0]= write_enable
wire [31:0] read_data;
data_memory data_mem(.clk(clk),.address(address),.write_data(reg2_dataout),.ren(MemRead),.wen(MemWrite),.read_data(read_data),.test_address(test_address),.test_data(test_data));

assign MemtoReg_data = (MemtoReg == 1'b1) ? read_data : result;
//assign address = result ;

wire [5:0] r_type_function;
assign r_type_function = instruction[5:0];
ALU_Control alu_op_control(.ALUop(ALUop),.func(r_type_function),.op_select(op_select));

wire [27:0] j_type_shift_left;
assign j_type_shift_left = {instruction[25:0], 2'b00};
wire [31:0] pc_jump_addr;
assign pc_jump_addr  = {pc_four[31:28] , j_type_shift_left};

wire [31:0] branch_shift_left_addr;
assign branch_shift_left_addr = {sign_ext_data[29:0],2'b00};
wire [31:0] pc_branch_addr;
assign pc_branch_addr = pc_four + branch_shift_left_addr;

wire branch_type_check;
assign branch_type_check = zero & branch;

wire [31:0] branch_add_or_pc_four;
assign branch_add_or_pc_four = (branch_type_check == 1'b1) ? pc_branch_addr : pc_four;

assign next_pc_address = (jump == 1'b1) ? pc_jump_addr : (rst == 1'b0) ? branch_add_or_pc_four : 32'd0 ;

endmodule
