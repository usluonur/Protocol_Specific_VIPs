`ifndef template_sequence
`define template_sequence

class template_sequence extends uvm_object;
   // UVM Factory Registration
   `uvm_object_utils(template_sequence)

   //----------------------------------------------
   // Data Members
   //----------------------------------------------


   //----------------------------------------------
   // Constraints
   //----------------------------------------------


   //----------------------------------------------
   // Methods
   //----------------------------------------------
   extern function new(string name="template_sequence");
   extern virtual task body();
endclass

function template_sequence::new (string name="template_sequence");
   super.new(name);
endfunction

task template_sequence::body();
   template_sequence_item tmp;

   tmp = template_sequence_item::type_id::create("tmp");
   
   start_item(tmp);
   if (!tmp.randomize()) `uvm_fatal(get_type_name(), "Randomization failed")
   finish_item(tmp);
endtask

`endif

