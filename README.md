# ICFOSS-internship
Project on contibuting to Opensource dev board HiFive 1 rev B

The HiFive 1 rev b is a RISC V based board from Sifive which is open source. The board is based on SiFive’s new FE310-G002, an upgraded version of the original FE310 SoC. Like the original FE310, the newer chip is built around SiFive’s E31 32-bit RV32IMAC core running at 320MHz, but adds support for the latest RISC-V Debug Spec, hardware I2C, and an additional UART over the original chip. Wi-Fi and Bluetooth on the board is provided by an Espressif ESP32 module, which while now a fairly common move by manufacturers, is more than somewhat over-specified for the job. This leaves me surprised that a cheaper, albeit less powerful, ESP8266-based module wasn’t used instead if they’re the board really only uses it as “…a wireless modem.” Although the description of the module as a “co-processor” does keep the possibility open that it ESP32 might be accessible from code for more than wireless support.


We started the poject with only an understanding of C++ and basic knowledge of assembly language.
We got only limited support for programming SiFive 1 B with C/C++ and most help/files we found were in rust.

The files in this repository are ported from SiFive to support the new board. It also contains some files which are written from scratch using the documentation available in docs.
