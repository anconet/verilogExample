# Comand Line Mode
-c
# Disable optimizations and make everything available.
-voptargs="+acc"
# Specify a file for saving waveforms
-wlf exampleWaves.wlf
# In simulator commands
-do " \
echo Hello World from the tcl interpreter inside vsim!; \
do wavesToView.do; \
run -all; \
exit;"
# Top Level TestBench
work.testBench
