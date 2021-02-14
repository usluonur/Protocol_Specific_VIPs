interface template_if(input logic clk,
                      input rst_n);
   timeunit 1ns; timeprecision 1ns;

   // Signal bundle
   logic [`DATA_WIDTH-1:0] template_wr_data;
   logic [`DATA_WIDTH-1:0] template_rd_data;
   logic [`ADDR_WIDTH-1:0] template_addr;

   task transfer(template_package::template_sequence_item m_item);
      @(posedge clk);
      template_wr_data <= m_item.template_wr_data;
      template_rd_data <= m_item.template_rd_data;
      template_addr    <= m_item.template_addr;
   endtask
endinterface

