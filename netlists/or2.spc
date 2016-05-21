** Generated for: hspiceD
** Generated on: May  9 16:10:36 2016
** Design library name: PassTransistor
** Design cell name: Or2
** Design view name: schematic
.subckt or2 a ap b vcc out

.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    MEASOUT=1
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/Rezayi/Desktop/hspice.mdl"

** Library name: PassTransistor
** Cell name: Or2
** View name: schematic
xm1 out ap b b nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm0 out a vcc vcc nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.ends
