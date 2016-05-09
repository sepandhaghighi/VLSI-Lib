* HSPICE Input Capacitance Acquisition [fall]
* Liberty NCX vC-2009.06-SP1
* Build(Jul 16 2009)
* Filename: /home/Rezayi/Desktop/NCXtemplate/creation/PassTransistor/Or2/cVCCf/cVCCf.sp

* Cell Fall
* Driver Waveform Type: snps_predriver
* Pin Name: VCC
* Related Input Pin: VCC
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
* Pin VCC:		 H=1.320000	 L=0.000000
* Pin A:		 H=1.320000	 L=0.000000
* Pin Ap:		 H=1.320000	 L=0.000000
* Pin B:		 H=1.320000	 L=0.000000
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
.inc '/home/Rezayi/Desktop/NCXtemplate/creation/../netlists/or2.spc'

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
X_Or2 n_a n_ap n_b n_vcc n_out Or2 
Vn_VCC n_VCC n_VCC2 DC 0
Vn_A n_A n_A2 DC 0
Vn_Ap n_Ap n_Ap2 DC 0
Vn_B n_B n_B2 DC 0
Vn_Out n_Out n_Out1 DC 0
CLD_Out n_Out1 0 0.01FF

* PROBE ================================
.PROBE TRAN V(n_Out) I(Vn_Out) V(n_VCC) I(Vn_VCC) V(n_A) I(Vn_A) V(n_Ap) I(Vn_Ap) V(n_B) I(Vn_B) I(Vn_VDD) I(Vn_VSS)

* MEASUREMENT ==========================

* Measure Input Reference Time
.MEASURE nc_inref_VCC WHEN V(n_VCC) = 1.2199440000e+00 td = 'nc_td' cross = 1
* input is falling

* Measure Input Capacitance
.MEASURE t_VCC_trip_incap1 WHEN V(n_VCC) = 1.3134000000e+00 td = 'nc_td' cross = 1
.MEASURE t_VCC_trip_incap2 WHEN V(n_VCC) = 2.6400000000e-01 td = 'nc_td' cross = 1
.MEASURE TRAN nc_intg_i_VCC INTEG I(Vn_VCC) FROM = 't_VCC_trip_incap1' TO = 't_VCC_trip_incap2'
.MEASURE TRAN nc_incap_VCC PARAM='ABS(nc_intg_i_VCC/1.0494000000e+00)'

* Measure Input Transition Time
.MEASURE TRAN nc_iptr_VCC PARAM = 'iptr'
.MEASURE TRAN real_iptr_VCC
+ trig V(n_VCC) val = 1.0560000000e+00 td = 'nc_td' cross = 1
+ targ V(n_VCC) val = 2.6400000000e-01 td = 'nc_td' cross = 1
.MEASURE TRAN nc_when_VCC param = '0' 
.MEASURE TRAN nc_when_A param = '0' 
.MEASURE TRAN nc_when_Ap param = '0' 
.MEASURE TRAN nc_when_B param = '0' 

* Measure Full Swing Input Transition Time (0.5% to 99.5%)
.MEASURE TRAN nc_fulliptr_VCC
+ trig V(n_VCC) val = 1.3134000000e+00 td = 'nc_td' cross = 1
+ targ V(n_VCC) val = 6.6000000000e-03 td = 'nc_td' cross = 1

* STIMULUS  =====================
* InPin VCC PWL length=16 
* InPin A PWL length=2 
* InPin Ap PWL length=2 
* InPin B PWL length=2 
* Sensitization Template Name: 
* SensInputs= VCC: 	10
* SensInputs= A: 	0
* SensInputs= Ap: 	0
* SensInputs= B: 	0
* SensOuputs= Out: 	0

