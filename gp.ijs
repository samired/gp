require 'plot numeric stats tables/csv'

0 : 0
to calculate-dxc equation will be:  log10(R/60N)/log10(12W/106D) where : R=ROP (ft/hr) N=RPM (rev/min) W=WOB (lbs) D=bit size (inch)"
)

r =: >:?1000#12
n =: >:?1000#60
w =: >:?1000#20
d =: 1000#12.25
mw =: 1000#1.12
dxc =: ((10^. (r % (60 * n))) % (10^. ((w * 12) % (d * 1000)))) * (mw % 8.4)

lreg =: 4 : 'y %. 1 ,. x'
treg =: 3 : '((1{((i.#y) lreg y))*(i.#y))+(0{((i.#y) lreg y))'

plot dxc,: treg dxc