# Comand Line Mode
-c
# Disable optimizations and make everything available.
-voptargs="+acc"
# In simulator commands
-do "\
echo Hello World from the Command Line;
run -all;
exit;"
# Top Level TestBench
work.testBench