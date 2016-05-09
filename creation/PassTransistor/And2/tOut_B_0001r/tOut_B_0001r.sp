* HSPICE Timing Acquisition
* Liberty NCX vC-2009.06-SP1
* Build(Jul 16 2009)
* Filename: /home/Rezayi/Desktop/NCXtemplate/creation/PassTransistor/And2/tOut_B_0001r/tOut_B_0001r.sp

* combinational Rise
* Driver Waveform Type: snps_predriver
* Pin Name: Out
* Related Input Pin: B
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
* InPin B PWL length=16 
* InPin GND PWL length=2 
* Sensitization Template Name: And2_wave_0_25
* SensInputs= A: 	1
* SensInputs= Ap: 	0
* SensInputs= B: 	01
* SensInputs= GND: 	0
* SensOuputs= Out: 	01

* nc_td: Measurement Starting time
* adrv_cap: Active Driver Output Load
* iptr: Input Transition Time
* cap_PIN: Relative Output Pin Load
.DATA stimdata
index nc_td adrv_cap iptr cap_Out
+ t_A0 v_A0 t_A1 v_A1
+ t_Ap0 v_Ap0 t_Ap1 v_Ap1
+ t_B0 v_B0 t_B1 v_B1 t_B2 v_B2 t_B3 v_B3 t_B4 v_B4 t_B5 v_B5 t_B6 v_B6 t_B7 v_B7 t_B8 v_B8 t_B9 v_B9
+ t_B10 v_B10 t_B11 v_B11 t_B12 v_B12 t_B13 v_B13 t_B14 v_B14 t_B15 v_B15
+ t_GND0 v_GND0 t_GND1 v_GND1
* Input Slew Index= 1.0000000000e-11 (IPTR = 1.0000000000e-11) ======================================================================
* Waveform to Side Pin A (Full swing = 1.000000e-11):
* 0.0000000000e+00 1.3200000000e+00 1.0000000000e-07 1.3200000000e+00
* Waveform to Side Pin Ap (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Stimlus to RelatedInPin B (Slew Index = 1.000000e-11, Slew = 1.000000e-11, Full swing = 1.666667e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-09 0.0000000000e+00 1.0100000000e-09 0.0000000000e+00 1.0116666667e-09 6.6000000000e-02 1.0133333333e-09 2.6400000000e-01
* 1.0150000000e-09 4.3892612228e-01 1.0166666667e-09 5.9138084283e-01 1.0183333333e-09 7.2600000000e-01 1.0200000000e-09 8.4646306114e-01 1.0216666667e-09 9.5569042141e-01
* 1.0233333333e-09 1.0560000000e+00 1.0250000000e-09 1.1492315306e+00 1.0266666667e-09 1.2368452107e+00 1.0283333333e-09 1.3200000000e+00 1.0300000000e-09 1.3200000000e+00
* 1.0316666667e-09 1.3200000000e+00
* Waveform to Side Pin GND (Full swing = 1.000000e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
* Input Slew Index = 1.000000e-11, IPTR = 1.000000e-11, Output Load = 0.000000e+00 *************************************
  1 1.0100000000e-09 5.0000000000e-12 1.0000000000e-11 0.0000000000e+00
+ 0.0000000000e+00 1.3200000000e+00 1.0000000000e-07 1.3200000000e+00 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00 0.0000000000e+00 0.0000000000e+00
+ 1.0000000000e-09 0.0000000000e+00 1.0100000000e-09 0.0000000000e+00 1.0116666667e-09 6.6000000000e-02 1.0133333333e-09 2.6400000000e-01 1.0150000000e-09 4.3892612228e-01
+ 1.0166666667e-09 5.9138084283e-01 1.0183333333e-09 7.2600000000e-01 1.0200000000e-09 8.4646306114e-01 1.0216666667e-09 9.5569042141e-01 1.0233333333e-09 1.0560000000e+00
+ 1.0250000000e-09 1.1492315306e+00 1.0266666667e-09 1.2368452107e+00 1.0283333333e-09 1.3200000000e+00 1.0300000000e-09 1.3200000000e+00 1.0316666667e-09 1.3200000000e+00
+ 0.0000000000e+00 0.0000000000e+00 1.0000000000e-07 0.0000000000e+00
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
+'t_B2' 'v_B2'
+'t_B3' 'v_B3'
+'t_B4' 'v_B4'
+'t_B5' 'v_B5'
+'t_B6' 'v_B6'
+'t_B7' 'v_B7'
+'t_B8' 'v_B8'
+'t_B9' 'v_B9'
+'t_B10' 'v_B10'
+'t_B11' 'v_B11'
+'t_B12' 'v_B12'
+'t_B13' 'v_B13'
+'t_B14' 'v_B14'
+'t_B15' 'v_B15'
+)
* for Input Pin GND
Vn_GND2 n_GND2 0 PWL(
+'t_GND0' 'v_GND0'
+'t_GND1' 'v_GND1'
+)

* .TRAN ==========================
.TRAN 1.0000000000e-10 1.2000000000e-08 START = 0.0 sweep data=stimdata
* InPin A PWL length=2 Sens=1
* InPin Ap PWL length=2 Sens=0
* InPin B PWL length=16 Sens=01
* InPin GND PWL length=2 Sens=0

* MEASUREMENT ==========================

* Measure Gate Delay
.MEASURE TRAN nc_delay_B_Out
* input is rising: vL=0.000000e+00, vH=1.320000e+00
+ trig V(n_B) val = 1.0005600000e-01 td = 'nc_td' cross = 1
* output is rising: vL=0.000000e+00, vH=1.320000e+00
+ targ V(n_Out) val = 6.6000000000e-01 td = 'nc_td' cross = 1

* Measure Input Reference Time
.MEASURE nc_inref_B WHEN V(n_B) = 1.0005600000e-01 td = 'nc_td' cross = 1
* input is rising

* Measure Gate Output Transition Time
.MEASURE TRAN nc_optr_Out
+ trig V(n_Out) val = 2.6400000000e-01 td = 'nc_td' cross = 1
+ targ V(n_Out) val = 1.0560000000e+00 td = 'nc_td' cross = 1

* Measure Full Swing Output Transition Time (0.5% to 99.5%)
.MEASURE TRAN nc_fulloptr_Out
+ trig V(n_Out) val = 6.6000000000e-03 td = 'nc_td' cross = 1
+ targ V(n_Out) val = 1.3134000000e+00 td = 'nc_td' cross = 1

* Measure Input Trip Points
.MEASURE t_B_trip1 WHEN V(n_B) = 2.6400000000e-01 td = 'nc_td' cross = 1
.MEASURE t_B_trip2 WHEN V(n_B) = 1.0560000000e+00 td = 'nc_td' cross = 1

* Measure Input End Points(Rise)
.MEASURE t_stop_B WHEN V(n_B) = 1.2540000000e+00 td = 'nc_td' cross = 1

* Simulation Stop time with AutoSTOP
.MEASURE t_stop_Out WHEN V(n_Out) = 1.3134000000e+00 td = 'nc_td' cross = 1
.MEASURE t_simstop PARAM = 'max(t_stop_Out, t_stop_B)'

* Measure Input Capacitance
.MEASURE t_B_trip_incap1 WHEN V(n_B) = 6.6000000000e-03 td = 'nc_td' cross = 1
.MEASURE t_B_trip_incap2 WHEN V(n_B) = 1.0560000000e+00 td = 'nc_td' cross = 1
.MEASURE TRAN nc_intg_i_B INTEG I(Vn_B) FROM = 't_B_trip_incap1' TO = 't_B_trip_incap2'
.MEASURE TRAN nc_intg_i1_B INTEG I(Vn_B) FROM = 't_B_trip_incap1' TO = 'nc_inref_B'
.MEASURE TRAN nc_intg_i2_B INTEG I(Vn_B) FROM = 'nc_inref_B' TO = 't_B_trip_incap2'
.MEASURE TRAN nc_incap_B param='ABS(nc_intg_i_B/1.0494000000e+00)'
.MEASURE TRAN nc_incap_c1_B param='ABS(nc_intg_i1_B/9.3456000000e-02)'
.MEASURE TRAN nc_incap_c2_B param='ABS(nc_intg_i2_B/9.5594400000e-01)'

* Measure Input Transition Time
.MEASURE TRAN nc_iptr_B PARAM = 'iptr'
.MEASURE TRAN real_iptr_B
+ trig V(n_B) val = 2.6400000000e-01 td = 'nc_td' cross = 1
+ targ V(n_B) val = 1.0560000000e+00 td = 'nc_td' cross = 1
.MEASURE TRAN nc_when_A param = '1' 
.MEASURE TRAN nc_when_Ap param = '0' 
.MEASURE TRAN nc_when_B param = '1' 
.MEASURE TRAN nc_when_GND param = '0' 
.MEASURE TRAN nc_when_Out param = '1' 

* Measure Leakage Currents
.MEASURE TRAN nc_leak_i_A AVG I(Vn_A) FROM = 't_B0' TO = 't_B1'
.MEASURE TRAN nc_leak_i_Ap AVG I(Vn_Ap) FROM = 't_B0' TO = 't_B1'
.MEASURE TRAN nc_leak_i_B AVG I(Vn_B) FROM = 't_B0' TO = 't_B1'
.MEASURE TRAN nc_leak_i_GND AVG I(Vn_GND) FROM = 't_B0' TO = 't_B1'
.MEASURE TRAN nc_leak_i_VDD AVG I(Vn_VDD) FROM = 't_B0' TO = 't_B1'
.MEASURE TRAN nc_leak_i_VSS AVG I(Vn_VSS) FROM = 't_B0' TO = 't_B1'

* Measure Dynamic Energy 
.MEASURE TRAN nc_dyn_energy INTEG par(' -(I(Vn_VDD)*V(VDD)) -(I(Vn_VSS)*V(VSS))') From= 'nc_td' TO = 't_simstop'

* Energy Integral period 
.MEASURE TRAN t_int_energy PARAM = 't_simstop - nc_td'

* Measure Internal Energy 
.MEASURE TRAN nc_int_energy PARAM = 'nc_dyn_energy -cap_Out*1.320000e+00*1.320000e+00' 

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
