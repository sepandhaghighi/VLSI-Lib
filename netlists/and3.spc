** Generated for: hspiceD
** Generated on: May  9 16:09:26 2016
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
.INCLUDE "/ICIC/90/TSMC/CDB/models/hspice/hspice.mdl"

** Library name: PassTransistor
** Cell name: And3
** View name: schematic
xm3 out cp c c nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm2 out c net15 net15 nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm1 net15 bp b b nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
xm0 net15 b a a nmos_rf lr=100e-9 wr=1.2e-6 nr=8 m=1 mismatchflag=0
.END
