`timescale 1ns / 1ns

module Control(
    input [5:0] opcode,
    
    output reg RegDst,  //This decides the reg3_addr of register file(i.e 3rd input rd), it will be 1 for R-type and 0 for lw in J-type, for other instruction it is don't care
    output reg jump,    //IF Jump Instruction set 1 Used by Mux to update PC accordingly
    output reg branch,  //If branching instr. set 1, Used by an AND gate to choose address for updateing PC to branch address
    output reg MemRead, //If we want to read from Data Memory i.e In case of LoadWord
    output reg MemtoReg, //Decide if write_data in Reg File will be from ALU_result or Data_Mmemory
    output reg MemWrite, //If we want to write data set 1 i.e In case of StoreWord
    output reg ALUsrc,  //Decide if Operand_2 will be a register or Offset(i.e 15:0 bits of Instruction)
    output reg RegWrite,    //Write enable for writing in Register File
    
    output reg [1:0] ALUop //Which Operation ALU will perform will be selected here
    );
    
always@(*) begin
    case(opcode) 
        6'b000_000 : begin         ///R-type
            RegDst <= 1'b1;
            jump <= 1'b0;
            branch <= 1'b0;
            {MemRead,MemWrite} <= {1'b0,1'b0};
            MemtoReg <= 1'b0;
            ALUsrc <= 1'b0;
            RegWrite <= 1'b1;
            ALUop <= 2'b10;
        end
        
        6'b100_011 : begin         ///Loadword I-type
            RegDst <= 1'b0;
            jump <= 1'b0;
            branch <= 1'b0;
            {MemRead,MemWrite} <= {1'b1,1'b0};
            MemtoReg <= 1'b1;
            ALUsrc <= 1'b1;
            RegWrite <= 1'b1;
            ALUop <= 2'b00;
        end
        
        6'b101_011 : begin         ///StoreWord I-type
            RegDst <= 0;  //Don't Care
            MemtoReg <= 1'b1;   //Don't Care
            jump <= 1'b0;
            branch <= 1'b0;
            {MemRead,MemWrite} <= {1'b0,1'b1};
            ALUsrc <= 1'b1;
            RegWrite <= 1'b0;
            ALUop <= 2'b00;
        end
        
        6'b000_100 : begin         ///Branch_If_Equal I-type
            //  RegDst = 1;  //Don't Care
            jump <= 1'b0;
            branch <= 1'b1;
            {MemRead,MemWrite} <= {1'b0,1'b0};
            ALUsrc <= 1'b0;
            RegWrite <= 1'b0;
            ALUop <= 2'b01;
        end
        
        6'b000_010 : begin         ///Jump J-type
            //  RegDst = 1;  //Don't Care
            jump <= 1'b1;
           // branch = 0; //Don't Care
           {MemRead,MemWrite} <= {1'bx,1'b0};
           RegWrite <= 1'b0;
           ALUop <= 2'bxx;
        end
        
        default: begin
            {MemRead,MemWrite} <= {1'b0,1'b0};
        end
    endcase
end 
    
endmodule
