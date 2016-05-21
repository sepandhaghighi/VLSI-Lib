* HSPICE Input Capacitance Acquisition [rise]
* Liberty NCX vC-2009.06-SP1
* Build(Jul 16 2009)
* Filename: /home/Rezayi/Desktop/NCXtemplate/creation/PassTransistor/Or3/cCpr/cCpr.sp

* Cell Rise
* Driver Waveform Type: snps_predriver
* Pin Name: Cp
* Related Input Pin: Cp
* Input Waveform: Rise
* input_threshold_pct_rise: 7.58
* output_threshold_pct_rise: 50.00
* input_threshold_pct_fall: 92.42
* output_threshold_pct_fall: 50.00
* slew_lower_threshold_pct_rise: 20.00
* slew_upper_threshold_pct_rise: 80.00
* slew_lower_threshold_pct_fall: 20.00
* slew_upper_threshold_pct_fall: 80.00
* capacitance_lower_threshold_pct_rise: 0.50
* capacitance_upper_threshold_pct_rise: 80.00
* capacitance_lower_threshold_pct_fall: 20.00
* capacitance_upper_threshold_pct_fall: 99.50
* slew_derate_from_library: 1.00
* Clock Width(ps): 1000.000000

* Pin Signal Voltage Level:
* Pin Cp:		 H=1.320000	 L=0.000000
* Pin A:		 H=1.320000	 L=0.000000
* Pin Bp:		 H=1.320000	 L=0.000000
* Pin B:		 H=1.320000	 L=0.000000
* Pin C:		 H=1.320000	 L=0.000000
* Pin Out:		 H=1.320000	 L=0.000000

* Lib Slew Index(ps): 10.000000
* Input Transition Time(ps): 10.000000
* Lib Load Index(ff): 0.000000
* TEMPERATURE ==========================
.TEMP 2.500000e+01

* MODELS ===============================
.prot 
.inc '/home/Rezayi/Desktop/NCXtemplate/creation/../model.typ'
.unprot 
.option brief

* CELL SUBCKT ==========================
.inc '/home/Rezayi/Desktop/NCXtemplate/creation/../netlists/or3.spc'

* OPTIONS ==============================
* NCX Default Options:
.OPTIONS POST=1 PROBE POST_VERSION=2001
+ INGOLD=2 NOMOD NOPAGE NUMDGT=10 MEASDGT=10
+ LIMPTS=500000 ICSWEEP=0 AUTOSTOP ALTCC=1
+ RUNLVL=5 ACCURATE=0
+ ABSVAR=1.000000e-03 RELVAR=1.000000e-02
* (ACCURATE=1 sets these control options: LVLtim=3 DVDT=2 RELVAR=0.2 ABSVAR=0.2 FT=0.2 RELMOS=0.01)
* (ACCURATE=0 uses default control options: LVLtim=1 DVDT=4 RELVAR=0.3 ABSVAR=0.5 FT=0.25 RELMOS=0.05)
* End of NCX Default Options.

* Lib Level Options:
* No Lib Level Options Here
* Cell Level Options:
* No Cell Level Options Here
* Pin Level Options:
* No Pin Level Options Here

* VOLTAGE SOURCES ======================
.GLOBAL VDD VSS
Vn_VDD VDD 0 DC 1.320000e+00
Vn_VSS VSS 0 DC 0.000000e+00

* ACQUISITION CIRCUIT ==================
X_Or3 n_a n_bp n_b n_c n_cp n_out Or3 
Vn_Cp n_Cp n_Cp2 DC 0
Vn_A n_A n_A2 DC 0
Vn_Bp n_Bp n_Bp2 DC 0
Vn_B n_B n_B2 DC 0
Vn_C n_C n_C2 DC 0
Vn_Out n_Out n_Out1 DC 0
CLD_Out n_Out1 0 0.01FF

* PROBE ================================
.PROBE TRAN V(n_Out) I(Vn_Out) V(n_Cp) I(Vn_Cp) V(n_A) I(Vn_A) V(n_Bp) I(Vn_Bp) V(n_B) I(Vn_B) V(n_C) I(Vn_C) I(Vn_VDD) I(Vn_VSS)

* MEASUREMENT ==========================

* Measure Input Reference Time
.MEASURE nc_inref_Cp WHEN V(n_Cp) = 1.0005600000e-01 td = 'nc_td' cross = 1
* input is rising

* Measure Input Capacitance
.MEASURE t_Cp_trip_incap1 WHEN V(n_Cp) = 6.6000000000e-03 td = 'nc_td' cross = 1
.MEASURE t_Cp_trip_incap2 WHEN V(n_Cp) = 1.0560000000e+00 td = 'nc_td' cross = 1
.MEASURE TRAN nc_intg_i_Cp INTEG I(Vn_Cp) FROM = 't_Cp_trip_incap1' TO = 't_Cp_trip_incap2'
.MEASURE TRAN nc_incap_Cp PARAM='ABS(nc_intg_i_Cp/1.0494000000e+00)'

* Measure Input Transition Time
.MEASURE TRAN nc_iptr_Cp PARAM = 'iptr'
.MEASURE TRAN real_iptr_Cp
+ trig V(n_Cp) val = 2.6400000000e-01 td = 'nc_td' cross = 1
+ targ V(n_Cp) val = 1.0560000000e+00 td = 'nc_td' cross = 1
.MEASURE TRAN nc_when_Cp param = '1' 
.MEASURE TRAN nc_when_A param = '0' 
.MEASURE TRAN nc_when_Bp param = '0' 
.MEASURE TRAN nc_when_B param = '0' 
.MEASURE TRAN nc_when_C param = '0' 

