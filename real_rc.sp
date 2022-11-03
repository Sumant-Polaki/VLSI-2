************c circuit****************
.title rc_ckt_tran

.lib "/home/vlsi/cad/eda-technology/sky130/models/spice/models/sky130.lib.spice tt"

.global vdd gnd
.temp 27

*****circuit 1********
r1 in out1 2k
c1 out1 gnd 100f

xr1 in outx1 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.6
xc1 outx1 gnd sky130_fd_pr__cap_mim_m3_2 w=6.815 l=7 mf=1

*******circuit 2*******
r2 in out2 2k
r3 out2 gnd 2k
c2 out2 gnd 100f

xr2 in outx2 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.6
xr3 outx2 gnd gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.6
xc2 outx2 gnd sky130_fd_pr__cap_mim_m3_2 w=6.815 l=7 mf=1

*******circuit 3*************
r4 in mid 2k
r5 mid out3 2k
c3 mid gnd 100f
c4 out3 gnd 100f

xr4 in midx gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.6
xr5 midx outx3 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.6
xc3 midx gnd sky130_fd_pr__cap_mim_m3_2 w=6.815 l=7 mf=1
xc4 outx3 gnd sky130_fd_pr__cap_mim_m3_2 w=6.815 l=7 mf=1

vin in gnd pulse (0 5 100p 1p 1p 5n 10n)

.tran 5p 10n

*****Control Statement******
.control
run
plot v(in) v(out1) v(outx1) ylabel 'Voltage (V)'
plot v(in) v(out2) v(outx2) ylabel 'Voltage (V)'
plot v(in) v(mid) v(midx) v(out3) v(outx3) ylabel 'Voltage (V)'

.endc
.end
