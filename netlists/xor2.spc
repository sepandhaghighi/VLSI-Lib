** Generated for: hspiceD
** Generated on: May 21 14:29:10 2016
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
m1 out bp a a nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m0 out b ap ap nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
.ends
