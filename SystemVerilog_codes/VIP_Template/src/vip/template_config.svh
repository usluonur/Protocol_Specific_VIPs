`ifndef template_config
`define template_config

class template_config extends uvm_object;
   // UVM Factory Registration
   `uvm_object_utils(template_config)

   //--------------------------------------
   //Data Members
   //--------------------------------------

   //----------------------------------------------
   // Methods
   //----------------------------------------------
   extern function new(string name="template_config");
   extern function get_config();
endclass

function template_config::new(string name="template_config");
   super.new(name);
endfunction

`endif
