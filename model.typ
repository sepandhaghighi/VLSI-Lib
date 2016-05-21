.subckt nmos_rf D G S B lr=0.1E-6 wr=1.0E-6 nr=1 mismatchflag=0
.param
+temp1=parn1rf  temp2=parn2rf
+fac1 = '0.756823*temp1+0.653620*temp2'
+fac2 = '0.756823*temp1-0.653620*temp2'
.param  lef='lr-3.5E-08'
+       wef='wr+1.5e-8'
+       geo_fac ='1/sqrt(nr*lef*wef*1e12)'
+       vthmisnrf = '2.402E-03*geo_fac*fac1*mismatchflag'
+       dlmisnrf = '1.834E-03*geo_fac*lef*fac2*mismatchflag'
+       dwmisnrf = '-1.834E-03*geo_fac*wef*fac2*mismatchflag'
+       toxmisnrf = '1.834E-03*geo_fac*toxnrf*fac2*mismatchflag'
.param Lspace=0.28u
.param Ledge=1.45u
.param Ledgeeff=0.52u
.param Lsti=0.65u
.param Wsti=1.35u
.param Rod=970
.param Rsti=1720
.param Ns='int(nr/2+1)'
.param Nd='int((nr+1)/2)'
.param rsx='(0.04*(lr+Lspace)*1e6*(2*Ns+1/Ns-3) +1.12/Ns + 0.5016)/(wr*1e6)'
.param rdx='0.0098*(lr+Lspace)*1e6*(Nd+2/Nd) + 0.238*(wr*1e6+1.92)/Nd + 0.126/(1.07+(Nd-1)*(lr+Lspace)*1e6)'
.param rgx='((0.7*(wr*1e6+0.72)/(lr*1e6-0.02)+7.85)/nr+nr*(0.000874*wr*1e6+0.0122)+0.0295*wr*1e6+0.266*lr*1e6+1740*lr/nr/wr+6.06)'
.param Lod='nr*(lr+Lspace)+2*Ledge-Lspace'
.param rbx='(1+2.5e-8/lr)*(Rod*(Lod+4*Ledge-2*Lspace)/12+Rsti*Lsti/2)*(Rod*wr/12+Rsti*Wsti/2)/((Lod-2*Ledge+Lspace+2.8e-6)*(Rod*(Lod+4*Ledge-2*Lspace)/12+Rsti*Lsti/2)+wr*(Rod*wr/12+Rsti*Wsti/2))'
.param rdbx='6.1+220/(wr*nr*1e6)+38/nr'
.param cgsx='(0.6*nr*(lr+Lspace)*1e6/(0.1*wr*1e6+1.64)+0.16*wr*1e6+0.71)*1e-15'
.param cgdx='(0.09*nr*(lr+Lspace)*1e6+0.07*nr+0.18)*1e-15'
.param cdsx='(0.34+0.0302*nr*wr/(lr+Lspace)+1.1*nr*(lr+Lspace)/(wr+9.8e-6))*1e-15'
.param sax='2*nr*(lr+Lspace)/log((Ledge-Lspace-lr/2+nr*(lr+Lspace))*(Ledge-Lspace-lr/2+(nr+1)*(lr+Lspace))/(Ledge-Lspace-lr/2)/(Ledge+lr/2))-lr/2'
.param sdiofa='(Ns-2)*wr*Lspace+2*wr*Ledgeeff+(nr-int(nr/2)*2)*wr*(Lspace-Ledgeeff)'
.param sdiofp='(Ns-2)*Lspace*2+4*Ledgeeff+(nr-int(nr/2)*2)*2*(Lspace-Ledgeeff)'
.param ddiofa='int(nr/2)*wr*Lspace+(nr-int(nr/2)*2)*wr*Ledgeeff'
.param ddiofp='int(nr/2)*Lspace*2+(nr-int(nr/2)*2)*(2*Ledgeeff)'
.param sdiogp='wr*nr+(2-(nr-int(nr/2)*2))*wr'
.param ddiogp='wr*nr+(nr-int(nr/2)*2)*wr'
.param noix = '3.7829-12.429*lr*1e6'
**********************
RG  G GI   R=rgx
RS  S SI   R=rsx
RD  D DI   R=rdx
**********************
CGS_M GI SI C=cgsx
CGD_M GI DI C=cgdx
CDS_M DI SI C=cdsx
***** Diodes  *******
DSS  SB  SI  ndio_rf_f AREA=sdiofa PJ=sdiofp
DDD  DB  DI  ndio_rf_f AREA=ddiofa PJ=ddiofp 
DSG  SB  SI  ndio_rf_g AREA=1E-15  PJ=sdiogp  
DDG  DB  DI  ndio_rf_g AREA=1E-15  PJ=ddiogp
*****************************************************************************
RB    B  BI  R=rbx	tc1=3.70e-3 tc2=9.64e-6
Rdb  DB  BI  R=rdbx	tc1=3.70e-3 tc2=9.64e-6
Rsb  SB  BI  R=rdbx	tc1=3.70e-3 tc2=9.64e-6
M0 DI GI SI BI nch_rf L=lr W=wr m=nr AD=0 AS=0 PD=0 PS=0 SA=sax SB=sax

