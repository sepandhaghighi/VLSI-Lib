* HSPICE Timing Acquisition
* Liberty NCX vC-2009.06-SP1
* Build(Jul 16 2009)
* Filename: /home/Rezayi/Desktop/NCXtemplate/creation/PassTransistor/And2/tOut_GND_0001f/tOut_GND_0001f.sp

* combinational Fall
* Driver Waveform Type: snps_predriver
* Pin Name: Out
* Related Input Pin: GND
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
* Pin A:		 H=1.320000	 L=0.000000
* Pin Ap:		 H=1.320000	 L=0.000000
* Pin B:		 H=1.320000	 L=0.000000
* Pin GND:		 H=1.320000	 L=0.000000
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
.inc '/home/Rezayi/Desktop/NCXtemplate/creation/../netlists/and2.spc'

* OPTIONS ==============================
* NCX Default Options:
.OPTIONS POST=1 PROBE POST_VERSION=2001
+ INGOLD=2 NOMOD NOPAGE NUMDGT=10 MEASDGT=10
+ LIMPTS=500000 ICSWEEP=0 AUTOSTOP ALTCC=1
+ RUNLVL=5 ACCURATE=1
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
* Arc Level Options:
* No Arc Level Options Here

* VOLTAGE SOURCES ======================
.GLOBAL VDD VSS
Vn_VDD VDD 0 DC 1.320000e+00
Vn_VSS VSS 0 DC 0.000000e+00

* ACQUISITION CIRCUIT ==================
X_And2 n_ap n_a n_b n_out n_gnd And2 
Vn_A n_A n_A2 DC 0
Vn_Ap n_Ap n_Ap2 DC 0
Vn_B n_B n_B2 DC 0
Vn_GND n_GND n_GND2 DC 0
Vn_Out n_Out n_Out1 DC 0
CLD_Out n_Out1 0 cap_Out
.PROBE TRAN V(n_Out1)
.PARAM SideCap = 0.0000000000e+00

* PROBE ================================
.PROBE TRAN V(n_Out) I(Vn_Out) V(n_A) I(Vn_A) V(n_Ap) I(Vn_Ap) V(n_B) I(Vn_B) V(n_GND) I(Vn_GND) I(Vn_VDD) I(Vn_VSS)

* STIMULI ==============================
* InPin A PWL length=2 
* InPin Ap PWL length=2 
* InPin B PWL length=2 
* InPin GND PWL length=16 
* Sensitization Template Name: And2_wave_0_2
* SensInputs= A: 	0
* SensInputs= Ap: 	0
* SensInputs= B: 	0
* SensInputs= GND: 	10
* SensOuputs= Out: 	10

