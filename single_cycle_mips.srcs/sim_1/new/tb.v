`timescale 1ns / 1ns
//Testbench
module tb();
reg clk;
reg rst;
reg [31:0] instruction_input;
reg [31:0] instruction_input_address;
reg [31:0] test_address;
reg [31:0] test_data;

datapath dut(.clk(clk),.rst(rst),.instruction_input(instruction_input),.instruction_input_address(instruction_input_address),.test_address(test_address),.test_data(test_data));

always #150 clk = ~clk ;

initial begin
    clk = 1'b0;
    rst = 1'b0;
    #20;
    rst = 1'b1;
    #40;
    test_address = 32'd64;
    test_data = 8'd11;
    #10;
    test_address = 32'd65;
    test_data = 8'd0;
    #10;
    test_address = 32'd66;
    test_data = 8'd0;
    #10;
    test_address = 32'd67;
    test_data = 8'd0;
    #10;
    test_address = 32'd68;
    test_data = 8'd13;
    #10;
    test_address = 32'd69;
    test_data = 8'd0;
    #10;
    test_address = 32'd70;
    test_data = 8'd0;
    #10;
    test_address = 32'd71;
    test_data = 8'd0;
    #10;
    test_address = 32'd72;
    test_data = 8'd17;
    #10;
    test_address = 32'd73;
    test_data = 8'd0;
    #10;
    test_address = 32'd74;
    test_data = 8'd0;
    #10;
    test_address = 32'd75;
    test_data = 8'd0;
  end  

initial begin
#20;    //Instruction 1
//In reg32 we have base address which is zero initially, so adding 64 to it will load address 64's data into reg5
instruction_input_address = 32'd0;       //load word from 64 address of mem into reg5 
instruction_input = 32'b100011__11111__00100__0000000001000000;//rs(i.e reg32) have base address == 0 and offset = 64
                // lw--opcode__rs_____rt_____offset
         
#20;    //Instruction 2
//In reg32 we have base address which is zero initially, so adding 68 to it will load address 68's data into reg2
instruction_input_address = 32'd4;       //load word from 68 address of mem into reg2 
instruction_input = 32'b100011__11111__00001__0000000001000100;//rs(i.e reg32) have base address == 0 and offset = 68
                 // lw--opcode__rs_____rt_____offset

#20;    //Instruction 3
//add reg2 and reg5 data and put result in reg 16
instruction_input_address = 32'd8;       //opcode for R type and function for add = 000000 
instruction_input = 32'b000000__00001__00100__01111_00000_000000;//
                // add--opcode__&rs____&rt____&rd___shamt_aluop  
         
#20;    //Instruction 4
//In reg16 we have base address which is 24, so adding 48 to it will load address 72th data into reg1
instruction_input_address = 32'd12;       //load word from 72 address of mem into reg1 
instruction_input = 32'b100011__01111__00000__0000000000110000;//rs(i.e reg16) have base address == 24 and offset = 48
                 // lw--opcode__&rs_____&rt_____offset

#20;    //Instruction 5
//In reg16 we have base address which is 24, so adding 52 to it will store data of reg16 in address 76th of memory
instruction_input_address = 32'd16;       //store word from reg 16(rt) to 76th address(rs + offset) of mem 
instruction_input = 32'b101011__01111__01111__0000000000110100;//rs(i.e reg16) have base address == 24 and offset = 52
                 // sw--opcode__&rs_____&rt_____offset  


#20;    //Instruction 6
//OR reg5 and reg6 data and put result in reg 6
instruction_input_address = 32'd20;       //opcode for R type and function for OR = 000011 
instruction_input = 32'b000000__00100__00101__00101_00000_000011;//
                // OR--opcode__&rs____&rt____&rd___shamt_aluop 

#20;    //Instruction 7
//In reg16 we have base address which is 24, so adding 40 to it will store data of reg16 in address 64th of memory
instruction_input_address = 32'd24;       //store word from reg 16(rt) to 64th address(rs + offset) of mem 
instruction_input = 32'b101011__01111__00000__0000000000101000;//rs(i.e reg16) have base address == 24 and offset = 40
                // sw--opcode__&rs_____&rt_____offset


#20;    //Instruction 8
//Branch if Equal 
instruction_input_address = 32'd28;     //if register 5th and register 6th are equal branch -32 from current address
instruction_input = 32'b000100__00100__00101__1111111111111000;//
                 // beq-opcode__&rs_____&rt_____offset 

#20;    //Instruction 9
//add register 16 and register 6 data and put result in register 1
instruction_input_address = 32'd32;       //opcode for R type and function for add = 000000 
instruction_input = 32'b000000__01111__00101__00000_00000_000000;//
                // add--opcode__&rs____&rt____&rd___shamt_aluop
          
#20;    //Instruction 10
//Jump to 4th instruction
//it is at 3rd place in word location as 1st instruction is at word location 0 i.e 0,1,2,3)
//We will already be multiplying 3rd loc by 4 (3*4=12) in datapath as our memory is Byte oriented
instruction_input_address = 32'd36;       //Jump to address 12 
instruction_input = 32'b000010__0000000000__0000000000000011;//
                // jump-opcode__offset______________________

#20;    //Instruction 11 This will never be executed as 10th instruction is jump 
//add register 2nd and register 3rd data and put result in register 4th
instruction_input_address = 32'd40;       //opcode for R type and function for add = 000000 
instruction_input = 32'b000000__00001__00010__00011_00000_000000;//
         // add--opcode__&rs____&rt____&rd___shamt_aluop                                                                      

#20; 
rst = 1'b0; 

end  


/*
initial begin
  #40;
    test_address = 32'd64;
    test_data = 8'd4;
  #20
   
//Instruction 1     
instruction_input_address = 32'd0;       
instruction_input = 32'b001111__00000__00010__0000000011111111;
                
         
#20;    //Instruction 2
instruction_input_address = 32'd4;       
instruction_input = 32'b001010__00010__00011__0000000011111110;

#20;    //Instruction 3

instruction_input_address = 32'd8;       
instruction_input = 32'b001010__00000__00011__0000000011111110;
         
#20;    //Instruction 4

instruction_input_address = 32'd12;       
instruction_input = 32'b000000__11111__00011__00000_00010_000101;
                // sll--opcode__&rs____&rt____&rd___shamt_aluop  

#20;  //Instruction 5
instruction_input_address = 32'd16;       //load word from 64 address of mem into reg5 
instruction_input = 32'b100011__11111__00100__0000000001000000;//rs(i.e reg32) have base address == 0 and offset = 64
                
#20;    //Instruction 6

instruction_input_address = 32'd20;       
instruction_input = 32'b000000__00100__11111__00100_00000_000110;
                //  jr--opcode__&rs____&rt____&rd___shamt_aluop   

#70; 
rst = 1'b0; 

end */


endmodule
