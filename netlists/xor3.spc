** Generated for: hspiceD
** Generated on: May 21 14:33:56 2016
** Design library name: PassTransistor
** Design cell name: Xor3
** Design view name: schematic
.subckt xor3 a ap b bp c cp out

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
m5 out cp net20 net20 nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m4 out c net28 net28 nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m2 net20 bp ap ap nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m3 net20 b a a nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m1 net28 bp a a nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m0 net28 b ap ap nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
.ends
