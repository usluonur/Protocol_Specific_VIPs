class template_monitor extends uvm_monitor;
   // UVM Factory Registration
   `uvm_component_utils(template_monitor)

   //--------------------------------------
   // Data Members
   //--------------------------------------

   //--------------------------------------
   // Method
   //--------------------------------------
   function new(string name="template_monitor", uvm_component parent = null);
endclass

function template_monitor::new(string name="template_monitor", uvm_component parent = null);
   super.new(name, parent);
endfunction
