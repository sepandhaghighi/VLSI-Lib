** Generated for: hspiceD
** Generated on: May  9 16:13:37 2016
** Design library name: PassTransistor
** Design cell name: Xor2
** Design view name: schematic
.subckt xor2 b bp a ap out

.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    MEASOUT=1
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/Rezayi/Desktop/hspice.mdl"

** Library name: PassTransistor
** Cell name: Xor2
** View name: schematic
xm1 out bp a a nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm0 out b ap ap nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ends
