* HSPICE Input Capacitance Acquisition [fall]
* Liberty NCX vC-2009.06-SP1
* Build(Jul 16 2009)
* Filename: /home/Rezayi/Desktop/NCXtemplate/creation/PassTransistor/Or3/cBpf/cBpf.sp

* Cell Fall
* Driver Waveform Type: snps_predriver
* Pin Name: Bp
* Related Input Pin: Bp
* Input Waveform: Fall
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
* Pin Bp:		 H=1.320000	 L=0.000000
* Pin A:		 H=1.320000	 L=0.000000
* Pin B:		 H=1.320000	 L=0.000000
* Pin C:		 H=1.320000	 L=0.000000
* Pin Cp:		 H=1.320000	 L=0.000000
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
Vn_Bp n_Bp n_Bp2 DC 0
Vn_A n_A n_A2 DC 0
Vn_B n_B n_B2 DC 0
Vn_C n_C n_C2 DC 0
Vn_Cp n_Cp n_Cp2 DC 0
Vn_Out n_Out n_Out1 DC 0
CLD_Out n_Out1 0 0.01FF

* PROBE ================================
.PROBE TRAN V(n_Out) I(Vn_Out) V(n_Bp) I(Vn_Bp) V(n_A) I(Vn_A) V(n_B) I(Vn_B) V(n_C) I(Vn_C) V(n_Cp) I(Vn_Cp) I(Vn_VDD) I(Vn_VSS)

* MEASUREMENT ==========================

* Measure Input Reference Time
.MEASURE nc_inref_Bp WHEN V(n_Bp) = 1.2199440000e+00 td = 'nc_td' cross = 1
* input is falling

* Measure Input Capacitance
.MEASURE t_Bp_trip_incap1 WHEN V(n_Bp) = 1.3134000000e+00 td = 'nc_td' cross = 1
.MEASURE t_Bp_trip_incap2 WHEN V(n_Bp) = 2.6400000000e-01 td = 'nc_td' cross = 1
.MEASURE TRAN nc_intg_i_Bp INTEG I(Vn_Bp) FROM = 't_Bp_trip_incap1' TO = 't_Bp_trip_incap2'
.MEASURE TRAN nc_incap_Bp PARAM='ABS(nc_intg_i_Bp/1.0494000000e+00)'

* Measure Input Transition Time
.MEASURE TRAN nc_iptr_Bp PARAM = 'iptr'
.MEASURE TRAN real_iptr_Bp
+ trig V(n_Bp) val = 1.0560000000e+00 td = 'nc_td' cross = 1
+ targ V(n_Bp) val = 2.6400000000e-01 td = 'nc_td' cross = 1
.MEASURE TRAN nc_when_Bp param = '0' 
.MEASURE TRAN nc_when_A param = '0' 
.MEASURE TRAN nc_when_B param = '0' 
.MEASURE TRAN nc_when_C param = '0' 
.MEASURE TRAN nc_when_Cp param = '0' 

* Measure Full Swing Input Transition Time (0.5% to 99.5%)
.MEASURE TRAN nc_fulliptr_Bp
+ trig V(n_Bp) val = 1.3134000000e+00 td = 'nc_td' cross = 1
+ targ V(n_Bp) val = 6.6000000000e-03 td = 'nc_td' cross = 1

* STIMULUS  =====================
* InPin Bp PWL length=16 
* InPin A PWL length=2 
* InPin B PWL length=2 
* InPin C PWL length=2 
* InPin Cp PWL length=2 
* Sensitization Template Name: 
* SensInputs= Bp: 	10
* SensInputs= A: 	0
* SensInputs= B: 	0
* SensInputs= C: 	0
* SensInputs= Cp: 	0
* SensOuputs= Out: 	0

