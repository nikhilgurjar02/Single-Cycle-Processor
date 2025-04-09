`timescale 1ns / 1ps

module ALU_Control(
    input [1:0] ALUop,
    input [5:0] func,
    output reg [2:0] op_select,
    output reg jump_reg
    );

//ALUop == 00 means lw or sw Instruction
//ALUop == 01 means beq instruction so we subtract to compare;
//ALUop == 10 means R-type so we check function field for op_select

always@(*) begin
    case(ALUop)
        2'b00 :begin
                 op_select = 3'b010; // ADD
                 jump_reg = 1'b0;
               end  
        2'b01 :begin
                 op_select = 3'b110; // Sub
                jump_reg = 1'b0;
               end 
        2'b11 : begin
                op_select = 3'b111; // Less than operator (opA < opB)
                jump_reg = 1'b0;
                end
        2'b10 : begin              //R-Type instruction
            case(func)
                 6'b000_000 :begin
                              op_select = 3'b010; //Let function = 000_001 for ADD
                              jump_reg = 1'b0;
                              end
                 6'b000_001 : begin
                               op_select = 3'b110; //Let function = 000_001 for Subtract
                               jump_reg = 1'b0;
                               end
                 6'b000_010 : begin 
                               op_select = 3'b000; //Let function = 000_001 for AND
                                jump_reg = 1'b0;
                              end  
                 6'b000_011 : begin 
                               op_select = 3'b001; //Let function = 000_001 for OR
                                jump_reg = 1'b0;
                              end  
                 6'b000_100 : begin 
                                op_select = 3'b111; //Let function = 000_001 for Set if Less Than
                                jump_reg = 1'b0;
                               end 
                 6'b000_101 : begin 
                                op_select = 3'b011; //Let function = 000_101 for Shift Left Logical
                                jump_reg = 1'b0;
                             end   
                 6'b000_110 :begin
                                 op_select = 3'b010; // Function for Jump_reg i.e add 0 with rs
                                 jump_reg = 1'b1;   
                            end
             //    default : jump_reg = 1'b0;           
            endcase
        end
        default : jump_reg = 1'b0;
    endcase
end    
    
endmodule
