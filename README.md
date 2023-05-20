# verilogExample
An example project using System Verilog for the Test Bench and Verilog for RTL.
---
## Quartus Install
Download the linux tar file from Intel.
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
export QSYS_ROOTDIR="/home/<user>/intelFPGA_lite/22.1std/quartus/sopc_builder/bin"
```
## Questa Setup In Linux
Put this is your .bashrc
```bash
export USER_TOOLS="/home/$USER/tools"
export QUARTUS_INSTALL="$USER_TOOLS/intelFPGA_lite/22.1std"
export QUARTUS_TOOLS="$QUARTUS_INSTALL/quartus/bin"
export QUESTA_TOOLS="$QUARTUS_INSTALL/questa_fse/linux_x86_64"
export MGLS_LICENSE_FILE="$QUARTUS_INSTALL/licenses/LR-117460_License.dat"
export PATH=$PATH:$QUESTA_TOOLS
```

