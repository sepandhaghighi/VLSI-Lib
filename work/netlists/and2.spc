.SUBCKT and2 a b out
xm3 out ap vss vss nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm2 out a b b nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm1 ap a vss vss nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm0 ap a vdd vdd pmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ENDS
