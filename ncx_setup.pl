#!/usr/bin/perl -w
system ". /home/cad/synopsys_2007.12/testprofile ";
#### Author : Kinchit Desai
#### To be used for VLSI design course work only

print("####To be used only for EE6325 VLSI DESIGN COURSE\n");
print("####Author : NDL LAB\n");
##### description
print("####Please source this profile /home/cad/synopsys_2007.12/testprofile\n");
print("####This script file will generate script to run Liberty NCX");
print("####The script will create the following\n");
print("####[1] .opt files for all the cells entered by the user \n");
print("####[2] script file to run the NCX\n");
print("####[3] .lib file for the cells entered \n");



##### prompt and receive I/O filenames

print "Please enter the total number of cells:";
$cellNum = <STDIN>;
chomp($cellNum);

for ($i = 0; $i < $cellNum; $i++)
{
	print("Please enter a cell name or enter dff  for Flip-Flop data: ");
	$cellName=<STDIN>;
	chomp ($cellName);
        if ($cellName eq "dff" ) 
	{
	dff_data();
	}
        else
	{
	print("Please enter the input pin names seperated by spaces: ");
	$input = <STDIN>;
	chomp($input);
	$cellInputHash{$cellName} = $input;

	print("Please enter the output pin name(s) seperated by space(s): ");
	$input = <STDIN>;
	chomp($input);
	$cellOutputHash{$cellName} = $input;
	
	print("Please enter cell area: ");
	$input = <STDIN>;
	chomp($input);
	$cellAreaHash{$cellName} = $input;

	print("Please enter a cell function: ");
	$input=<STDIN>;
	chomp ($input);
	$cellFunctionHash{$cellName} = $input;
	
        }
}

# Generate list file 

open(LIST, ">config/list") or die "could not open list file to write!";

foreach $key (keys %cellInputHash)
{
	print LIST "$key\n";
}

# Generate opt file

