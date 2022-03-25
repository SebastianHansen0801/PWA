# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {/zhome/5f/5/155462/MCU project/PWA/PWA.cache/wt} [current_project]
set_property parent.project_path {/zhome/5f/5/155462/MCU project/PWA/PWA.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo {/zhome/5f/5/155462/MCU project/PWA/PWA.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/8bit_Register.vhd}
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/ALU.vhd
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/AND2.vhd}
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/D_ff_arst.vhd}
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/F_sel.vhd
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/FullAdder.vhd
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/HalfAdder.vhd
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/MUX16x1.vhd}
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/MUX16x1x8.vhd}
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/MUX2x1.vhd}
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/MUX2x1x8.vhd
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/MUX3x1.vhd
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/MUX4x1.vhd}
  /zhome/5f/5/155462/MCU/new/NOT1.vhd
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/NegZero.vhd
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/OR2.vhd}
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/RegisterR16.vhd}
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/RegsiterFile.vhd}
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/arith_circuit.vhd
  /zhome/5f/5/155462/MCU/new/decoder_2_4.vhd
  /zhome/5f/5/155462/MCU/new/decoder_2_4_enable.vhd
  /zhome/5f/5/155462/MCU/new/decoder_4_16_enable.vhd
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/function_unit.vhd
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/logic_unit.vhd
  /zhome/5f/5/155462/Desktop/Functionalunit/Functionalunit.srcs/sources_1/new/shifter_8bit.vhd
  {/zhome/5f/5/155462/MCU project/PWA/PWA.srcs/sources_1/new/Datapath.vhd}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Datapath -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Datapath.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Datapath_utilization_synth.rpt -pb Datapath_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]