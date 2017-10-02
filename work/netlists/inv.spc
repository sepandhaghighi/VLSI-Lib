.SUBCKT inv a out
.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    MEASOUT=1
+    PARHIER=LOCAL
+    PSF=2
xm1 out a vss vss nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm0 out a vdd vdd pmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ENDS