* nc_td: Measurement Starting time
* iptr: Input Transition Time
.DATA stimdata
index nc_td iptr 
+ t_VCC0 v_VCC0 t_VCC1 v_VCC1 t_VCC2 v_VCC2 t_VCC3 v_VCC3 t_VCC4 v_VCC4 t_VCC5 v_VCC5 t_VCC6 v_VCC6 t_VCC7 v_VCC7 t_VCC8 v_VCC8 t_VCC9 v_VCC9
+ t_VCC10 v_VCC10 t_VCC11 v_VCC11 t_VCC12 v_VCC12 t_VCC13 v_VCC13 t_VCC14 v_VCC14 t_VCC15 v_VCC15
+ t_A0 v_A0 t_A1 v_A1
+ t_Ap0 v_Ap0 t_Ap1 v_Ap1
+ t_B0 v_B0 t_B1 v_B1
* Input Slew Index= 1.0000000000e-11 (IPTR = 1.0000000000e-11) ======================================================================
* Stimlus to RelatedInPin VCC (Slew Index = 1.000000e-11, Slew = 1.000000e-11, Full swing = 1.666667e-11):
* 0.0000000000e+00 1.3200000000e+00 1.0000000000e-09 1.3200000000e+00 1.0100000000e-09 1.3200000000e+00 1.0116666667e-09 1.2540000000e+00 1.0133333333e-09 1.0560000000e+00
* 1.0150000000e-09 8.8107387772e-01 1.0166666667e-09 7.2861915717e-01 1.0183333333e-09 5.9400000000e-01 1.0200000000e-09 4.7353693886e-01 1.0216666667e-09 3.6430957859e-01
* 1.0233333333e-09 2.6400000000e-01 1.0250000000e-09 1.7076846943e-01 1.0266666667e-09 8.3154789293e-02 1.0283333333e-09 0.0000000000e+00 1.0300000000e-09 0.0000000000e+00
* 1.0316666667e-09 0.0000000000e+00
* Ramp Waveform to Side Pin A (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Ramp Waveform to Side Pin Ap (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Ramp Waveform to Side Pin B (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Input Slew Index = 1.000000e-11, IPTR = 1.000000e-11, *************************************
  1 1.0100000000e-09 1.0000000000e-11 
+ 0.0000000000e+00 1.3200000000e+00 1.0000000000e-09 1.3200000000e+00 1.0100000000e-09 1.3200000000e+00 1.0116666667e-09 1.2540000000e+00 1.0133333333e-09 1.0560000000e+00
+ 1.0150000000e-09 8.8107387772e-01 1.0166666667e-09 7.2861915717e-01 1.0183333333e-09 5.9400000000e-01 1.0200000000e-09 4.7353693886e-01 1.0216666667e-09 3.6430957859e-01
+ 1.0233333333e-09 2.6400000000e-01 1.0250000000e-09 1.7076846943e-01 1.0266666667e-09 8.3154789293e-02 1.0283333333e-09 0.0000000000e+00 1.0300000000e-09 0.0000000000e+00
+ 1.0316666667e-09 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
+ 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
.ENDDATA 

* for Input Pin VCC
Vn_VCC2 n_VCC2 0 PWL(
+'t_VCC0' 'v_VCC0'
+'t_VCC1' 'v_VCC1'
+'t_VCC2' 'v_VCC2'
+'t_VCC3' 'v_VCC3'
+'t_VCC4' 'v_VCC4'
+'t_VCC5' 'v_VCC5'
+'t_VCC6' 'v_VCC6'
+'t_VCC7' 'v_VCC7'
+'t_VCC8' 'v_VCC8'
+'t_VCC9' 'v_VCC9'
+'t_VCC10' 'v_VCC10'
+'t_VCC11' 'v_VCC11'
+'t_VCC12' 'v_VCC12'
+'t_VCC13' 'v_VCC13'
+'t_VCC14' 'v_VCC14'
+'t_VCC15' 'v_VCC15'
+)
* for Input Pin A
Vn_A2 n_A2 0 PWL(
+'t_A0' 'v_A0'
+'t_A1' 'v_A1'
+)
* for Input Pin Ap
Vn_Ap2 n_Ap2 0 PWL(
+'t_Ap0' 'v_Ap0'
+'t_Ap1' 'v_Ap1'
+)
* for Input Pin B
Vn_B2 n_B2 0 PWL(
+'t_B0' 'v_B0'
+'t_B1' 'v_B1'
+)

* .TRAN ==========================
.TRAN 1.0000000000e-10 1.2000000000e-08 START = 0.0 sweep data=stimdata 

.END 