.MODEL nmos_rf NMOS	(	LMIN     = 1.0E-07
+LMAX     = '2.4100E-07'         
+WMIN     = '1.0000E-06'         
+WMAX     = '5.0100E-06'	LEVEL    = 54                       
+VERSION  = 4.4                 BINUNIT  = 2                   PARAMCHK = 1                   
+MOBMOD   = 0                   CAPMOD   = 2                   IGCMOD   = 1                   
+IGBMOD   = 1                   DIOMOD   = 1                   RDSMOD   = 0                   
+RBODYMOD = 0                   RGATEMOD = 0                   PERMOD   = 1                   
+ACNQSMOD = 0                   TRNQSMOD = 0                   TNOM     = 25                  
+TOXE     = '(toxnrf+toxmisnrf)'            TOXM     = '(toxnrf+toxmisnrf)'            DTOX     = 3e-010           
+EPSROX   = 3.9                 WINT     = 6e-009              LINT     = 2.5e-009            
+LL       = 0                   WL       = 0                   LLN      = 1                   
+WLN      = 1                   LW       = 0                   WW       = 0                   
+LWN      = 1                   WWN      = 1                   LWL      = 0                   
+WWL      = 0                   LLC      = 0                   WLC      = 0                   
+LWC      = 0                   WWC      = 0                   LWLC     = 0                   
+WWLC     = 0                   XL       = '-3.5E-08+(dxlnrf+dlmisnrf)'   XW       = '1.5e-8+(dxwnrf+dwmisnrf)'
+VTH0     = '0.22744278+(dvthnrf+vthmisnrf)'
+WVTH0    = '5.5738939e-009+dwvthnrf'
+LVTH0    = '0+dlvthnrf'        PVTH0    = '0+dpvthnrf'        K1       = 0.32433703          
+LK1      = -2.4740667e-010     WK1      = -1.2374044e-008     PK1      = 2.4748089e-015      
+K2       = '-0.011014366+dk2nrf' 
+LK2      = 1.2028732e-009      WK2      = 3.4532661e-009      
+PK2      = -6.9065323e-016     K3       = -2.9571429          LK3      = 1.5428571e-008      
+K3B      = 1.2                 W0       = -5e-008             DVT0     = 13.9                
+DVT1     = 1.25                DVT2     = 0                   DVT0W    = 0                   
+DVT1W    = 0                   DVT2W    = 0                   DSUB     = 0.5                 
+MINV     = 0                   VOFFL    = 0                   DVTP0    = 4e-007              
+DVTP1    = 1.5714286           LDVTP1   = 8.5714286e-008      LPE0     = 4.45e-008           
+LPEB     = 0                   XJ       = 1.5e-007            NGATE    = 4e020               
+NDEP     = 8.3687e017          NSD      = 1e020               PHIN     = 0                   
+CDSC     = 0                   CDSCB    = 0                   CDSCD    = 0                   
+CIT      = -0.00012285714      LCIT     = 2.2457143e-010      VOFF     = -0.11586017        
+LVOFF    = -2.4718229e-009     WVOFF    = -1.6403173e-008     PVOFF    = '1.318624e-015+dpvoffnrf'       
+NFACTOR  = 0.5                 ETA0     = 0.22133733          WETA0    = -1.3377345e-008
+PETA0    = '0+dpeta0nrf'
+ETAB     = -0.1                U0       = 0.045463996         LU0      = -5.1444e-010        
+WU0      = -1.2300788e-008     PU0      = 5.1598332e-016      UA       = -6.284e-010       
+UB       = 2.2915951e-018      LUB      = -9.1553714e-027     WUB      = -1.0877056e-024     
+PUB      = 4.185198e-032       UC       = 2.4114338e-010      LUC      = -4.1075238e-019     
+WUC      = -1.3447417e-016     PUC      = 4.1087561e-024      VSAT     = 114000
+PVSAT    = '0+dpvsatnrf'
+A0       = 2.375               AGS      = 0.95                A1       = 0                   
+A2       = 1                   B0       = 0                   B1       = 0                   
+KETA     = -0.044142857        LKETA    = 3.4285714e-009      DWG      = 0                   
+DWB      = 0                   PCLM     = 0.84                PDIBLC1  = 0                   
+PDIBLC2  = 1.4285714e-005      LPDIBLC2 = 1.7142857e-011      PDIBLCB  = 0                   
+DROUT    = 0                   PVAG     = 1.5                 DELTA    = 0.0075              
+PSCBE1   = 9.264e008           PSCBE2   = 1e-020              FPROUT   = 200                 
+PDITS    = 0                   PDITSD   = 0                   PDITSL   = 0                   
+RSH      = 10.5                RDSW     = 140                 PRWG     = 0                   
+PRWB     = 0                   WR       = 1                   ALPHA0   = 0                   
+ALPHA1   = 0.03                BETA0    = 8.7
***** Gate-Induced Drain Leakage Model
+AGIDL    = 9e-008              BGIDL    = 2.3e009             CGIDL    = 0.5
+EGIDL    = 0.53
***** Gate Direct Tunnnel Current Model
+AIGBACC  = 0.01134             BIGBACC  = 0.003249            CIGBACC  = 0.1416              
+NIGBACC  = 4.05                AIGBINV  = 0.35                BIGBINV  = 0.03                
+CIGBINV  = 0.006               EIGBINV  = 1.1                 NIGBINV  = 1                   
+AIGC     = 0.010347143         LAIGC    = -9.4285714e-012     BIGC     = 0.001525            
+CIGC     = 0                   AIGSD    = 0.0083547333        LAIGSD   = 5.716e-012          
+WAIGSD   = 9.5552467e-011      PAIGSD   = -5.733148e-018      BIGSD    = 0.0004021           
+CIGSD    = 0.001463            NIGC     = 1                   POXEDGE  = 1                   
+PIGCD    = 2.3                 NTOX     = 'ntoxnrf'           DLCIG    = 2.5e-009
+TOXREF   = 3e-009
***** Charge and Capacitance Parameters
+CGSO     = 'cgonrf'            CGDO     = 'cgonrf'            CGBO     = 0            
+CGSL     = 'cglnrf'            CGDL     = 'cglnrf'                          
+CLC      = 1e-007              CLE      = 0.6                 CF       = 'cfnrf'                      
+CKAPPAS  = 0.6                 ACDE     = 1.2                 MOIN     = 12.6                
+NOFF     = 1.686               VOFFCV   = '-0.010'
+DLC      = '2.0e-08'           DWC      = 0                   XPART    = 0
***** Temperature Dependence Parameters
+KT1      = -0.2624             
+LKT1     = -1.62e-009          KT1L     = 0                   KT2      = -0.04464            
+UTE      = -1.5502921          LUTE     = 1.1143371e-008      WUTE     = 7.437167e-008       
+PUTE     = -1.7199444e-015     UA1      = 2.684e-009          UB1      = -3.673e-018         
+UC1      = -6.421e-011         PRT      = 0                   AT       = 35357.143           
+LAT      = 0.0019285714
+TPB      = 1.00E-03            TCJ      = 7.32E-04            TPBSW    = 1.90E-03            
+TCJSW    = 3.57E-04            TPBSWG   = 1.90E-03            TCJSWG   = 3.57E-04            
+XTIS     = 3
***** Source/Drain Junction Diode Model
+JSS      = 1.77E-07            JSWS     = 4.23E-13            
+JSWGS    = 9E-12               NJS      = 1                   IJTHSFWD = 0.01                
+IJTHSREV = 0.01                BVS      = 10                  XJBVS    = 1                   
+PBS      = 0.5                 CJS      = 'cjnrf'             MJS      = 0.25                
+PBSWS    = 0.8                 CJSWS    = 'cjswnrf'           MJSWS    = 0.01                
+PBSWGS   = 0.78                CJSWGS   = 'cjswgnrf'          MJSWGS   = 0.52                
***** Gate Electrode Resistance Model
+DMCG     = 9.25e-008           DMCI     = 9.25e-008           
+DMDG     = 0                   DMCGT    = 0                   DWJ      = 0                   
+XGW      = 0                   XGL      = 0                   RSHG     = 0.1
+NGCON    = 1                   XRCRG1   = 12                  XRCRG2   = 1
***** Substrate Resistance Network
+GBMIN    = 1e-012              RBPB     = 50                  RBPD     = 50                  
+RBPS     = 50                  RBDB     = 50                  RBSB     = 50
***** LOD Stress Effect Model 
+SAREF    = 0.63E-6             SBREF    = 0.63E-6
+KVSAT    = 0.20                WLOD     = 0.8E-6              TKU0     = 0.01
+KU0      = -7.36E-8            LLODKU0  = 1                   WLODKU0  = 1
+LKU0     = 4.027E-7            WKU0     = 8E-7                PKU0     = -2.0E-13
+KVTH0    = 3.5E-9              STK2     = 1.35E-9             STETA0   = 0
+LKVTH0   = -2.68E-11           WKVTH0   = 1.5E-6              PKVTH0   = 0
+LLODVTH  = 1                   WLODVTH  = 1                   LODK2    = 0.5
+LODETA0  = 1
***** Noise Model
+FNOIMOD  = 1                   NOIA     = 4.2926E+41          NOIB     = 1.612E+24
+NOIC     = 8.75                EM       = 1.192E+07           EF       = 0.8841
+TNOIMOD  = 0   		NTNOI    = noix           )

