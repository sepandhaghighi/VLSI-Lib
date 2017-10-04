.SUBCKT nand2 a b out
xm3 out a vdd vdd pmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm2 out b vdd vdd pmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm1 out a M M nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm0 M b vss vss nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ENDS
