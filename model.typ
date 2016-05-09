** SPICE model for NanoChar DEMO Only 


.MODEL N            NMOS   (                        LMIN     = 7.8E-07
+LMAX    = 2.1E-05        WMIN     = 1.0005E-05     WMAX     = 0.000101       
+LEVEL   = 49             TNOM     = 25             XL       = -4E-08   
+XW      = 1.5E-08        VERSION  = 3.2            TOX      = 2.5E-09           
+TOXM    = 2.5E-09        XJ       = 1.5E-07        NCH      = 7.59E+17       
+LLN     = 1              LWN      = 1              WLN      = 1              
+WWN     = 1              LINT     = 2.5E-09        WINT     = 2.5E-09        
+MOBMOD  = 1              BINUNIT  = 2              DWG      = 0              
+DWB     = 0              VTH0     = 0.2915506      LVTH0    = 3.582644E-08   
+K1      = 0.4072487      LK1      = 1.743509E-09   K2       = -0.01          
+K3      = 0              DVT0     = 0              DVT1     = 0              
+DVT2    = 0              DVT0W    = 0              DVT1W    = 0              
+DVT2W   = 0              NLX      = 0              W0       = 0              
+K3B     = 0              VFB      = -0.974712      VSAT     = 78968.14       
+LVSAT   = 0.01031342     UA       = 4.101469E-10   LUA      = -8.095794E-17  
+UB      = 2.769547E-19   LUB      = 4.160433E-25   UC       = -1.714363E-11  
+LUC     = 7.140058E-17   RDSW     = 100            PRWB     = 0              
+PRWG    = 0              WR       = 1              U0       = 0.04011        
+LU0     = 3.336963E-10   WU0      = -1.201283E-08  PU0      = 8.829433E-15   
+A0      = 1.323812       LA0      = -2.380019E-07  KETA     = -0.000963404   
+LKETA   = -3.657772E-10  A1       = 0              A2       = 0.99           
+AGS     = 0.1920626      LAGS     = 7.933398E-08   B0       = 0              
+B1      = 0              VOFF     = -0.1084125     LVOFF    = -1.586679E-08  
+NFACTOR = 0.5682505      LNFACTOR = 3.173359E-07   CIT      = 0              
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0              
+ETA0    = 0.0002444384   LETA0    = 5.553378E-10   ETAB     = -0.0001841252  
+LETAB   = -1.586679E-10  DSUB     = 0              PCLM     = 0.2603132      
+LPCLM   = 3.966698E-07   PDIBLC1  = 0              PDIBLC2  = 0.001          
+PDIBLCB = 0              DROUT    = 0              PSCBE1   = 3E+08          
+PSCBE2  = 8E-10          PVAG     = -0.1           DELTA    = 0.005          
+ALPHA0  = 0              ALPHA1   = 4E-05          BETA0    = 2.2244         
+KT1     = -0.17          KT2      = -0.02          AT       = 40000          
+UTE     = -1.5           UA1      = 4.5E-10        UB1      = 1E-19          
+UC1     = 4.727754E-11   KT1L     = 0              PRT      = 0              
+CJ      = 0.000983808    MJ       = 0.3196321      PB       = 0.5007         
+CJSW    = 1.914636E-10   MJSW     = 0.4261249      PBSW     = 0.5007         
+CJSWG   = 4.859432E-10   MJSWG    = 0.4396875      PBSWG    = 0.5007         
+TCJ     = 0.001057955    TCJSW    = 0.0008169206   TCJSWG   = 0.0008169206   
+TPB     = 0.001192997    TPBSW    = 0.001192997    TPBSWG   = 0.001192997    
+JS      = 3.7E-06        JSW      = 1E-09          CGDO     = 3.83E-10           
+CGSO    = 3.83E-10       CAPMOD   = 3              NQSMOD   = 0              
+XPART   = 1              CF       = 0              TLEV     = 1              
+TLEVC   = 1              XTI      = 3              N        = 1              
+HDIF    = 1.475E-07      LDIF     = 7E-08          RSH      = 7.56           
+RS      = 0              RD       = 0              ACM      = 12             
+NLEV    = 3              AF       = 0.85           KF       = 7.9E-25        
+DLC     = -8E-9          CALCACM  = 1              SFVTFLAG = 0              
+ijth = 0.01              WVTH0    = 0     )



