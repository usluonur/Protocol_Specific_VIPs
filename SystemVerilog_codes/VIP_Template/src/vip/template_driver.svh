class template_driver extends uvm_driver;
   // UVM Factory Registration
   `uvm_component_utils(template_driver)

   //--------------------------------------
   // Data Members
   //--------------------------------------

   //--------------------------------------
   // Method
   //--------------------------------------
   function new(string name="template_driver", uvm_component parent = null);
endclass

function template_driver::new(string name="template_driver", uvm_component parent = null);
   super.new(name, parent);
endfunction
