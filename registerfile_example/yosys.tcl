
yosys -import

read_verilog sv2v.v

hierarchy -auto-top
procs
opt_clean
fsm
memory -nomap
wreduce -memx
opt_clean

stat
write_verilog -noexpr -noattr -simple-lhs sv2v.yosys.v
write_json sv2v.yosys.json
