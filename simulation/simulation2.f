# Comand Line Mode
-c \
# Disable optimizations and make everything available.
-voptargs="+acc" \

# In simulator commands
-do " echo "Hello World from the Command Line"; setenv test ../test; vlog -O0 -work work -f $test/includes.f;exit;"
# Turn Off Optimizations
# Setup Work Directory
# Pull in test files
#vlog 
#-O0 
#-work work 
#-f $test/includes.f; 

#run -all; 
#exit;"
# Top Level TestBench
#work.testBench