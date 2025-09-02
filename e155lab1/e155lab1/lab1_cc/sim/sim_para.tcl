lappend auto_path "C:/lscc/radiant/2024.2/scripts/tcl/simulation"
package require simulation_generation
set ::bali::simulation::Para(DEVICEPM) {ice40tp}
set ::bali::simulation::Para(DEVICEFAMILYNAME) {iCE40UP}
set ::bali::simulation::Para(PROJECT) {sim}
set ::bali::simulation::Para(MDOFILE) {}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/sim}
set ::bali::simulation::Para(FILELIST) {"C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/source/impl_1/lab1_cc.sv" "C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/source/impl_1/seven_seg_testbench.sv" "C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/source/impl_1/seven_seg_display.sv" "C:/Users/ccoggshall/Desktop/e155lab1/e155lab1/lab1_cc/source/impl_1/lab1_testbench.sv" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "" "" "" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(LANGSTDLIST) {"System Verilog" "" "" "" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_ice40up}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {lab1_testbench}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {C:/lscc/radiant/2024.2}
set ::bali::simulation::Para(MEMPATH) {}
set ::bali::simulation::Para(UDOLIST) {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(SIMULATIONTIME)  {100}
set ::bali::simulation::Para(SIMULATIONTIMEUNIT)  {ns}
set ::bali::simulation::Para(SIMULATION_RESOLUTION)  {default}
set ::bali::simulation::Para(NOGUI) {0}
set ::bali::simulation::Para(ISRTL)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(AUTOORDER)  {1}
set ::bali::simulation::Para(PERMISSIVE)  {0}
set ::bali::simulation::Para(OPTIMIZATION_DEBUG)  {1}
::bali::simulation::QuestaSim_Q_Run
