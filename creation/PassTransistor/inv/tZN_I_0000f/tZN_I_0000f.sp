* HSPICE Timing Acquisition
* Liberty NCX vC-2009.06-SP1
* Build(Jul 16 2009)
* Filename: /home/Rezayi/Desktop/NCXtemplate/creation/PassTransistor/inv/tZN_I_0000f/tZN_I_0000f.sp

* combinational Fall
* Driver Waveform Type: snps_predriver
* Pin Name: ZN
* Related Input Pin: I
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
* Pin I:		 H=1.320000	 L=0.000000
* Pin ZN:		 H=1.320000	 L=0.000000

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
.inc '/home/Rezayi/Desktop/NCXtemplate/creation/../netlists/inv.spc'

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
X_inv n_i n_zn inv 
Vn_I n_I n_I2 DC 0
Vn_ZN n_ZN n_ZN1 DC 0
CLD_ZN n_ZN1 0 cap_ZN
.PROBE TRAN V(n_ZN1)
.PARAM SideCap = 0.0000000000e+00

* PROBE ================================
.PROBE TRAN V(n_ZN) I(Vn_ZN) V(n_I) I(Vn_I) I(Vn_VDD) I(Vn_VSS)

* STIMULI ==============================
* InPin I PWL length=16 
* Sensitization Template Name: inv_wave_0_1
* SensInputs= I: 	01
* SensOuputs= ZN: 	10

* nc_td: Measurement Starting time
* adrv_cap: Active Driver Output Load
* iptr: Input Transition Time
* cap_PIN: Relative Output Pin Load
.DATA stimdata
index nc_td adrv_cap iptr cap_ZN
+ t_I0 v_I0 t_I1 v_I1 t_I2 v_I2 t_I3 v_I3 t_I4 v_I4 t_I5 v_I5 t_I6 v_I6 t_I7 v_I7 t_I8 v_I8 t_I9 v_I9
+ t_I10 v_I10 t_I11 v_I11 t_I12 v_I12 t_I13 v_I13 t_I14 v_I14 t_I15 v_I15
* Input Slew Index= 1.0000000000e-11 (IPTR = 1.0000000000e-11) ======================================================================
* Stimlus to RelatedInPin I (Slew Index = 1.000000e-11, Slew = 1.000000e-11, Full swing = 1.666667e-11):
* 0.0000000000e+00 0.0000000000e+00 1.0000000000e-09 0.0000000000e+00 1.0100000000e-09 0.0000000000e+00 1.0116666667e-09 6.6000000000e-02 1.0133333333e-09 2.6400000000e-01
* 1.0150000000e-09 4.3892612228e-01 1.0166666667e-09 5.9138084283e-01 1.0183333333e-09 7.2600000000e-01 1.0200000000e-09 8.4646306114e-01 1.0216666667e-09 9.5569042141e-01
* 1.0233333333e-09 1.0560000000e+00 1.0250000000e-09 1.1492315306e+00 1.0266666667e-09 1.2368452107e+00 1.0283333333e-09 1.3200000000e+00 1.0300000000e-09 1.3200000000e+00
* 1.0316666667e-09 1.3200000000e+00
* Input Slew Index = 1.000000e-11, IPTR = 1.000000e-11, Output Load = 0.000000e+00 *************************************
  1 1.0100000000e-09 5.0000000000e-12 1.0000000000e-11 0.0000000000e+00
+ 0.0000000000e+00 0.0000000000e+00 1.0000000000e-09 0.0000000000e+00 1.0100000000e-09 0.0000000000e+00 1.0116666667e-09 6.6000000000e-02 1.0133333333e-09 2.6400000000e-01
+ 1.0150000000e-09 4.3892612228e-01 1.0166666667e-09 5.9138084283e-01 1.0183333333e-09 7.2600000000e-01 1.0200000000e-09 8.4646306114e-01 1.0216666667e-09 9.5569042141e-01
+ 1.0233333333e-09 1.0560000000e+00 1.0250000000e-09 1.1492315306e+00 1.0266666667e-09 1.2368452107e+00 1.0283333333e-09 1.3200000000e+00 1.0300000000e-09 1.3200000000e+00
+ 1.0316666667e-09 1.3200000000e+00
.ENDDATA 

* for Input Pin I
Vn_I2 n_I2 0 PWL(
+'t_I0' 'v_I0'
+'t_I1' 'v_I1'
+'t_I2' 'v_I2'
+'t_I3' 'v_I3'
+'t_I4' 'v_I4'
+'t_I5' 'v_I5'
+'t_I6' 'v_I6'
+'t_I7' 'v_I7'
+'t_I8' 'v_I8'
+'t_I9' 'v_I9'
+'t_I10' 'v_I10'
+'t_I11' 'v_I11'
+'t_I12' 'v_I12'
+'t_I13' 'v_I13'
+'t_I14' 'v_I14'
+'t_I15' 'v_I15'
+)

