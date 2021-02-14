class template_env extends uvm_env;
   // UVM Factory Registration
   `uvm_component_utils(template_env)

   //--------------------------------------
   // Data Members
   //--------------------------------------

   //--------------------------------------
   // Method
   //--------------------------------------
   function new(string name="template_env", uvm_component parent = null);
endclass

function template_env::new(string name="template_env", uvm_component parent = null);
   super.new(name, parent);
endfunction
