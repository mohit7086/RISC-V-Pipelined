
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental M:/College/BTP/Vivado_Simulations/Execute/EX_Stage/EX_Stage.srcs/utils_1/imports/synth_1/ExecutionStage.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2m
kM:/College/BTP/Vivado_Simulations/Execute/EX_Stage/EX_Stage.srcs/utils_1/imports/synth_1/ExecutionStage.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
l
Command: %s
53*	vivadotcl2;
9synth_design -top ExecutionStage -part xc7k160tifbv676-2LZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
|
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
	xc7k160tiZ17-347h px� 
l
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
	xc7k160tiZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
9636Z8-7075h px� 
�
%s*synth2u
sStarting Synthesize : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 777.547 ; gain = 474.566
h px� 
�
synthesizing module '%s'%s4497*oasys2
ExecutionStage2
 2=
9M:/College/BTP/Vivado_Simulations/Execute/Execute_Stage.v2
28@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
ForwardingUnitWithMUX2
 2?
;M:/College/BTP/Vivado_Simulations/Execute/Forwarding_Unit.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ForwardingUnitWithMUX2
 2
02
12?
;M:/College/BTP/Vivado_Simulations/Execute/Forwarding_Unit.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU_Control2
 2;
7M:/College/BTP/Vivado_Simulations/Execute/ALU_Control.v2
18@Z8-6157h px� 
�
default block is never used226*oasys2;
7M:/College/BTP/Vivado_Simulations/Execute/ALU_Control.v2
268@Z8-226h px� 
�
default block is never used226*oasys2;
7M:/College/BTP/Vivado_Simulations/Execute/ALU_Control.v2
288@Z8-226h px� 
�
default block is never used226*oasys2;
7M:/College/BTP/Vivado_Simulations/Execute/ALU_Control.v2
448@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU_Control2
 2
02
12;
7M:/College/BTP/Vivado_Simulations/Execute/ALU_Control.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2
 23
/M:/College/BTP/Vivado_Simulations/Execute/ALU.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2
 2
02
123
/M:/College/BTP/Vivado_Simulations/Execute/ALU.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Branch_Unit2
 2;
7M:/College/BTP/Vivado_Simulations/Execute/Branch_Unit.v2
28@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Branch_Unit2
 2
02
12;
7M:/College/BTP/Vivado_Simulations/Execute/Branch_Unit.v2
28@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ExecutionStage2
 2
02
12=
9M:/College/BTP/Vivado_Simulations/Execute/Execute_Stage.v2
28@Z8-6155h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[6]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[4]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[3]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[2]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[1]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[0]2
ALU_ControlZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2
ExecutionStageZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2
ExecutionStageZ8-7129h px� 
�
%s*synth2u
sFinished Synthesize : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 884.375 ; gain = 581.395
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 884.375 ; gain = 581.395
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Loading part: xc7k160tifbv676-2L
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 884.375 ; gain = 581.395
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
G
Loading part %s157*device2
xc7k160tifbv676-2LZ21-403h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 884.375 ; gain = 581.395
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   5 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
s
%s
*synth2[
YPart Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[6]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[4]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[3]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[2]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[1]2
ALU_ControlZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
	funct7[0]2
ALU_ControlZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2
ExecutionStageZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2
ExecutionStageZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1205.461 ; gain = 902.480
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1206.301 ; gain = 903.320
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:40 ; elapsed = 00:00:44 . Memory (MB): peak = 1206.301 ; gain = 903.320
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |CARRY4 |    61|
h px� 
2
%s*synth2
|2     |LUT1   |     1|
h px� 
2
%s*synth2
|3     |LUT2   |   103|
h px� 
2
%s*synth2
|4     |LUT3   |    73|
h px� 
2
%s*synth2
|5     |LUT4   |   324|
h px� 
2
%s*synth2
|6     |LUT5   |    70|
h px� 
2
%s*synth2
|7     |LUT6   |   368|
h px� 
2
%s*synth2
|8     |IBUF   |   261|
h px� 
2
%s*synth2
|9     |OBUF   |   100|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
K
%s
*synth23
1+------+-------------------+------------+------+
h p
x
� 
K
%s
*synth23
1|      |Instance           |Module      |Cells |
h p
x
� 
K
%s
*synth23
1+------+-------------------+------------+------+
h p
x
� 
K
%s
*synth23
1|1     |top                |            |  1361|
h p
x
� 
K
%s
*synth23
1|2     |  alu_inst         |ALU         |   787|
h p
x
� 
K
%s
*synth23
1|3     |  branch_unit_inst |Branch_Unit |   212|
h p
x
� 
K
%s
*synth23
1+------+-------------------+------------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 17 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:46 ; elapsed = 00:00:50 . Memory (MB): peak = 1290.754 ; gain = 987.773
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0232

1306.8092
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
61Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1416.5902
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

2f3cbb98Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
292
172
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:492

00:00:572

1416.5902

1119.809Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:012
00:00:00.0172

1416.5902
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2]
[M:/College/BTP/Vivado_Simulations/Execute/EX_Stage/EX_Stage.runs/synth_1/ExecutionStage.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2g
ereport_utilization -file ExecutionStage_utilization_synth.rpt -pb ExecutionStage_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue May  6 19:55:53 2025Z17-206h px� 


End Record