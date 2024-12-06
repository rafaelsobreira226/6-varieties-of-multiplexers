# 6-varieties-of-multiplexers
Design and implementation of a 4-to-1 multiplexer using VHDL, including a complete description and a functional testbench.
 multiplexer (or MUX) is a combinational circuit used to select one of several input data signals and forward it to a single output. It operates as a selector switch controlled by selection signals.

For a 4:1 multiplexer:

It has 4 data inputs (d0, d1, d2, d3), 2 selection signals (sel[1:0]) (s0, s1), and 1 output (y).
The selection signals determine which input is routed to the output, as shown in the truth table.
Example of operation:
sel[1:0]	Selected Input	Output (y)
00	d0	y = d0
01	d1	y = d1
10	d2	y = d2
11	d3	y = d3