.MODEL P            PMOS   (                        LMIN     = 7.85E-07
+LMAX    = 2.1E-05        WMIN     = 1E-05          WMAX     = 0.000101       
+LEVEL   = 49             TNOM     = 25             XL       = -3.5E-08
+XW      = 1.5E-08        VERSION  = 3.2            TOX      = 2.63E-09           
+TOXM    = 2.63E-09       XJ       = 2E-07          NCH      = 5.55E+17       
+LLN     = 1              LWN      = 1              WLN      = 1              
+WWN     = 1              LINT     = 2.5E-09        WINT     = 7.5E-09        
+MOBMOD  = 1              BINUNIT  = 2              DWG      = 0              
+DWB     = 0              VTH0     = -0.1734338     LVTH0    = -2.957894E-08  
+WVTH0   = 2.167908E-08   PVTH0    = 7.68807E-16    K1       = 0.2162911      
+LK1     = -6.297222E-10  WK1      = -1.040731E-08  PK1      = 3.481919E-14   
+K2      = -0.01          K3       = 0              DVT0     = 0              
+DVT1    = 0              DVT2     = 0              DVT0W    = 0              
+DVT1W   = 0              DVT2W    = 0              NLX      = 0              
+W0      = 0              K3B      = 0              VFB      = -0.9032777     
+VSAT    = 98399.57       LVSAT    = 0.01609232     UA       = 5.540011E-10   
+LUA     = -4.023081E-17  UB       = 1.2E-18        UC       = 1.619979E-11   
+LUC     = 8.04616E-18    RDSW     = 210            PRWB     = 0              
+PRWG    = 0              WR       = 1              U0       = 0.01128071     
+LU0     = 6.347526E-10   WU0      = -3.422246E-09  PU0      = 8.940177E-16   
+A0      = 1.924006       LA0      = -2.413848E-07  KETA     = -0.004         
+A1      = 0              A2       = 0.99           AGS      = 0.6595972      
+LAGS    = 1.046001E-07   B0       = 0              B1       = 0              
+VOFF    = -0.1051128     LVOFF    = -2.917326E-09  WVOFF    = -1.260807E-08  
+PVOFF   = -8.364489E-15  NFACTOR  = 0.2            CIT      = 0              
+CDSC    = 0              CDSCB    = 0              CDSCD    = 0              
+ETA0    = 0.0007599355   LETA0    = 2.413848E-09   ETAB     = -0.0009199785  
+LETAB   = -8.046161E-10  DSUB     = 0              PCLM     = 0.9839957      
+LPCLM   = 1.609232E-07   PDIBLC1  = 0              PDIBLC2  = 0.05           
+PDIBLCB = 0              DROUT    = 0              PSCBE1   = 8.492077E+08   
+PSCBE2  = 1E-20          PVAG     = 1              DELTA    = 0.004599892    
+LDELTA  = 4.02308E-09    ALPHA0   = 0              ALPHA1   = 6.95E-05       
+BETA0   = 5.94           KT1      = -0.1891998     LKT1     = -8.046166E-09  
+KT2     = -0.01353918    AT       = 40000          UTE      = -1.059344      
+LUTE    = -1.832672E-08  WUTE     = -2.004007E-08  PUTE     = 3.087026E-13   
+UA1     = 2.312003E-09   LUA1     = -1.206924E-16  UB1      = -4.482314E-18  
+LUB1    = 4.332412E-25   WUB1     = 5.185429E-25   PUB1     = -3.280004E-31  
+UC1     = -9.072013E-11  LUC1     = 5.006499E-18   WUC1     = 6.720133E-16   
+PUC1    = -5.0065E-22    KT1L     = 0              PRT      = 0              
+CJ      = 0.001053502    MJ       = 0.3477381      PB       = 0.705          
+CJSW    = 5.751891E-11   MJSW     = 0.2            PBSW     = 0.705          
+CJSWG   = 3.447758E-10   MJSWG    = 0.8            PBSWG    = 0.705          
+TCJ     = 0.0009588869   TCJSW    = 0.001065776    TCJSWG   = 0.001065776    
+TPB     = 0.001559184    TPBSW    = 0.001559184    TPBSWG   = 0.001559184    
+JS      = 9.44E-07       JSW      = 1.255E-12      CGDO     = 3.39E-10           
+CGSO    = 3.39E-10       CAPMOD   = 3              NQSMOD   = 0              
+XPART   = 1              CF       = 0              TLEV     = 1              
+TLEVC   = 1              XTI      = 3              N        = 1              
+HDIF    = 1.4625E-07     LDIF     = 7E-08          RSH      = 7.43           
+RS      = 0              RD       = 0              ACM      = 12             
+NLEV    = 3              AF       = 0.99           KF       = 8.14E-24       
+DLC     = -8E-9          CALCACM  = 1              SFVTFLAG = 0              
+ijth = 0.01              )


