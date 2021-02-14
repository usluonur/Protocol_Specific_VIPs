class template_driver extends uvm_driver#(template_seq_item);
   // UVM Factory Registration
   `uvm_component_utils(template_driver)

   // Virtual interface
   virtual template_if vif;

   //--------------------------------------
   // Data Members
   //--------------------------------------
   template_config m_cfg;

   //--------------------------------------
   // Method
   //--------------------------------------
   extern virtual function new(string name="template_driver", uvm_component parent = null);
   extern virtual function void build_phase(uvm_phase phase);
   extern virtual task run_phase(uvm_phase phase);
endclass

function template_driver::new(string name="template_driver", uvm_component parent = null);
   super.new(name, parent);
endfunction

function void template_driver::build_phase(uvm_phase phase);
   if(!uvm_config_db#(template_config)::get(this, "", "cfg", m_cfg))
      `uvm_fatal(get_type_name(), "Failed to get tx_cfg from uvm_config_db")
endfunction

task template_driver::run_phase(uvm_phase phase);
   template_seq_item req;

   seq_item_port.get_next_item(req);
   vif.transfer(req);
   seq_item_port.item_done(req);
endtask

