.title transient_an
.global vdd gnd
.temp 27

vp in gnd pulse(0 5 0 1p 1p 3n 6n)
r1 in out 2k
r2 out gnd 2k
c out gnd 100f

.tran 5p 10n
.control
run
plot v(in) v(out) 
.endc
.end
