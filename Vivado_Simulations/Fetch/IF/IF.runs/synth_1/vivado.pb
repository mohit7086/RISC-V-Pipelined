
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental M:/College/BTP/Vivado_Simulations/Fetch/IF/IF.srcs/utils_1/imports/synth_1/FetchStage.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2[
YM:/College/BTP/Vivado_Simulations/Fetch/IF/IF.srcs/utils_1/imports/synth_1/FetchStage.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
f
Command: %s
53*	vivadotcl25
3synth_design -top FetchStage -part xc7k160tfbg676-3Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7k160tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7k160tZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
26984Z8-7075h px� 
�
%s*synth2u
sStarting Synthesize : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 777.523 ; gain = 474.059
h px� 
�
synthesizing module '%s'%s4497*oasys2

FetchStage2
 28
4M:/College/BTP/Vivado_Simulations/Fetch/FetchStage.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2	
BPU_Top2
 21
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
GHR_PC2
 21
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
1508@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GHR_PC2
 2
02
121
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
1508@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BTB2
 21
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
1758@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BTB2
 2
02
121
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
1758@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PHT2
 21
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
928@Z8-6157h px� 
{
default block is never used226*oasys21
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
1388@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PHT2
 2
02
121
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
928@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
BPU_Top2
 2
02
121
-M:/College/BTP/Vivado_Simulations/Fetch/BPU.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

INST_MEM2
 26
2M:/College/BTP/Vivado_Simulations/Fetch/Inst_Mem.v2
18@Z8-6157h px� 
�
%s, ignoring3604*oasys2x
vcould not open $readmem data file 'program.hex'; please make sure the file is added to project and has read permission26
2M:/College/BTP/Vivado_Simulations/Fetch/Inst_Mem.v2
118@Z8-4445h px� 
�
%s, ignoring3604*oasys2x
vcould not open $readmem data file 'program.hex'; please make sure the file is added to project and has read permission26
2M:/College/BTP/Vivado_Simulations/Fetch/Inst_Mem.v2
228@Z8-4445h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

INST_MEM2
 2
02
126
2M:/College/BTP/Vivado_Simulations/Fetch/Inst_Mem.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

FetchStage2
 2
02
128
4M:/College/BTP/Vivado_Simulations/Fetch/FetchStage.v2
18@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
Memory2

INST_MEM26
2M:/College/BTP/Vivado_Simulations/Fetch/Inst_Mem.v2
78@Z8-3848h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[31]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[30]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[29]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[28]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[27]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[26]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[25]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[24]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[23]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[22]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[21]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[20]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[19]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[18]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[17]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[16]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[15]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[14]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[13]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[12]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[11]2

INST_MEMZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[10]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[9]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[8]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[7]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[6]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[5]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[4]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[3]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[2]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[1]2

INST_MEMZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
PC[0]2

INST_MEMZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2

INST_MEMZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

index[3]2
PHTZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

index[2]2
PHTZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

index[1]2
PHTZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

index[0]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[31]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[30]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[29]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[28]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[27]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[26]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[25]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[24]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[23]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[22]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[21]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[20]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[19]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[18]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[17]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[16]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[15]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[14]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[13]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[12]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[11]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[10]2
PHTZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[9]2
PHTZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[8]2
PHTZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[7]2
PHTZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[6]2
PHTZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[5]2
PHTZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
resolved_pc[4]2
PHTZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
branch_resolved2
PHTZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[3]2
BTBZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[2]2
BTBZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[1]2
BTBZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[0]2
BTBZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[31]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[30]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[29]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[28]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[27]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[26]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[25]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[24]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[23]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[22]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[21]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[20]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[19]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[18]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[17]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[16]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[15]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[14]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[13]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[12]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[11]2
GHR_PCZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[10]2
GHR_PCZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[9]2
GHR_PCZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[8]2
GHR_PCZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[7]2
GHR_PCZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[6]2
GHR_PCZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[5]2
GHR_PCZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
pc[4]2
GHR_PCZ8-7129h px� 
�
%s*synth2u
sFinished Synthesize : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 886.840 ; gain = 583.375
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
~Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 886.840 ; gain = 583.375
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
9
%s
*synth2!
Loading part: xc7k160tfbg676-3
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 886.840 ; gain = 583.375
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
Loading part %s157*device2
xc7k160tfbg676-3Z21-403h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 886.840 ; gain = 583.375
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
,	   2 Input   32 Bit       Adders := 2     
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
.	   2 Input      4 Bit         XORs := 3     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 20    
h p
x
� 
H
%s
*synth20
.	               28 Bit    Registers := 16    
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 17    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 2     
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
,	   2 Input   32 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 33    
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 1137.039 ; gain = 833.574
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
}Finished Timing Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:32 . Memory (MB): peak = 1137.039 ; gain = 833.574
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
|Finished Technology Mapping : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1137.039 ; gain = 833.574
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
vFinished IO Insertion : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
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
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    19|
h px� 
2
%s*synth2
|3     |LUT1   |     2|
h px� 
2
%s*synth2
|4     |LUT2   |    18|
h px� 
2
%s*synth2
|5     |LUT3   |     1|
h px� 
2
%s*synth2
|6     |LUT4   |    22|
h px� 
2
%s*synth2
|7     |LUT5   |    95|
h px� 
2
%s*synth2
|8     |LUT6   |   305|
h px� 
2
%s*synth2
|9     |MUXF7  |   123|
h px� 
2
%s*synth2
|10    |MUXF8  |    60|
h px� 
2
%s*synth2
|11    |FDCE   |  1047|
h px� 
2
%s*synth2
|12    |FDRE   |    69|
h px� 
2
%s*synth2
|13    |IBUF   |    74|
h px� 
2
%s*synth2
|14    |OBUF   |   101|
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
D
%s
*synth2,
*+------+----------------+--------+------+
h p
x
� 
D
%s
*synth2,
*|      |Instance        |Module  |Cells |
h p
x
� 
D
%s
*synth2,
*+------+----------------+--------+------+
h p
x
� 
D
%s
*synth2,
*|1     |top             |        |  1937|
h p
x
� 
D
%s
*synth2,
*|2     |  bpu           |BPU_Top |  1692|
h p
x
� 
D
%s
*synth2,
*|3     |    btb_inst    |BTB     |  1487|
h p
x
� 
D
%s
*synth2,
*|4     |    ghr_pc_inst |GHR_PC  |    12|
h p
x
� 
D
%s
*synth2,
*|5     |    pht_inst    |PHT     |   109|
h p
x
� 
D
%s
*synth2,
*+------+----------------+--------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 2 critical warnings and 101 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1290.344 ; gain = 986.879
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
00:00:00.0362

1305.4182
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
202Z29-17h px� 
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

00:00:002
00:00:00.0012

1422.1682
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1d1202caZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
292
1012
22
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:422

00:00:492

1422.1682

1124.898Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0132

1422.1682
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2K
IM:/College/BTP/Vivado_Simulations/Fetch/IF/IF.runs/synth_1/FetchStage.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2_
]report_utilization -file FetchStage_utilization_synth.rpt -pb FetchStage_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue May  6 21:26:11 2025Z17-206h px� 


End Record