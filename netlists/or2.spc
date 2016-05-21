** Generated for: hspiceD
** Generated on: May 21 14:12:49 2016
** Design library name: PassTransistor
** Design cell name: Or2
** Design view name: schematic
.GLOBAL vcc!

.subckt or2 a ap b out

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
m1 out ap b b nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m0 out a vcc! vcc! nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
.ends
