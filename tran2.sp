.title transient_an
.global vdd gnd
.temp 27

vp in gnd pulse(0 5 0 1p 1p 3n 6n)
r1 in mid 2k
r2 mid out 2k
c1 mid gnd 100f
c2 out gnd 100f

.tran 5p 10n
.control
run
plot v(in) v(mid) v(out) 
.endc
.end
