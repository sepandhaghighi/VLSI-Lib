** Generated for: hspiceD
** Generated on: May  9 16:11:55 2016
** Design library name: PassTransistor
** Design cell name: Or3
** Design view name: schematic
.subckt or3 a bp b c cp out 

.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    MEASOUT=1
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/Rezayi/Desktop/hspice.mdl"

** Library name: PassTransistor
** Cell name: Or3
** View name: schematic
xm0 net11 b b b nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm1 net11 bp a a nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm2 out c c c nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm3 out cp net11 net11 nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ends