* Measure Full Swing Input Transition Time (0.5% to 99.5%)
.MEASURE TRAN nc_fulliptr_Cp
+ trig V(n_Cp) val = 6.6000000000e-03 td = 'nc_td' cross = 1
+ targ V(n_Cp) val = 1.3134000000e+00 td = 'nc_td' cross = 1

* STIMULUS  =====================
* InPin Cp PWL length=16 
* InPin A PWL length=2 
* InPin Bp PWL length=2 
* InPin B PWL length=2 
* InPin C PWL length=2 
* Sensitization Template Name: 
* SensInputs= Cp: 	01
* SensInputs= A: 	0
* SensInputs= Bp: 	0
* SensInputs= B: 	0
* SensInputs= C: 	0
* SensOuputs= Out: 	0

* nc_td: Measurement Starting time
* iptr: Input Transition Time
.DATA stimdata
index nc_td iptr 
+ t_Cp0 v_Cp0 t_Cp1 v_Cp1 t_Cp2 v_Cp2 t_Cp3 v_Cp3 t_Cp4 v_Cp4 t_Cp5 v_Cp5 t_Cp6 v_Cp6 t_Cp7 v_Cp7 t_Cp8 v_Cp8 t_Cp9 v_Cp9
+ t_Cp10 v_Cp10 t_Cp11 v_Cp11 t_Cp12 v_Cp12 t_Cp13 v_Cp13 t_Cp14 v_Cp14 t_Cp15 v_Cp15
+ t_A0 v_A0 t_A1 v_A1
+ t_Bp0 v_Bp0 t_Bp1 v_Bp1
+ t_B0 v_B0 t_B1 v_B1
+ t_C0 v_C0 t_C1 v_C1
* Input Slew Index= 1.0000000000e-11 (IPTR = 1.0000000000e-11) ======================================================================
* Stimlus to RelatedInPin Cp (Slew Index = 1.000000e-11, Slew = 1.000000e-11, Full swing = 1.666667e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-09 0.0000000000e+00 1.0100000000e-09 0.0000000000e+00 1.0116666667e-09 6.6000000000e-02 1.0133333333e-09 2.6400000000e-01
* 1.0150000000e-09 4.3892612228e-01 1.0166666667e-09 5.9138084283e-01 1.0183333333e-09 7.2600000000e-01 1.0200000000e-09 8.4646306114e-01 1.0216666667e-09 9.5569042141e-01
* 1.0233333333e-09 1.0560000000e+00 1.0250000000e-09 1.1492315306e+00 1.0266666667e-09 1.2368452107e+00 1.0283333333e-09 1.3200000000e+00 1.0300000000e-09 1.3200000000e+00
* 1.0316666667e-09 1.3200000000e+00
* Ramp Waveform to Side Pin A (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Ramp Waveform to Side Pin Bp (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Ramp Waveform to Side Pin B (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Ramp Waveform to Side Pin C (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Input Slew Index = 1.000000e-11, IPTR = 1.000000e-11, *************************************
  1 1.0100000000e-09 1.0000000000e-11 
+ 0.0000000000e+00 0.0000000000e+00 1.0000000000e-09 0.0000000000e+00 1.0100000000e-09 0.0000000000e+00 1.0116666667e-09 6.6000000000e-02 1.0133333333e-09 2.6400000000e-01
+ 1.0150000000e-09 4.3892612228e-01 1.0166666667e-09 5.9138084283e-01 1.0183333333e-09 7.2600000000e-01 1.0200000000e-09 8.4646306114e-01 1.0216666667e-09 9.5569042141e-01
+ 1.0233333333e-09 1.0560000000e+00 1.0250000000e-09 1.1492315306e+00 1.0266666667e-09 1.2368452107e+00 1.0283333333e-09 1.3200000000e+00 1.0300000000e-09 1.3200000000e+00
+ 1.0316666667e-09 1.3200000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
+ 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
.ENDDATA 

* for Input Pin Cp
Vn_Cp2 n_Cp2 0 PWL(
+'t_Cp0' 'v_Cp0'
+'t_Cp1' 'v_Cp1'
+'t_Cp2' 'v_Cp2'
+'t_Cp3' 'v_Cp3'
+'t_Cp4' 'v_Cp4'
+'t_Cp5' 'v_Cp5'
+'t_Cp6' 'v_Cp6'
+'t_Cp7' 'v_Cp7'
+'t_Cp8' 'v_Cp8'
+'t_Cp9' 'v_Cp9'
+'t_Cp10' 'v_Cp10'
+'t_Cp11' 'v_Cp11'
+'t_Cp12' 'v_Cp12'
+'t_Cp13' 'v_Cp13'
+'t_Cp14' 'v_Cp14'
+'t_Cp15' 'v_Cp15'
+)
* for Input Pin A
Vn_A2 n_A2 0 PWL(
+'t_A0' 'v_A0'
+'t_A1' 'v_A1'
+)
* for Input Pin Bp
Vn_Bp2 n_Bp2 0 PWL(
+'t_Bp0' 'v_Bp0'
+'t_Bp1' 'v_Bp1'
+)
* for Input Pin B
Vn_B2 n_B2 0 PWL(
+'t_B0' 'v_B0'
+'t_B1' 'v_B1'
+)
* for Input Pin C
Vn_C2 n_C2 0 PWL(
+'t_C0' 'v_C0'
+'t_C1' 'v_C1'
+)

* .TRAN ==========================
.TRAN 1.0000000000e-10 1.2000000000e-08 START = 0.0 sweep data=stimdata 

.END 
