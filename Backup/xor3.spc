// Generated for: spectre
// Generated on: Apr 30 15:27:03 2016
// Design library name: PassTransistor
// Design cell name: Xor3
// Design view name: schematic
.subckt xor3 A Ap B Bp C Cp Out
simulator lang=spectre
global 0
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_hvt
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfres_rpo
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfind
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_dio
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfmvar25
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_lvt
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_mim
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_rfrtmom
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_bip
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_dio_dnw
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_res
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_disres
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_rfrtmom
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_rfmos25
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_dio_na
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_mim
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_dio_hvt
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_bip_npn
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_na
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_bip
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_mos_cap_25
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_rfres_sa
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_dio_lvt
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_disres
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_res
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfmvar
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfmos25
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_dio_esd
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mim
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_rfmim
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_bip_npn
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfres_sa
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_res
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_dio_25
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfmim
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_25
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_rfmos
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_mos_cap
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_rtmom
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_hvt
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_rfres_rpo
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_rtmom
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_25
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfmos
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_dio_na25
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat_mis_lvt
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=mc_rfjvar
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=stat
include "/ICIC/90/TSMC/CDB/tsmcN90rf/../models/spectre/crn90g_2d5_lk_v1d2p1.scs" section=tt_na25

// Library name: PassTransistor
// Cell name: Xor3
// View name: schematic
M5 (Out Cp net20 net20) nmos_rf lr=100n wr=1.2u nr=8 m=1 mismatchflag=0
M4 (Out C net28 net28) nmos_rf lr=100n wr=1.2u nr=8 m=1 mismatchflag=0
M3 (net20 B A A) nmos_rf lr=100n wr=1.2u nr=8 m=1 mismatchflag=0
M2 (net20 Bp Ap Ap) nmos_rf lr=100n wr=1.2u nr=8 m=1 mismatchflag=0
M0 (net28 B Ap Ap) nmos_rf lr=100n wr=1.2u nr=8 m=1 mismatchflag=0
M1 (net28 Bp A A) nmos_rf lr=100n wr=1.2u nr=8 m=1 mismatchflag=0
simulatorOptions options reltol=1e-3 vabstol=1e-6 iabstol=1e-12 temp=27 \
    tnom=27 scalem=1.0 scale=1.0 gmin=1e-12 rforce=1 maxnotes=5 maxwarns=5 \
    digits=5 cols=80 pivrel=1e-3 sensfile="../psf/sens.output" \
    checklimitdest=psf 
modelParameter info what=models where=rawfile
element info what=inst where=rawfile
outputParameter info what=output where=rawfile
designParamVals info what=parameters where=rawfile
primitives info what=primitives where=rawfile
subckts info what=subckts  where=rawfile
saveOptions options save=allpub
