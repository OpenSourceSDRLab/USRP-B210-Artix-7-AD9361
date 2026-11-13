---
title: USRP-B210-Artix-7-AD9361 Quick Start Guide
product: USRP-B210-Artix-7-AD9361
doc_id: OSSDRLAB-USRP-B210-Artix-7-AD9361-QSG
version: 1.0
date: 2026-11-12
repo: https://github.com/OpenSourceSDRLab/USRP-B210-Artix-7-AD9361
---

<!-- ossl:header -->
<p><a href="https://www.opensourcesdrlab.com"><img src="../images/OpenSourceSDRLab-banner.jpg" alt="OpenSourceSDRLab" width="100%"></a></p>

# USRP-B210-Artix-7-AD9361 Quick Start Guide

| Product | Document | Version | Date |
|---|---|---|---|
| USRP-B210-Artix-7-AD9361 | OSSDRLAB-USRP-B210-Artix-7-AD9361-QSG | 1.0 | 2026-11-12 |
<!-- /ossl:header -->

## 1. Overview

The OpenSourceSDRLab USRP B210 (Artix-7) is a USRP B210-compatible software-defined radio. It keeps the AD9361 RF transceiver of the original USRP B210, replaces the Spartan-6 FPGA with a Xilinx Artix-7 (**XC7A75T** or **XC7A200T**, depending on the version ordered), connects to the host through USB 3.0 Type-C and comes in a compact 70 × 97 mm enclosure. The RF front end uses a simplified band-switching design and still supports full-duplex and half-duplex operation.

The board works with the standard Ettus Research UHD driver and UHD-based software. Because the FPGA is different, it needs its own FPGA image, `usrp_b210_fpga.bin`, and **the XC7A75T and XC7A200T versions use different images**. This guide shows how to install the right one and check the board.

Differences in use compared with the original USRP B210:

- the stock `usrp_b210_fpga.bin` from Ettus Research must be replaced with the image for your FPGA version;
- a GPSDO module cannot be fitted inside, but an external GPSDO can feed the PPS and 10 MHz inputs.

## 2. What you need

| Item | Notes |
|---|---|
| USRP B210 (Artix-7) board | XC7A75T or XC7A200T version (see the label or your order) |
| USB 3.0 Type-C cable | connect to a USB 3.0 (blue) port; USB 2.0 ports do not give enough bandwidth |
| Antennas or RF cables | SMA |
| PC | 64-bit Windows 10/11 or Ubuntu Linux |
| UHD driver | from Ettus Research: <https://files.ettus.com/binaries/uhd/latest_release/> (Windows installer), or the `uhd-host` package on Ubuntu |
| WinUSB driver (Windows only, if needed) | from Ettus Research: <https://files.ettus.com/binaries/misc/erllc_uhd_winusb_driver.zip> |
| `libusb-1.0.dll` (Windows only, if UHD reports it missing) | from the libusb project (64-bit Windows binaries) |
| FPGA image for your FPGA version | `USRP-B210-Artix-7-AD9361_XC7A75T_FPGA-image_Vivado2024.1.zip` or `USRP-B210-Artix-7-AD9361_XC7A200T_FPGA-image_Vivado2024.1.zip` from the [Releases](../../../releases) page |

## 3. Connectors and indicators

| Marking | Connector | Function |
|---|---|---|
| TRX1, TRX2 | SMA | transmit or receive port, channel 1 / 2 |
| RX1, RX2 | SMA | receive port, channel 1 / 2 |
| USB | USB 3.0 Type-C | data and power from the host |
| PPS | MMCX | external PPS input |
| 10M | MMCX | external 10 MHz reference input |
| MX1.25 connector | MX1.25 | spare FPGA GPIO |

| LED | Meaning |
|---|---|
| PWER | power; on when the board is powered |
| STAS | status; on after the FPGA image has been loaded |
| CLK | PPS; flashes in step with the PPS input |
| USR | 10 MHz reference locked |
| TRX1, TRX2 | red while transmitting, blue while receiving |
| RX1, RX2 | blue while receiving |

## 4. Set up on Windows

1. Download the UHD installer for your Windows version from Ettus Research (see section 2), right-click it and run it as administrator. Keep the default installation folder `C:\Program Files\UHD`.

2. Connect the board. In Device Manager it should appear as **Ettus Research LLC B200/B210** under **USRPs**. If it shows up as an unknown device, choose **Update driver**, point it to the driver folder in the UHD installation, or unzip `erllc_uhd_winusb_driver.zip` and point it to that folder.

