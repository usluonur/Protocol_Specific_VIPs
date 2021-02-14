class template_agent extends uvm_agent;
   // UVM Factory Registration
   `uvm_component_utils(template_agent)

   //--------------------------------------
   // Data Members
   //--------------------------------------
   uvm_analysis_port #(template_sequence_item) ap;

   uvm_sequencer#(template_sequence_item) m_sqr;
   template_driver                        m_drv;
   template_monitor                       m_mon;

   //--------------------------------------
   // Method
   //--------------------------------------
   extern function new(string name="template_agent", uvm_component parent = null);
   extern virtual function void build_phase(uvm_phase phase);
   extern virtual function void connect_phase(uvm_phase phase);
endclass

function template_agent::new(string name="template_agent", uvm_component parent = null);
   super.new(name, parent);
endfunction

function void template_agent::build_phase(uvm_phase phase);
   if(!uvm_config_db #(template_config)::get(this, "", "cfg", "m_cfg) )
      `uvm_fatal(get_type_name(), "Cannot get() configuration from uvm_config_db")

   if (m_cfg.active == UVM_ACTIVE) begin
      m_drv = template_driver::type_id::create("m_drv", this);
      m_sqr = uvm_sequencer#(template_sequence_item)::type_id::create("m_sqr", this);
   end
   m_mon = template_monitor::type_id::create("m_mon", this);
endfunction

function void template_agent::connect_phase(uvm_phase phase);

endfunction
