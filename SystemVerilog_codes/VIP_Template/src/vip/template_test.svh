class template_test extends uvm_test;
   // UVM Factory Registration
   `uvm_component_utils(template_test)

   //--------------------------------------
   // Data Members
   //--------------------------------------

   //--------------------------------------
   // Method
   //--------------------------------------
   function new(string name="template_test", uvm_component parent = null);
endclass

function template_test::new(string name="template_test", uvm_component parent = null);
   super.new(name, parent);
endfunction
