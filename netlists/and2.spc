** Generated for: hspiceD
** Generated on: May  9 16:03:56 2016
** Design library name: PassTransistor
** Design cell name: And2
** Design view name: schematic
.subckt and2 ap a b out gnd 

.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    MEASOUT=1
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/Rezayi/Desktop/hspice.mdl"

** Library name: PassTransistor
** Cell name: And2
** View name: schematic
xm1 out ap gnd gnd nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm0 out a b b nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ends
