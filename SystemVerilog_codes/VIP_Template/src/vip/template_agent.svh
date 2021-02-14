class template_agent extends uvm_agent;
   // UVM Factory Registration
   `uvm_component_utils(template_agent)

   //--------------------------------------
   // Data Members
   //--------------------------------------

   //--------------------------------------
   // Method
   //--------------------------------------
   function new(string name="template_agent", uvm_component parent = null);
endclass

function template_agent::new(string name="template_agent", uvm_component parent = null);
   super.new(name, parent);
endfunction
