
RTL := registerfile.sv
YOSYS_DATDIR := $(shell yosys-config --datdir)

all: sv2v.yosys.netlistsvg.svg

.SECONDARY:

%.netlistsvg.svg: %.json
	netlistsvg $< -o $@
	sed -i -E 's@(<svg[^>]*>)@\1<rect width="100%" height="100%" fill="white"/>@g' "$@"

%.yosys.v %.yosys.json: yosys.tcl %.v
	yosys -c yosys.tcl

sv2v.v: ${RTL}
	sv2v ${RTL} -w $@

vivado.v vivado.svg: vivado.tcl cache_pkg.sv cache.sv
	rm -rf vivado-build .Xil vivado.svg vivado.v
	vivado -nolog -nojournal -mode tcl -source vivado.tcl

clean:
	rm -rf *sv2v.v *yosys.v *.json *.svg sim_dir gls_dir *.fst .Xil vivado-build *vivado.v
