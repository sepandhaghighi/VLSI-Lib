** Generated for: hspiceD
** Generated on: May  9 16:15:50 2016
** Design library name: PassTransistor
** Design cell name: Xor3
** Design view name: schematic
.subckt xor3 out a ap b bp c cp

.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    MEASOUT=1
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/Rezayi/Desktop/hspice.mdl"

** Library name: PassTransistor
** Cell name: Xor3
** View name: schematic
xm5 out cp net20 net20 nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm4 out c net28 net28 nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm3 net20 b a a nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm2 net20 bp ap ap nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm0 net28 b ap ap nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm1 net28 bp a a nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ends
