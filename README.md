# verilogExample
An example project using System Verilog for the Test Bench and Verilog for RTL.

---
## Quartus Install
Download the Quartus Lite linux tar file from Intel.

https://cdrdv2.intel.com/v1/dl/getContent/773997/774007?filename=Quartus-lite-22.1std.1.917-linux.tar

Then untar and install:
```bash
cd /home/<user>/Downloads
mkdir Quartus
tar -xvf Quartus-lie-22.1std.0.915-linux.tar -C ./Quartus
cd Quartus
setup.sh
```
### Needed by Quartus In general (Installer Auto Creates this in your .bashrc)
```bash
export QSYS_ROOTDIR="/home/<user>/tools/intelFPGA_lite/22.1std/quartus/sopc_builder/bin"
```
---
## Questa Setup In Linux
Put this is in your .bashrc
```bash
export USER_TOOLS="/home/$USER/tools"
export QUARTUS_INSTALL="$USER_TOOLS/intelFPGA_lite/22.1std"
export QUARTUS_TOOLS="$QUARTUS_INSTALL/quartus/bin"
export QUESTA_TOOLS="$QUARTUS_INSTALL/questa_fse/linux_x86_64"
export MGLS_LICENSE_FILE="$QUARTUS_INSTALL/licenses/LR-117460_License.dat"
export PATH=$PATH:$QUARTUS_TOOLS
export PATH=$PATH:$QUESTA_TOOLS
```
Pull a license from the Intel [Self Service Licsensing Center](https://licensing.intel.com/psg/s/?language=en_US).

Place the file in `$QUARTUS_INSTALL/licenses/`.

A note about the Questa License. The Questa License is locked to a MAC address. So...
- For VBox you can specify the MAC address of the VM in the Oracle VM Management window.
- For WSL you need to create a dummy ethernet interface and give it the MAC address of your License. Here are the commands:
```bash
# Show what links we have
ip link
# Add the dummy interface
ip link add vmnic0 type dummy
# Give the dummy interface the address that the License needs
ip link set vmnic0 addr <xx:xx:xx:xx:xx:xx>
```

---
## Run the tools
```bash
## Quartus
quartus &
## Questa
vsim &
```
---
## Doing Sims from the Command Line
A useful link for Questa command line: https://vhdlwhiz.com/the-modelsim-commands-you-need-to-know/

Here is the most basic Simulation:
```bash
# -c tells the simulator to only run command line. No GUI.
# -do Give the simulator commands
# echo is a command
# exit is a simulator command
vsim -c -do "echo Hello World; exit;"
```
Create a work library
```bash
# create the Work directory for complied libraries
vlib work
```
Create a file script file for compiling the project:

`touch compile.f`
```bash
# Turn off Optimizations
-O0
# Store compiled files in the work directory
-work work
# Here are the files
./test/testBench.sv
./test/oscillator.sv
```
Run the compile:
```bash
vlog -f compile.f
```
Create a vsim run file:

`touch simulation.f`
```bash
# Command Line Mode
-c 
# Vsim OTPimization ARGumentS is set to all ACCess.
# May need to change this in the future if simulations are slow.
-voptargs="+acc"
# The compiled toplevel file in the work library
-do
work.testBench
# Commands for in the simulator.
```
Run the simulation
```bash
vsim -f simulation.f
```

