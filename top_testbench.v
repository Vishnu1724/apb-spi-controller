module spi_top_module_tb();
       reg PCLK, PRESET_n, PWRITE_i, PSEL_i, PENABLE_i, miso_i;
       reg [2:0]PADDR_i;
       reg [7:0]PWDATA_i;
       wire ss_o, sclk_o, spi_interrupt_request_o, mosi_o, PREADY_o, PSLVERR_o;
       wire [7:0]PRDATA_o;
		 
       integer i;

       //Instantiation
 spi_top_module DUT (.PCLK(PCLK), .PRESET_n(PRESET_n), .PADDR_i(PADDR_i), 
 .PWRITE_i(PWRITE_i), .PSEL_i(PSEL_i), .PENABLE_i(PENABLE_i), .PWDATA_i(PWDATA_i),
 .miso_i(miso_i), .ss_o(ss_o), .sclk_o(sclk_o), .PREADY_o(PREADY_o), .PSLVERR_o(PSLVERR_o), 
 .PRDATA_o(PRDATA_o), .spi_interrupt_request_o(spi_interrupt_request_o), .mosi_o(mosi_o));
       
		 
		 initial begin
               PCLK = 1'b0;
               forever #10 PCLK = ~PCLK;
       end
		 
		 
       task reset();
               begin
                       @(negedge PCLK);
                       PRESET_n = 1'b0;
                       @(negedge PCLK);
                       PRESET_n = 1'b1;
               end
       endtask
		 
		 
		 
       task write( input [7:0]CR1,CR2,BR);
               begin
                       @(posedge PCLK);
                       PADDR_i = 3'd0;
                       PWRITE_i = 1'b1;
                       PSEL_i = 1'b1;
                       PENABLE_i = 1'b0;
                       PWDATA_i = CR1;
                       
							  @(posedge PCLK);
                       PADDR_i = 3'd0;
                       PENABLE_i = 1'b1;
                       PWDATA_i = CR1;
							  PWRITE_i = 1'b1;
							  PSEL_i = 1'b1;
                       
							  @(posedge PCLK);
                       wait(PREADY_o);
							  PENABLE_i = 1'b0;
                       
							  @(posedge PCLK);
                       PADDR_i = 3'd1;
                       PWRITE_i = 1'b1;
                       PSEL_i = 1'b1;
                       PENABLE_i = 1'b1;
                       PWDATA_i = CR2;
							  
							  @(posedge PCLK)
							  wait(PREADY_o)
							  PENABLE_i = 1'b0;
                       
							  @(posedge PCLK);
                       PADDR_i = 3'd1;
                       PENABLE_i = 1'b1;
                       PWDATA_i = CR2;
							  PWRITE_i = 1'b1;
							  PSEL_i = 1'b1;
                       
							  @(posedge PCLK);
                       wait(PREADY_o);
							  PENABLE_i = 1'b0;
							  
							  
							  @(posedge PCLK);
                       PADDR_i = 3'd2;
                       PENABLE_i = 1'b1;
                       PWDATA_i = BR;
							  PWRITE_i = 1'b1;
							  PSEL_i = 1'b1;
                       
							  @(posedge PCLK);
                       wait(PREADY_o);
							  PENABLE_i = 1'b0;
               end
       endtask
       task write_data_register(input [7:0]DR);
               begin
                       @(posedge PCLK);
                       PADDR_i = 3'd5;
                       PWRITE_i = 1'b1;
                       PSEL_i = 1'b1;
                       PENABLE_i = 1'b0;
                       PWDATA_i = DR;
                       
							  @(posedge PCLK);
                       PENABLE_i = 1'b1;
                       
							  @(posedge PCLK);
                       PENABLE_i = 1'b0;
                       PSEL_i = 1'b1;
               end
       endtask
		 
		 
       task write_miso_data_high_lsbfe(input[7:0]miso_data);
               begin
					        
                       wait(~ss_o);
							  @(posedge sclk_o);
                       miso_i = miso_data[0];
							//  @(negedge sclk_o);
                       for(i=1; i<=7; i=i+1) 
							  begin
                               @(posedge sclk_o);
                               miso_i = miso_data[i];
                       end
               end
       endtask
		 task write_miso_data_for10_lsbfe(input[7:0]miso_data);
               begin
					        
                       wait(~ss_o);
							  @(negedge sclk_o);
                       miso_i = miso_data[0];
                       for(i=1; i<=7; i=i+1) 
							  begin
                               @(negedge sclk_o);
                               miso_i = miso_data[i];
                       end
               end
       endtask 
		 
       initial begin
               reset();
					write(8'b11111011, 8'b11010000, 8'h01);
               write_data_register(8'hAA);
               write_miso_data_for10_lsbfe(8'b10101011);
					
       end
		 
endmodule 

