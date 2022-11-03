************r circuit****************
.title rc_ckt_tran

.lib "/home/vlsi/cad/eda-technology/sky130/models/spice/models/sky130.lib.spice tt"

.global vdd gnd
.temp 27

r1 in1 net1 2k
xr1 in2 net2 gnd sky130_fd_pr__res_high_po_1p41 w=1.41 l=7.6

vr1 net1 gnd dc 0
vr2 net2 gnd dc 0

vin1 in1 gnd dc 2
vin2 in2 gnd dc 2

.dc temp -40 125 1
.control
run
plot i(vr1) i(vr2) ylabel 'Current(mA)'
plot V(in1)/i(vr1) v(in2)/i(vr2) ylabel 'Resistance (k-ohm)'

.endc
.end
