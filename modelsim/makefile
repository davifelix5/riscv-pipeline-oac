pipeline: work/_vmake
	vlog ../*.sv
	vsim work.testbench -voptargs=+acc -do "do pipeline.do; run 255"

work/_vmake: 
	vlib work