* .TRAN ==========================
.TRAN 1.0000000000e-10 1.2000000000e-08 START = 0.0 sweep data=stimdata
* InPin I PWL length=16 Sens=01

* MEASUREMENT ==========================

* Measure Gate Delay
.MEASURE TRAN nc_delay_I_ZN
* input is rising: vL=0.000000e+00, vH=1.320000e+00
+ trig V(n_I) val = 1.0005600000e-01 td = 'nc_td' cross = 1
* output is falling: vL=0.000000e+00, vH=1.320000e+00
+ targ V(n_ZN) val = 6.6000000000e-01 td = 'nc_td' cross = 1

* Measure Input Reference Time
.MEASURE nc_inref_I WHEN V(n_I) = 1.0005600000e-01 td = 'nc_td' cross = 1
* input is rising

* Measure Gate Output Transition Time
.MEASURE TRAN nc_optr_ZN
+ trig V(n_ZN) val = 1.0560000000e+00 td = 'nc_td' cross = 1
+ targ V(n_ZN) val = 2.6400000000e-01 td = 'nc_td' cross = 1

* Measure Full Swing Output Transition Time (0.5% to 99.5%)
.MEASURE TRAN nc_fulloptr_ZN
+ trig V(n_ZN) val = 1.3134000000e+00 td = 'nc_td' cross = 1
+ targ V(n_ZN) val = 6.6000000000e-03 td = 'nc_td' cross = 1

* Measure Input Trip Points
.MEASURE t_I_trip1 WHEN V(n_I) = 2.6400000000e-01 td = 'nc_td' cross = 1
.MEASURE t_I_trip2 WHEN V(n_I) = 1.0560000000e+00 td = 'nc_td' cross = 1

* Measure Input End Points(Rise)
.MEASURE t_stop_I WHEN V(n_I) = 1.2540000000e+00 td = 'nc_td' cross = 1

* Simulation Stop time with AutoSTOP
.MEASURE t_stop_ZN WHEN V(n_ZN) = 6.6000000000e-03 td = 'nc_td' cross = 1
.MEASURE t_simstop PARAM = 'max(t_stop_ZN, t_stop_I)'

* Measure Input Capacitance
.MEASURE t_I_trip_incap1 WHEN V(n_I) = 6.6000000000e-03 td = 'nc_td' cross = 1
.MEASURE t_I_trip_incap2 WHEN V(n_I) = 1.0560000000e+00 td = 'nc_td' cross = 1
.MEASURE TRAN nc_intg_i_I INTEG I(Vn_I) FROM = 't_I_trip_incap1' TO = 't_I_trip_incap2'
.MEASURE TRAN nc_intg_i1_I INTEG I(Vn_I) FROM = 't_I_trip_incap1' TO = 'nc_inref_I'
.MEASURE TRAN nc_intg_i2_I INTEG I(Vn_I) FROM = 'nc_inref_I' TO = 't_I_trip_incap2'
.MEASURE TRAN nc_incap_I param='ABS(nc_intg_i_I/1.0494000000e+00)'
.MEASURE TRAN nc_incap_c1_I param='ABS(nc_intg_i1_I/9.3456000000e-02)'
.MEASURE TRAN nc_incap_c2_I param='ABS(nc_intg_i2_I/9.5594400000e-01)'

* Measure Input Transition Time
.MEASURE TRAN nc_iptr_I PARAM = 'iptr'
.MEASURE TRAN real_iptr_I
+ trig V(n_I) val = 2.6400000000e-01 td = 'nc_td' cross = 1
+ targ V(n_I) val = 1.0560000000e+00 td = 'nc_td' cross = 1
.MEASURE TRAN nc_when_I param = '1' 
.MEASURE TRAN nc_when_ZN param = '0' 

* Measure Leakage Currents
.MEASURE TRAN nc_leak_i_I AVG I(Vn_I) FROM = 't_I0' TO = 't_I1'
.MEASURE TRAN nc_leak_i_VDD AVG I(Vn_VDD) FROM = 't_I0' TO = 't_I1'
.MEASURE TRAN nc_leak_i_VSS AVG I(Vn_VSS) FROM = 't_I0' TO = 't_I1'

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
.MEASURE TRAN def_cap_ZN PARAM = 'cap_ZN'



.END 
