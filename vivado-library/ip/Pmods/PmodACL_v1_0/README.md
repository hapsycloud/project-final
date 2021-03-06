PmodACL IP
==============

Using the IP in Vivado
--------------
A tutorial for using Pmod IP cores in Vivado is available [here](https://reference.digilentinc.com/learn/programmable-logic/tutorials/pmod-ips/start).

When prompted to connect additional clocks, make sure to connect the ext_spi_clk
pin to an 80 MHz clock source.

Demo Program in Xilinx SDK
--------------
To set up the demo, a serial terminal, such as TeraTerm, needs to be used to
see the data being printed out. Settings for the terminal will vary depending on
your board.

For Zynq projects, apply the following settings:
- Baud rate: 115200
- Data bits: 8
- Parity:    none
- Stop bits: 1

For MicroBlaze projects, apply the settings according to the AXI Uartlite IP
configurations. These settings can be found by double clicking the AXI Uartlite
IP in the block design and clicking the IP Configuration tab. By default, this
is the following:
- Baud rate: 9600
- Data bits: 8
- Parity:    none
- Stop bits: 1

In this demo, the ACL's data registers are continuously polled. X, Y, and Z axis
data are repeatedly printed.