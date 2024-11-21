onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/dut/clk
add wave -noupdate /testbench/dut/reset
add wave -noupdate -radix hexadecimal /testbench/dut/Instr
add wave -noupdate -radix decimal /testbench/dut/PC
add wave -noupdate /testbench/dut/MemWrite
add wave -noupdate -radix decimal /testbench/dut/DataAdr
add wave -noupdate /testbench/dut/rvsingle/dp/ImmSrc
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ImmExt
add wave -noupdate /testbench/dut/rvsingle/dp/rf/a3
add wave -noupdate /testbench/dut/rvsingle/dp/rf/a1
add wave -noupdate /testbench/dut/rvsingle/dp/rf/a2
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/rf/wd3
add wave -noupdate -radix binary /testbench/dut/rvsingle/ALUControl
add wave -noupdate /testbench/dut/rvsingle/ALUSrc
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/SrcB
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/SrcA
add wave -noupdate /testbench/dut/rvsingle/dp/PCSrc
add wave -noupdate -radix hexadecimal /testbench/dut/rvsingle/dp/PCNext
add wave -noupdate /testbench/dut/rvsingle/dp/ResultSrc
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/Result
add wave -noupdate /testbench/dut/rvsingle/dp/RegWrite
add wave -noupdate -radix decimal /testbench/WriteData
add wave -noupdate -radix decimal /testbench/dut/rvsingle/ALUResult
add wave -noupdate -radix decimal /testbench/dut/rvsingle/ReadData
add wave -noupdate /testbench/dut/rvsingle/Zero
add wave -noupdate /testbench/dut/rvsingle/Jump
add wave -noupdate /testbench/dut/rvsingle/c/Branch
add wave -noupdate /testbench/dut/rvsingle/c/Jump
add wave -noupdate -radix binary /testbench/dut/rvsingle/c/ALUOp
add wave -noupdate -radix binary /testbench/dut/rvsingle/c/funct3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 363
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {201 ns}