3. Make sure the standard UHD images (including the FX3 firmware `usrp_b200_fw.hex`) are in `C:\Program Files\UHD\share\uhd\images\`. If the folder is empty, download them in a Command Prompt run as administrator (needs Python):

        cd "C:\Program Files\UHD\lib\uhd\utils"
        python uhd_images_downloader.py

4. Unzip the FPGA image zip for your FPGA version and copy `usrp_b210_fpga.bin` over the file of the same name in `C:\Program Files\UHD\share\uhd\images\`.

5. Open a Command Prompt in `C:\Program Files\UHD\bin` and run:

        uhd_find_devices
        uhd_usrp_probe

    `uhd_find_devices` should list a **B210** with its serial number, and `uhd_usrp_probe` should print the full device tree (FPGA version, RX/TX channels, frequency and gain ranges).

> **Tip:** if `uhd_usrp_probe` says that `libusb-1.0.dll` is missing, copy `libusb-1.0.dll` (64-bit) into `C:\Program Files\UHD\bin` and run it again.

> **Tip:** the error `RuntimeError: fx3 is in state 5` means the stock Ettus FPGA image was loaded. Repeat step 4. `uhd_usrp_probe` prints the path of the image it loads.

> **Tip:** some applications bring their own copy of UHD and of `usrp_b210_fpga.bin` (for example SDR# with a USRP plug-in). Replace the image in that program's folder too.

## 5. Set up on Ubuntu Linux

1. Install UHD:

        sudo apt update
        sudo apt install -y libuhd-dev uhd-host

2. Download the standard images and replace the FPGA image:

        sudo uhd_images_downloader
        uhd_find_devices        # prints the images folder if the image is wrong

    Copy `usrp_b210_fpga.bin` from the release zip over the file of the same name in the UHD images folder (usually `/usr/share/uhd/images/`). If you keep the images in your own folder, set `UHD_IMAGES_DIR` to that folder.

3. Allow normal users to access the board (only needed if UHD reports a permission error):

        sudo tee /etc/udev/rules.d/10-usrp.rules >/dev/null << 'EOF'
        SUBSYSTEM=="usb", ATTRS{idVendor}=="2500", ATTRS{idProduct}=="0020", MODE="0666"
        EOF
        sudo udevadm control --reload-rules && sudo udevadm trigger

4. Connect the board to a USB 3.0 port and check it with `uhd_find_devices` and `uhd_usrp_probe` as on Windows.

## 6. First signals

Each channel has two SMA ports. In UHD-based software, the channel is chosen with the subdevice (`subdev`) and the port with the antenna setting:

| Board port | Subdevice | Antenna |
|---|---|---|
| TRX1 | `A:A` | `TX/RX` |
| RX1 | `A:A` | `RX2` |
| TRX2 | `A:B` | `TX/RX` |
| RX2 | `A:B` | `RX2` |

For example, the Gqrx device string for the RX2 port is `uhd,type=b200,subdev=A:B` with the antenna set to `RX2`.

Once `uhd_usrp_probe` passes, any UHD-based application can use the board: GNU Radio, SDRangel, Gqrx, Universal Radio Hacker and others.

Step-by-step instructions for these applications are in the user manual on our blog: <https://blog.opensourcesdrlab.com/archives/artix-7-usrp-b210-user-manual>. Port selection in Gqrx and GNU Radio is explained in detail here: <https://blog.opensourcesdrlab.com/archives/usrp-b210-artix-7-antenna-ports-gqrx-gnu-radio>

## 7. FPGA source projects

| Path | Contents |
|---|---|
| `fpga/XC7A75T/B210_Project_Firmwire.xpr` | Vivado 2024.1 project for the XC7A75T version, target `xc7a75tfgg484-2`, top module `b200` |
| `fpga/XC7A200T/B210_Project_Firmwire.xpr` | Vivado 2024.1 project for the XC7A200T version, target `xc7a200tfbg484-1`, top module `b200` |
| `fpga/<version>/lib/`, `fpga/<version>/top/b200/` | Ettus Research USRP FPGA sources (UHD v4.9.0.0) with the board changes listed in `NOTICE.md`, board constraints `b210.xdc` and halfband filter netlists |
| `fpga/<version>/B210_Project_Firmwire.srcs/` | Xilinx IP configurations (clocking wizard, FIFOs) |

The two versions differ only in the target device and in the USB FIFO depth set in `top/b200/b200.v`.

To rebuild an image:

1. Open the `.xpr` of your version in Vivado 2024.1. Vivado regenerates the IP output products the first time.
2. Run **Generate Bitstream**. The project writes `b200.bit` and `b200.bin` to `B210_Project_Firmwire.runs/impl_1/`.
3. Rename `b200.bin` to `usrp_b210_fpga.bin` and install it as in section 4 or 5.

## 8. Support

- Email: support@opensourcesdrlab.com
- Forum: <https://forum.opensourcesdrlab.com>
- Discord: <https://discord.gg/nnxY6DkmvT>
- Blog and user manuals: <https://blog.opensourcesdrlab.com>

<!-- ossl:footer -->
---
<sub>© 2026 OpenSourceSDRLab. All rights reserved. · <a href="https://www.opensourcesdrlab.com">www.opensourcesdrlab.com</a></sub>
<!-- /ossl:footer -->
