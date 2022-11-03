***********ac analysis q1***************

.title ac_analysis2
.global vdd gnd
.temp 27

vin in gnd dc 0 ac 1
r1 in mid 2k
r2 mid out 2k
c1 mid gnd 100f
c2 out gnd 100f
.ac dec 10 1 100G

.control
run
plot v(in) v(mid) v(out)
plot mag(mid) mag(out)
plot db(mid) db(out)
plot ph(mid) ph(out)
.endc
.end
