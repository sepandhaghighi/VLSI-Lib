.subckt inv i zn 

.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    MEASOUT=1
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/Rezayi/Desktop/hspice.mdl"

MM2 VDD I ZN VDD nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
MM1 ZN I VSS VSS nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ends