* nc_td: Measurement Starting time
* adrv_cap: Active Driver Output Load
* iptr: Input Transition Time
* cap_PIN: Relative Output Pin Load
.DATA stimdata
index nc_td adrv_cap iptr cap_Out
+ t_A0 v_A0 t_A1 v_A1
+ t_Ap0 v_Ap0 t_Ap1 v_Ap1
+ t_B0 v_B0 t_B1 v_B1
+ t_GND0 v_GND0 t_GND1 v_GND1 t_GND2 v_GND2 t_GND3 v_GND3 t_GND4 v_GND4 t_GND5 v_GND5 t_GND6 v_GND6 t_GND7 v_GND7 t_GND8 v_GND8 t_GND9 v_GND9
+ t_GND10 v_GND10 t_GND11 v_GND11 t_GND12 v_GND12 t_GND13 v_GND13 t_GND14 v_GND14 t_GND15 v_GND15
* Input Slew Index= 1.0000000000e-11 (IPTR = 1.0000000000e-11) ======================================================================
* Waveform to Side Pin A (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Waveform to Side Pin Ap (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Waveform to Side Pin B (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Stimlus to RelatedInPin GND (Slew Index = 1.000000e-11, Slew = 1.000000e-11, Full swing = 1.666667e-11):
* 0.0000000000e+00 1.3200000000e+00 1.0000000000e-09 1.3200000000e+00 1.0100000000e-09 1.3200000000e+00 1.0116666667e-09 1.2540000000e+00 1.0133333333e-09 1.0560000000e+00
* 1.0150000000e-09 8.8107387772e-01 1.0166666667e-09 7.2861915717e-01 1.0183333333e-09 5.9400000000e-01 1.0200000000e-09 4.7353693886e-01 1.0216666667e-09 3.6430957859e-01
* 1.0233333333e-09 2.6400000000e-01 1.0250000000e-09 1.7076846943e-01 1.0266666667e-09 8.3154789293e-02 1.0283333333e-09 0.0000000000e+00 1.0300000000e-09 0.0000000000e+00
* 1.0316666667e-09 0.0000000000e+00
* Input Slew Index = 1.000000e-11, IPTR = 1.000000e-11, Output Load = 0.000000e+00 *************************************
  1 1.0100000000e-09 5.0000000000e-12 1.0000000000e-11 0.0000000000e+00
+ 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00
+ 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 1.3200000000e+00 1.0000000000e-09 1.3200000000e+00 1.0100000000e-09 1.3200000000e+00 1.0116666667e-09 1.2540000000e+00
+ 1.0133333333e-09 1.0560000000e+00 1.0150000000e-09 8.8107387772e-01 1.0166666667e-09 7.2861915717e-01 1.0183333333e-09 5.9400000000e-01 1.0200000000e-09 4.7353693886e-01
+ 1.0216666667e-09 3.6430957859e-01 1.0233333333e-09 2.6400000000e-01 1.0250000000e-09 1.7076846943e-01 1.0266666667e-09 8.3154789293e-02 1.0283333333e-09 0.0000000000e+00
+ 1.0300000000e-09 0.0000000000e+00 1.0316666667e-09 0.0000000000e+00
.ENDDATA 

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
* for Input Pin GND
Vn_GND2 n_GND2 0 PWL(
+'t_GND0' 'v_GND0'
+'t_GND1' 'v_GND1'
+'t_GND2' 'v_GND2'
+'t_GND3' 'v_GND3'
+'t_GND4' 'v_GND4'
+'t_GND5' 'v_GND5'
+'t_GND6' 'v_GND6'
+'t_GND7' 'v_GND7'
+'t_GND8' 'v_GND8'
+'t_GND9' 'v_GND9'
+'t_GND10' 'v_GND10'
+'t_GND11' 'v_GND11'
+'t_GND12' 'v_GND12'
+'t_GND13' 'v_GND13'
+'t_GND14' 'v_GND14'
+'t_GND15' 'v_GND15'
+)

* .TRAN ==========================
.TRAN 1.0000000000e-10 1.2000000000e-08 START = 0.0 sweep data=stimdata
* InPin A PWL length=2 Sens=0
* InPin Ap PWL length=2 Sens=0
* InPin B PWL length=2 Sens=0
* InPin GND PWL length=16 Sens=10

* MEASUREMENT ==========================

* Measure Gate Delay
.MEASURE TRAN nc_delay_GND_Out
* input is falling: vL=0.000000e+00, vH=1.320000e+00
+ trig V(n_GND) val = 1.2199440000e+00 td = 'nc_td' cross = 1
* output is falling: vL=0.000000e+00, vH=1.320000e+00
+ targ V(n_Out) val = 6.6000000000e-01 td = 'nc_td' cross = 1

* Measure Input Reference Time
.MEASURE nc_inref_GND WHEN V(n_GND) = 1.2199440000e+00 td = 'nc_td' cross = 1
* input is falling

* Measure Gate Output Transition Time
.MEASURE TRAN nc_optr_Out
+ trig V(n_Out) val = 1.0560000000e+00 td = 'nc_td' cross = 1
+ targ V(n_Out) val = 2.6400000000e-01 td = 'nc_td' cross = 1

* Measure Full Swing Output Transition Time (0.5% to 99.5%)
.MEASURE TRAN nc_fulloptr_Out
+ trig V(n_Out) val = 1.3134000000e+00 td = 'nc_td' cross = 1
+ targ V(n_Out) val = 6.6000000000e-03 td = 'nc_td' cross = 1

* Measure Input Trip Points
.MEASURE t_GND_trip1 WHEN V(n_GND) = 1.0560000000e+00 td = 'nc_td' cross = 1
.MEASURE t_GND_trip2 WHEN V(n_GND) = 2.6400000000e-01 td = 'nc_td' cross = 1

* Measure Input End Points(Fall)
.MEASURE t_stop_GND WHEN V(n_GND) = 6.6000000000e-02 td = 'nc_td' cross = 1

* Simulation Stop time with AutoSTOP
.MEASURE t_stop_Out WHEN V(n_Out) = 6.6000000000e-03 td = 'nc_td' cross = 1
.MEASURE t_simstop PARAM = 'max(t_stop_Out, t_stop_GND)'

* Measure Input Capacitance
.MEASURE t_GND_trip_incap1 WHEN V(n_GND) = 1.3134000000e+00 td = 'nc_td' cross = 1
.MEASURE t_GND_trip_incap2 WHEN V(n_GND) = 2.6400000000e-01 td = 'nc_td' cross = 1
.MEASURE TRAN nc_intg_i_GND INTEG I(Vn_GND) FROM = 't_GND_trip_incap1' TO = 't_GND_trip_incap2'
.MEASURE TRAN nc_intg_i1_GND INTEG I(Vn_GND) FROM = 't_GND_trip_incap1' TO = 'nc_inref_GND'
.MEASURE TRAN nc_intg_i2_GND INTEG I(Vn_GND) FROM = 'nc_inref_GND' TO = 't_GND_trip_incap2'
.MEASURE TRAN nc_incap_GND param='ABS(nc_intg_i_GND/1.0494000000e+00)'
.MEASURE TRAN nc_incap_c1_GND param='ABS(nc_intg_i1_GND/9.3456000000e-02)'
.MEASURE TRAN nc_incap_c2_GND param='ABS(nc_intg_i2_GND/9.5594400000e-01)'

* Measure Input Transition Time
.MEASURE TRAN nc_iptr_GND PARAM = 'iptr'
.MEASURE TRAN real_iptr_GND
+ trig V(n_GND) val = 1.0560000000e+00 td = 'nc_td' cross = 1
+ targ V(n_GND) val = 2.6400000000e-01 td = 'nc_td' cross = 1
.MEASURE TRAN nc_when_A param = '0' 
.MEASURE TRAN nc_when_Ap param = '0' 
.MEASURE TRAN nc_when_B param = '0' 
.MEASURE TRAN nc_when_GND param = '0' 
.MEASURE TRAN nc_when_Out param = '0' 

* Measure Leakage Currents
.MEASURE TRAN nc_leak_i_A AVG I(Vn_A) FROM = 't_GND0' TO = 't_GND1'
.MEASURE TRAN nc_leak_i_Ap AVG I(Vn_Ap) FROM = 't_GND0' TO = 't_GND1'
.MEASURE TRAN nc_leak_i_B AVG I(Vn_B) FROM = 't_GND0' TO = 't_GND1'
.MEASURE TRAN nc_leak_i_GND AVG I(Vn_GND) FROM = 't_GND0' TO = 't_GND1'
.MEASURE TRAN nc_leak_i_VDD AVG I(Vn_VDD) FROM = 't_GND0' TO = 't_GND1'
.MEASURE TRAN nc_leak_i_VSS AVG I(Vn_VSS) FROM = 't_GND0' TO = 't_GND1'

* Measure Dynamic Energy 
.MEASURE TRAN nc_dyn_energy INTEG par(' -(I(Vn_VDD)*V(VDD)) -(I(Vn_VSS)*V(VSS))') From= 'nc_td' TO = 't_simstop'

* Energy Integral period 
.MEASURE TRAN t_int_energy PARAM = 't_simstop - nc_td'

* Measure Internal Energy 
.MEASURE TRAN nc_int_energy PARAM = 'nc_dyn_energy' 

* Measure Dynamic Energy in Power Supply
.MEASURE TRAN nc_dyn_eng_VDD INTEG par(' -(I(Vn_VDD)*V(VDD))') From= 'nc_td' TO = 't_simstop'
.MEASURE TRAN nc_dyn_eng_VSS INTEG par(' -(I(Vn_VSS)*V(VSS))') From= 'nc_td' TO = 't_simstop'

* Measure Dynamic ABS Energy
.MEASURE TRAN nc_dyn_abs_energy INTEG par(' +ABS(I(Vn_VDD)*V(VDD)) +ABS(I(Vn_VSS)*V(VSS))') From= 'nc_td' TO = 't_simstop'

* Measure total charge
.MEASURE TRAN nc_charge_VDD INTEG I(Vn_VDD) From= 'nc_td' TO = 't_simstop'
.MEASURE TRAN nc_charge_VSS INTEG I(Vn_VSS) From= 'nc_td' TO = 't_simstop'

* Load for Side Output pin
.MEASURE TRAN nc_sidecap PARAM = 'SideCap'

* Use Default Output Load
.MEASURE TRAN def_cap_Out PARAM = 'cap_Out'



.END 
