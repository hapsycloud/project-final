# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/kevin/Documents/ECE520/projectFinal/project-final/Software/color_design_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/kevin/Documents/ECE520/projectFinal/project-final/Software/color_design_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {color_design_wrapper}\
-hw {/home/kevin/Documents/ECE520/projectFinal/project-final/Hardware/Pmod_color_reading/color_design_wrapper.xsa}\
-out {/home/kevin/Documents/ECE520/projectFinal/project-final/Software}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {color_design_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform clean
platform generate
domain active {zynq_fsbl}
bsp reload
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp config stdin "ps7_uart_1"
bsp reload
platform generate -domains 