foreach $cellName (keys %cellInputHash)
{

	open(OPT, ">config/$cellName.opt") or die "could not open opt file: config/$cellName.opt!";

	print OPT "area : $cellAreaHash{$cellName} \;\n";
	print OPT "cell_footprint : $cellName \;\n";

	$inputlist = $cellInputHash{$cellName};

	@inputs = split /\s+/, $inputlist;
	
	printInputs();

	$outputlist = $cellOutputHash{$cellName};

	@outputs = split /\s+/, $outputlist;

	printOutputs();
	
	close(OPT);
}
sub printInputs
{
	for ($i = 0; $i <= $#inputs; $i++)
	{
		print OPT "pin $inputs[$i] \{\n";
		print OPT "\tmax_transition : 800.000 \;\n ";
		print OPT "\tdirection : input \;\n ";
		print OPT "\tfanout_load : 1.00000000 \;\n ";
		print OPT "\tconnection_class : standard \;\n ";
		print OPT "\}\n";
	}
}

sub printOutputs
{
	for ($i = 0; $i <= $#outputs; $i++)
	{
		print OPT "pin $outputs[$i] \{\n";
		print OPT "\tmax_capacitance : 23.4000000 \;\n ";
		print OPT "\tdirection : output \;\n ";
		print OPT "\tconnection_class : \"standard pass_gate\" \;\n ";
		print OPT "\tfunction : $cellFunctionHash{$cellName} \;\n ";
		print OPT "\tncx_combinational_rise_input_net_transition_index : 0 \;\n ";
		print OPT "\tncx_combinational_fall_input_net_transition_index : 0 \;\n ";
		print OPT "\tncx_combinational_rise_total_output_net_capacitance_index : 1 \;\n ";
		print OPT "\tncx_combinational_fall_total_output_net_capacitance_index : 1 \;\n ";
		print OPT "\}\n";
	
		print OPT "pg_pin VSS \{\n";
		print OPT "\tvoltage_name : VSS \;\n";
		print OPT "\tpg_type : primary_ground \;\n ";
		print OPT "\}\n";
		
		print OPT "pg_pin Vdd \{\n";
		print OPT "\tvoltage_name : vdd \;\n ";
		print OPT "\tpg_type : primary_power \;\n ";
		print OPT "\}\n";

	}
}

sub dff_data
{
	print("Enter the DFF name: ");
	$cellName=<STDIN>;
	chomp ($cellName);
        $dffname = $cellName;
	print("Please enter the Data pin name: ");
	$dinput = <STDIN>;
	chomp($dinput);
		

	print("Please enter the Reset pin name: ");
	$rinput = <STDIN>;
	chomp($rinput);
		
	print("Please enter the Clock pin name: ");
	$cinput = <STDIN>;
	chomp($cinput);
	
	
	print("Please enter the Q output pin name: ");
	$output = <STDIN>;
	chomp($output);
		
	print("Please enter cell area: ");
	$input = <STDIN>;
	chomp($input);
	$cellAreaHash{$cellName} = $input;

	
	open(OPT, ">config/$cellName.opt") or die "could not open opt file: config/$cellName.opt!";
	print OPT "area : $cellAreaHash{$cellName} \;\n";
	print OPT "cell_footprint : $cellName \;\n";
	#$line = sprintf("pin_opposite : (\"%sN\",\"%s\")",$output,$output);
	#print OPT "$line \;\n";
	print OPT "cell_leakage_power : 574180.00 \;\n";
	$line1 = sprintf("ff \"I%s,I%sN\"",$output,$output);
	print OPT "$line1 { \n";
        print OPT "\t clocked_on : \"$cinput\"\;\n";
	print OPT "\t next_state : \"$dinput\"\;\n";
	print OPT "\t clear	 : \"$rinput\"\;\n }\n";
	
	#print OPT "statetable (\"$dinput $rinput $cinput\", \"$output\") {\n";
	
	#print OPT "\t table : \"H/L L R : - : H/L , \\ \n";
	#print OPT "               - H - : - : L\" \;\n";
	#print OPT "}\n";
	
	print OPT "pin $cinput\{\n";
		print OPT "\tclock : true \;\n ";
		print OPT "\tdirection : input \;\n ";
		print OPT "\tmax_transition : 800.00 \;\n ";
		print OPT "\tncx_min_pulse_width_rise_constrained_pin_transition_index : 0\;\n ";
		print OPT "\tncx_min_pulse_width_fall_constrained_pin_transition_index : 0\;\n ";
		
		#print OPT "\tcapacitance  : 3.5149000 \;\n ";
		#print OPT "\tfanout_load : 1.00000000 \;\n ";
		#print OPT "\trise_capacitance  : 3.7504900 \;\n ";
		#print OPT "\tfall_capacitance  : 3.2793100 \;\n ";
		#print OPT "\tclock : true \;\n ";
		#print OPT "\tmin_pulse_width_low : 57.2423000 \;\n";
		#print OPT "\tmin_pulse_width_high: 59.7298000 \;\n";
		print OPT "\}\n";
	
	print OPT "pin $dinput\{\n";
		print OPT "\tdirection : input \;\n ";
		print OPT "\tnextstate_type : data \;\n";
		print OPT "\tmax_transition : 800.00 \;\n ";
		print OPT "\tncx_internal_power_rise_input_transition_time_index : 0\;\n ";
		print OPT "\tncx_internal_power_fall_input_transition_time_index : 0\;\n ";
		print OPT "\tncx_hold_rising_rise_constrained_pin_transition_index : 0\;\n ";
		print OPT "\tncx_hold_rising_fall_constrained_pin_transition_index : 0\;\n ";
		print OPT "\tncx_hold_rising_rise_related_pin_transition_index : 0\;\n ";
		print OPT "\tncx_hold_rising_fall_related_pin_transition_index : 0\;\n ";
		print OPT "\tncx_setup_rising_rise_constrained_pin_transition_index : 0\;\n ";
		print OPT "\tncx_setup_rising_fall_constrained_pin_transition_index : 0\;\n ";
		print OPT "\tncx_setup_rising_rise_related_pin_transition_index : 0\;\n ";
		print OPT "\tncx_setup_rising_fall_related_pin_transition_index : 0\;\n ";		
		#print OPT "\tcapacitance  : 3.1533400 \;\n ";
		#print OPT "\tfanout_load : 1.05100000 \;\n ";
		#print OPT "\trise_capacitance  : 3.3414400 \;\n ";
		#print OPT "\tfall_capacitance  : 2.9652400 \;\n ";
		print OPT "\}\n";
		
	print OPT "pin $rinput\{\n";
		print OPT "\tdirection : input \;\n ";
		print OPT "\tmax_transition : 800.00 \;\n ";
		print OPT "\tncx_internal_power_rise_input_transition_time_index : 0\;\n ";
		print OPT "\tncx_internal_power_fall_input_transition_time_index : 0\;\n ";
		print OPT "\tncx_clear : H\;\n ";
		print OPT "\tncx_recovery_rising_rise_constrained_pin_transition_index : 0\;\n ";
		print OPT "\tncx_recovery_rising_rise_related_pin_transition_index : 0\;\n ";
		print OPT "\tncx_removal_rising_rise_constrained_pin_transition_index : 0\;\n ";
		print OPT "\tncx_removal_rising_rise_related_pin_transition_index : 0\;\n ";
		print OPT "\tncx_min_pulse_width_fall_constrained_pin_transition_index : 0\;\n ";
		#print OPT "\tcapacitance  : 7.2158300 \;\n ";
		#print OPT "\tfanout_load  : 2.40500000 \;\n ";
		#print OPT "\trise_capacitance  : 7.4145200 \;\n ";
		#print OPT "\tfall_capacitance  : 7.0171500 \;\n ";
		#print OPT "\tmin_pulse_width_low : 45.370400 \;\n";
		
		print OPT "\}\n";
	
	print OPT "pin $output\{\n";
		print OPT "\tdirection : output \;\n ";
		print OPT "\tfunction : I$output \;\n ";
		print OPT "\tmax_capacitance : 10.0000000 \;\n ";
		print OPT "\tncx_internal_power_rise_input_transition_time_index : 0\;\n ";
		print OPT "\tncx_internal_power_fall_input_transition_time_index : 0\;\n ";
		print OPT "\tncx_internal_power_rise_total_output_net_capacitance_index : 1\;\n ";
		print OPT "\tncx_internal_power_fall_total_output_net_capacitance_index : 1\;\n ";
		print OPT "\tncx_rising_edge_rise_input_net_transition_index : 0\;\n ";
		print OPT "\tncx_rising_edge_fall_input_net_transition_index : 0\;\n ";
		print OPT "\tncx_rising_edge_rise_total_output_net_capacitance_index : 1\;\n ";
		print OPT "\tncx_rising_edge_fall_total_output_net_capacitance_index : 1\;\n ";
		print OPT "\tncx_clear_fall_input_net_transition_index : 0\;\n ";
		print OPT "\tncx_clear_fall_total_output_net_capacitance_index : 1\;\n ";
		
		#print OPT "\tinternal_node : \"$output\" \;\n";
		#print OPT "\tncx_combinational_rise_input_net_transition_index : 0 \;\n ";
		#print OPT "\tncx_combinational_fall_input_net_transition_index : 0 \;\n ";
		#print OPT "\tncx_combinational_rise_total_output_net_capacitance_index : 1 \;\n ";
		#print OPT "\tncx_combinational_fall_total_output_net_capacitance_index : 1 \;\n ";
		print OPT "\}\n";
	
		print OPT "pg_pin VSS \{\n";
		print OPT "\tvoltage_name : VSS \;\n";
		print OPT "\tpg_type : primary_ground \;\n ";
		print OPT "\}\n";
		
		print OPT "pg_pin Vdd \{\n";
		print OPT "\tvoltage_name : vdd \;\n ";
		print OPT "\tpg_type : primary_power \;\n ";
		print OPT "\}\n";

		
	
}
open(SCRIPT, ">script") or die "could not open the script file to write!";
print ("please enter the name of output library in this format <filename.lib> : ");
$out_lib = <STDIN>;
chomp ($out_lib);

print ("please enter the name of spice file in this format <filename.spi> :");
$spice_f =<STDIN>;
chomp ($spice_f);

print SCRIPT "set output_library $out_lib \n";
print SCRIPT "set model_file /home/cad/kits/IBM_CMRF8SF-LM013/IBM_PDK/cmrf8sf/relLM/HSPICE/models/model013.lib_inc \n";
print SCRIPT "set netlist_file $spice_f \n";
print SCRIPT "set Simulator_exec /home/cad/synopsys_2007.12/hspice/hspice/bin/hspice \n";
print SCRIPT "set input_template_dir config \n";
print SCRIPT "set library_template_file lib_all \n";
print SCRIPT "set nldm true \n";
print SCRIPT "set nlpm true \n";
print SCRIPT "set timing true \n";
print SCRIPT "set power true \n";
print SCRIPT "set ccs_timing false \n";
print SCRIPT "set ccs_power false \n";
print SCRIPT "set farm_type NoFarm \n";
close(SCRIPT);

open(LIB, "<config/lib.opt") or die "could not open the file ";
open(LIBR, ">config/lib_all.opt") or die "could not open the file ";
while ($line_v = <LIB>)
{
chomp($line_v);
	if($line_v=~/^do/)
	{
		print LIBR "do {\n";
		foreach $key (keys %cellInputHash)
		{
		print LIBR "$key\n";
		}
		print LIBR "$dffname\n";
	}
	else 
	{
	print LIBR "$line_v\n";
	}
}
close(LIB);

system " ncx -f script ";

