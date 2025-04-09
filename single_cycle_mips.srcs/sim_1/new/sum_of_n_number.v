`timescale 1ns / 1ns
//Testbench
//Testbench
module sum_of_n_number();
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
    test_address = 32'd64;  //Storing 1 for register
    test_data = 8'd1;
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
    test_address = 32'd68;  //Store n = first n natural number
    test_data = 8'd4;
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
    test_data = 8'd0;
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
#20;    //Instruction 1 lw i =1 in r1
//In reg32 we have base address which is zero initially, so adding 64 to it will load address 64's data into reg1
instruction_input_address = 32'd0;       //load word from 64 address of mem into reg1 
instruction_input = 32'b100011__11111__00001__0000000001000000;//rs(i.e reg32) have base address == 0 and offset = 64
                 // lw--opcode__rs_____rt_____offset

//Let r2 store sum         

#20;    //Instruction 2 lw n in r3
//In reg32 we have base address which is zero initially, so adding 68 to it will load address 68's data into reg3
instruction_input_address = 32'd4;       //load word from 68 address of mem into reg3
instruction_input = 32'b100011__11111__00011__0000000001000100;//rs(i.e reg32) have base address == 0 and offset = 68
                 // lw--opcode__rs_____rt_____offset
                 
#20;    //Instruction 3  lw 1 in r4
//In reg32 we have base address which is zero initially, so adding 64 to it will load address 64's data into reg5
instruction_input_address = 32'd8;       //load word from 64 address of mem into reg4 
instruction_input = 32'b100011__11111__00100__0000000001000000;//rs(i.e reg32) have base address == 0 and offset = 64
                 // lw--opcode__rs_____rt_____offset
                 
#20;    //Instruction 4   add n = n + 1
instruction_input_address = 32'd12;       //opcode for R type and function for add = 000000 
instruction_input = 32'b000000__00011__00100__00011_00000_000000;//
                // add--opcode__&rs____&rt____&rd___shamt_aluop
                
#20;    //Instruction 5 LOOP : beq i == n EXIT
//Branch if Equal 
instruction_input_address = 32'd16;     //if register 1st(i) and register 3rd(n) are equal branch +12 from current address
instruction_input = 32'b000100__00001__00011__0000000000000011;//
                 // beq-opcode__&rs_____&rt_____offset 
                 
#20;    //Instruction 5   sum = sum + i
instruction_input_address = 32'd20;       //opcode for R type and function for add = 000000 
instruction_input = 32'b000000__00010__00001__00010_00000_000000;//
                // add--opcode__&rs____&rt____&rd___shamt_aluop 

#20;    //Instruction 6  i = i + 1
instruction_input_address = 32'd24;       //opcode for R type and function for add = 000000 
instruction_input = 32'b000000__00100__00001__00001_00000_000000;//
                // add--opcode__&rs____&rt____&rd___shamt_aluop  
                 

#20;    //Instruction 7 jump back to loop
instruction_input_address = 32'd28;        
instruction_input = 32'b000010__00000__00000__00000_00000_000100;//
                // jump-opcode_____________offset________________  

                                          
#20;    //Instruction 8 Exit ie store back sum in data mem
instruction_input_address = 32'd32;       //store word to 72 address of mem from reg2 
instruction_input = 32'b101011__11111__00010__0000000001001100;
                 // sw--opcode__&rs_____&rt_____offset 
                                                                    

#20; 
rst = 1'b0; 

end  


endmodule

