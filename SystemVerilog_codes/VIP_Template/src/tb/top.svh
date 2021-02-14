module top();
   timeunit 1ns; timeprecision 1ns;
   import dut_pkg::*;

   logic clk;
   logic rst;

   /***************************************************************
   ******************** INTERFACE INSTANTIATIONS ******************
   ***************************************************************/
   template_if template_if0();

   /***************************************************************
   ****************************** DUT *****************************
   ***************************************************************/
   template_dut dut (

   );

   /***************************************************************
   *********************** CLOCK OSCILLATORS **********************
   ***************************************************************/
   initial begin
      clk <= 0;
      forever $5ns clk =~clk;
   end

   /***************************************************************
   ************** CONFIGURATIONS AND TEST INITIATION **************
   ***************************************************************/
   initial begin
      $timeformat(-9, 0, "ns", 6);

      // Setting virtual interface
      uvm_config_db#(virtual template_if)::set(null, "uvm_test_top", "vif", top_hdl.template_if);

      // Start the test
      run_test(); // Replaces as +UVM_TESTNAME=template_test
   end
endmodule
