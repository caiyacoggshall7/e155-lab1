-L work
-reflib pmi_work
-reflib ovi_ice40up


"C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/source/impl_1/lab1_cc.sv" 
"C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/source/impl_1/seven_seg_testbench.sv" 
"C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/source/impl_1/seven_seg_display.sv" 
"C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/source/impl_1/lab1_testbench.sv" 
-sv
-optionset VOPTDEBUG
+noacc+pmi_work.*
+noacc+ovi_ice40up.*

-vopt.options
  -suppress vopt-7033
-end

-gui
-top lab1_testbench
-vsim.options
  -suppress vsim-7033,vsim-8630,3009,3389
-end

-do "view wave"
-do "add wave /*"
-do "run 100 ns"
