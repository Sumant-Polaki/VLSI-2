***********ac analysis q1***************

.title ac_analysis1
.global vdd gnd
.temp 27

vin in gnd dc 0 ac 1
r1 in out 2k
r2 out gnd 2k
c out gnd 100f
.ac dec 10 1 100G

.control
run
plot v(in) v(out)
plot mag(out)
plot db(out)
plot ph(out)
.endc
.end
