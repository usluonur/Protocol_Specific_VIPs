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
   extern function void do_copy(uvm_object rhs);
   extern function bit do_compare(uvm_object rhs, uvm_comparer comparer);
   extern function string convert2string();
   extern function void do_print(uvm_printer printer);
   extern function void do_record(uvm_recorder recorder);
endclass

function template_sequence_item::new(string name="template_seqeunce_item");
   super.new(name);
endfunction

function void template_sequence_item::do_copy(uvm_object rhs);
   template_sequence_item rhs_;

   if (!$cast(rhs_, rhs))
      `uvm_fatal("do_copy", "Cast of rhs object has failed")

   super.do_copy(rhs);
endfunction


function bit template_sequence_item::do_compare(uvm_object rhs, uvm_comparer comparer);
   template_sequence_item rhs_;

   if (!$cast(rhs_, rhs))
      `uvm_fatal("do_compare", "Cast of rhs object has failed")
   
   return (super.do_compare(rhs_comparer));
endfunction


function string template_sequence_item::convert2string();
   string s;

   $sformat(s, "%s\n", super.convert2string());

   return s;
endfunction


function void template_sequence_item::do_print(uvm_printer printer);
   printer.m_string = convert2string();
endfunction


function void template_sequence_item::do_record(uvm_recorder recorder);
   super.do_record(recorder);

   // Use the record macros to record the item fields
   `uvm_record_field("addr", addr)
   `uvm_record_field("data", data)
endfunction

`endif