* nc_td: Measurement Starting time
* iptr: Input Transition Time
.DATA stimdata
index nc_td iptr 
+ t_Bp0 v_Bp0 t_Bp1 v_Bp1 t_Bp2 v_Bp2 t_Bp3 v_Bp3 t_Bp4 v_Bp4 t_Bp5 v_Bp5 t_Bp6 v_Bp6 t_Bp7 v_Bp7 t_Bp8 v_Bp8 t_Bp9 v_Bp9
+ t_Bp10 v_Bp10 t_Bp11 v_Bp11 t_Bp12 v_Bp12 t_Bp13 v_Bp13 t_Bp14 v_Bp14 t_Bp15 v_Bp15
+ t_A0 v_A0 t_A1 v_A1
+ t_B0 v_B0 t_B1 v_B1
+ t_C0 v_C0 t_C1 v_C1
+ t_Cp0 v_Cp0 t_Cp1 v_Cp1
* Input Slew Index= 1.0000000000e-11 (IPTR = 1.0000000000e-11) ======================================================================
* Stimlus to RelatedInPin Bp (Slew Index = 1.000000e-11, Slew = 1.000000e-11, Full swing = 1.666667e-11):
* 0.0000000000e+00 1.3200000000e+00 1.0000000000e-09 1.3200000000e+00 1.0100000000e-09 1.3200000000e+00 1.0116666667e-09 1.2540000000e+00 1.0133333333e-09 1.0560000000e+00
* 1.0150000000e-09 8.8107387772e-01 1.0166666667e-09 7.2861915717e-01 1.0183333333e-09 5.9400000000e-01 1.0200000000e-09 4.7353693886e-01 1.0216666667e-09 3.6430957859e-01
* 1.0233333333e-09 2.6400000000e-01 1.0250000000e-09 1.7076846943e-01 1.0266666667e-09 8.3154789293e-02 1.0283333333e-09 0.0000000000e+00 1.0300000000e-09 0.0000000000e+00
* 1.0316666667e-09 0.0000000000e+00
* Ramp Waveform to Side Pin A (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Ramp Waveform to Side Pin B (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Ramp Waveform to Side Pin C (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Ramp Waveform to Side Pin Cp (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Input Slew Index = 1.000000e-11, IPTR = 1.000000e-11, *************************************
  1 1.0100000000e-09 1.0000000000e-11 
+ 0.0000000000e+00 1.3200000000e+00 1.0000000000e-09 1.3200000000e+00 1.0100000000e-09 1.3200000000e+00 1.0116666667e-09 1.2540000000e+00 1.0133333333e-09 1.0560000000e+00
+ 1.0150000000e-09 8.8107387772e-01 1.0166666667e-09 7.2861915717e-01 1.0183333333e-09 5.9400000000e-01 1.0200000000e-09 4.7353693886e-01 1.0216666667e-09 3.6430957859e-01
+ 1.0233333333e-09 2.6400000000e-01 1.0250000000e-09 1.7076846943e-01 1.0266666667e-09 8.3154789293e-02 1.0283333333e-09 0.0000000000e+00 1.0300000000e-09 0.0000000000e+00
+ 1.0316666667e-09 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
+ 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
.ENDDATA 

* for Input Pin Bp
Vn_Bp2 n_Bp2 0 PWL(
+'t_Bp0' 'v_Bp0'
+'t_Bp1' 'v_Bp1'
+'t_Bp2' 'v_Bp2'
+'t_Bp3' 'v_Bp3'
+'t_Bp4' 'v_Bp4'
+'t_Bp5' 'v_Bp5'
+'t_Bp6' 'v_Bp6'
+'t_Bp7' 'v_Bp7'
+'t_Bp8' 'v_Bp8'
+'t_Bp9' 'v_Bp9'
+'t_Bp10' 'v_Bp10'
+'t_Bp11' 'v_Bp11'
+'t_Bp12' 'v_Bp12'
+'t_Bp13' 'v_Bp13'
+'t_Bp14' 'v_Bp14'
+'t_Bp15' 'v_Bp15'
+)
* for Input Pin A
Vn_A2 n_A2 0 PWL(
+'t_A0' 'v_A0'
+'t_A1' 'v_A1'
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
* for Input Pin Cp
Vn_Cp2 n_Cp2 0 PWL(
+'t_Cp0' 'v_Cp0'
+'t_Cp1' 'v_Cp1'
+)

* .TRAN ==========================
.TRAN 1.0000000000e-10 1.2000000000e-08 START = 0.0 sweep data=stimdata 

.END 
