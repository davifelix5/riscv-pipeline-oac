onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/dut/rvsingle/dp/F_ID/clk
add wave -noupdate -divider FE/ID
add wave -noupdate /testbench/dut/rvsingle/dp/F_ID/reset
add wave -noupdate /testbench/dut/rvsingle/PCF
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/F_ID/PcPlus4F
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/F_ID/PCF
add wave -noupdate /testbench/dut/rvsingle/dp/F_ID/InstrF
add wave -noupdate /testbench/dut/rvsingle/InstrD
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/F_ID/PcPlus4D
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/F_ID/PCD
add wave -noupdate -radix hexadecimal /testbench/dut/rvsingle/dp/F_ID/InstrD
add wave -noupdate /testbench/dut/rvsingle/dp/F_ID/Enable
add wave -noupdate /testbench/dut/rvsingle/dp/F_ID/Clear
add wave -noupdate -divider ID/EX
add wave -noupdate -radix binary /testbench/dut/rvsingle/c/op
add wave -noupdate /testbench/dut/rvsingle/dp/JumpD
add wave -noupdate /testbench/dut/rvsingle/dp/ALUSrcD
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/Rs2D
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ID_EX/Rs1D
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ID_EX/RdD
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ID_EX/RD2D
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ID_EX/RD1D
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/PcPlus4D
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/PCD
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ID_EX/ImmExtD
add wave -noupdate -radix binary /testbench/dut/rvsingle/dp/ID_EX/controlD
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/Rs2E
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/Rs1E
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/RdE
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ID_EX/RD2E
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ID_EX/RD1E
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/PcPlus4E
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/PCE
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ID_EX/ImmExtE
add wave -noupdate -radix binary /testbench/dut/rvsingle/dp/ID_EX/controlE
add wave -noupdate /testbench/dut/rvsingle/dp/ID_EX/Clear
add wave -noupdate -divider EX/MEM
add wave -noupdate -radix binary /testbench/dut/rvsingle/dp/ForwardBE
add wave -noupdate -radix binary /testbench/dut/rvsingle/dp/ForwardAE
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/RD2E_f
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/SrcBE
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/SrcAE
add wave -noupdate /testbench/dut/rvsingle/dp/PCSrcE
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/EX_MEM/WriteDataE
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/EX_MEM/RdE
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/EX_MEM/PcPlus4E
add wave -noupdate -radix binary /testbench/dut/rvsingle/dp/EX_MEM/controlE
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/EX_MEM/AluResultE
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/EX_MEM/WriteDataM
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/EX_MEM/PcPlus4M
add wave -noupdate -radix binary /testbench/dut/rvsingle/dp/EX_MEM/controlM
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/EX_MEM/AluResultM
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/EX_MEM/RdM
add wave -noupdate -divider MEM/WB
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ME_WB/ReadDataM
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ME_WB/RdM
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ME_WB/PcPlus4M
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ME_WB/AluResultM
add wave -noupdate -radix binary /testbench/dut/rvsingle/dp/ME_WB/controlM
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ME_WB/ReadDataW
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ME_WB/RdW
add wave -noupdate -radix unsigned /testbench/dut/rvsingle/dp/ME_WB/PcPlus4W
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ME_WB/AluResultW
add wave -noupdate -radix binary /testbench/dut/rvsingle/dp/ME_WB/controlW
add wave -noupdate -divider {DepuraÃ§ao do WB}
add wave -noupdate /testbench/dut/rvsingle/dp/rf/we3
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/rf/wd3
add wave -noupdate /testbench/dut/rvsingle/dp/rf/a3
add wave -noupdate -radix decimal /testbench/dut/rvsingle/dp/ResultW
add wave -noupdate /testbench/dut/rvsingle/dp/RegWriteW
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {808 ns} 0} {{Cursor 2} {18 ns} 0}
quietly wave cursor active 2
configure wave -namecolwidth 349
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
WaveRestoreZoom {0 ns} {105 ns}
