# Third-party notices

This repository and its release files contain work by OpenSourceSDRLab together with third-party work. The Apache License 2.0 in [LICENSE](LICENSE) applies **only** to the files created by OpenSourceSDRLab:

- `docs/`, `hardware/`, `images/`, `README.md`, `NOTICE.md`
- in `fpga/XC7A75T/` and `fpga/XC7A200T/`:
  - `top/b200/b210.xdc` (pin and timing constraints for this board)
  - `top/b200/Define.vh`
  - the Vivado project file `B210_Project_Firmwire.xpr`

All other files keep their original copyright notices and licences, which have not been changed:

| Component | Files | Owner | Licence |
|---|---|---|---|
| USRP B200/B210 FPGA design (UHD `fpga/usrp3`, release v4.9.0.0) | `fpga/<version>/lib/`, `fpga/<version>/top/b200/*.v` | Ettus Research, a National Instruments brand | GNU LGPL v3 or later, see [fpga/LICENSE.md](fpga/LICENSE.md) and [fpga/COPYING.GPL-3](fpga/COPYING.GPL-3) |
| Halfband decimator netlists | `fpga/<version>/top/b200/coregen_dsp/hbdec1.edif`, `hbdec2.edif` (EDIF versions, written by Xilinx `ngc2edif`, of the CORE Generator netlists `hbdec1.ngc` and `hbdec2.ngc` in UHD `top/b200/coregen_dsp/`) | Xilinx, Inc. / AMD, distributed by Ettus Research | Xilinx/AMD licence terms |
| Xilinx IP configurations | `fpga/<version>/B210_Project_Firmwire.srcs/*/ip/*/*.xci` (clocking wizard, FIFO generator) | Xilinx, Inc. / AMD | Xilinx/AMD licence terms |
| FPGA images `usrp_b210_fpga.bin` | Releases | built by OpenSourceSDRLab from `fpga/XC7A75T/` and `fpga/XC7A200T/`; contain the Ettus Research and Xilinx parts listed above | LGPL v3 for the Ettus Research parts; the corresponding source is the `fpga/` folder of this repository |

The following files from UHD v4.9.0.0 were **modified by OpenSourceSDRLab** for this board (Artix-7 FPGA, pin-out, USB FIFO depth, simplified RF front end). Their Ettus Research copyright notices and LGPL licence statements are unchanged:

- `top/b200/b200.v`, `b200_core.v`, `b200_io.v`
- `lib/control/simple_spi_core.v` (adjusts writes to AD9361 register 0x004 and to the ADF4001 PLL for this board's RF front end and clock)
- `lib/control/ram_2port.v`, `ram_2port_impl.vh`, `reset_sync.v`
- `lib/fifo/axi_fifo.v`, `axi_packet_gate.v`
- `lib/gpif2/gpif2_slave_fifo32.v`, `gpif2_to_fifo64.v`
- `lib/radio_200/radio_legacy.v`

All other files under `fpga/<version>/lib/` are identical to UHD v4.9.0.0 (<https://github.com/EttusResearch/uhd/tree/v4.9.0.0/fpga/usrp3>).

Software that is **not** included and must be obtained from the original publishers:

- the UHD driver, its Windows installer and the WinUSB driver package from Ettus Research: <https://files.ettus.com/binaries/uhd/latest_release/>, <https://files.ettus.com/binaries/misc/erllc_uhd_winusb_driver.zip>;
- `libusb-1.0.dll` from the libusb project;
- Xilinx/AMD Vivado 2024.1, needed to rebuild the FPGA images.

"Ettus Research", "USRP", "UHD", "Analog Devices", "AD9361", "Xilinx", "Artix" and "Vivado" are trademarks of their respective owners. They are used here only to describe compatibility and do not imply endorsement.
