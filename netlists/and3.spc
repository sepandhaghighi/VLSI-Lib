** Generated for: hspiceD
** Generated on: May 21 14:09:44 2016
** Design library name: PassTransistor
** Design cell name: And3
** Design view name: schematic
.subckt and3 out cp c bp b a



.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    MEASOUT=1
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/Rezayi/Desktop/hspice.mdl"

** Library name: PassTransistor
** Cell name: And3
** View name: schematic
m3 out cp c c nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m2 out c net15 net15 nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m1 net15 bp b b nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
m0 net15 b a a nch l=100e-9 w=200e-9 m=1 ad=46e-15 as=46e-15 pd=860e-9 ps=860e-9 nrd=650e-3 nrs=650e-3 sa=230e-9 sb=230e-9
.ends
