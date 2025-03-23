`timescale 1ns / 1ns

module dm_tb();
   reg [31:0] address;
    reg [31:0] write_data;
    reg ren;
    reg wen;  //read enable or write enable => ren_wen[1] = read_enable and ren_wen[0]= write_enable
    wire [31:0] read_data;
    
    //Testing Inputs
    reg [31:0] test_address;
    reg [7:0] test_data;

data_memory dut(.address(address),.write_data(write_data),
                .ren(ren),.wen(wen),.read_data(read_data),
                .test_address(test_address),.test_data(test_data));
      
initial begin

    test_address = 32'b0;
    test_data = 8'd2;
    #10;
    test_address = 32'd1;
    test_data = 8'd0;
    #10;
     test_address = 32'd2;
    test_data = 8'd0;
    #10;
    test_address = 32'd3;
    test_data = 8'd0;
    #10;
    test_address = 32'd4;
    test_data = 8'd3;
    #10;
    test_address = 32'd5;
    test_data = 8'd0;
    #10;
    test_address = 32'd6;
    test_data = 8'd0;
    #10;
    test_address = 32'd7;
    test_data = 8'd0;
    #10;
    test_address = 32'd30;
    test_data = 8'd0;
    #10;
    ren = 1'b1;
    address = 32'b0;
    #10;
    ren = 1'b1;
    address = 32'd4;
    #10;
    ren = 1'b0;
    wen = 1'b0;
    address = 32'd2;
    write_data = 32'd8;
    #10
    wen = 1'b1;
    address = 32'd20;
    write_data = 32'd5;
    #10;
    wen = 1'b0;   
end                    
    
endmodule
