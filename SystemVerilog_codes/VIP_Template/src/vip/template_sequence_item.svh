`ifndef template_sequence_item
`define template_sequence_item

class template_sequence_item extends uvm_object;
   // UVM Factory Registration
   //
   `uvm_object_utils(template_sequence_item)

   //----------------------------------------------
   // Data Members
   //----------------------------------------------
   rand bit                       m_template_en;
   rand logic [`DATA_WIDTH - 1:0] m_template_wr_data;
   rand logic [`DATA_WIDTH - 1:0] m_template_rd_data;
   rand logic [`ADDR_WIDTH - 1:0] m_template_addr;

   //----------------------------------------------
   // Constraints
   //----------------------------------------------
   constraint c_template_en {m_template_en == 1'b1;}
   constraint c_template_wr_data {m_template_wr_data inside {[0:`MAX_DATA_RANGE]};}
   constraint c_template_addr    {m_template_wr_data inside {[0:`MAX_ADDR_RANGE]};}

   //----------------------------------------------
   // Methods
   //----------------------------------------------
   extern function new(string name="template_sequence_item");
endclass

function template_sequence_item::new(string name="template_seqeunce_item");
   super.new(name);
endfunction

`endif
