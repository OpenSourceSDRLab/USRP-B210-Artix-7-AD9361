set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports PPS_IN_EXT]
# set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports PPS_IN_INT]

set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVDS_25} [get_ports codec_main_clk_p]
set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVDS_25} [get_ports codec_main_clk_n]

set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports pll_ce]
set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS33} [get_ports pll_mosi]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports pll_sclk]
set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports ref_sel]
set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS33} [get_ports pll_lock]

# set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports gps_rxd]
# set_property -dict {PACKAGE_PIN B14 IOSTANDARD LVCMOS33} [get_ports gps_txd]

# #### FX3 Lines ##############################################################
# GPIF Data lines
set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[0]}]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[1]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[2]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[3]}]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[4]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[5]}]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[6]}]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[7]}]
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[8]}]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[9]}]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[10]}]
set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[11]}]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[12]}]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[13]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[14]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[15]}]
set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[16]}]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[17]}]
set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[18]}]
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[19]}]
set_property -dict {PACKAGE_PIN L6 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[20]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[21]}]
set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[22]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[23]}]
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[24]}]
set_property -dict {PACKAGE_PIN N5 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[25]}]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[26]}]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[27]}]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[28]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[29]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[30]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {GPIF_D[31]}]

set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports IFCLK]
set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVCMOS18} [get_ports FX3_EXTINT]

# FX3 CTRL
set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL0]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL1]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL2]
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL3]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL4]
set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL5]
set_property -dict {PACKAGE_PIN K6 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL6]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL7]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL8]
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL9]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL11]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports GPIF_CTL12]


#GPIO
set_property -dict {PACKAGE_PIN Y1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {fp_gpio[0]}]
set_property -dict {PACKAGE_PIN AA1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {fp_gpio[1]}]
set_property -dict {PACKAGE_PIN AB1 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {fp_gpio[2]}]
set_property -dict {PACKAGE_PIN Y2 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {fp_gpio[3]}]
set_property -dict {PACKAGE_PIN AA3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {fp_gpio[4]}]
set_property -dict {PACKAGE_PIN AB3 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {fp_gpio[5]}]
set_property -dict {PACKAGE_PIN AA5 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {fp_gpio[6]}]
set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {fp_gpio[7]}]

# LED
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports LED_TXRX1_RX]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports LED_TXRX1_TX]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports LED_RX1]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports LED_RX2]
set_property -dict {PACKAGE_PIN E14 IOSTANDARD LVCMOS33} [get_ports LED_TXRX2_RX]
set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVCMOS33} [get_ports LED_TXRX2_TX]

set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS33} [get_ports LED_STATUS]
set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports LED_CLK_G]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports LED_CLK_R]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports LED_USER_G]
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports LED_USER_R]

# CAT
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_reset]
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_en_agc]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_enable]
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_txrx]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports codec_sync]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS18 SLEW SLOW PULLTYPE PULLUP } [get_ports cat_ce]
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports cat_sclk]
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports cat_mosi]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports cat_miso]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports cat_clkout_fpga]

# Control Lines
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[0]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[1]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[2]}]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[3]}]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[4]}]
set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[5]}]
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[6]}]
set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS18} [get_ports {codec_ctrl_out[7]}]

set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {codec_ctrl_in[0]}]
set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {codec_ctrl_in[1]}]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {codec_ctrl_in[2]}]
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS18 SLEW SLOW} [get_ports {codec_ctrl_in[3]}]

# Tx Bus P0
set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[0]}]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[1]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[2]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[3]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[4]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[5]}]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[6]}]
set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[7]}]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[8]}]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[9]}]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[10]}]
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS25} [get_ports {tx_codec_d[11]}]

# RX Bus P1
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[0]}]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[1]}]
set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[2]}]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[3]}]
set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[4]}]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[5]}]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[6]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[7]}]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[8]}]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[9]}]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[10]}]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS25} [get_ports {rx_codec_d[11]}]

# Frame syncs
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS25} [get_ports codec_data_clk_p]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS25} [get_ports rx_frame_p]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS25} [get_ports tx_frame_p]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS25} [get_ports codec_fb_clk_p]

## RF Hardware Control
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS33} [get_ports SFDX1_RX]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS33} [get_ports SFDX1_TX]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS33} [get_ports SFDX2_RX]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports SFDX2_TX]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS33} [get_ports SRX1_RX]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports SRX1_TX]
set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS33} [get_ports SRX2_RX]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports SRX2_TX]
# set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports tx_bandsel_a]
# set_property -dict {PACKAGE_PIN G12 IOSTANDARD LVCMOS33} [get_ports tx_bandsel_b]
# set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports rx_bandsel_a]
# set_property -dict {PACKAGE_PIN F12 IOSTANDARD LVCMOS33} [get_ports rx_bandsel_b]
# set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports rx_bandsel_c]

set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVCMOS33} [get_ports tx_enable1]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports tx_enable2]


# IFCLK is 100 MHz GPIF clock
create_clock -period 10.000 -name IFCLK [get_ports IFCLK]
create_clock -period 16.276 -name codec_data_clk_p [get_ports codec_data_clk_p]

set_false_path -from [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT1]] -to [get_clocks codec_data_clk_p]
set_false_path -from [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT1]] -to [get_clocks -of_objects [get_pins b200_io_i0/BUFR_inst/O]]
set_false_path -from [get_clocks codec_data_clk_p] -to [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT1]]
set_false_path -from [get_clocks -of_objects [get_pins b200_io_i0/BUFR_inst/O]] -to [get_clocks -of_objects [get_pins gen_clks/inst/mmcm_adv_inst/CLKOUT1]]



set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]