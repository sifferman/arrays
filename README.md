
# SystemVerilog Multiplexers Examples

## About

This repo provides examples of how to use multiplexers in IEEE 1800 SystemVerilog.

```systemverilog
always_comb begin
    if (a)
        b = c;
    else
        b = d;
end
```

## Getting Started

### Installation of Required Tools

```bash
# OSS-CAD-Suite and Zachjs-sv2v
wget -O - https://raw.githubusercontent.com/sifferman/hdl-tool-installer/main/install | bash -s -- <build_dir> --oss-cad-suite --zachjs-sv2v
```

* netlistsvg: <https://github.com/nturley/netlistsvg>
* Vivado: <https://www.xilinx.com/support/download.html>

### Run Examples

```bash
cd registerfile_example
make
```

## References

### IEEE 1800 Specifications

<https://ieeexplore.ieee.org/document/8299595>