.MODEL ndio_rf_f D (                                           LEVEL  = 3
+ IS     =  1.77E-07            IKR    = 1E10                  
+ N      =  1.02                BV     = 10.1                  IBV    = 0.03
+ JSW    =  4.23E-13            CJ     = 'cjnrf'               PJ     = 8.4E-4
+ MJ     =  0.25                FC     = 0                     CJSW   = 'cjswnrf'
+ AREA   =  3.92E-8             MJSW   = 0.01                  TLEVC  = 1
+ CTA    =  7.32E-04            CTP    = 3.57E-04              
+ TCV    =  -1.00E-03           TLEV   = 1                     XTI    = 3
+ EG     =  1.17                PHP    = 0.8                   PB     = 0.5
+ IK     =  1E20                TPB    = 1.00E-03              TREF   = 25
+ TPHP   =  1.90E-03            FCS    = 0                  )

.MODEL ndio_rf_g D (                                           LEVEL  = 3
+ IS     =  1.77E-07            IKR    = 1E10                  
+ N      =  1.02                BV     = 10.1                  IBV    = 0.03
+ JSW    =  4.23E-13            CJ     = 'cjnrf'               PJ     = 8.4E-4
+ MJ     =  0.25                FC     = 0                     CJSW   = 'cjswgnrf'
+ AREA   =  3.92E-8             MJSW   = 0.52                  TLEVC  = 1
+ CTA    =  7.32E-04            CTP    = 3.57E-04              
+ TCV    =  -1.00E-03           TLEV   = 1                     XTI    = 3
+ EG     =  1.17                PHP    = 0.78                  PB     = 0.5
+ IK     =  1E20                TPB    = 1.00E-03              TREF   = 25
+ TPHP   =  1.90E-03            FCS    = 0                  )

.ends
