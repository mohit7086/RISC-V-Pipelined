# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new ExecutionStage work:ExecutionStage:NOFILE -nosplit
load symbol ForwardingUnitWithMUX work:ForwardingUnitWithMUX:NOFILE HIERBOX pin EX_MEM_RegWrite_i input.left pin MEM_WB_RegWrite_i input.left pinBus EX_MEM_RD_i input.left [4:0] pinBus EX_MEM_i input.left [31:0] pinBus ForwardedDataA_o output.right [31:0] pinBus ForwardedDataB_o output.right [31:0] pinBus ID_EX_RS_i input.left [4:0] pinBus ID_EX_RT_i input.left [4:0] pinBus MEM_WB_RD_i input.left [4:0] pinBus MEM_WB_i input.left [31:0] pinBus rs1_data input.left [31:0] pinBus rs2_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_ADD0 work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [2:0] pinBus O output.right [31:0] fillcolor 1
load symbol ALU_Control work:ALU_Control:NOFILE HIERBOX pin is_lui input.left pin is_lw input.left pin is_sw input.left pinBus alu_ctrl output.right [3:0] pinBus alu_op input.left [1:0] pinBus funct3 input.left [2:0] pinBus funct7 input.left [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ALU work:ALU:NOFILE HIERBOX pinBus a input.left [31:0] pinBus alu_ctrl input.left [3:0] pinBus alu_out output.right [31:0] pinBus b input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_OR work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_MUX14 work MUX pin S input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_AND5 work AND pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX18 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol Branch_Unit work:Branch_Unit:NOFILE HIERBOX pin branch_taken output.right pinBus a input.left [31:0] pinBus b input.left [31:0] pinBus funct3 input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_AND2 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_NEQ2 work RTL(!=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_NEQ1 work RTL(!=) pin O output.right pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_LSHIFT work RTL(<<) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [4:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX5 work MUX pin S input.bot pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus O output.right [1:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_RSHIFT work RTL(>>) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [4:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_ARSHIFT work RTL(>>>) pin I2 input.left pinBus I0 input.left [31:0] pinBus I1 input.left [4:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_OR0 work OR pinBus I0 input [31:0] pinBus I1 input [31:0] pinBus O output [31:0] fillcolor 1
load symbol RTL_LT work RTL(<) pin O output.right pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] fillcolor 1
load symbol RTL_MUX10 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I10 input.left [31:0] pinBus I11 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [1:0] pinBus I4 input.left [1:0] pinBus I5 input.left [31:0] pinBus I6 input.left [31:0] pinBus I7 input.left [31:0] pinBus I8 input.left [31:0] pinBus I9 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [3:0] fillcolor 1
load port ALUSrcA input -pg 1 -lvl 0 -x 0 -y 420
load port EX_MEM_RegWrite_i input -pg 1 -lvl 0 -x 0 -y 50
load port MEM_WB_RegWrite_i input -pg 1 -lvl 0 -x 0 -y 200
load port alu_src input -pg 1 -lvl 0 -x 0 -y 560
load port branch input -pg 1 -lvl 0 -x 0 -y 980
load port branch_resolve output -pg 1 -lvl 6 -x 2100 -y 920
load port branch_taken output -pg 1 -lvl 6 -x 2100 -y 1080
load port clk input -pg 1 -lvl 0 -x 0 -y 320
load port flush_fetch output -pg 1 -lvl 6 -x 2100 -y 850
load port is_jal input -pg 1 -lvl 0 -x 0 -y 600
load port is_jalr input -pg 1 -lvl 0 -x 0 -y 630
load port is_lui input -pg 1 -lvl 0 -x 0 -y 890
load port is_lw input -pg 1 -lvl 0 -x 0 -y 920
load port is_sw input -pg 1 -lvl 0 -x 0 -y 950
load port pc_redirect output -pg 1 -lvl 6 -x 2100 -y 990
load port prediction_valid input -pg 1 -lvl 0 -x 0 -y 1010
load port rst input -pg 1 -lvl 0 -x 0 -y 380
load portBus EX_MEM_RD_i input [4:0] -attr @name EX_MEM_RD_i[4:0] -pg 1 -lvl 0 -x 0 -y 20
load portBus EX_MEM_i input [31:0] -attr @name EX_MEM_i[31:0] -pg 1 -lvl 0 -x 0 -y 80
load portBus ID_EX_RS_i input [4:0] -attr @name ID_EX_RS_i[4:0] -pg 1 -lvl 0 -x 0 -y 110
load portBus ID_EX_RT_i input [4:0] -attr @name ID_EX_RT_i[4:0] -pg 1 -lvl 0 -x 0 -y 140
load portBus MEM_WB_RD_i input [4:0] -attr @name MEM_WB_RD_i[4:0] -pg 1 -lvl 0 -x 0 -y 170
load portBus MEM_WB_i input [31:0] -attr @name MEM_WB_i[31:0] -pg 1 -lvl 0 -x 0 -y 230
load portBus PC_ID_EX input [31:0] -attr @name PC_ID_EX[31:0] -pg 1 -lvl 0 -x 0 -y 350
load portBus alu_op input [1:0] -attr @name alu_op[1:0] -pg 1 -lvl 0 -x 0 -y 830
load portBus alu_out output [31:0] -attr @name alu_out[31:0] -pg 1 -lvl 6 -x 2100 -y 440
load portBus branch_addr output [31:0] -attr @name branch_addr[31:0] -pg 1 -lvl 6 -x 2100 -y 600
load portBus funct3 input [2:0] -attr @name funct3[2:0] -pg 1 -lvl 0 -x 0 -y 460
load portBus funct7 input [6:0] -attr @name funct7[6:0] -pg 1 -lvl 0 -x 0 -y 860
load portBus immediate_data input [31:0] -attr @name immediate_data[31:0] -pg 1 -lvl 0 -x 0 -y 490
load portBus predicted_pc input [31:0] -attr @name predicted_pc[31:0] -pg 1 -lvl 0 -x 0 -y 780
load portBus rs1_data input [31:0] -attr @name rs1_data[31:0] -pg 1 -lvl 0 -x 0 -y 260
load portBus rs2_data input [31:0] -attr @name rs2_data[31:0] -pg 1 -lvl 0 -x 0 -y 290
load portBus rs2_mem_data output [31:0] -attr @name rs2_mem_data[31:0] -pg 1 -lvl 6 -x 2100 -y 160
load inst FU_inst ForwardingUnitWithMUX work:ForwardingUnitWithMUX:NOFILE -autohide -attr @cell(#000000) ForwardingUnitWithMUX -pinBusAttr EX_MEM_RD_i @name EX_MEM_RD_i[4:0] -pinBusAttr EX_MEM_i @name EX_MEM_i[31:0] -pinBusAttr ForwardedDataA_o @name ForwardedDataA_o[31:0] -pinBusAttr ForwardedDataB_o @name ForwardedDataB_o[31:0] -pinBusAttr ID_EX_RS_i @name ID_EX_RS_i[4:0] -pinBusAttr ID_EX_RT_i @name ID_EX_RT_i[4:0] -pinBusAttr MEM_WB_RD_i @name MEM_WB_RD_i[4:0] -pinBusAttr MEM_WB_i @name MEM_WB_i[31:0] -pinBusAttr rs1_data @name rs1_data[31:0] -pinBusAttr rs2_data @name rs2_data[31:0] -pg 1 -lvl 5 -x 1830 -y 50
load inst PC_plus_4_i RTL_ADD0 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 4 -x 1367 -y 430
load inst alu_control_inst ALU_Control work:ALU_Control:NOFILE -autohide -attr @cell(#000000) ALU_Control -pinBusAttr alu_ctrl @name alu_ctrl[3:0] -pinBusAttr alu_op @name alu_op[1:0] -pinBusAttr funct3 @name funct3[2:0] -pinBusAttr funct7 @name funct7[6:0] -pg 1 -lvl 2 -x 500 -y 830
load inst alu_inst ALU work:ALU:NOFILE -fold -autohide -attr @cell(#000000) ALU -attr @fillcolor #dfebf8 -pinBusAttr a @name a[31:0] -pinBusAttr alu_ctrl @name alu_ctrl[3:0] -pinBusAttr alu_out @name alu_out[31:0] -pinBusAttr b @name b[31:0] -pg 1 -lvl 3 -x 890 -y 680
load inst alu_out_comb1_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 4 -x 1367 -y 610
load inst alu_out_comb_i RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 5 -x 1830 -y 440
load inst branch_addr_comb0_i RTL_AND5 work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr V=X\"FFFFFFFE\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 4 -x 1367 -y 740
load inst branch_addr_comb0_i__0 RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 4 -x 1367 -y 530
load inst branch_addr_comb_i RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 5 -x 1830 -y 600
load inst branch_resolve_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 5 -x 1830 -y 920
load inst branch_taken_i RTL_MUX18 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 5 -x 1830 -y 1080
load inst branch_unit_inst Branch_Unit work:Branch_Unit:NOFILE -autohide -attr @cell(#000000) Branch_Unit -pinBusAttr a @name a[31:0] -pinBusAttr b @name b[31:0] -pinBusAttr funct3 @name funct3[2:0] -pg 1 -lvl 2 -x 500 -y 350
load inst is_misprediction_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 5 -x 1830 -y 850
load inst operandA0_i RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 1 -x 170 -y 360
load inst operandA_i RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 500 -y 690
load inst operandB_i RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 500 -y 500
load inst pc_redirect_comb0_i RTL_AND2 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 3 -x 890 -y 940
load inst pc_redirect_comb_i RTL_OR work -attr @cell(#000000) RTL_OR -pg 1 -lvl 5 -x 1830 -y 990
load inst prediction_mismatch0_i RTL_NEQ2 work -attr @cell(#000000) RTL_NEQ -pg 1 -lvl 3 -x 890 -y 1020
load inst prediction_mismatch_i RTL_AND2 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 1367 -y 930
load inst target_mismatch0_i RTL_NEQ1 work -attr @cell(#000000) RTL_NEQ -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 3 -x 890 -y 840
load inst target_mismatch_i RTL_AND2 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 1367 -y 860
load inst alu_inst|alu_out0_i RTL_ADD work -hier alu_inst -attr @cell(#000000) RTL_ADD -attr @name alu_out0_i -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 1390 -y 898
load inst alu_inst|alu_out0_i__0 RTL_SUB work -hier alu_inst -attr @cell(#000000) RTL_SUB -attr @name alu_out0_i__0 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 1390 -y 708
load inst alu_inst|alu_out0_i__1 RTL_LSHIFT work -hier alu_inst -attr @cell(#000000) RTL_LSHIFT -attr @name alu_out0_i__1 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[4:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 1390 -y 808
load inst alu_inst|alu_out0_i__2 RTL_MUX5 work -hier alu_inst -attr @cell(#000000) RTL_MUX -attr @name alu_out0_i__2 -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 2 -x 1390 -y 1008
load inst alu_inst|alu_out0_i__3 RTL_MUX5 work -hier alu_inst -attr @cell(#000000) RTL_MUX -attr @name alu_out0_i__3 -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 2 -x 1390 -y 1148
load inst alu_inst|alu_out0_i__4 RTL_XOR work -hier alu_inst -attr @cell(#000000) RTL_XOR -attr @name alu_out0_i__4 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 1390 -y 1268
load inst alu_inst|alu_out0_i__5 RTL_RSHIFT work -hier alu_inst -attr @cell(#000000) RTL_RSHIFT -attr @name alu_out0_i__5 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[4:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 1390 -y 1368
load inst alu_inst|alu_out0_i__6 RTL_ARSHIFT work -hier alu_inst -attr @cell(#000000) RTL_ARSHIFT -attr @name alu_out0_i__6 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[4:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 1390 -y 1488
load inst alu_inst|alu_out0_i__7 RTL_OR0 work -hier alu_inst -attr @cell(#000000) RTL_OR -attr @name alu_out0_i__7 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 1390 -y 1578
load inst alu_inst|alu_out0_i__8 RTL_AND5 work -hier alu_inst -attr @cell(#000000) RTL_AND -attr @name alu_out0_i__8 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pinBusAttr O @name O[31:0] -pg 1 -lvl 2 -x 1390 -y 1648
load inst alu_inst|alu_out2_i RTL_LT work -hier alu_inst -attr @cell(#000000) RTL_LT -attr @name alu_out2_i -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 1 -x 1020 -y 1118
load inst alu_inst|alu_out2_i__0 RTL_LT work -hier alu_inst -attr @cell(#000000) RTL_LT -attr @name alu_out2_i__0 -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[31:0] -pg 1 -lvl 1 -x 1020 -y 1208
load inst alu_inst|alu_out_i RTL_MUX10 work -hier alu_inst -attr @cell(#000000) RTL_MUX -attr @name alu_out_i -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=4'b0000 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=4'b0001 -pinBusAttr I10 @name I10[31:0] -pinBusAttr I10 @attr S=4'b1010 -pinBusAttr I11 @name I11[31:0] -pinBusAttr I11 @attr S=default -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=4'b0010 -pinBusAttr I3 @name I3[1:0] -pinBusAttr I3 @attr S=4'b0011 -pinBusAttr I4 @name I4[1:0] -pinBusAttr I4 @attr S=4'b0100 -pinBusAttr I5 @name I5[31:0] -pinBusAttr I5 @attr S=4'b0101 -pinBusAttr I6 @name I6[31:0] -pinBusAttr I6 @attr S=4'b0110 -pinBusAttr I7 @name I7[31:0] -pinBusAttr I7 @attr S=4'b0111 -pinBusAttr I8 @name I8[31:0] -pinBusAttr I8 @attr S=4'b1000 -pinBusAttr I9 @name I9[31:0] -pinBusAttr I9 @attr S=4'b1001 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 3 -x 1790 -y 1158
load net <const0> -ground -pin PC_plus_4_i I1[1] -pin PC_plus_4_i I1[0] -pin branch_addr_comb0_i I1[0] -pin branch_taken_i I1 -pin operandA_i I0[31] -pin operandA_i I0[30] -pin operandA_i I0[29] -pin operandA_i I0[28] -pin operandA_i I0[27] -pin operandA_i I0[26] -pin operandA_i I0[25] -pin operandA_i I0[24] -pin operandA_i I0[23] -pin operandA_i I0[22] -pin operandA_i I0[21] -pin operandA_i I0[20] -pin operandA_i I0[19] -pin operandA_i I0[18] -pin operandA_i I0[17] -pin operandA_i I0[16] -pin operandA_i I0[15] -pin operandA_i I0[14] -pin operandA_i I0[13] -pin operandA_i I0[12] -pin operandA_i I0[11] -pin operandA_i I0[10] -pin operandA_i I0[9] -pin operandA_i I0[8] -pin operandA_i I0[7] -pin operandA_i I0[6] -pin operandA_i I0[5] -pin operandA_i I0[4] -pin operandA_i I0[3] -pin operandA_i I0[2] -pin operandA_i I0[1] -pin operandA_i I0[0]
load net <const1> -power -pin PC_plus_4_i I1[2] -pin branch_addr_comb0_i I1[31] -pin branch_addr_comb0_i I1[30] -pin branch_addr_comb0_i I1[29] -pin branch_addr_comb0_i I1[28] -pin branch_addr_comb0_i I1[27] -pin branch_addr_comb0_i I1[26] -pin branch_addr_comb0_i I1[25] -pin branch_addr_comb0_i I1[24] -pin branch_addr_comb0_i I1[23] -pin branch_addr_comb0_i I1[22] -pin branch_addr_comb0_i I1[21] -pin branch_addr_comb0_i I1[20] -pin branch_addr_comb0_i I1[19] -pin branch_addr_comb0_i I1[18] -pin branch_addr_comb0_i I1[17] -pin branch_addr_comb0_i I1[16] -pin branch_addr_comb0_i I1[15] -pin branch_addr_comb0_i I1[14] -pin branch_addr_comb0_i I1[13] -pin branch_addr_comb0_i I1[12] -pin branch_addr_comb0_i I1[11] -pin branch_addr_comb0_i I1[10] -pin branch_addr_comb0_i I1[9] -pin branch_addr_comb0_i I1[8] -pin branch_addr_comb0_i I1[7] -pin branch_addr_comb0_i I1[6] -pin branch_addr_comb0_i I1[5] -pin branch_addr_comb0_i I1[4] -pin branch_addr_comb0_i I1[3] -pin branch_addr_comb0_i I1[2] -pin branch_addr_comb0_i I1[1]
load net ALUSrcA -port ALUSrcA -pin operandA0_i S
netloc ALUSrcA 1 0 1 NJ 420
load net EX_MEM_RD_i[0] -attr @rip(#000000) EX_MEM_RD_i[0] -port EX_MEM_RD_i[0] -pin FU_inst EX_MEM_RD_i[0]
load net EX_MEM_RD_i[1] -attr @rip(#000000) EX_MEM_RD_i[1] -port EX_MEM_RD_i[1] -pin FU_inst EX_MEM_RD_i[1]
load net EX_MEM_RD_i[2] -attr @rip(#000000) EX_MEM_RD_i[2] -port EX_MEM_RD_i[2] -pin FU_inst EX_MEM_RD_i[2]
load net EX_MEM_RD_i[3] -attr @rip(#000000) EX_MEM_RD_i[3] -port EX_MEM_RD_i[3] -pin FU_inst EX_MEM_RD_i[3]
load net EX_MEM_RD_i[4] -attr @rip(#000000) EX_MEM_RD_i[4] -port EX_MEM_RD_i[4] -pin FU_inst EX_MEM_RD_i[4]
load net EX_MEM_RegWrite_i -port EX_MEM_RegWrite_i -pin FU_inst EX_MEM_RegWrite_i
netloc EX_MEM_RegWrite_i 1 0 5 NJ 50 NJ 50 NJ 50 NJ 50 1620J
load net EX_MEM_i[0] -attr @rip(#000000) EX_MEM_i[0] -port EX_MEM_i[0] -pin FU_inst EX_MEM_i[0]
load net EX_MEM_i[10] -attr @rip(#000000) EX_MEM_i[10] -port EX_MEM_i[10] -pin FU_inst EX_MEM_i[10]
load net EX_MEM_i[11] -attr @rip(#000000) EX_MEM_i[11] -port EX_MEM_i[11] -pin FU_inst EX_MEM_i[11]
load net EX_MEM_i[12] -attr @rip(#000000) EX_MEM_i[12] -port EX_MEM_i[12] -pin FU_inst EX_MEM_i[12]
load net EX_MEM_i[13] -attr @rip(#000000) EX_MEM_i[13] -port EX_MEM_i[13] -pin FU_inst EX_MEM_i[13]
load net EX_MEM_i[14] -attr @rip(#000000) EX_MEM_i[14] -port EX_MEM_i[14] -pin FU_inst EX_MEM_i[14]
load net EX_MEM_i[15] -attr @rip(#000000) EX_MEM_i[15] -port EX_MEM_i[15] -pin FU_inst EX_MEM_i[15]
load net EX_MEM_i[16] -attr @rip(#000000) EX_MEM_i[16] -port EX_MEM_i[16] -pin FU_inst EX_MEM_i[16]
load net EX_MEM_i[17] -attr @rip(#000000) EX_MEM_i[17] -port EX_MEM_i[17] -pin FU_inst EX_MEM_i[17]
load net EX_MEM_i[18] -attr @rip(#000000) EX_MEM_i[18] -port EX_MEM_i[18] -pin FU_inst EX_MEM_i[18]
load net EX_MEM_i[19] -attr @rip(#000000) EX_MEM_i[19] -port EX_MEM_i[19] -pin FU_inst EX_MEM_i[19]
load net EX_MEM_i[1] -attr @rip(#000000) EX_MEM_i[1] -port EX_MEM_i[1] -pin FU_inst EX_MEM_i[1]
load net EX_MEM_i[20] -attr @rip(#000000) EX_MEM_i[20] -port EX_MEM_i[20] -pin FU_inst EX_MEM_i[20]
load net EX_MEM_i[21] -attr @rip(#000000) EX_MEM_i[21] -port EX_MEM_i[21] -pin FU_inst EX_MEM_i[21]
load net EX_MEM_i[22] -attr @rip(#000000) EX_MEM_i[22] -port EX_MEM_i[22] -pin FU_inst EX_MEM_i[22]
load net EX_MEM_i[23] -attr @rip(#000000) EX_MEM_i[23] -port EX_MEM_i[23] -pin FU_inst EX_MEM_i[23]
load net EX_MEM_i[24] -attr @rip(#000000) EX_MEM_i[24] -port EX_MEM_i[24] -pin FU_inst EX_MEM_i[24]
load net EX_MEM_i[25] -attr @rip(#000000) EX_MEM_i[25] -port EX_MEM_i[25] -pin FU_inst EX_MEM_i[25]
load net EX_MEM_i[26] -attr @rip(#000000) EX_MEM_i[26] -port EX_MEM_i[26] -pin FU_inst EX_MEM_i[26]
load net EX_MEM_i[27] -attr @rip(#000000) EX_MEM_i[27] -port EX_MEM_i[27] -pin FU_inst EX_MEM_i[27]
load net EX_MEM_i[28] -attr @rip(#000000) EX_MEM_i[28] -port EX_MEM_i[28] -pin FU_inst EX_MEM_i[28]
load net EX_MEM_i[29] -attr @rip(#000000) EX_MEM_i[29] -port EX_MEM_i[29] -pin FU_inst EX_MEM_i[29]
load net EX_MEM_i[2] -attr @rip(#000000) EX_MEM_i[2] -port EX_MEM_i[2] -pin FU_inst EX_MEM_i[2]
load net EX_MEM_i[30] -attr @rip(#000000) EX_MEM_i[30] -port EX_MEM_i[30] -pin FU_inst EX_MEM_i[30]
load net EX_MEM_i[31] -attr @rip(#000000) EX_MEM_i[31] -port EX_MEM_i[31] -pin FU_inst EX_MEM_i[31]
load net EX_MEM_i[3] -attr @rip(#000000) EX_MEM_i[3] -port EX_MEM_i[3] -pin FU_inst EX_MEM_i[3]
load net EX_MEM_i[4] -attr @rip(#000000) EX_MEM_i[4] -port EX_MEM_i[4] -pin FU_inst EX_MEM_i[4]
load net EX_MEM_i[5] -attr @rip(#000000) EX_MEM_i[5] -port EX_MEM_i[5] -pin FU_inst EX_MEM_i[5]
load net EX_MEM_i[6] -attr @rip(#000000) EX_MEM_i[6] -port EX_MEM_i[6] -pin FU_inst EX_MEM_i[6]
load net EX_MEM_i[7] -attr @rip(#000000) EX_MEM_i[7] -port EX_MEM_i[7] -pin FU_inst EX_MEM_i[7]
load net EX_MEM_i[8] -attr @rip(#000000) EX_MEM_i[8] -port EX_MEM_i[8] -pin FU_inst EX_MEM_i[8]
load net EX_MEM_i[9] -attr @rip(#000000) EX_MEM_i[9] -port EX_MEM_i[9] -pin FU_inst EX_MEM_i[9]
load net ID_EX_RS_i[0] -attr @rip(#000000) ID_EX_RS_i[0] -pin FU_inst ID_EX_RS_i[0] -port ID_EX_RS_i[0]
load net ID_EX_RS_i[1] -attr @rip(#000000) ID_EX_RS_i[1] -pin FU_inst ID_EX_RS_i[1] -port ID_EX_RS_i[1]
load net ID_EX_RS_i[2] -attr @rip(#000000) ID_EX_RS_i[2] -pin FU_inst ID_EX_RS_i[2] -port ID_EX_RS_i[2]
load net ID_EX_RS_i[3] -attr @rip(#000000) ID_EX_RS_i[3] -pin FU_inst ID_EX_RS_i[3] -port ID_EX_RS_i[3]
load net ID_EX_RS_i[4] -attr @rip(#000000) ID_EX_RS_i[4] -pin FU_inst ID_EX_RS_i[4] -port ID_EX_RS_i[4]
load net ID_EX_RT_i[0] -attr @rip(#000000) ID_EX_RT_i[0] -pin FU_inst ID_EX_RT_i[0] -port ID_EX_RT_i[0]
load net ID_EX_RT_i[1] -attr @rip(#000000) ID_EX_RT_i[1] -pin FU_inst ID_EX_RT_i[1] -port ID_EX_RT_i[1]
load net ID_EX_RT_i[2] -attr @rip(#000000) ID_EX_RT_i[2] -pin FU_inst ID_EX_RT_i[2] -port ID_EX_RT_i[2]
load net ID_EX_RT_i[3] -attr @rip(#000000) ID_EX_RT_i[3] -pin FU_inst ID_EX_RT_i[3] -port ID_EX_RT_i[3]
load net ID_EX_RT_i[4] -attr @rip(#000000) ID_EX_RT_i[4] -pin FU_inst ID_EX_RT_i[4] -port ID_EX_RT_i[4]
load net MEM_WB_RD_i[0] -attr @rip(#000000) MEM_WB_RD_i[0] -pin FU_inst MEM_WB_RD_i[0] -port MEM_WB_RD_i[0]
load net MEM_WB_RD_i[1] -attr @rip(#000000) MEM_WB_RD_i[1] -pin FU_inst MEM_WB_RD_i[1] -port MEM_WB_RD_i[1]
load net MEM_WB_RD_i[2] -attr @rip(#000000) MEM_WB_RD_i[2] -pin FU_inst MEM_WB_RD_i[2] -port MEM_WB_RD_i[2]
load net MEM_WB_RD_i[3] -attr @rip(#000000) MEM_WB_RD_i[3] -pin FU_inst MEM_WB_RD_i[3] -port MEM_WB_RD_i[3]
load net MEM_WB_RD_i[4] -attr @rip(#000000) MEM_WB_RD_i[4] -pin FU_inst MEM_WB_RD_i[4] -port MEM_WB_RD_i[4]
load net MEM_WB_RegWrite_i -pin FU_inst MEM_WB_RegWrite_i -port MEM_WB_RegWrite_i
netloc MEM_WB_RegWrite_i 1 0 5 NJ 200 NJ 200 NJ 200 NJ 200 1600J
load net MEM_WB_i[0] -attr @rip(#000000) MEM_WB_i[0] -pin FU_inst MEM_WB_i[0] -port MEM_WB_i[0]
load net MEM_WB_i[10] -attr @rip(#000000) MEM_WB_i[10] -pin FU_inst MEM_WB_i[10] -port MEM_WB_i[10]
load net MEM_WB_i[11] -attr @rip(#000000) MEM_WB_i[11] -pin FU_inst MEM_WB_i[11] -port MEM_WB_i[11]
load net MEM_WB_i[12] -attr @rip(#000000) MEM_WB_i[12] -pin FU_inst MEM_WB_i[12] -port MEM_WB_i[12]
load net MEM_WB_i[13] -attr @rip(#000000) MEM_WB_i[13] -pin FU_inst MEM_WB_i[13] -port MEM_WB_i[13]
load net MEM_WB_i[14] -attr @rip(#000000) MEM_WB_i[14] -pin FU_inst MEM_WB_i[14] -port MEM_WB_i[14]
load net MEM_WB_i[15] -attr @rip(#000000) MEM_WB_i[15] -pin FU_inst MEM_WB_i[15] -port MEM_WB_i[15]
load net MEM_WB_i[16] -attr @rip(#000000) MEM_WB_i[16] -pin FU_inst MEM_WB_i[16] -port MEM_WB_i[16]
load net MEM_WB_i[17] -attr @rip(#000000) MEM_WB_i[17] -pin FU_inst MEM_WB_i[17] -port MEM_WB_i[17]
load net MEM_WB_i[18] -attr @rip(#000000) MEM_WB_i[18] -pin FU_inst MEM_WB_i[18] -port MEM_WB_i[18]
load net MEM_WB_i[19] -attr @rip(#000000) MEM_WB_i[19] -pin FU_inst MEM_WB_i[19] -port MEM_WB_i[19]
load net MEM_WB_i[1] -attr @rip(#000000) MEM_WB_i[1] -pin FU_inst MEM_WB_i[1] -port MEM_WB_i[1]
load net MEM_WB_i[20] -attr @rip(#000000) MEM_WB_i[20] -pin FU_inst MEM_WB_i[20] -port MEM_WB_i[20]
load net MEM_WB_i[21] -attr @rip(#000000) MEM_WB_i[21] -pin FU_inst MEM_WB_i[21] -port MEM_WB_i[21]
load net MEM_WB_i[22] -attr @rip(#000000) MEM_WB_i[22] -pin FU_inst MEM_WB_i[22] -port MEM_WB_i[22]
load net MEM_WB_i[23] -attr @rip(#000000) MEM_WB_i[23] -pin FU_inst MEM_WB_i[23] -port MEM_WB_i[23]
load net MEM_WB_i[24] -attr @rip(#000000) MEM_WB_i[24] -pin FU_inst MEM_WB_i[24] -port MEM_WB_i[24]
load net MEM_WB_i[25] -attr @rip(#000000) MEM_WB_i[25] -pin FU_inst MEM_WB_i[25] -port MEM_WB_i[25]
load net MEM_WB_i[26] -attr @rip(#000000) MEM_WB_i[26] -pin FU_inst MEM_WB_i[26] -port MEM_WB_i[26]
load net MEM_WB_i[27] -attr @rip(#000000) MEM_WB_i[27] -pin FU_inst MEM_WB_i[27] -port MEM_WB_i[27]
load net MEM_WB_i[28] -attr @rip(#000000) MEM_WB_i[28] -pin FU_inst MEM_WB_i[28] -port MEM_WB_i[28]
load net MEM_WB_i[29] -attr @rip(#000000) MEM_WB_i[29] -pin FU_inst MEM_WB_i[29] -port MEM_WB_i[29]
load net MEM_WB_i[2] -attr @rip(#000000) MEM_WB_i[2] -pin FU_inst MEM_WB_i[2] -port MEM_WB_i[2]
load net MEM_WB_i[30] -attr @rip(#000000) MEM_WB_i[30] -pin FU_inst MEM_WB_i[30] -port MEM_WB_i[30]
load net MEM_WB_i[31] -attr @rip(#000000) MEM_WB_i[31] -pin FU_inst MEM_WB_i[31] -port MEM_WB_i[31]
load net MEM_WB_i[3] -attr @rip(#000000) MEM_WB_i[3] -pin FU_inst MEM_WB_i[3] -port MEM_WB_i[3]
load net MEM_WB_i[4] -attr @rip(#000000) MEM_WB_i[4] -pin FU_inst MEM_WB_i[4] -port MEM_WB_i[4]
load net MEM_WB_i[5] -attr @rip(#000000) MEM_WB_i[5] -pin FU_inst MEM_WB_i[5] -port MEM_WB_i[5]
load net MEM_WB_i[6] -attr @rip(#000000) MEM_WB_i[6] -pin FU_inst MEM_WB_i[6] -port MEM_WB_i[6]
load net MEM_WB_i[7] -attr @rip(#000000) MEM_WB_i[7] -pin FU_inst MEM_WB_i[7] -port MEM_WB_i[7]
load net MEM_WB_i[8] -attr @rip(#000000) MEM_WB_i[8] -pin FU_inst MEM_WB_i[8] -port MEM_WB_i[8]
load net MEM_WB_i[9] -attr @rip(#000000) MEM_WB_i[9] -pin FU_inst MEM_WB_i[9] -port MEM_WB_i[9]
load net PC_ID_EX[0] -attr @rip(#000000) PC_ID_EX[0] -port PC_ID_EX[0] -pin PC_plus_4_i I0[0] -pin branch_addr_comb0_i__0 I0[0] -pin operandA0_i I0[0]
load net PC_ID_EX[10] -attr @rip(#000000) PC_ID_EX[10] -port PC_ID_EX[10] -pin PC_plus_4_i I0[10] -pin branch_addr_comb0_i__0 I0[10] -pin operandA0_i I0[10]
load net PC_ID_EX[11] -attr @rip(#000000) PC_ID_EX[11] -port PC_ID_EX[11] -pin PC_plus_4_i I0[11] -pin branch_addr_comb0_i__0 I0[11] -pin operandA0_i I0[11]
load net PC_ID_EX[12] -attr @rip(#000000) PC_ID_EX[12] -port PC_ID_EX[12] -pin PC_plus_4_i I0[12] -pin branch_addr_comb0_i__0 I0[12] -pin operandA0_i I0[12]
load net PC_ID_EX[13] -attr @rip(#000000) PC_ID_EX[13] -port PC_ID_EX[13] -pin PC_plus_4_i I0[13] -pin branch_addr_comb0_i__0 I0[13] -pin operandA0_i I0[13]
load net PC_ID_EX[14] -attr @rip(#000000) PC_ID_EX[14] -port PC_ID_EX[14] -pin PC_plus_4_i I0[14] -pin branch_addr_comb0_i__0 I0[14] -pin operandA0_i I0[14]
load net PC_ID_EX[15] -attr @rip(#000000) PC_ID_EX[15] -port PC_ID_EX[15] -pin PC_plus_4_i I0[15] -pin branch_addr_comb0_i__0 I0[15] -pin operandA0_i I0[15]
load net PC_ID_EX[16] -attr @rip(#000000) PC_ID_EX[16] -port PC_ID_EX[16] -pin PC_plus_4_i I0[16] -pin branch_addr_comb0_i__0 I0[16] -pin operandA0_i I0[16]
load net PC_ID_EX[17] -attr @rip(#000000) PC_ID_EX[17] -port PC_ID_EX[17] -pin PC_plus_4_i I0[17] -pin branch_addr_comb0_i__0 I0[17] -pin operandA0_i I0[17]
load net PC_ID_EX[18] -attr @rip(#000000) PC_ID_EX[18] -port PC_ID_EX[18] -pin PC_plus_4_i I0[18] -pin branch_addr_comb0_i__0 I0[18] -pin operandA0_i I0[18]
load net PC_ID_EX[19] -attr @rip(#000000) PC_ID_EX[19] -port PC_ID_EX[19] -pin PC_plus_4_i I0[19] -pin branch_addr_comb0_i__0 I0[19] -pin operandA0_i I0[19]
load net PC_ID_EX[1] -attr @rip(#000000) PC_ID_EX[1] -port PC_ID_EX[1] -pin PC_plus_4_i I0[1] -pin branch_addr_comb0_i__0 I0[1] -pin operandA0_i I0[1]
load net PC_ID_EX[20] -attr @rip(#000000) PC_ID_EX[20] -port PC_ID_EX[20] -pin PC_plus_4_i I0[20] -pin branch_addr_comb0_i__0 I0[20] -pin operandA0_i I0[20]
load net PC_ID_EX[21] -attr @rip(#000000) PC_ID_EX[21] -port PC_ID_EX[21] -pin PC_plus_4_i I0[21] -pin branch_addr_comb0_i__0 I0[21] -pin operandA0_i I0[21]
load net PC_ID_EX[22] -attr @rip(#000000) PC_ID_EX[22] -port PC_ID_EX[22] -pin PC_plus_4_i I0[22] -pin branch_addr_comb0_i__0 I0[22] -pin operandA0_i I0[22]
load net PC_ID_EX[23] -attr @rip(#000000) PC_ID_EX[23] -port PC_ID_EX[23] -pin PC_plus_4_i I0[23] -pin branch_addr_comb0_i__0 I0[23] -pin operandA0_i I0[23]
load net PC_ID_EX[24] -attr @rip(#000000) PC_ID_EX[24] -port PC_ID_EX[24] -pin PC_plus_4_i I0[24] -pin branch_addr_comb0_i__0 I0[24] -pin operandA0_i I0[24]
load net PC_ID_EX[25] -attr @rip(#000000) PC_ID_EX[25] -port PC_ID_EX[25] -pin PC_plus_4_i I0[25] -pin branch_addr_comb0_i__0 I0[25] -pin operandA0_i I0[25]
load net PC_ID_EX[26] -attr @rip(#000000) PC_ID_EX[26] -port PC_ID_EX[26] -pin PC_plus_4_i I0[26] -pin branch_addr_comb0_i__0 I0[26] -pin operandA0_i I0[26]
load net PC_ID_EX[27] -attr @rip(#000000) PC_ID_EX[27] -port PC_ID_EX[27] -pin PC_plus_4_i I0[27] -pin branch_addr_comb0_i__0 I0[27] -pin operandA0_i I0[27]
load net PC_ID_EX[28] -attr @rip(#000000) PC_ID_EX[28] -port PC_ID_EX[28] -pin PC_plus_4_i I0[28] -pin branch_addr_comb0_i__0 I0[28] -pin operandA0_i I0[28]
load net PC_ID_EX[29] -attr @rip(#000000) PC_ID_EX[29] -port PC_ID_EX[29] -pin PC_plus_4_i I0[29] -pin branch_addr_comb0_i__0 I0[29] -pin operandA0_i I0[29]
load net PC_ID_EX[2] -attr @rip(#000000) PC_ID_EX[2] -port PC_ID_EX[2] -pin PC_plus_4_i I0[2] -pin branch_addr_comb0_i__0 I0[2] -pin operandA0_i I0[2]
load net PC_ID_EX[30] -attr @rip(#000000) PC_ID_EX[30] -port PC_ID_EX[30] -pin PC_plus_4_i I0[30] -pin branch_addr_comb0_i__0 I0[30] -pin operandA0_i I0[30]
load net PC_ID_EX[31] -attr @rip(#000000) PC_ID_EX[31] -port PC_ID_EX[31] -pin PC_plus_4_i I0[31] -pin branch_addr_comb0_i__0 I0[31] -pin operandA0_i I0[31]
load net PC_ID_EX[3] -attr @rip(#000000) PC_ID_EX[3] -port PC_ID_EX[3] -pin PC_plus_4_i I0[3] -pin branch_addr_comb0_i__0 I0[3] -pin operandA0_i I0[3]
load net PC_ID_EX[4] -attr @rip(#000000) PC_ID_EX[4] -port PC_ID_EX[4] -pin PC_plus_4_i I0[4] -pin branch_addr_comb0_i__0 I0[4] -pin operandA0_i I0[4]
load net PC_ID_EX[5] -attr @rip(#000000) PC_ID_EX[5] -port PC_ID_EX[5] -pin PC_plus_4_i I0[5] -pin branch_addr_comb0_i__0 I0[5] -pin operandA0_i I0[5]
load net PC_ID_EX[6] -attr @rip(#000000) PC_ID_EX[6] -port PC_ID_EX[6] -pin PC_plus_4_i I0[6] -pin branch_addr_comb0_i__0 I0[6] -pin operandA0_i I0[6]
load net PC_ID_EX[7] -attr @rip(#000000) PC_ID_EX[7] -port PC_ID_EX[7] -pin PC_plus_4_i I0[7] -pin branch_addr_comb0_i__0 I0[7] -pin operandA0_i I0[7]
load net PC_ID_EX[8] -attr @rip(#000000) PC_ID_EX[8] -port PC_ID_EX[8] -pin PC_plus_4_i I0[8] -pin branch_addr_comb0_i__0 I0[8] -pin operandA0_i I0[8]
load net PC_ID_EX[9] -attr @rip(#000000) PC_ID_EX[9] -port PC_ID_EX[9] -pin PC_plus_4_i I0[9] -pin branch_addr_comb0_i__0 I0[9] -pin operandA0_i I0[9]
load net PC_plus_4[0] -attr @rip(#000000) O[0] -pin PC_plus_4_i O[0] -pin alu_out_comb_i I0[0]
load net PC_plus_4[10] -attr @rip(#000000) O[10] -pin PC_plus_4_i O[10] -pin alu_out_comb_i I0[10]
load net PC_plus_4[11] -attr @rip(#000000) O[11] -pin PC_plus_4_i O[11] -pin alu_out_comb_i I0[11]
load net PC_plus_4[12] -attr @rip(#000000) O[12] -pin PC_plus_4_i O[12] -pin alu_out_comb_i I0[12]
load net PC_plus_4[13] -attr @rip(#000000) O[13] -pin PC_plus_4_i O[13] -pin alu_out_comb_i I0[13]
load net PC_plus_4[14] -attr @rip(#000000) O[14] -pin PC_plus_4_i O[14] -pin alu_out_comb_i I0[14]
load net PC_plus_4[15] -attr @rip(#000000) O[15] -pin PC_plus_4_i O[15] -pin alu_out_comb_i I0[15]
load net PC_plus_4[16] -attr @rip(#000000) O[16] -pin PC_plus_4_i O[16] -pin alu_out_comb_i I0[16]
load net PC_plus_4[17] -attr @rip(#000000) O[17] -pin PC_plus_4_i O[17] -pin alu_out_comb_i I0[17]
load net PC_plus_4[18] -attr @rip(#000000) O[18] -pin PC_plus_4_i O[18] -pin alu_out_comb_i I0[18]
load net PC_plus_4[19] -attr @rip(#000000) O[19] -pin PC_plus_4_i O[19] -pin alu_out_comb_i I0[19]
load net PC_plus_4[1] -attr @rip(#000000) O[1] -pin PC_plus_4_i O[1] -pin alu_out_comb_i I0[1]
load net PC_plus_4[20] -attr @rip(#000000) O[20] -pin PC_plus_4_i O[20] -pin alu_out_comb_i I0[20]
load net PC_plus_4[21] -attr @rip(#000000) O[21] -pin PC_plus_4_i O[21] -pin alu_out_comb_i I0[21]
load net PC_plus_4[22] -attr @rip(#000000) O[22] -pin PC_plus_4_i O[22] -pin alu_out_comb_i I0[22]
load net PC_plus_4[23] -attr @rip(#000000) O[23] -pin PC_plus_4_i O[23] -pin alu_out_comb_i I0[23]
load net PC_plus_4[24] -attr @rip(#000000) O[24] -pin PC_plus_4_i O[24] -pin alu_out_comb_i I0[24]
load net PC_plus_4[25] -attr @rip(#000000) O[25] -pin PC_plus_4_i O[25] -pin alu_out_comb_i I0[25]
load net PC_plus_4[26] -attr @rip(#000000) O[26] -pin PC_plus_4_i O[26] -pin alu_out_comb_i I0[26]
load net PC_plus_4[27] -attr @rip(#000000) O[27] -pin PC_plus_4_i O[27] -pin alu_out_comb_i I0[27]
load net PC_plus_4[28] -attr @rip(#000000) O[28] -pin PC_plus_4_i O[28] -pin alu_out_comb_i I0[28]
load net PC_plus_4[29] -attr @rip(#000000) O[29] -pin PC_plus_4_i O[29] -pin alu_out_comb_i I0[29]
load net PC_plus_4[2] -attr @rip(#000000) O[2] -pin PC_plus_4_i O[2] -pin alu_out_comb_i I0[2]
load net PC_plus_4[30] -attr @rip(#000000) O[30] -pin PC_plus_4_i O[30] -pin alu_out_comb_i I0[30]
load net PC_plus_4[31] -attr @rip(#000000) O[31] -pin PC_plus_4_i O[31] -pin alu_out_comb_i I0[31]
load net PC_plus_4[3] -attr @rip(#000000) O[3] -pin PC_plus_4_i O[3] -pin alu_out_comb_i I0[3]
load net PC_plus_4[4] -attr @rip(#000000) O[4] -pin PC_plus_4_i O[4] -pin alu_out_comb_i I0[4]
load net PC_plus_4[5] -attr @rip(#000000) O[5] -pin PC_plus_4_i O[5] -pin alu_out_comb_i I0[5]
load net PC_plus_4[6] -attr @rip(#000000) O[6] -pin PC_plus_4_i O[6] -pin alu_out_comb_i I0[6]
load net PC_plus_4[7] -attr @rip(#000000) O[7] -pin PC_plus_4_i O[7] -pin alu_out_comb_i I0[7]
load net PC_plus_4[8] -attr @rip(#000000) O[8] -pin PC_plus_4_i O[8] -pin alu_out_comb_i I0[8]
load net PC_plus_4[9] -attr @rip(#000000) O[9] -pin PC_plus_4_i O[9] -pin alu_out_comb_i I0[9]
load net alu_ctrl[0] -attr @rip(#000000) alu_ctrl[0] -pin alu_control_inst alu_ctrl[0] -pin alu_inst alu_ctrl[0]
load net alu_ctrl[1] -attr @rip(#000000) alu_ctrl[1] -pin alu_control_inst alu_ctrl[1] -pin alu_inst alu_ctrl[1]
load net alu_ctrl[2] -attr @rip(#000000) alu_ctrl[2] -pin alu_control_inst alu_ctrl[2] -pin alu_inst alu_ctrl[2]
load net alu_ctrl[3] -attr @rip(#000000) alu_ctrl[3] -pin alu_control_inst alu_ctrl[3] -pin alu_inst alu_ctrl[3]
load net alu_op[0] -attr @rip(#000000) alu_op[0] -pin alu_control_inst alu_op[0] -port alu_op[0]
load net alu_op[1] -attr @rip(#000000) alu_op[1] -pin alu_control_inst alu_op[1] -port alu_op[1]
load net alu_out[0] -attr @rip(#000000) O[0] -port alu_out[0] -pin alu_out_comb_i O[0]
load net alu_out[10] -attr @rip(#000000) O[10] -port alu_out[10] -pin alu_out_comb_i O[10]
load net alu_out[11] -attr @rip(#000000) O[11] -port alu_out[11] -pin alu_out_comb_i O[11]
load net alu_out[12] -attr @rip(#000000) O[12] -port alu_out[12] -pin alu_out_comb_i O[12]
load net alu_out[13] -attr @rip(#000000) O[13] -port alu_out[13] -pin alu_out_comb_i O[13]
load net alu_out[14] -attr @rip(#000000) O[14] -port alu_out[14] -pin alu_out_comb_i O[14]
load net alu_out[15] -attr @rip(#000000) O[15] -port alu_out[15] -pin alu_out_comb_i O[15]
load net alu_out[16] -attr @rip(#000000) O[16] -port alu_out[16] -pin alu_out_comb_i O[16]
load net alu_out[17] -attr @rip(#000000) O[17] -port alu_out[17] -pin alu_out_comb_i O[17]
load net alu_out[18] -attr @rip(#000000) O[18] -port alu_out[18] -pin alu_out_comb_i O[18]
load net alu_out[19] -attr @rip(#000000) O[19] -port alu_out[19] -pin alu_out_comb_i O[19]
load net alu_out[1] -attr @rip(#000000) O[1] -port alu_out[1] -pin alu_out_comb_i O[1]
load net alu_out[20] -attr @rip(#000000) O[20] -port alu_out[20] -pin alu_out_comb_i O[20]
load net alu_out[21] -attr @rip(#000000) O[21] -port alu_out[21] -pin alu_out_comb_i O[21]
load net alu_out[22] -attr @rip(#000000) O[22] -port alu_out[22] -pin alu_out_comb_i O[22]
load net alu_out[23] -attr @rip(#000000) O[23] -port alu_out[23] -pin alu_out_comb_i O[23]
load net alu_out[24] -attr @rip(#000000) O[24] -port alu_out[24] -pin alu_out_comb_i O[24]
load net alu_out[25] -attr @rip(#000000) O[25] -port alu_out[25] -pin alu_out_comb_i O[25]
load net alu_out[26] -attr @rip(#000000) O[26] -port alu_out[26] -pin alu_out_comb_i O[26]
load net alu_out[27] -attr @rip(#000000) O[27] -port alu_out[27] -pin alu_out_comb_i O[27]
load net alu_out[28] -attr @rip(#000000) O[28] -port alu_out[28] -pin alu_out_comb_i O[28]
load net alu_out[29] -attr @rip(#000000) O[29] -port alu_out[29] -pin alu_out_comb_i O[29]
load net alu_out[2] -attr @rip(#000000) O[2] -port alu_out[2] -pin alu_out_comb_i O[2]
load net alu_out[30] -attr @rip(#000000) O[30] -port alu_out[30] -pin alu_out_comb_i O[30]
load net alu_out[31] -attr @rip(#000000) O[31] -port alu_out[31] -pin alu_out_comb_i O[31]
load net alu_out[3] -attr @rip(#000000) O[3] -port alu_out[3] -pin alu_out_comb_i O[3]
load net alu_out[4] -attr @rip(#000000) O[4] -port alu_out[4] -pin alu_out_comb_i O[4]
load net alu_out[5] -attr @rip(#000000) O[5] -port alu_out[5] -pin alu_out_comb_i O[5]
load net alu_out[6] -attr @rip(#000000) O[6] -port alu_out[6] -pin alu_out_comb_i O[6]
load net alu_out[7] -attr @rip(#000000) O[7] -port alu_out[7] -pin alu_out_comb_i O[7]
load net alu_out[8] -attr @rip(#000000) O[8] -port alu_out[8] -pin alu_out_comb_i O[8]
load net alu_out[9] -attr @rip(#000000) O[9] -port alu_out[9] -pin alu_out_comb_i O[9]
load net alu_src -port alu_src -pin operandB_i S
netloc alu_src 1 0 2 NJ 560 NJ
load net branch -port branch -pin branch_resolve_i I1 -pin branch_taken_i S -pin pc_redirect_comb0_i I0 -pin prediction_mismatch_i I0
netloc branch 1 0 5 NJ 980 NJ 980 790 890 1177 980 1600
load net branch_addr[0] -attr @rip(#000000) O[0] -port branch_addr[0] -pin branch_addr_comb_i O[0] -pin target_mismatch0_i I1[0]
load net branch_addr[10] -attr @rip(#000000) O[10] -port branch_addr[10] -pin branch_addr_comb_i O[10] -pin target_mismatch0_i I1[10]
load net branch_addr[11] -attr @rip(#000000) O[11] -port branch_addr[11] -pin branch_addr_comb_i O[11] -pin target_mismatch0_i I1[11]
load net branch_addr[12] -attr @rip(#000000) O[12] -port branch_addr[12] -pin branch_addr_comb_i O[12] -pin target_mismatch0_i I1[12]
load net branch_addr[13] -attr @rip(#000000) O[13] -port branch_addr[13] -pin branch_addr_comb_i O[13] -pin target_mismatch0_i I1[13]
load net branch_addr[14] -attr @rip(#000000) O[14] -port branch_addr[14] -pin branch_addr_comb_i O[14] -pin target_mismatch0_i I1[14]
load net branch_addr[15] -attr @rip(#000000) O[15] -port branch_addr[15] -pin branch_addr_comb_i O[15] -pin target_mismatch0_i I1[15]
load net branch_addr[16] -attr @rip(#000000) O[16] -port branch_addr[16] -pin branch_addr_comb_i O[16] -pin target_mismatch0_i I1[16]
load net branch_addr[17] -attr @rip(#000000) O[17] -port branch_addr[17] -pin branch_addr_comb_i O[17] -pin target_mismatch0_i I1[17]
load net branch_addr[18] -attr @rip(#000000) O[18] -port branch_addr[18] -pin branch_addr_comb_i O[18] -pin target_mismatch0_i I1[18]
load net branch_addr[19] -attr @rip(#000000) O[19] -port branch_addr[19] -pin branch_addr_comb_i O[19] -pin target_mismatch0_i I1[19]
load net branch_addr[1] -attr @rip(#000000) O[1] -port branch_addr[1] -pin branch_addr_comb_i O[1] -pin target_mismatch0_i I1[1]
load net branch_addr[20] -attr @rip(#000000) O[20] -port branch_addr[20] -pin branch_addr_comb_i O[20] -pin target_mismatch0_i I1[20]
load net branch_addr[21] -attr @rip(#000000) O[21] -port branch_addr[21] -pin branch_addr_comb_i O[21] -pin target_mismatch0_i I1[21]
load net branch_addr[22] -attr @rip(#000000) O[22] -port branch_addr[22] -pin branch_addr_comb_i O[22] -pin target_mismatch0_i I1[22]
load net branch_addr[23] -attr @rip(#000000) O[23] -port branch_addr[23] -pin branch_addr_comb_i O[23] -pin target_mismatch0_i I1[23]
load net branch_addr[24] -attr @rip(#000000) O[24] -port branch_addr[24] -pin branch_addr_comb_i O[24] -pin target_mismatch0_i I1[24]
load net branch_addr[25] -attr @rip(#000000) O[25] -port branch_addr[25] -pin branch_addr_comb_i O[25] -pin target_mismatch0_i I1[25]
load net branch_addr[26] -attr @rip(#000000) O[26] -port branch_addr[26] -pin branch_addr_comb_i O[26] -pin target_mismatch0_i I1[26]
load net branch_addr[27] -attr @rip(#000000) O[27] -port branch_addr[27] -pin branch_addr_comb_i O[27] -pin target_mismatch0_i I1[27]
load net branch_addr[28] -attr @rip(#000000) O[28] -port branch_addr[28] -pin branch_addr_comb_i O[28] -pin target_mismatch0_i I1[28]
load net branch_addr[29] -attr @rip(#000000) O[29] -port branch_addr[29] -pin branch_addr_comb_i O[29] -pin target_mismatch0_i I1[29]
load net branch_addr[2] -attr @rip(#000000) O[2] -port branch_addr[2] -pin branch_addr_comb_i O[2] -pin target_mismatch0_i I1[2]
load net branch_addr[30] -attr @rip(#000000) O[30] -port branch_addr[30] -pin branch_addr_comb_i O[30] -pin target_mismatch0_i I1[30]
load net branch_addr[31] -attr @rip(#000000) O[31] -port branch_addr[31] -pin branch_addr_comb_i O[31] -pin target_mismatch0_i I1[31]
load net branch_addr[3] -attr @rip(#000000) O[3] -port branch_addr[3] -pin branch_addr_comb_i O[3] -pin target_mismatch0_i I1[3]
load net branch_addr[4] -attr @rip(#000000) O[4] -port branch_addr[4] -pin branch_addr_comb_i O[4] -pin target_mismatch0_i I1[4]
load net branch_addr[5] -attr @rip(#000000) O[5] -port branch_addr[5] -pin branch_addr_comb_i O[5] -pin target_mismatch0_i I1[5]
load net branch_addr[6] -attr @rip(#000000) O[6] -port branch_addr[6] -pin branch_addr_comb_i O[6] -pin target_mismatch0_i I1[6]
load net branch_addr[7] -attr @rip(#000000) O[7] -port branch_addr[7] -pin branch_addr_comb_i O[7] -pin target_mismatch0_i I1[7]
load net branch_addr[8] -attr @rip(#000000) O[8] -port branch_addr[8] -pin branch_addr_comb_i O[8] -pin target_mismatch0_i I1[8]
load net branch_addr[9] -attr @rip(#000000) O[9] -port branch_addr[9] -pin branch_addr_comb_i O[9] -pin target_mismatch0_i I1[9]
load net branch_addr_comb0[0] -attr @rip(#000000) O[0] -pin branch_addr_comb0_i O[0] -pin branch_addr_comb_i I0[0]
load net branch_addr_comb0[10] -attr @rip(#000000) O[10] -pin branch_addr_comb0_i O[10] -pin branch_addr_comb_i I0[10]
load net branch_addr_comb0[11] -attr @rip(#000000) O[11] -pin branch_addr_comb0_i O[11] -pin branch_addr_comb_i I0[11]
load net branch_addr_comb0[12] -attr @rip(#000000) O[12] -pin branch_addr_comb0_i O[12] -pin branch_addr_comb_i I0[12]
load net branch_addr_comb0[13] -attr @rip(#000000) O[13] -pin branch_addr_comb0_i O[13] -pin branch_addr_comb_i I0[13]
load net branch_addr_comb0[14] -attr @rip(#000000) O[14] -pin branch_addr_comb0_i O[14] -pin branch_addr_comb_i I0[14]
load net branch_addr_comb0[15] -attr @rip(#000000) O[15] -pin branch_addr_comb0_i O[15] -pin branch_addr_comb_i I0[15]
load net branch_addr_comb0[16] -attr @rip(#000000) O[16] -pin branch_addr_comb0_i O[16] -pin branch_addr_comb_i I0[16]
load net branch_addr_comb0[17] -attr @rip(#000000) O[17] -pin branch_addr_comb0_i O[17] -pin branch_addr_comb_i I0[17]
load net branch_addr_comb0[18] -attr @rip(#000000) O[18] -pin branch_addr_comb0_i O[18] -pin branch_addr_comb_i I0[18]
load net branch_addr_comb0[19] -attr @rip(#000000) O[19] -pin branch_addr_comb0_i O[19] -pin branch_addr_comb_i I0[19]
load net branch_addr_comb0[1] -attr @rip(#000000) O[1] -pin branch_addr_comb0_i O[1] -pin branch_addr_comb_i I0[1]
load net branch_addr_comb0[20] -attr @rip(#000000) O[20] -pin branch_addr_comb0_i O[20] -pin branch_addr_comb_i I0[20]
load net branch_addr_comb0[21] -attr @rip(#000000) O[21] -pin branch_addr_comb0_i O[21] -pin branch_addr_comb_i I0[21]
load net branch_addr_comb0[22] -attr @rip(#000000) O[22] -pin branch_addr_comb0_i O[22] -pin branch_addr_comb_i I0[22]
load net branch_addr_comb0[23] -attr @rip(#000000) O[23] -pin branch_addr_comb0_i O[23] -pin branch_addr_comb_i I0[23]
load net branch_addr_comb0[24] -attr @rip(#000000) O[24] -pin branch_addr_comb0_i O[24] -pin branch_addr_comb_i I0[24]
load net branch_addr_comb0[25] -attr @rip(#000000) O[25] -pin branch_addr_comb0_i O[25] -pin branch_addr_comb_i I0[25]
load net branch_addr_comb0[26] -attr @rip(#000000) O[26] -pin branch_addr_comb0_i O[26] -pin branch_addr_comb_i I0[26]
load net branch_addr_comb0[27] -attr @rip(#000000) O[27] -pin branch_addr_comb0_i O[27] -pin branch_addr_comb_i I0[27]
load net branch_addr_comb0[28] -attr @rip(#000000) O[28] -pin branch_addr_comb0_i O[28] -pin branch_addr_comb_i I0[28]
load net branch_addr_comb0[29] -attr @rip(#000000) O[29] -pin branch_addr_comb0_i O[29] -pin branch_addr_comb_i I0[29]
load net branch_addr_comb0[2] -attr @rip(#000000) O[2] -pin branch_addr_comb0_i O[2] -pin branch_addr_comb_i I0[2]
load net branch_addr_comb0[30] -attr @rip(#000000) O[30] -pin branch_addr_comb0_i O[30] -pin branch_addr_comb_i I0[30]
load net branch_addr_comb0[31] -attr @rip(#000000) O[31] -pin branch_addr_comb0_i O[31] -pin branch_addr_comb_i I0[31]
load net branch_addr_comb0[3] -attr @rip(#000000) O[3] -pin branch_addr_comb0_i O[3] -pin branch_addr_comb_i I0[3]
load net branch_addr_comb0[4] -attr @rip(#000000) O[4] -pin branch_addr_comb0_i O[4] -pin branch_addr_comb_i I0[4]
load net branch_addr_comb0[5] -attr @rip(#000000) O[5] -pin branch_addr_comb0_i O[5] -pin branch_addr_comb_i I0[5]
load net branch_addr_comb0[6] -attr @rip(#000000) O[6] -pin branch_addr_comb0_i O[6] -pin branch_addr_comb_i I0[6]
load net branch_addr_comb0[7] -attr @rip(#000000) O[7] -pin branch_addr_comb0_i O[7] -pin branch_addr_comb_i I0[7]
load net branch_addr_comb0[8] -attr @rip(#000000) O[8] -pin branch_addr_comb0_i O[8] -pin branch_addr_comb_i I0[8]
load net branch_addr_comb0[9] -attr @rip(#000000) O[9] -pin branch_addr_comb0_i O[9] -pin branch_addr_comb_i I0[9]
load net branch_addr_comb0_i__0_n_0 -attr @rip(#000000) O[31] -pin branch_addr_comb0_i__0 O[31] -pin branch_addr_comb_i I1[31]
load net branch_addr_comb0_i__0_n_1 -attr @rip(#000000) O[30] -pin branch_addr_comb0_i__0 O[30] -pin branch_addr_comb_i I1[30]
load net branch_addr_comb0_i__0_n_10 -attr @rip(#000000) O[21] -pin branch_addr_comb0_i__0 O[21] -pin branch_addr_comb_i I1[21]
load net branch_addr_comb0_i__0_n_11 -attr @rip(#000000) O[20] -pin branch_addr_comb0_i__0 O[20] -pin branch_addr_comb_i I1[20]
load net branch_addr_comb0_i__0_n_12 -attr @rip(#000000) O[19] -pin branch_addr_comb0_i__0 O[19] -pin branch_addr_comb_i I1[19]
load net branch_addr_comb0_i__0_n_13 -attr @rip(#000000) O[18] -pin branch_addr_comb0_i__0 O[18] -pin branch_addr_comb_i I1[18]
load net branch_addr_comb0_i__0_n_14 -attr @rip(#000000) O[17] -pin branch_addr_comb0_i__0 O[17] -pin branch_addr_comb_i I1[17]
load net branch_addr_comb0_i__0_n_15 -attr @rip(#000000) O[16] -pin branch_addr_comb0_i__0 O[16] -pin branch_addr_comb_i I1[16]
load net branch_addr_comb0_i__0_n_16 -attr @rip(#000000) O[15] -pin branch_addr_comb0_i__0 O[15] -pin branch_addr_comb_i I1[15]
load net branch_addr_comb0_i__0_n_17 -attr @rip(#000000) O[14] -pin branch_addr_comb0_i__0 O[14] -pin branch_addr_comb_i I1[14]
load net branch_addr_comb0_i__0_n_18 -attr @rip(#000000) O[13] -pin branch_addr_comb0_i__0 O[13] -pin branch_addr_comb_i I1[13]
load net branch_addr_comb0_i__0_n_19 -attr @rip(#000000) O[12] -pin branch_addr_comb0_i__0 O[12] -pin branch_addr_comb_i I1[12]
load net branch_addr_comb0_i__0_n_2 -attr @rip(#000000) O[29] -pin branch_addr_comb0_i__0 O[29] -pin branch_addr_comb_i I1[29]
load net branch_addr_comb0_i__0_n_20 -attr @rip(#000000) O[11] -pin branch_addr_comb0_i__0 O[11] -pin branch_addr_comb_i I1[11]
load net branch_addr_comb0_i__0_n_21 -attr @rip(#000000) O[10] -pin branch_addr_comb0_i__0 O[10] -pin branch_addr_comb_i I1[10]
load net branch_addr_comb0_i__0_n_22 -attr @rip(#000000) O[9] -pin branch_addr_comb0_i__0 O[9] -pin branch_addr_comb_i I1[9]
load net branch_addr_comb0_i__0_n_23 -attr @rip(#000000) O[8] -pin branch_addr_comb0_i__0 O[8] -pin branch_addr_comb_i I1[8]
load net branch_addr_comb0_i__0_n_24 -attr @rip(#000000) O[7] -pin branch_addr_comb0_i__0 O[7] -pin branch_addr_comb_i I1[7]
load net branch_addr_comb0_i__0_n_25 -attr @rip(#000000) O[6] -pin branch_addr_comb0_i__0 O[6] -pin branch_addr_comb_i I1[6]
load net branch_addr_comb0_i__0_n_26 -attr @rip(#000000) O[5] -pin branch_addr_comb0_i__0 O[5] -pin branch_addr_comb_i I1[5]
load net branch_addr_comb0_i__0_n_27 -attr @rip(#000000) O[4] -pin branch_addr_comb0_i__0 O[4] -pin branch_addr_comb_i I1[4]
load net branch_addr_comb0_i__0_n_28 -attr @rip(#000000) O[3] -pin branch_addr_comb0_i__0 O[3] -pin branch_addr_comb_i I1[3]
load net branch_addr_comb0_i__0_n_29 -attr @rip(#000000) O[2] -pin branch_addr_comb0_i__0 O[2] -pin branch_addr_comb_i I1[2]
load net branch_addr_comb0_i__0_n_3 -attr @rip(#000000) O[28] -pin branch_addr_comb0_i__0 O[28] -pin branch_addr_comb_i I1[28]
load net branch_addr_comb0_i__0_n_30 -attr @rip(#000000) O[1] -pin branch_addr_comb0_i__0 O[1] -pin branch_addr_comb_i I1[1]
load net branch_addr_comb0_i__0_n_31 -attr @rip(#000000) O[0] -pin branch_addr_comb0_i__0 O[0] -pin branch_addr_comb_i I1[0]
load net branch_addr_comb0_i__0_n_4 -attr @rip(#000000) O[27] -pin branch_addr_comb0_i__0 O[27] -pin branch_addr_comb_i I1[27]
load net branch_addr_comb0_i__0_n_5 -attr @rip(#000000) O[26] -pin branch_addr_comb0_i__0 O[26] -pin branch_addr_comb_i I1[26]
load net branch_addr_comb0_i__0_n_6 -attr @rip(#000000) O[25] -pin branch_addr_comb0_i__0 O[25] -pin branch_addr_comb_i I1[25]
load net branch_addr_comb0_i__0_n_7 -attr @rip(#000000) O[24] -pin branch_addr_comb0_i__0 O[24] -pin branch_addr_comb_i I1[24]
load net branch_addr_comb0_i__0_n_8 -attr @rip(#000000) O[23] -pin branch_addr_comb0_i__0 O[23] -pin branch_addr_comb_i I1[23]
load net branch_addr_comb0_i__0_n_9 -attr @rip(#000000) O[22] -pin branch_addr_comb0_i__0 O[22] -pin branch_addr_comb_i I1[22]
load net branch_resolve -port branch_resolve -pin branch_resolve_i O
netloc branch_resolve 1 5 1 NJ 920
load net branch_taken -port branch_taken -pin branch_taken_i O
netloc branch_taken 1 5 1 NJ 1080
load net branch_taken_comb -pin branch_taken_i I0 -pin branch_unit_inst branch_taken -pin pc_redirect_comb0_i I1 -pin prediction_mismatch0_i I1
netloc branch_taken_comb 1 2 3 770 1070 NJ 1070 N
load net flush_fetch -port flush_fetch -pin is_misprediction_i O
netloc flush_fetch 1 5 1 NJ 850
load net forwarded_rs1[0] -attr @rip(#000000) ForwardedDataA_o[0] -pin FU_inst ForwardedDataA_o[0] -pin branch_unit_inst a[0] -pin operandA0_i I1[0]
load net forwarded_rs1[10] -attr @rip(#000000) ForwardedDataA_o[10] -pin FU_inst ForwardedDataA_o[10] -pin branch_unit_inst a[10] -pin operandA0_i I1[10]
load net forwarded_rs1[11] -attr @rip(#000000) ForwardedDataA_o[11] -pin FU_inst ForwardedDataA_o[11] -pin branch_unit_inst a[11] -pin operandA0_i I1[11]
load net forwarded_rs1[12] -attr @rip(#000000) ForwardedDataA_o[12] -pin FU_inst ForwardedDataA_o[12] -pin branch_unit_inst a[12] -pin operandA0_i I1[12]
load net forwarded_rs1[13] -attr @rip(#000000) ForwardedDataA_o[13] -pin FU_inst ForwardedDataA_o[13] -pin branch_unit_inst a[13] -pin operandA0_i I1[13]
load net forwarded_rs1[14] -attr @rip(#000000) ForwardedDataA_o[14] -pin FU_inst ForwardedDataA_o[14] -pin branch_unit_inst a[14] -pin operandA0_i I1[14]
load net forwarded_rs1[15] -attr @rip(#000000) ForwardedDataA_o[15] -pin FU_inst ForwardedDataA_o[15] -pin branch_unit_inst a[15] -pin operandA0_i I1[15]
load net forwarded_rs1[16] -attr @rip(#000000) ForwardedDataA_o[16] -pin FU_inst ForwardedDataA_o[16] -pin branch_unit_inst a[16] -pin operandA0_i I1[16]
load net forwarded_rs1[17] -attr @rip(#000000) ForwardedDataA_o[17] -pin FU_inst ForwardedDataA_o[17] -pin branch_unit_inst a[17] -pin operandA0_i I1[17]
load net forwarded_rs1[18] -attr @rip(#000000) ForwardedDataA_o[18] -pin FU_inst ForwardedDataA_o[18] -pin branch_unit_inst a[18] -pin operandA0_i I1[18]
load net forwarded_rs1[19] -attr @rip(#000000) ForwardedDataA_o[19] -pin FU_inst ForwardedDataA_o[19] -pin branch_unit_inst a[19] -pin operandA0_i I1[19]
load net forwarded_rs1[1] -attr @rip(#000000) ForwardedDataA_o[1] -pin FU_inst ForwardedDataA_o[1] -pin branch_unit_inst a[1] -pin operandA0_i I1[1]
load net forwarded_rs1[20] -attr @rip(#000000) ForwardedDataA_o[20] -pin FU_inst ForwardedDataA_o[20] -pin branch_unit_inst a[20] -pin operandA0_i I1[20]
load net forwarded_rs1[21] -attr @rip(#000000) ForwardedDataA_o[21] -pin FU_inst ForwardedDataA_o[21] -pin branch_unit_inst a[21] -pin operandA0_i I1[21]
load net forwarded_rs1[22] -attr @rip(#000000) ForwardedDataA_o[22] -pin FU_inst ForwardedDataA_o[22] -pin branch_unit_inst a[22] -pin operandA0_i I1[22]
load net forwarded_rs1[23] -attr @rip(#000000) ForwardedDataA_o[23] -pin FU_inst ForwardedDataA_o[23] -pin branch_unit_inst a[23] -pin operandA0_i I1[23]
load net forwarded_rs1[24] -attr @rip(#000000) ForwardedDataA_o[24] -pin FU_inst ForwardedDataA_o[24] -pin branch_unit_inst a[24] -pin operandA0_i I1[24]
load net forwarded_rs1[25] -attr @rip(#000000) ForwardedDataA_o[25] -pin FU_inst ForwardedDataA_o[25] -pin branch_unit_inst a[25] -pin operandA0_i I1[25]
load net forwarded_rs1[26] -attr @rip(#000000) ForwardedDataA_o[26] -pin FU_inst ForwardedDataA_o[26] -pin branch_unit_inst a[26] -pin operandA0_i I1[26]
load net forwarded_rs1[27] -attr @rip(#000000) ForwardedDataA_o[27] -pin FU_inst ForwardedDataA_o[27] -pin branch_unit_inst a[27] -pin operandA0_i I1[27]
load net forwarded_rs1[28] -attr @rip(#000000) ForwardedDataA_o[28] -pin FU_inst ForwardedDataA_o[28] -pin branch_unit_inst a[28] -pin operandA0_i I1[28]
load net forwarded_rs1[29] -attr @rip(#000000) ForwardedDataA_o[29] -pin FU_inst ForwardedDataA_o[29] -pin branch_unit_inst a[29] -pin operandA0_i I1[29]
load net forwarded_rs1[2] -attr @rip(#000000) ForwardedDataA_o[2] -pin FU_inst ForwardedDataA_o[2] -pin branch_unit_inst a[2] -pin operandA0_i I1[2]
load net forwarded_rs1[30] -attr @rip(#000000) ForwardedDataA_o[30] -pin FU_inst ForwardedDataA_o[30] -pin branch_unit_inst a[30] -pin operandA0_i I1[30]
load net forwarded_rs1[31] -attr @rip(#000000) ForwardedDataA_o[31] -pin FU_inst ForwardedDataA_o[31] -pin branch_unit_inst a[31] -pin operandA0_i I1[31]
load net forwarded_rs1[3] -attr @rip(#000000) ForwardedDataA_o[3] -pin FU_inst ForwardedDataA_o[3] -pin branch_unit_inst a[3] -pin operandA0_i I1[3]
load net forwarded_rs1[4] -attr @rip(#000000) ForwardedDataA_o[4] -pin FU_inst ForwardedDataA_o[4] -pin branch_unit_inst a[4] -pin operandA0_i I1[4]
load net forwarded_rs1[5] -attr @rip(#000000) ForwardedDataA_o[5] -pin FU_inst ForwardedDataA_o[5] -pin branch_unit_inst a[5] -pin operandA0_i I1[5]
load net forwarded_rs1[6] -attr @rip(#000000) ForwardedDataA_o[6] -pin FU_inst ForwardedDataA_o[6] -pin branch_unit_inst a[6] -pin operandA0_i I1[6]
load net forwarded_rs1[7] -attr @rip(#000000) ForwardedDataA_o[7] -pin FU_inst ForwardedDataA_o[7] -pin branch_unit_inst a[7] -pin operandA0_i I1[7]
load net forwarded_rs1[8] -attr @rip(#000000) ForwardedDataA_o[8] -pin FU_inst ForwardedDataA_o[8] -pin branch_unit_inst a[8] -pin operandA0_i I1[8]
load net forwarded_rs1[9] -attr @rip(#000000) ForwardedDataA_o[9] -pin FU_inst ForwardedDataA_o[9] -pin branch_unit_inst a[9] -pin operandA0_i I1[9]
load net funct3[0] -attr @rip(#000000) funct3[0] -pin alu_control_inst funct3[0] -pin branch_unit_inst funct3[0] -port funct3[0]
load net funct3[1] -attr @rip(#000000) funct3[1] -pin alu_control_inst funct3[1] -pin branch_unit_inst funct3[1] -port funct3[1]
load net funct3[2] -attr @rip(#000000) funct3[2] -pin alu_control_inst funct3[2] -pin branch_unit_inst funct3[2] -port funct3[2]
load net funct7[0] -attr @rip(#000000) funct7[0] -pin alu_control_inst funct7[0] -port funct7[0]
load net funct7[1] -attr @rip(#000000) funct7[1] -pin alu_control_inst funct7[1] -port funct7[1]
load net funct7[2] -attr @rip(#000000) funct7[2] -pin alu_control_inst funct7[2] -port funct7[2]
load net funct7[3] -attr @rip(#000000) funct7[3] -pin alu_control_inst funct7[3] -port funct7[3]
load net funct7[4] -attr @rip(#000000) funct7[4] -pin alu_control_inst funct7[4] -port funct7[4]
load net funct7[5] -attr @rip(#000000) funct7[5] -pin alu_control_inst funct7[5] -port funct7[5]
load net funct7[6] -attr @rip(#000000) funct7[6] -pin alu_control_inst funct7[6] -port funct7[6]
load net immediate_data[0] -attr @rip(#000000) immediate_data[0] -pin branch_addr_comb0_i__0 I1[0] -port immediate_data[0] -pin operandB_i I0[0]
load net immediate_data[10] -attr @rip(#000000) immediate_data[10] -pin branch_addr_comb0_i__0 I1[10] -port immediate_data[10] -pin operandB_i I0[10]
load net immediate_data[11] -attr @rip(#000000) immediate_data[11] -pin branch_addr_comb0_i__0 I1[11] -port immediate_data[11] -pin operandB_i I0[11]
load net immediate_data[12] -attr @rip(#000000) immediate_data[12] -pin branch_addr_comb0_i__0 I1[12] -port immediate_data[12] -pin operandB_i I0[12]
load net immediate_data[13] -attr @rip(#000000) immediate_data[13] -pin branch_addr_comb0_i__0 I1[13] -port immediate_data[13] -pin operandB_i I0[13]
load net immediate_data[14] -attr @rip(#000000) immediate_data[14] -pin branch_addr_comb0_i__0 I1[14] -port immediate_data[14] -pin operandB_i I0[14]
load net immediate_data[15] -attr @rip(#000000) immediate_data[15] -pin branch_addr_comb0_i__0 I1[15] -port immediate_data[15] -pin operandB_i I0[15]
load net immediate_data[16] -attr @rip(#000000) immediate_data[16] -pin branch_addr_comb0_i__0 I1[16] -port immediate_data[16] -pin operandB_i I0[16]
load net immediate_data[17] -attr @rip(#000000) immediate_data[17] -pin branch_addr_comb0_i__0 I1[17] -port immediate_data[17] -pin operandB_i I0[17]
load net immediate_data[18] -attr @rip(#000000) immediate_data[18] -pin branch_addr_comb0_i__0 I1[18] -port immediate_data[18] -pin operandB_i I0[18]
load net immediate_data[19] -attr @rip(#000000) immediate_data[19] -pin branch_addr_comb0_i__0 I1[19] -port immediate_data[19] -pin operandB_i I0[19]
load net immediate_data[1] -attr @rip(#000000) immediate_data[1] -pin branch_addr_comb0_i__0 I1[1] -port immediate_data[1] -pin operandB_i I0[1]
load net immediate_data[20] -attr @rip(#000000) immediate_data[20] -pin branch_addr_comb0_i__0 I1[20] -port immediate_data[20] -pin operandB_i I0[20]
load net immediate_data[21] -attr @rip(#000000) immediate_data[21] -pin branch_addr_comb0_i__0 I1[21] -port immediate_data[21] -pin operandB_i I0[21]
load net immediate_data[22] -attr @rip(#000000) immediate_data[22] -pin branch_addr_comb0_i__0 I1[22] -port immediate_data[22] -pin operandB_i I0[22]
load net immediate_data[23] -attr @rip(#000000) immediate_data[23] -pin branch_addr_comb0_i__0 I1[23] -port immediate_data[23] -pin operandB_i I0[23]
load net immediate_data[24] -attr @rip(#000000) immediate_data[24] -pin branch_addr_comb0_i__0 I1[24] -port immediate_data[24] -pin operandB_i I0[24]
load net immediate_data[25] -attr @rip(#000000) immediate_data[25] -pin branch_addr_comb0_i__0 I1[25] -port immediate_data[25] -pin operandB_i I0[25]
load net immediate_data[26] -attr @rip(#000000) immediate_data[26] -pin branch_addr_comb0_i__0 I1[26] -port immediate_data[26] -pin operandB_i I0[26]
load net immediate_data[27] -attr @rip(#000000) immediate_data[27] -pin branch_addr_comb0_i__0 I1[27] -port immediate_data[27] -pin operandB_i I0[27]
load net immediate_data[28] -attr @rip(#000000) immediate_data[28] -pin branch_addr_comb0_i__0 I1[28] -port immediate_data[28] -pin operandB_i I0[28]
load net immediate_data[29] -attr @rip(#000000) immediate_data[29] -pin branch_addr_comb0_i__0 I1[29] -port immediate_data[29] -pin operandB_i I0[29]
load net immediate_data[2] -attr @rip(#000000) immediate_data[2] -pin branch_addr_comb0_i__0 I1[2] -port immediate_data[2] -pin operandB_i I0[2]
load net immediate_data[30] -attr @rip(#000000) immediate_data[30] -pin branch_addr_comb0_i__0 I1[30] -port immediate_data[30] -pin operandB_i I0[30]
load net immediate_data[31] -attr @rip(#000000) immediate_data[31] -pin branch_addr_comb0_i__0 I1[31] -port immediate_data[31] -pin operandB_i I0[31]
load net immediate_data[3] -attr @rip(#000000) immediate_data[3] -pin branch_addr_comb0_i__0 I1[3] -port immediate_data[3] -pin operandB_i I0[3]
load net immediate_data[4] -attr @rip(#000000) immediate_data[4] -pin branch_addr_comb0_i__0 I1[4] -port immediate_data[4] -pin operandB_i I0[4]
load net immediate_data[5] -attr @rip(#000000) immediate_data[5] -pin branch_addr_comb0_i__0 I1[5] -port immediate_data[5] -pin operandB_i I0[5]
load net immediate_data[6] -attr @rip(#000000) immediate_data[6] -pin branch_addr_comb0_i__0 I1[6] -port immediate_data[6] -pin operandB_i I0[6]
load net immediate_data[7] -attr @rip(#000000) immediate_data[7] -pin branch_addr_comb0_i__0 I1[7] -port immediate_data[7] -pin operandB_i I0[7]
load net immediate_data[8] -attr @rip(#000000) immediate_data[8] -pin branch_addr_comb0_i__0 I1[8] -port immediate_data[8] -pin operandB_i I0[8]
load net immediate_data[9] -attr @rip(#000000) immediate_data[9] -pin branch_addr_comb0_i__0 I1[9] -port immediate_data[9] -pin operandB_i I0[9]
load net is_jal -pin alu_out_comb1_i I0 -port is_jal
netloc is_jal 1 0 4 NJ 600 NJ 600 NJ 600 NJ
load net is_jalr -pin alu_out_comb1_i I1 -pin branch_addr_comb_i S -port is_jalr
netloc is_jalr 1 0 5 NJ 630 NJ 630 NJ 630 1217 660 NJ
load net is_lui -pin alu_control_inst is_lui -port is_lui -pin operandA_i S
netloc is_lui 1 0 2 NJ 890 310
load net is_lw -pin alu_control_inst is_lw -port is_lw
netloc is_lw 1 0 2 NJ 920 NJ
load net is_sw -pin alu_control_inst is_sw -port is_sw
netloc is_sw 1 0 2 NJ 950 370J
load net operandA0_i_n_0 -attr @rip(#000000) O[31] -pin operandA0_i O[31] -pin operandA_i I1[31]
load net operandA0_i_n_1 -attr @rip(#000000) O[30] -pin operandA0_i O[30] -pin operandA_i I1[30]
load net operandA0_i_n_10 -attr @rip(#000000) O[21] -pin operandA0_i O[21] -pin operandA_i I1[21]
load net operandA0_i_n_11 -attr @rip(#000000) O[20] -pin operandA0_i O[20] -pin operandA_i I1[20]
load net operandA0_i_n_12 -attr @rip(#000000) O[19] -pin operandA0_i O[19] -pin operandA_i I1[19]
load net operandA0_i_n_13 -attr @rip(#000000) O[18] -pin operandA0_i O[18] -pin operandA_i I1[18]
load net operandA0_i_n_14 -attr @rip(#000000) O[17] -pin operandA0_i O[17] -pin operandA_i I1[17]
load net operandA0_i_n_15 -attr @rip(#000000) O[16] -pin operandA0_i O[16] -pin operandA_i I1[16]
load net operandA0_i_n_16 -attr @rip(#000000) O[15] -pin operandA0_i O[15] -pin operandA_i I1[15]
load net operandA0_i_n_17 -attr @rip(#000000) O[14] -pin operandA0_i O[14] -pin operandA_i I1[14]
load net operandA0_i_n_18 -attr @rip(#000000) O[13] -pin operandA0_i O[13] -pin operandA_i I1[13]
load net operandA0_i_n_19 -attr @rip(#000000) O[12] -pin operandA0_i O[12] -pin operandA_i I1[12]
load net operandA0_i_n_2 -attr @rip(#000000) O[29] -pin operandA0_i O[29] -pin operandA_i I1[29]
load net operandA0_i_n_20 -attr @rip(#000000) O[11] -pin operandA0_i O[11] -pin operandA_i I1[11]
load net operandA0_i_n_21 -attr @rip(#000000) O[10] -pin operandA0_i O[10] -pin operandA_i I1[10]
load net operandA0_i_n_22 -attr @rip(#000000) O[9] -pin operandA0_i O[9] -pin operandA_i I1[9]
load net operandA0_i_n_23 -attr @rip(#000000) O[8] -pin operandA0_i O[8] -pin operandA_i I1[8]
load net operandA0_i_n_24 -attr @rip(#000000) O[7] -pin operandA0_i O[7] -pin operandA_i I1[7]
load net operandA0_i_n_25 -attr @rip(#000000) O[6] -pin operandA0_i O[6] -pin operandA_i I1[6]
load net operandA0_i_n_26 -attr @rip(#000000) O[5] -pin operandA0_i O[5] -pin operandA_i I1[5]
load net operandA0_i_n_27 -attr @rip(#000000) O[4] -pin operandA0_i O[4] -pin operandA_i I1[4]
load net operandA0_i_n_28 -attr @rip(#000000) O[3] -pin operandA0_i O[3] -pin operandA_i I1[3]
load net operandA0_i_n_29 -attr @rip(#000000) O[2] -pin operandA0_i O[2] -pin operandA_i I1[2]
load net operandA0_i_n_3 -attr @rip(#000000) O[28] -pin operandA0_i O[28] -pin operandA_i I1[28]
load net operandA0_i_n_30 -attr @rip(#000000) O[1] -pin operandA0_i O[1] -pin operandA_i I1[1]
load net operandA0_i_n_31 -attr @rip(#000000) O[0] -pin operandA0_i O[0] -pin operandA_i I1[0]
load net operandA0_i_n_4 -attr @rip(#000000) O[27] -pin operandA0_i O[27] -pin operandA_i I1[27]
load net operandA0_i_n_5 -attr @rip(#000000) O[26] -pin operandA0_i O[26] -pin operandA_i I1[26]
load net operandA0_i_n_6 -attr @rip(#000000) O[25] -pin operandA0_i O[25] -pin operandA_i I1[25]
load net operandA0_i_n_7 -attr @rip(#000000) O[24] -pin operandA0_i O[24] -pin operandA_i I1[24]
load net operandA0_i_n_8 -attr @rip(#000000) O[23] -pin operandA0_i O[23] -pin operandA_i I1[23]
load net operandA0_i_n_9 -attr @rip(#000000) O[22] -pin operandA0_i O[22] -pin operandA_i I1[22]
load net operandA[0] -attr @rip(#000000) O[0] -pin alu_inst a[0] -pin operandA_i O[0]
load net operandA[10] -attr @rip(#000000) O[10] -pin alu_inst a[10] -pin operandA_i O[10]
load net operandA[11] -attr @rip(#000000) O[11] -pin alu_inst a[11] -pin operandA_i O[11]
load net operandA[12] -attr @rip(#000000) O[12] -pin alu_inst a[12] -pin operandA_i O[12]
load net operandA[13] -attr @rip(#000000) O[13] -pin alu_inst a[13] -pin operandA_i O[13]
load net operandA[14] -attr @rip(#000000) O[14] -pin alu_inst a[14] -pin operandA_i O[14]
load net operandA[15] -attr @rip(#000000) O[15] -pin alu_inst a[15] -pin operandA_i O[15]
load net operandA[16] -attr @rip(#000000) O[16] -pin alu_inst a[16] -pin operandA_i O[16]
load net operandA[17] -attr @rip(#000000) O[17] -pin alu_inst a[17] -pin operandA_i O[17]
load net operandA[18] -attr @rip(#000000) O[18] -pin alu_inst a[18] -pin operandA_i O[18]
load net operandA[19] -attr @rip(#000000) O[19] -pin alu_inst a[19] -pin operandA_i O[19]
load net operandA[1] -attr @rip(#000000) O[1] -pin alu_inst a[1] -pin operandA_i O[1]
load net operandA[20] -attr @rip(#000000) O[20] -pin alu_inst a[20] -pin operandA_i O[20]
load net operandA[21] -attr @rip(#000000) O[21] -pin alu_inst a[21] -pin operandA_i O[21]
load net operandA[22] -attr @rip(#000000) O[22] -pin alu_inst a[22] -pin operandA_i O[22]
load net operandA[23] -attr @rip(#000000) O[23] -pin alu_inst a[23] -pin operandA_i O[23]
load net operandA[24] -attr @rip(#000000) O[24] -pin alu_inst a[24] -pin operandA_i O[24]
load net operandA[25] -attr @rip(#000000) O[25] -pin alu_inst a[25] -pin operandA_i O[25]
load net operandA[26] -attr @rip(#000000) O[26] -pin alu_inst a[26] -pin operandA_i O[26]
load net operandA[27] -attr @rip(#000000) O[27] -pin alu_inst a[27] -pin operandA_i O[27]
load net operandA[28] -attr @rip(#000000) O[28] -pin alu_inst a[28] -pin operandA_i O[28]
load net operandA[29] -attr @rip(#000000) O[29] -pin alu_inst a[29] -pin operandA_i O[29]
load net operandA[2] -attr @rip(#000000) O[2] -pin alu_inst a[2] -pin operandA_i O[2]
load net operandA[30] -attr @rip(#000000) O[30] -pin alu_inst a[30] -pin operandA_i O[30]
load net operandA[31] -attr @rip(#000000) O[31] -pin alu_inst a[31] -pin operandA_i O[31]
load net operandA[3] -attr @rip(#000000) O[3] -pin alu_inst a[3] -pin operandA_i O[3]
load net operandA[4] -attr @rip(#000000) O[4] -pin alu_inst a[4] -pin operandA_i O[4]
load net operandA[5] -attr @rip(#000000) O[5] -pin alu_inst a[5] -pin operandA_i O[5]
load net operandA[6] -attr @rip(#000000) O[6] -pin alu_inst a[6] -pin operandA_i O[6]
load net operandA[7] -attr @rip(#000000) O[7] -pin alu_inst a[7] -pin operandA_i O[7]
load net operandA[8] -attr @rip(#000000) O[8] -pin alu_inst a[8] -pin operandA_i O[8]
load net operandA[9] -attr @rip(#000000) O[9] -pin alu_inst a[9] -pin operandA_i O[9]
load net operandB[0] -attr @rip(#000000) O[0] -pin alu_inst b[0] -pin operandB_i O[0]
load net operandB[10] -attr @rip(#000000) O[10] -pin alu_inst b[10] -pin operandB_i O[10]
load net operandB[11] -attr @rip(#000000) O[11] -pin alu_inst b[11] -pin operandB_i O[11]
load net operandB[12] -attr @rip(#000000) O[12] -pin alu_inst b[12] -pin operandB_i O[12]
load net operandB[13] -attr @rip(#000000) O[13] -pin alu_inst b[13] -pin operandB_i O[13]
load net operandB[14] -attr @rip(#000000) O[14] -pin alu_inst b[14] -pin operandB_i O[14]
load net operandB[15] -attr @rip(#000000) O[15] -pin alu_inst b[15] -pin operandB_i O[15]
load net operandB[16] -attr @rip(#000000) O[16] -pin alu_inst b[16] -pin operandB_i O[16]
load net operandB[17] -attr @rip(#000000) O[17] -pin alu_inst b[17] -pin operandB_i O[17]
load net operandB[18] -attr @rip(#000000) O[18] -pin alu_inst b[18] -pin operandB_i O[18]
load net operandB[19] -attr @rip(#000000) O[19] -pin alu_inst b[19] -pin operandB_i O[19]
load net operandB[1] -attr @rip(#000000) O[1] -pin alu_inst b[1] -pin operandB_i O[1]
load net operandB[20] -attr @rip(#000000) O[20] -pin alu_inst b[20] -pin operandB_i O[20]
load net operandB[21] -attr @rip(#000000) O[21] -pin alu_inst b[21] -pin operandB_i O[21]
load net operandB[22] -attr @rip(#000000) O[22] -pin alu_inst b[22] -pin operandB_i O[22]
load net operandB[23] -attr @rip(#000000) O[23] -pin alu_inst b[23] -pin operandB_i O[23]
load net operandB[24] -attr @rip(#000000) O[24] -pin alu_inst b[24] -pin operandB_i O[24]
load net operandB[25] -attr @rip(#000000) O[25] -pin alu_inst b[25] -pin operandB_i O[25]
load net operandB[26] -attr @rip(#000000) O[26] -pin alu_inst b[26] -pin operandB_i O[26]
load net operandB[27] -attr @rip(#000000) O[27] -pin alu_inst b[27] -pin operandB_i O[27]
load net operandB[28] -attr @rip(#000000) O[28] -pin alu_inst b[28] -pin operandB_i O[28]
load net operandB[29] -attr @rip(#000000) O[29] -pin alu_inst b[29] -pin operandB_i O[29]
load net operandB[2] -attr @rip(#000000) O[2] -pin alu_inst b[2] -pin operandB_i O[2]
load net operandB[30] -attr @rip(#000000) O[30] -pin alu_inst b[30] -pin operandB_i O[30]
load net operandB[31] -attr @rip(#000000) O[31] -pin alu_inst b[31] -pin operandB_i O[31]
load net operandB[3] -attr @rip(#000000) O[3] -pin alu_inst b[3] -pin operandB_i O[3]
load net operandB[4] -attr @rip(#000000) O[4] -pin alu_inst b[4] -pin operandB_i O[4]
load net operandB[5] -attr @rip(#000000) O[5] -pin alu_inst b[5] -pin operandB_i O[5]
load net operandB[6] -attr @rip(#000000) O[6] -pin alu_inst b[6] -pin operandB_i O[6]
load net operandB[7] -attr @rip(#000000) O[7] -pin alu_inst b[7] -pin operandB_i O[7]
load net operandB[8] -attr @rip(#000000) O[8] -pin alu_inst b[8] -pin operandB_i O[8]
load net operandB[9] -attr @rip(#000000) O[9] -pin alu_inst b[9] -pin operandB_i O[9]
load net p_0_in -pin alu_out_comb1_i O -pin alu_out_comb_i S -pin branch_resolve_i I0 -pin pc_redirect_comb_i I0
netloc p_0_in 1 4 1 1620 500n
load net pc_redirect -port pc_redirect -pin pc_redirect_comb_i O
netloc pc_redirect 1 5 1 NJ 990
load net pc_redirect_comb0_i_n_0 -pin pc_redirect_comb0_i O -pin pc_redirect_comb_i I1 -pin target_mismatch_i I0
netloc pc_redirect_comb0_i_n_0 1 3 2 1197 1000 NJ
load net predicted_pc[0] -attr @rip(#000000) predicted_pc[0] -port predicted_pc[0] -pin target_mismatch0_i I0[0]
load net predicted_pc[10] -attr @rip(#000000) predicted_pc[10] -port predicted_pc[10] -pin target_mismatch0_i I0[10]
load net predicted_pc[11] -attr @rip(#000000) predicted_pc[11] -port predicted_pc[11] -pin target_mismatch0_i I0[11]
load net predicted_pc[12] -attr @rip(#000000) predicted_pc[12] -port predicted_pc[12] -pin target_mismatch0_i I0[12]
load net predicted_pc[13] -attr @rip(#000000) predicted_pc[13] -port predicted_pc[13] -pin target_mismatch0_i I0[13]
load net predicted_pc[14] -attr @rip(#000000) predicted_pc[14] -port predicted_pc[14] -pin target_mismatch0_i I0[14]
load net predicted_pc[15] -attr @rip(#000000) predicted_pc[15] -port predicted_pc[15] -pin target_mismatch0_i I0[15]
load net predicted_pc[16] -attr @rip(#000000) predicted_pc[16] -port predicted_pc[16] -pin target_mismatch0_i I0[16]
load net predicted_pc[17] -attr @rip(#000000) predicted_pc[17] -port predicted_pc[17] -pin target_mismatch0_i I0[17]
load net predicted_pc[18] -attr @rip(#000000) predicted_pc[18] -port predicted_pc[18] -pin target_mismatch0_i I0[18]
load net predicted_pc[19] -attr @rip(#000000) predicted_pc[19] -port predicted_pc[19] -pin target_mismatch0_i I0[19]
load net predicted_pc[1] -attr @rip(#000000) predicted_pc[1] -port predicted_pc[1] -pin target_mismatch0_i I0[1]
load net predicted_pc[20] -attr @rip(#000000) predicted_pc[20] -port predicted_pc[20] -pin target_mismatch0_i I0[20]
load net predicted_pc[21] -attr @rip(#000000) predicted_pc[21] -port predicted_pc[21] -pin target_mismatch0_i I0[21]
load net predicted_pc[22] -attr @rip(#000000) predicted_pc[22] -port predicted_pc[22] -pin target_mismatch0_i I0[22]
load net predicted_pc[23] -attr @rip(#000000) predicted_pc[23] -port predicted_pc[23] -pin target_mismatch0_i I0[23]
load net predicted_pc[24] -attr @rip(#000000) predicted_pc[24] -port predicted_pc[24] -pin target_mismatch0_i I0[24]
load net predicted_pc[25] -attr @rip(#000000) predicted_pc[25] -port predicted_pc[25] -pin target_mismatch0_i I0[25]
load net predicted_pc[26] -attr @rip(#000000) predicted_pc[26] -port predicted_pc[26] -pin target_mismatch0_i I0[26]
load net predicted_pc[27] -attr @rip(#000000) predicted_pc[27] -port predicted_pc[27] -pin target_mismatch0_i I0[27]
load net predicted_pc[28] -attr @rip(#000000) predicted_pc[28] -port predicted_pc[28] -pin target_mismatch0_i I0[28]
load net predicted_pc[29] -attr @rip(#000000) predicted_pc[29] -port predicted_pc[29] -pin target_mismatch0_i I0[29]
load net predicted_pc[2] -attr @rip(#000000) predicted_pc[2] -port predicted_pc[2] -pin target_mismatch0_i I0[2]
load net predicted_pc[30] -attr @rip(#000000) predicted_pc[30] -port predicted_pc[30] -pin target_mismatch0_i I0[30]
load net predicted_pc[31] -attr @rip(#000000) predicted_pc[31] -port predicted_pc[31] -pin target_mismatch0_i I0[31]
load net predicted_pc[3] -attr @rip(#000000) predicted_pc[3] -port predicted_pc[3] -pin target_mismatch0_i I0[3]
load net predicted_pc[4] -attr @rip(#000000) predicted_pc[4] -port predicted_pc[4] -pin target_mismatch0_i I0[4]
load net predicted_pc[5] -attr @rip(#000000) predicted_pc[5] -port predicted_pc[5] -pin target_mismatch0_i I0[5]
load net predicted_pc[6] -attr @rip(#000000) predicted_pc[6] -port predicted_pc[6] -pin target_mismatch0_i I0[6]
load net predicted_pc[7] -attr @rip(#000000) predicted_pc[7] -port predicted_pc[7] -pin target_mismatch0_i I0[7]
load net predicted_pc[8] -attr @rip(#000000) predicted_pc[8] -port predicted_pc[8] -pin target_mismatch0_i I0[8]
load net predicted_pc[9] -attr @rip(#000000) predicted_pc[9] -port predicted_pc[9] -pin target_mismatch0_i I0[9]
load net prediction_mismatch -pin is_misprediction_i I0 -pin prediction_mismatch_i O
netloc prediction_mismatch 1 4 1 1580 840n
load net prediction_mismatch0 -pin prediction_mismatch0_i O -pin prediction_mismatch_i I1
netloc prediction_mismatch0 1 3 1 1217 940n
load net prediction_valid -pin prediction_mismatch0_i I0 -port prediction_valid
netloc prediction_valid 1 0 3 NJ 1010 NJ 1010 NJ
load net raw_alu_out[0] -attr @rip(#000000) alu_out[0] -pin alu_inst alu_out[0] -pin alu_out_comb_i I1[0] -pin branch_addr_comb0_i I0[0]
load net raw_alu_out[10] -attr @rip(#000000) alu_out[10] -pin alu_inst alu_out[10] -pin alu_out_comb_i I1[10] -pin branch_addr_comb0_i I0[10]
load net raw_alu_out[11] -attr @rip(#000000) alu_out[11] -pin alu_inst alu_out[11] -pin alu_out_comb_i I1[11] -pin branch_addr_comb0_i I0[11]
load net raw_alu_out[12] -attr @rip(#000000) alu_out[12] -pin alu_inst alu_out[12] -pin alu_out_comb_i I1[12] -pin branch_addr_comb0_i I0[12]
load net raw_alu_out[13] -attr @rip(#000000) alu_out[13] -pin alu_inst alu_out[13] -pin alu_out_comb_i I1[13] -pin branch_addr_comb0_i I0[13]
load net raw_alu_out[14] -attr @rip(#000000) alu_out[14] -pin alu_inst alu_out[14] -pin alu_out_comb_i I1[14] -pin branch_addr_comb0_i I0[14]
load net raw_alu_out[15] -attr @rip(#000000) alu_out[15] -pin alu_inst alu_out[15] -pin alu_out_comb_i I1[15] -pin branch_addr_comb0_i I0[15]
load net raw_alu_out[16] -attr @rip(#000000) alu_out[16] -pin alu_inst alu_out[16] -pin alu_out_comb_i I1[16] -pin branch_addr_comb0_i I0[16]
load net raw_alu_out[17] -attr @rip(#000000) alu_out[17] -pin alu_inst alu_out[17] -pin alu_out_comb_i I1[17] -pin branch_addr_comb0_i I0[17]
load net raw_alu_out[18] -attr @rip(#000000) alu_out[18] -pin alu_inst alu_out[18] -pin alu_out_comb_i I1[18] -pin branch_addr_comb0_i I0[18]
load net raw_alu_out[19] -attr @rip(#000000) alu_out[19] -pin alu_inst alu_out[19] -pin alu_out_comb_i I1[19] -pin branch_addr_comb0_i I0[19]
load net raw_alu_out[1] -attr @rip(#000000) alu_out[1] -pin alu_inst alu_out[1] -pin alu_out_comb_i I1[1] -pin branch_addr_comb0_i I0[1]
load net raw_alu_out[20] -attr @rip(#000000) alu_out[20] -pin alu_inst alu_out[20] -pin alu_out_comb_i I1[20] -pin branch_addr_comb0_i I0[20]
load net raw_alu_out[21] -attr @rip(#000000) alu_out[21] -pin alu_inst alu_out[21] -pin alu_out_comb_i I1[21] -pin branch_addr_comb0_i I0[21]
load net raw_alu_out[22] -attr @rip(#000000) alu_out[22] -pin alu_inst alu_out[22] -pin alu_out_comb_i I1[22] -pin branch_addr_comb0_i I0[22]
load net raw_alu_out[23] -attr @rip(#000000) alu_out[23] -pin alu_inst alu_out[23] -pin alu_out_comb_i I1[23] -pin branch_addr_comb0_i I0[23]
load net raw_alu_out[24] -attr @rip(#000000) alu_out[24] -pin alu_inst alu_out[24] -pin alu_out_comb_i I1[24] -pin branch_addr_comb0_i I0[24]
load net raw_alu_out[25] -attr @rip(#000000) alu_out[25] -pin alu_inst alu_out[25] -pin alu_out_comb_i I1[25] -pin branch_addr_comb0_i I0[25]
load net raw_alu_out[26] -attr @rip(#000000) alu_out[26] -pin alu_inst alu_out[26] -pin alu_out_comb_i I1[26] -pin branch_addr_comb0_i I0[26]
load net raw_alu_out[27] -attr @rip(#000000) alu_out[27] -pin alu_inst alu_out[27] -pin alu_out_comb_i I1[27] -pin branch_addr_comb0_i I0[27]
load net raw_alu_out[28] -attr @rip(#000000) alu_out[28] -pin alu_inst alu_out[28] -pin alu_out_comb_i I1[28] -pin branch_addr_comb0_i I0[28]
load net raw_alu_out[29] -attr @rip(#000000) alu_out[29] -pin alu_inst alu_out[29] -pin alu_out_comb_i I1[29] -pin branch_addr_comb0_i I0[29]
load net raw_alu_out[2] -attr @rip(#000000) alu_out[2] -pin alu_inst alu_out[2] -pin alu_out_comb_i I1[2] -pin branch_addr_comb0_i I0[2]
load net raw_alu_out[30] -attr @rip(#000000) alu_out[30] -pin alu_inst alu_out[30] -pin alu_out_comb_i I1[30] -pin branch_addr_comb0_i I0[30]
load net raw_alu_out[31] -attr @rip(#000000) alu_out[31] -pin alu_inst alu_out[31] -pin alu_out_comb_i I1[31] -pin branch_addr_comb0_i I0[31]
load net raw_alu_out[3] -attr @rip(#000000) alu_out[3] -pin alu_inst alu_out[3] -pin alu_out_comb_i I1[3] -pin branch_addr_comb0_i I0[3]
load net raw_alu_out[4] -attr @rip(#000000) alu_out[4] -pin alu_inst alu_out[4] -pin alu_out_comb_i I1[4] -pin branch_addr_comb0_i I0[4]
load net raw_alu_out[5] -attr @rip(#000000) alu_out[5] -pin alu_inst alu_out[5] -pin alu_out_comb_i I1[5] -pin branch_addr_comb0_i I0[5]
load net raw_alu_out[6] -attr @rip(#000000) alu_out[6] -pin alu_inst alu_out[6] -pin alu_out_comb_i I1[6] -pin branch_addr_comb0_i I0[6]
load net raw_alu_out[7] -attr @rip(#000000) alu_out[7] -pin alu_inst alu_out[7] -pin alu_out_comb_i I1[7] -pin branch_addr_comb0_i I0[7]
load net raw_alu_out[8] -attr @rip(#000000) alu_out[8] -pin alu_inst alu_out[8] -pin alu_out_comb_i I1[8] -pin branch_addr_comb0_i I0[8]
load net raw_alu_out[9] -attr @rip(#000000) alu_out[9] -pin alu_inst alu_out[9] -pin alu_out_comb_i I1[9] -pin branch_addr_comb0_i I0[9]
load net rs1_data[0] -attr @rip(#000000) rs1_data[0] -pin FU_inst rs1_data[0] -port rs1_data[0]
load net rs1_data[10] -attr @rip(#000000) rs1_data[10] -pin FU_inst rs1_data[10] -port rs1_data[10]
load net rs1_data[11] -attr @rip(#000000) rs1_data[11] -pin FU_inst rs1_data[11] -port rs1_data[11]
load net rs1_data[12] -attr @rip(#000000) rs1_data[12] -pin FU_inst rs1_data[12] -port rs1_data[12]
load net rs1_data[13] -attr @rip(#000000) rs1_data[13] -pin FU_inst rs1_data[13] -port rs1_data[13]
load net rs1_data[14] -attr @rip(#000000) rs1_data[14] -pin FU_inst rs1_data[14] -port rs1_data[14]
load net rs1_data[15] -attr @rip(#000000) rs1_data[15] -pin FU_inst rs1_data[15] -port rs1_data[15]
load net rs1_data[16] -attr @rip(#000000) rs1_data[16] -pin FU_inst rs1_data[16] -port rs1_data[16]
load net rs1_data[17] -attr @rip(#000000) rs1_data[17] -pin FU_inst rs1_data[17] -port rs1_data[17]
load net rs1_data[18] -attr @rip(#000000) rs1_data[18] -pin FU_inst rs1_data[18] -port rs1_data[18]
load net rs1_data[19] -attr @rip(#000000) rs1_data[19] -pin FU_inst rs1_data[19] -port rs1_data[19]
load net rs1_data[1] -attr @rip(#000000) rs1_data[1] -pin FU_inst rs1_data[1] -port rs1_data[1]
load net rs1_data[20] -attr @rip(#000000) rs1_data[20] -pin FU_inst rs1_data[20] -port rs1_data[20]
load net rs1_data[21] -attr @rip(#000000) rs1_data[21] -pin FU_inst rs1_data[21] -port rs1_data[21]
load net rs1_data[22] -attr @rip(#000000) rs1_data[22] -pin FU_inst rs1_data[22] -port rs1_data[22]
load net rs1_data[23] -attr @rip(#000000) rs1_data[23] -pin FU_inst rs1_data[23] -port rs1_data[23]
load net rs1_data[24] -attr @rip(#000000) rs1_data[24] -pin FU_inst rs1_data[24] -port rs1_data[24]
load net rs1_data[25] -attr @rip(#000000) rs1_data[25] -pin FU_inst rs1_data[25] -port rs1_data[25]
load net rs1_data[26] -attr @rip(#000000) rs1_data[26] -pin FU_inst rs1_data[26] -port rs1_data[26]
load net rs1_data[27] -attr @rip(#000000) rs1_data[27] -pin FU_inst rs1_data[27] -port rs1_data[27]
load net rs1_data[28] -attr @rip(#000000) rs1_data[28] -pin FU_inst rs1_data[28] -port rs1_data[28]
load net rs1_data[29] -attr @rip(#000000) rs1_data[29] -pin FU_inst rs1_data[29] -port rs1_data[29]
load net rs1_data[2] -attr @rip(#000000) rs1_data[2] -pin FU_inst rs1_data[2] -port rs1_data[2]
load net rs1_data[30] -attr @rip(#000000) rs1_data[30] -pin FU_inst rs1_data[30] -port rs1_data[30]
load net rs1_data[31] -attr @rip(#000000) rs1_data[31] -pin FU_inst rs1_data[31] -port rs1_data[31]
load net rs1_data[3] -attr @rip(#000000) rs1_data[3] -pin FU_inst rs1_data[3] -port rs1_data[3]
load net rs1_data[4] -attr @rip(#000000) rs1_data[4] -pin FU_inst rs1_data[4] -port rs1_data[4]
load net rs1_data[5] -attr @rip(#000000) rs1_data[5] -pin FU_inst rs1_data[5] -port rs1_data[5]
load net rs1_data[6] -attr @rip(#000000) rs1_data[6] -pin FU_inst rs1_data[6] -port rs1_data[6]
load net rs1_data[7] -attr @rip(#000000) rs1_data[7] -pin FU_inst rs1_data[7] -port rs1_data[7]
load net rs1_data[8] -attr @rip(#000000) rs1_data[8] -pin FU_inst rs1_data[8] -port rs1_data[8]
load net rs1_data[9] -attr @rip(#000000) rs1_data[9] -pin FU_inst rs1_data[9] -port rs1_data[9]
load net rs2_data[0] -attr @rip(#000000) rs2_data[0] -pin FU_inst rs2_data[0] -port rs2_data[0]
load net rs2_data[10] -attr @rip(#000000) rs2_data[10] -pin FU_inst rs2_data[10] -port rs2_data[10]
load net rs2_data[11] -attr @rip(#000000) rs2_data[11] -pin FU_inst rs2_data[11] -port rs2_data[11]
load net rs2_data[12] -attr @rip(#000000) rs2_data[12] -pin FU_inst rs2_data[12] -port rs2_data[12]
load net rs2_data[13] -attr @rip(#000000) rs2_data[13] -pin FU_inst rs2_data[13] -port rs2_data[13]
load net rs2_data[14] -attr @rip(#000000) rs2_data[14] -pin FU_inst rs2_data[14] -port rs2_data[14]
load net rs2_data[15] -attr @rip(#000000) rs2_data[15] -pin FU_inst rs2_data[15] -port rs2_data[15]
load net rs2_data[16] -attr @rip(#000000) rs2_data[16] -pin FU_inst rs2_data[16] -port rs2_data[16]
load net rs2_data[17] -attr @rip(#000000) rs2_data[17] -pin FU_inst rs2_data[17] -port rs2_data[17]
load net rs2_data[18] -attr @rip(#000000) rs2_data[18] -pin FU_inst rs2_data[18] -port rs2_data[18]
load net rs2_data[19] -attr @rip(#000000) rs2_data[19] -pin FU_inst rs2_data[19] -port rs2_data[19]
load net rs2_data[1] -attr @rip(#000000) rs2_data[1] -pin FU_inst rs2_data[1] -port rs2_data[1]
load net rs2_data[20] -attr @rip(#000000) rs2_data[20] -pin FU_inst rs2_data[20] -port rs2_data[20]
load net rs2_data[21] -attr @rip(#000000) rs2_data[21] -pin FU_inst rs2_data[21] -port rs2_data[21]
load net rs2_data[22] -attr @rip(#000000) rs2_data[22] -pin FU_inst rs2_data[22] -port rs2_data[22]
load net rs2_data[23] -attr @rip(#000000) rs2_data[23] -pin FU_inst rs2_data[23] -port rs2_data[23]
load net rs2_data[24] -attr @rip(#000000) rs2_data[24] -pin FU_inst rs2_data[24] -port rs2_data[24]
load net rs2_data[25] -attr @rip(#000000) rs2_data[25] -pin FU_inst rs2_data[25] -port rs2_data[25]
load net rs2_data[26] -attr @rip(#000000) rs2_data[26] -pin FU_inst rs2_data[26] -port rs2_data[26]
load net rs2_data[27] -attr @rip(#000000) rs2_data[27] -pin FU_inst rs2_data[27] -port rs2_data[27]
load net rs2_data[28] -attr @rip(#000000) rs2_data[28] -pin FU_inst rs2_data[28] -port rs2_data[28]
load net rs2_data[29] -attr @rip(#000000) rs2_data[29] -pin FU_inst rs2_data[29] -port rs2_data[29]
load net rs2_data[2] -attr @rip(#000000) rs2_data[2] -pin FU_inst rs2_data[2] -port rs2_data[2]
load net rs2_data[30] -attr @rip(#000000) rs2_data[30] -pin FU_inst rs2_data[30] -port rs2_data[30]
load net rs2_data[31] -attr @rip(#000000) rs2_data[31] -pin FU_inst rs2_data[31] -port rs2_data[31]
load net rs2_data[3] -attr @rip(#000000) rs2_data[3] -pin FU_inst rs2_data[3] -port rs2_data[3]
load net rs2_data[4] -attr @rip(#000000) rs2_data[4] -pin FU_inst rs2_data[4] -port rs2_data[4]
load net rs2_data[5] -attr @rip(#000000) rs2_data[5] -pin FU_inst rs2_data[5] -port rs2_data[5]
load net rs2_data[6] -attr @rip(#000000) rs2_data[6] -pin FU_inst rs2_data[6] -port rs2_data[6]
load net rs2_data[7] -attr @rip(#000000) rs2_data[7] -pin FU_inst rs2_data[7] -port rs2_data[7]
load net rs2_data[8] -attr @rip(#000000) rs2_data[8] -pin FU_inst rs2_data[8] -port rs2_data[8]
load net rs2_data[9] -attr @rip(#000000) rs2_data[9] -pin FU_inst rs2_data[9] -port rs2_data[9]
load net rs2_mem_data[0] -attr @rip(#000000) ForwardedDataB_o[0] -pin FU_inst ForwardedDataB_o[0] -pin branch_unit_inst b[0] -pin operandB_i I1[0] -port rs2_mem_data[0]
load net rs2_mem_data[10] -attr @rip(#000000) ForwardedDataB_o[10] -pin FU_inst ForwardedDataB_o[10] -pin branch_unit_inst b[10] -pin operandB_i I1[10] -port rs2_mem_data[10]
load net rs2_mem_data[11] -attr @rip(#000000) ForwardedDataB_o[11] -pin FU_inst ForwardedDataB_o[11] -pin branch_unit_inst b[11] -pin operandB_i I1[11] -port rs2_mem_data[11]
load net rs2_mem_data[12] -attr @rip(#000000) ForwardedDataB_o[12] -pin FU_inst ForwardedDataB_o[12] -pin branch_unit_inst b[12] -pin operandB_i I1[12] -port rs2_mem_data[12]
load net rs2_mem_data[13] -attr @rip(#000000) ForwardedDataB_o[13] -pin FU_inst ForwardedDataB_o[13] -pin branch_unit_inst b[13] -pin operandB_i I1[13] -port rs2_mem_data[13]
load net rs2_mem_data[14] -attr @rip(#000000) ForwardedDataB_o[14] -pin FU_inst ForwardedDataB_o[14] -pin branch_unit_inst b[14] -pin operandB_i I1[14] -port rs2_mem_data[14]
load net rs2_mem_data[15] -attr @rip(#000000) ForwardedDataB_o[15] -pin FU_inst ForwardedDataB_o[15] -pin branch_unit_inst b[15] -pin operandB_i I1[15] -port rs2_mem_data[15]
load net rs2_mem_data[16] -attr @rip(#000000) ForwardedDataB_o[16] -pin FU_inst ForwardedDataB_o[16] -pin branch_unit_inst b[16] -pin operandB_i I1[16] -port rs2_mem_data[16]
load net rs2_mem_data[17] -attr @rip(#000000) ForwardedDataB_o[17] -pin FU_inst ForwardedDataB_o[17] -pin branch_unit_inst b[17] -pin operandB_i I1[17] -port rs2_mem_data[17]
load net rs2_mem_data[18] -attr @rip(#000000) ForwardedDataB_o[18] -pin FU_inst ForwardedDataB_o[18] -pin branch_unit_inst b[18] -pin operandB_i I1[18] -port rs2_mem_data[18]
load net rs2_mem_data[19] -attr @rip(#000000) ForwardedDataB_o[19] -pin FU_inst ForwardedDataB_o[19] -pin branch_unit_inst b[19] -pin operandB_i I1[19] -port rs2_mem_data[19]
load net rs2_mem_data[1] -attr @rip(#000000) ForwardedDataB_o[1] -pin FU_inst ForwardedDataB_o[1] -pin branch_unit_inst b[1] -pin operandB_i I1[1] -port rs2_mem_data[1]
load net rs2_mem_data[20] -attr @rip(#000000) ForwardedDataB_o[20] -pin FU_inst ForwardedDataB_o[20] -pin branch_unit_inst b[20] -pin operandB_i I1[20] -port rs2_mem_data[20]
load net rs2_mem_data[21] -attr @rip(#000000) ForwardedDataB_o[21] -pin FU_inst ForwardedDataB_o[21] -pin branch_unit_inst b[21] -pin operandB_i I1[21] -port rs2_mem_data[21]
load net rs2_mem_data[22] -attr @rip(#000000) ForwardedDataB_o[22] -pin FU_inst ForwardedDataB_o[22] -pin branch_unit_inst b[22] -pin operandB_i I1[22] -port rs2_mem_data[22]
load net rs2_mem_data[23] -attr @rip(#000000) ForwardedDataB_o[23] -pin FU_inst ForwardedDataB_o[23] -pin branch_unit_inst b[23] -pin operandB_i I1[23] -port rs2_mem_data[23]
load net rs2_mem_data[24] -attr @rip(#000000) ForwardedDataB_o[24] -pin FU_inst ForwardedDataB_o[24] -pin branch_unit_inst b[24] -pin operandB_i I1[24] -port rs2_mem_data[24]
load net rs2_mem_data[25] -attr @rip(#000000) ForwardedDataB_o[25] -pin FU_inst ForwardedDataB_o[25] -pin branch_unit_inst b[25] -pin operandB_i I1[25] -port rs2_mem_data[25]
load net rs2_mem_data[26] -attr @rip(#000000) ForwardedDataB_o[26] -pin FU_inst ForwardedDataB_o[26] -pin branch_unit_inst b[26] -pin operandB_i I1[26] -port rs2_mem_data[26]
load net rs2_mem_data[27] -attr @rip(#000000) ForwardedDataB_o[27] -pin FU_inst ForwardedDataB_o[27] -pin branch_unit_inst b[27] -pin operandB_i I1[27] -port rs2_mem_data[27]
load net rs2_mem_data[28] -attr @rip(#000000) ForwardedDataB_o[28] -pin FU_inst ForwardedDataB_o[28] -pin branch_unit_inst b[28] -pin operandB_i I1[28] -port rs2_mem_data[28]
load net rs2_mem_data[29] -attr @rip(#000000) ForwardedDataB_o[29] -pin FU_inst ForwardedDataB_o[29] -pin branch_unit_inst b[29] -pin operandB_i I1[29] -port rs2_mem_data[29]
load net rs2_mem_data[2] -attr @rip(#000000) ForwardedDataB_o[2] -pin FU_inst ForwardedDataB_o[2] -pin branch_unit_inst b[2] -pin operandB_i I1[2] -port rs2_mem_data[2]
load net rs2_mem_data[30] -attr @rip(#000000) ForwardedDataB_o[30] -pin FU_inst ForwardedDataB_o[30] -pin branch_unit_inst b[30] -pin operandB_i I1[30] -port rs2_mem_data[30]
load net rs2_mem_data[31] -attr @rip(#000000) ForwardedDataB_o[31] -pin FU_inst ForwardedDataB_o[31] -pin branch_unit_inst b[31] -pin operandB_i I1[31] -port rs2_mem_data[31]
load net rs2_mem_data[3] -attr @rip(#000000) ForwardedDataB_o[3] -pin FU_inst ForwardedDataB_o[3] -pin branch_unit_inst b[3] -pin operandB_i I1[3] -port rs2_mem_data[3]
load net rs2_mem_data[4] -attr @rip(#000000) ForwardedDataB_o[4] -pin FU_inst ForwardedDataB_o[4] -pin branch_unit_inst b[4] -pin operandB_i I1[4] -port rs2_mem_data[4]
load net rs2_mem_data[5] -attr @rip(#000000) ForwardedDataB_o[5] -pin FU_inst ForwardedDataB_o[5] -pin branch_unit_inst b[5] -pin operandB_i I1[5] -port rs2_mem_data[5]
load net rs2_mem_data[6] -attr @rip(#000000) ForwardedDataB_o[6] -pin FU_inst ForwardedDataB_o[6] -pin branch_unit_inst b[6] -pin operandB_i I1[6] -port rs2_mem_data[6]
load net rs2_mem_data[7] -attr @rip(#000000) ForwardedDataB_o[7] -pin FU_inst ForwardedDataB_o[7] -pin branch_unit_inst b[7] -pin operandB_i I1[7] -port rs2_mem_data[7]
load net rs2_mem_data[8] -attr @rip(#000000) ForwardedDataB_o[8] -pin FU_inst ForwardedDataB_o[8] -pin branch_unit_inst b[8] -pin operandB_i I1[8] -port rs2_mem_data[8]
load net rs2_mem_data[9] -attr @rip(#000000) ForwardedDataB_o[9] -pin FU_inst ForwardedDataB_o[9] -pin branch_unit_inst b[9] -pin operandB_i I1[9] -port rs2_mem_data[9]
load net target_mismatch -pin is_misprediction_i I1 -pin target_mismatch_i O
netloc target_mismatch 1 4 1 N 860
load net target_mismatch0 -pin target_mismatch0_i O -pin target_mismatch_i I1
netloc target_mismatch0 1 3 1 1090 840n
load net alu_inst|<const0> -ground -attr @name <const0> -pin alu_inst|alu_out0_i__2 I0[1] -pin alu_inst|alu_out0_i__2 I1[1] -pin alu_inst|alu_out0_i__2 I1[0] -pin alu_inst|alu_out0_i__3 I0[1] -pin alu_inst|alu_out0_i__3 I1[1] -pin alu_inst|alu_out0_i__3 I1[0] -pin alu_inst|alu_out_i I11[31] -pin alu_inst|alu_out_i I11[30] -pin alu_inst|alu_out_i I11[29] -pin alu_inst|alu_out_i I11[28] -pin alu_inst|alu_out_i I11[27] -pin alu_inst|alu_out_i I11[26] -pin alu_inst|alu_out_i I11[25] -pin alu_inst|alu_out_i I11[24] -pin alu_inst|alu_out_i I11[23] -pin alu_inst|alu_out_i I11[22] -pin alu_inst|alu_out_i I11[21] -pin alu_inst|alu_out_i I11[20] -pin alu_inst|alu_out_i I11[19] -pin alu_inst|alu_out_i I11[18] -pin alu_inst|alu_out_i I11[17] -pin alu_inst|alu_out_i I11[16] -pin alu_inst|alu_out_i I11[15] -pin alu_inst|alu_out_i I11[14] -pin alu_inst|alu_out_i I11[13] -pin alu_inst|alu_out_i I11[12] -pin alu_inst|alu_out_i I11[11] -pin alu_inst|alu_out_i I11[10] -pin alu_inst|alu_out_i I11[9] -pin alu_inst|alu_out_i I11[8] -pin alu_inst|alu_out_i I11[7] -pin alu_inst|alu_out_i I11[6] -pin alu_inst|alu_out_i I11[5] -pin alu_inst|alu_out_i I11[4] -pin alu_inst|alu_out_i I11[3] -pin alu_inst|alu_out_i I11[2] -pin alu_inst|alu_out_i I11[1] -pin alu_inst|alu_out_i I11[0]
load net alu_inst|<const1> -power -attr @rip 0 -attr @name <const1> -pin alu_inst|alu_out0_i__1 I2 -pin alu_inst|alu_out0_i__2 I0[0] -pin alu_inst|alu_out0_i__3 I0[0] -pin alu_inst|alu_out0_i__5 I2 -pin alu_inst|alu_out0_i__6 I2
load net alu_inst|a[0] -attr @rip a[0] -attr @name a[0] -hierPin alu_inst a[0] -pin alu_inst|alu_out0_i I0[0] -pin alu_inst|alu_out0_i__0 I0[0] -pin alu_inst|alu_out0_i__1 I0[0] -pin alu_inst|alu_out0_i__4 I0[0] -pin alu_inst|alu_out0_i__5 I0[0] -pin alu_inst|alu_out0_i__6 I0[0] -pin alu_inst|alu_out0_i__7 I0[0] -pin alu_inst|alu_out0_i__8 I0[0] -pin alu_inst|alu_out2_i I0[0] -pin alu_inst|alu_out2_i__0 I0[0]
load net alu_inst|a[10] -attr @rip a[10] -attr @name a[10] -hierPin alu_inst a[10] -pin alu_inst|alu_out0_i I0[10] -pin alu_inst|alu_out0_i__0 I0[10] -pin alu_inst|alu_out0_i__1 I0[10] -pin alu_inst|alu_out0_i__4 I0[10] -pin alu_inst|alu_out0_i__5 I0[10] -pin alu_inst|alu_out0_i__6 I0[10] -pin alu_inst|alu_out0_i__7 I0[10] -pin alu_inst|alu_out0_i__8 I0[10] -pin alu_inst|alu_out2_i I0[10] -pin alu_inst|alu_out2_i__0 I0[10]
load net alu_inst|a[11] -attr @rip a[11] -attr @name a[11] -hierPin alu_inst a[11] -pin alu_inst|alu_out0_i I0[11] -pin alu_inst|alu_out0_i__0 I0[11] -pin alu_inst|alu_out0_i__1 I0[11] -pin alu_inst|alu_out0_i__4 I0[11] -pin alu_inst|alu_out0_i__5 I0[11] -pin alu_inst|alu_out0_i__6 I0[11] -pin alu_inst|alu_out0_i__7 I0[11] -pin alu_inst|alu_out0_i__8 I0[11] -pin alu_inst|alu_out2_i I0[11] -pin alu_inst|alu_out2_i__0 I0[11]
load net alu_inst|a[12] -attr @rip a[12] -attr @name a[12] -hierPin alu_inst a[12] -pin alu_inst|alu_out0_i I0[12] -pin alu_inst|alu_out0_i__0 I0[12] -pin alu_inst|alu_out0_i__1 I0[12] -pin alu_inst|alu_out0_i__4 I0[12] -pin alu_inst|alu_out0_i__5 I0[12] -pin alu_inst|alu_out0_i__6 I0[12] -pin alu_inst|alu_out0_i__7 I0[12] -pin alu_inst|alu_out0_i__8 I0[12] -pin alu_inst|alu_out2_i I0[12] -pin alu_inst|alu_out2_i__0 I0[12]
load net alu_inst|a[13] -attr @rip a[13] -attr @name a[13] -hierPin alu_inst a[13] -pin alu_inst|alu_out0_i I0[13] -pin alu_inst|alu_out0_i__0 I0[13] -pin alu_inst|alu_out0_i__1 I0[13] -pin alu_inst|alu_out0_i__4 I0[13] -pin alu_inst|alu_out0_i__5 I0[13] -pin alu_inst|alu_out0_i__6 I0[13] -pin alu_inst|alu_out0_i__7 I0[13] -pin alu_inst|alu_out0_i__8 I0[13] -pin alu_inst|alu_out2_i I0[13] -pin alu_inst|alu_out2_i__0 I0[13]
load net alu_inst|a[14] -attr @rip a[14] -attr @name a[14] -hierPin alu_inst a[14] -pin alu_inst|alu_out0_i I0[14] -pin alu_inst|alu_out0_i__0 I0[14] -pin alu_inst|alu_out0_i__1 I0[14] -pin alu_inst|alu_out0_i__4 I0[14] -pin alu_inst|alu_out0_i__5 I0[14] -pin alu_inst|alu_out0_i__6 I0[14] -pin alu_inst|alu_out0_i__7 I0[14] -pin alu_inst|alu_out0_i__8 I0[14] -pin alu_inst|alu_out2_i I0[14] -pin alu_inst|alu_out2_i__0 I0[14]
load net alu_inst|a[15] -attr @rip a[15] -attr @name a[15] -hierPin alu_inst a[15] -pin alu_inst|alu_out0_i I0[15] -pin alu_inst|alu_out0_i__0 I0[15] -pin alu_inst|alu_out0_i__1 I0[15] -pin alu_inst|alu_out0_i__4 I0[15] -pin alu_inst|alu_out0_i__5 I0[15] -pin alu_inst|alu_out0_i__6 I0[15] -pin alu_inst|alu_out0_i__7 I0[15] -pin alu_inst|alu_out0_i__8 I0[15] -pin alu_inst|alu_out2_i I0[15] -pin alu_inst|alu_out2_i__0 I0[15]
load net alu_inst|a[16] -attr @rip a[16] -attr @name a[16] -hierPin alu_inst a[16] -pin alu_inst|alu_out0_i I0[16] -pin alu_inst|alu_out0_i__0 I0[16] -pin alu_inst|alu_out0_i__1 I0[16] -pin alu_inst|alu_out0_i__4 I0[16] -pin alu_inst|alu_out0_i__5 I0[16] -pin alu_inst|alu_out0_i__6 I0[16] -pin alu_inst|alu_out0_i__7 I0[16] -pin alu_inst|alu_out0_i__8 I0[16] -pin alu_inst|alu_out2_i I0[16] -pin alu_inst|alu_out2_i__0 I0[16]
load net alu_inst|a[17] -attr @rip a[17] -attr @name a[17] -hierPin alu_inst a[17] -pin alu_inst|alu_out0_i I0[17] -pin alu_inst|alu_out0_i__0 I0[17] -pin alu_inst|alu_out0_i__1 I0[17] -pin alu_inst|alu_out0_i__4 I0[17] -pin alu_inst|alu_out0_i__5 I0[17] -pin alu_inst|alu_out0_i__6 I0[17] -pin alu_inst|alu_out0_i__7 I0[17] -pin alu_inst|alu_out0_i__8 I0[17] -pin alu_inst|alu_out2_i I0[17] -pin alu_inst|alu_out2_i__0 I0[17]
load net alu_inst|a[18] -attr @rip a[18] -attr @name a[18] -hierPin alu_inst a[18] -pin alu_inst|alu_out0_i I0[18] -pin alu_inst|alu_out0_i__0 I0[18] -pin alu_inst|alu_out0_i__1 I0[18] -pin alu_inst|alu_out0_i__4 I0[18] -pin alu_inst|alu_out0_i__5 I0[18] -pin alu_inst|alu_out0_i__6 I0[18] -pin alu_inst|alu_out0_i__7 I0[18] -pin alu_inst|alu_out0_i__8 I0[18] -pin alu_inst|alu_out2_i I0[18] -pin alu_inst|alu_out2_i__0 I0[18]
load net alu_inst|a[19] -attr @rip a[19] -attr @name a[19] -hierPin alu_inst a[19] -pin alu_inst|alu_out0_i I0[19] -pin alu_inst|alu_out0_i__0 I0[19] -pin alu_inst|alu_out0_i__1 I0[19] -pin alu_inst|alu_out0_i__4 I0[19] -pin alu_inst|alu_out0_i__5 I0[19] -pin alu_inst|alu_out0_i__6 I0[19] -pin alu_inst|alu_out0_i__7 I0[19] -pin alu_inst|alu_out0_i__8 I0[19] -pin alu_inst|alu_out2_i I0[19] -pin alu_inst|alu_out2_i__0 I0[19]
load net alu_inst|a[1] -attr @rip a[1] -attr @name a[1] -hierPin alu_inst a[1] -pin alu_inst|alu_out0_i I0[1] -pin alu_inst|alu_out0_i__0 I0[1] -pin alu_inst|alu_out0_i__1 I0[1] -pin alu_inst|alu_out0_i__4 I0[1] -pin alu_inst|alu_out0_i__5 I0[1] -pin alu_inst|alu_out0_i__6 I0[1] -pin alu_inst|alu_out0_i__7 I0[1] -pin alu_inst|alu_out0_i__8 I0[1] -pin alu_inst|alu_out2_i I0[1] -pin alu_inst|alu_out2_i__0 I0[1]
load net alu_inst|a[20] -attr @rip a[20] -attr @name a[20] -hierPin alu_inst a[20] -pin alu_inst|alu_out0_i I0[20] -pin alu_inst|alu_out0_i__0 I0[20] -pin alu_inst|alu_out0_i__1 I0[20] -pin alu_inst|alu_out0_i__4 I0[20] -pin alu_inst|alu_out0_i__5 I0[20] -pin alu_inst|alu_out0_i__6 I0[20] -pin alu_inst|alu_out0_i__7 I0[20] -pin alu_inst|alu_out0_i__8 I0[20] -pin alu_inst|alu_out2_i I0[20] -pin alu_inst|alu_out2_i__0 I0[20]
load net alu_inst|a[21] -attr @rip a[21] -attr @name a[21] -hierPin alu_inst a[21] -pin alu_inst|alu_out0_i I0[21] -pin alu_inst|alu_out0_i__0 I0[21] -pin alu_inst|alu_out0_i__1 I0[21] -pin alu_inst|alu_out0_i__4 I0[21] -pin alu_inst|alu_out0_i__5 I0[21] -pin alu_inst|alu_out0_i__6 I0[21] -pin alu_inst|alu_out0_i__7 I0[21] -pin alu_inst|alu_out0_i__8 I0[21] -pin alu_inst|alu_out2_i I0[21] -pin alu_inst|alu_out2_i__0 I0[21]
load net alu_inst|a[22] -attr @rip a[22] -attr @name a[22] -hierPin alu_inst a[22] -pin alu_inst|alu_out0_i I0[22] -pin alu_inst|alu_out0_i__0 I0[22] -pin alu_inst|alu_out0_i__1 I0[22] -pin alu_inst|alu_out0_i__4 I0[22] -pin alu_inst|alu_out0_i__5 I0[22] -pin alu_inst|alu_out0_i__6 I0[22] -pin alu_inst|alu_out0_i__7 I0[22] -pin alu_inst|alu_out0_i__8 I0[22] -pin alu_inst|alu_out2_i I0[22] -pin alu_inst|alu_out2_i__0 I0[22]
load net alu_inst|a[23] -attr @rip a[23] -attr @name a[23] -hierPin alu_inst a[23] -pin alu_inst|alu_out0_i I0[23] -pin alu_inst|alu_out0_i__0 I0[23] -pin alu_inst|alu_out0_i__1 I0[23] -pin alu_inst|alu_out0_i__4 I0[23] -pin alu_inst|alu_out0_i__5 I0[23] -pin alu_inst|alu_out0_i__6 I0[23] -pin alu_inst|alu_out0_i__7 I0[23] -pin alu_inst|alu_out0_i__8 I0[23] -pin alu_inst|alu_out2_i I0[23] -pin alu_inst|alu_out2_i__0 I0[23]
load net alu_inst|a[24] -attr @rip a[24] -attr @name a[24] -hierPin alu_inst a[24] -pin alu_inst|alu_out0_i I0[24] -pin alu_inst|alu_out0_i__0 I0[24] -pin alu_inst|alu_out0_i__1 I0[24] -pin alu_inst|alu_out0_i__4 I0[24] -pin alu_inst|alu_out0_i__5 I0[24] -pin alu_inst|alu_out0_i__6 I0[24] -pin alu_inst|alu_out0_i__7 I0[24] -pin alu_inst|alu_out0_i__8 I0[24] -pin alu_inst|alu_out2_i I0[24] -pin alu_inst|alu_out2_i__0 I0[24]
load net alu_inst|a[25] -attr @rip a[25] -attr @name a[25] -hierPin alu_inst a[25] -pin alu_inst|alu_out0_i I0[25] -pin alu_inst|alu_out0_i__0 I0[25] -pin alu_inst|alu_out0_i__1 I0[25] -pin alu_inst|alu_out0_i__4 I0[25] -pin alu_inst|alu_out0_i__5 I0[25] -pin alu_inst|alu_out0_i__6 I0[25] -pin alu_inst|alu_out0_i__7 I0[25] -pin alu_inst|alu_out0_i__8 I0[25] -pin alu_inst|alu_out2_i I0[25] -pin alu_inst|alu_out2_i__0 I0[25]
load net alu_inst|a[26] -attr @rip a[26] -attr @name a[26] -hierPin alu_inst a[26] -pin alu_inst|alu_out0_i I0[26] -pin alu_inst|alu_out0_i__0 I0[26] -pin alu_inst|alu_out0_i__1 I0[26] -pin alu_inst|alu_out0_i__4 I0[26] -pin alu_inst|alu_out0_i__5 I0[26] -pin alu_inst|alu_out0_i__6 I0[26] -pin alu_inst|alu_out0_i__7 I0[26] -pin alu_inst|alu_out0_i__8 I0[26] -pin alu_inst|alu_out2_i I0[26] -pin alu_inst|alu_out2_i__0 I0[26]
load net alu_inst|a[27] -attr @rip a[27] -attr @name a[27] -hierPin alu_inst a[27] -pin alu_inst|alu_out0_i I0[27] -pin alu_inst|alu_out0_i__0 I0[27] -pin alu_inst|alu_out0_i__1 I0[27] -pin alu_inst|alu_out0_i__4 I0[27] -pin alu_inst|alu_out0_i__5 I0[27] -pin alu_inst|alu_out0_i__6 I0[27] -pin alu_inst|alu_out0_i__7 I0[27] -pin alu_inst|alu_out0_i__8 I0[27] -pin alu_inst|alu_out2_i I0[27] -pin alu_inst|alu_out2_i__0 I0[27]
load net alu_inst|a[28] -attr @rip a[28] -attr @name a[28] -hierPin alu_inst a[28] -pin alu_inst|alu_out0_i I0[28] -pin alu_inst|alu_out0_i__0 I0[28] -pin alu_inst|alu_out0_i__1 I0[28] -pin alu_inst|alu_out0_i__4 I0[28] -pin alu_inst|alu_out0_i__5 I0[28] -pin alu_inst|alu_out0_i__6 I0[28] -pin alu_inst|alu_out0_i__7 I0[28] -pin alu_inst|alu_out0_i__8 I0[28] -pin alu_inst|alu_out2_i I0[28] -pin alu_inst|alu_out2_i__0 I0[28]
load net alu_inst|a[29] -attr @rip a[29] -attr @name a[29] -hierPin alu_inst a[29] -pin alu_inst|alu_out0_i I0[29] -pin alu_inst|alu_out0_i__0 I0[29] -pin alu_inst|alu_out0_i__1 I0[29] -pin alu_inst|alu_out0_i__4 I0[29] -pin alu_inst|alu_out0_i__5 I0[29] -pin alu_inst|alu_out0_i__6 I0[29] -pin alu_inst|alu_out0_i__7 I0[29] -pin alu_inst|alu_out0_i__8 I0[29] -pin alu_inst|alu_out2_i I0[29] -pin alu_inst|alu_out2_i__0 I0[29]
load net alu_inst|a[2] -attr @rip a[2] -attr @name a[2] -hierPin alu_inst a[2] -pin alu_inst|alu_out0_i I0[2] -pin alu_inst|alu_out0_i__0 I0[2] -pin alu_inst|alu_out0_i__1 I0[2] -pin alu_inst|alu_out0_i__4 I0[2] -pin alu_inst|alu_out0_i__5 I0[2] -pin alu_inst|alu_out0_i__6 I0[2] -pin alu_inst|alu_out0_i__7 I0[2] -pin alu_inst|alu_out0_i__8 I0[2] -pin alu_inst|alu_out2_i I0[2] -pin alu_inst|alu_out2_i__0 I0[2]
load net alu_inst|a[30] -attr @rip a[30] -attr @name a[30] -hierPin alu_inst a[30] -pin alu_inst|alu_out0_i I0[30] -pin alu_inst|alu_out0_i__0 I0[30] -pin alu_inst|alu_out0_i__1 I0[30] -pin alu_inst|alu_out0_i__4 I0[30] -pin alu_inst|alu_out0_i__5 I0[30] -pin alu_inst|alu_out0_i__6 I0[30] -pin alu_inst|alu_out0_i__7 I0[30] -pin alu_inst|alu_out0_i__8 I0[30] -pin alu_inst|alu_out2_i I0[30] -pin alu_inst|alu_out2_i__0 I0[30]
load net alu_inst|a[31] -attr @rip a[31] -attr @name a[31] -hierPin alu_inst a[31] -pin alu_inst|alu_out0_i I0[31] -pin alu_inst|alu_out0_i__0 I0[31] -pin alu_inst|alu_out0_i__1 I0[31] -pin alu_inst|alu_out0_i__4 I0[31] -pin alu_inst|alu_out0_i__5 I0[31] -pin alu_inst|alu_out0_i__6 I0[31] -pin alu_inst|alu_out0_i__7 I0[31] -pin alu_inst|alu_out0_i__8 I0[31] -pin alu_inst|alu_out2_i I0[31] -pin alu_inst|alu_out2_i__0 I0[31]
load net alu_inst|a[3] -attr @rip a[3] -attr @name a[3] -hierPin alu_inst a[3] -pin alu_inst|alu_out0_i I0[3] -pin alu_inst|alu_out0_i__0 I0[3] -pin alu_inst|alu_out0_i__1 I0[3] -pin alu_inst|alu_out0_i__4 I0[3] -pin alu_inst|alu_out0_i__5 I0[3] -pin alu_inst|alu_out0_i__6 I0[3] -pin alu_inst|alu_out0_i__7 I0[3] -pin alu_inst|alu_out0_i__8 I0[3] -pin alu_inst|alu_out2_i I0[3] -pin alu_inst|alu_out2_i__0 I0[3]
load net alu_inst|a[4] -attr @rip a[4] -attr @name a[4] -hierPin alu_inst a[4] -pin alu_inst|alu_out0_i I0[4] -pin alu_inst|alu_out0_i__0 I0[4] -pin alu_inst|alu_out0_i__1 I0[4] -pin alu_inst|alu_out0_i__4 I0[4] -pin alu_inst|alu_out0_i__5 I0[4] -pin alu_inst|alu_out0_i__6 I0[4] -pin alu_inst|alu_out0_i__7 I0[4] -pin alu_inst|alu_out0_i__8 I0[4] -pin alu_inst|alu_out2_i I0[4] -pin alu_inst|alu_out2_i__0 I0[4]
load net alu_inst|a[5] -attr @rip a[5] -attr @name a[5] -hierPin alu_inst a[5] -pin alu_inst|alu_out0_i I0[5] -pin alu_inst|alu_out0_i__0 I0[5] -pin alu_inst|alu_out0_i__1 I0[5] -pin alu_inst|alu_out0_i__4 I0[5] -pin alu_inst|alu_out0_i__5 I0[5] -pin alu_inst|alu_out0_i__6 I0[5] -pin alu_inst|alu_out0_i__7 I0[5] -pin alu_inst|alu_out0_i__8 I0[5] -pin alu_inst|alu_out2_i I0[5] -pin alu_inst|alu_out2_i__0 I0[5]
load net alu_inst|a[6] -attr @rip a[6] -attr @name a[6] -hierPin alu_inst a[6] -pin alu_inst|alu_out0_i I0[6] -pin alu_inst|alu_out0_i__0 I0[6] -pin alu_inst|alu_out0_i__1 I0[6] -pin alu_inst|alu_out0_i__4 I0[6] -pin alu_inst|alu_out0_i__5 I0[6] -pin alu_inst|alu_out0_i__6 I0[6] -pin alu_inst|alu_out0_i__7 I0[6] -pin alu_inst|alu_out0_i__8 I0[6] -pin alu_inst|alu_out2_i I0[6] -pin alu_inst|alu_out2_i__0 I0[6]
load net alu_inst|a[7] -attr @rip a[7] -attr @name a[7] -hierPin alu_inst a[7] -pin alu_inst|alu_out0_i I0[7] -pin alu_inst|alu_out0_i__0 I0[7] -pin alu_inst|alu_out0_i__1 I0[7] -pin alu_inst|alu_out0_i__4 I0[7] -pin alu_inst|alu_out0_i__5 I0[7] -pin alu_inst|alu_out0_i__6 I0[7] -pin alu_inst|alu_out0_i__7 I0[7] -pin alu_inst|alu_out0_i__8 I0[7] -pin alu_inst|alu_out2_i I0[7] -pin alu_inst|alu_out2_i__0 I0[7]
load net alu_inst|a[8] -attr @rip a[8] -attr @name a[8] -hierPin alu_inst a[8] -pin alu_inst|alu_out0_i I0[8] -pin alu_inst|alu_out0_i__0 I0[8] -pin alu_inst|alu_out0_i__1 I0[8] -pin alu_inst|alu_out0_i__4 I0[8] -pin alu_inst|alu_out0_i__5 I0[8] -pin alu_inst|alu_out0_i__6 I0[8] -pin alu_inst|alu_out0_i__7 I0[8] -pin alu_inst|alu_out0_i__8 I0[8] -pin alu_inst|alu_out2_i I0[8] -pin alu_inst|alu_out2_i__0 I0[8]
load net alu_inst|a[9] -attr @rip a[9] -attr @name a[9] -hierPin alu_inst a[9] -pin alu_inst|alu_out0_i I0[9] -pin alu_inst|alu_out0_i__0 I0[9] -pin alu_inst|alu_out0_i__1 I0[9] -pin alu_inst|alu_out0_i__4 I0[9] -pin alu_inst|alu_out0_i__5 I0[9] -pin alu_inst|alu_out0_i__6 I0[9] -pin alu_inst|alu_out0_i__7 I0[9] -pin alu_inst|alu_out0_i__8 I0[9] -pin alu_inst|alu_out2_i I0[9] -pin alu_inst|alu_out2_i__0 I0[9]
load net alu_inst|alu_ctrl[0] -attr @rip alu_ctrl[0] -attr @name alu_ctrl[0] -hierPin alu_inst alu_ctrl[0] -pin alu_inst|alu_out_i S[0]
load net alu_inst|alu_ctrl[1] -attr @rip alu_ctrl[1] -attr @name alu_ctrl[1] -hierPin alu_inst alu_ctrl[1] -pin alu_inst|alu_out_i S[1]
load net alu_inst|alu_ctrl[2] -attr @rip alu_ctrl[2] -attr @name alu_ctrl[2] -hierPin alu_inst alu_ctrl[2] -pin alu_inst|alu_out_i S[2]
load net alu_inst|alu_ctrl[3] -attr @rip alu_ctrl[3] -attr @name alu_ctrl[3] -hierPin alu_inst alu_ctrl[3] -pin alu_inst|alu_out_i S[3]
load net alu_inst|alu_out0[0] -attr @rip O[0] -attr @name alu_out0[0] -pin alu_inst|alu_out0_i__2 O[0] -pin alu_inst|alu_out_i I3[0]
load net alu_inst|alu_out0[1] -attr @rip O[1] -attr @name alu_out0[1] -pin alu_inst|alu_out0_i__2 O[1] -pin alu_inst|alu_out_i I3[1]
load net alu_inst|alu_out0_i__0_n_0 -attr @rip O[31] -attr @name alu_out0_i__0_n_0 -pin alu_inst|alu_out0_i__0 O[31] -pin alu_inst|alu_out_i I1[31]
load net alu_inst|alu_out0_i__0_n_1 -attr @rip O[30] -attr @name alu_out0_i__0_n_1 -pin alu_inst|alu_out0_i__0 O[30] -pin alu_inst|alu_out_i I1[30]
load net alu_inst|alu_out0_i__0_n_10 -attr @rip O[21] -attr @name alu_out0_i__0_n_10 -pin alu_inst|alu_out0_i__0 O[21] -pin alu_inst|alu_out_i I1[21]
load net alu_inst|alu_out0_i__0_n_11 -attr @rip O[20] -attr @name alu_out0_i__0_n_11 -pin alu_inst|alu_out0_i__0 O[20] -pin alu_inst|alu_out_i I1[20]
load net alu_inst|alu_out0_i__0_n_12 -attr @rip O[19] -attr @name alu_out0_i__0_n_12 -pin alu_inst|alu_out0_i__0 O[19] -pin alu_inst|alu_out_i I1[19]
load net alu_inst|alu_out0_i__0_n_13 -attr @rip O[18] -attr @name alu_out0_i__0_n_13 -pin alu_inst|alu_out0_i__0 O[18] -pin alu_inst|alu_out_i I1[18]
load net alu_inst|alu_out0_i__0_n_14 -attr @rip O[17] -attr @name alu_out0_i__0_n_14 -pin alu_inst|alu_out0_i__0 O[17] -pin alu_inst|alu_out_i I1[17]
load net alu_inst|alu_out0_i__0_n_15 -attr @rip O[16] -attr @name alu_out0_i__0_n_15 -pin alu_inst|alu_out0_i__0 O[16] -pin alu_inst|alu_out_i I1[16]
load net alu_inst|alu_out0_i__0_n_16 -attr @rip O[15] -attr @name alu_out0_i__0_n_16 -pin alu_inst|alu_out0_i__0 O[15] -pin alu_inst|alu_out_i I1[15]
load net alu_inst|alu_out0_i__0_n_17 -attr @rip O[14] -attr @name alu_out0_i__0_n_17 -pin alu_inst|alu_out0_i__0 O[14] -pin alu_inst|alu_out_i I1[14]
load net alu_inst|alu_out0_i__0_n_18 -attr @rip O[13] -attr @name alu_out0_i__0_n_18 -pin alu_inst|alu_out0_i__0 O[13] -pin alu_inst|alu_out_i I1[13]
load net alu_inst|alu_out0_i__0_n_19 -attr @rip O[12] -attr @name alu_out0_i__0_n_19 -pin alu_inst|alu_out0_i__0 O[12] -pin alu_inst|alu_out_i I1[12]
load net alu_inst|alu_out0_i__0_n_2 -attr @rip O[29] -attr @name alu_out0_i__0_n_2 -pin alu_inst|alu_out0_i__0 O[29] -pin alu_inst|alu_out_i I1[29]
load net alu_inst|alu_out0_i__0_n_20 -attr @rip O[11] -attr @name alu_out0_i__0_n_20 -pin alu_inst|alu_out0_i__0 O[11] -pin alu_inst|alu_out_i I1[11]
load net alu_inst|alu_out0_i__0_n_21 -attr @rip O[10] -attr @name alu_out0_i__0_n_21 -pin alu_inst|alu_out0_i__0 O[10] -pin alu_inst|alu_out_i I1[10]
load net alu_inst|alu_out0_i__0_n_22 -attr @rip O[9] -attr @name alu_out0_i__0_n_22 -pin alu_inst|alu_out0_i__0 O[9] -pin alu_inst|alu_out_i I1[9]
load net alu_inst|alu_out0_i__0_n_23 -attr @rip O[8] -attr @name alu_out0_i__0_n_23 -pin alu_inst|alu_out0_i__0 O[8] -pin alu_inst|alu_out_i I1[8]
load net alu_inst|alu_out0_i__0_n_24 -attr @rip O[7] -attr @name alu_out0_i__0_n_24 -pin alu_inst|alu_out0_i__0 O[7] -pin alu_inst|alu_out_i I1[7]
load net alu_inst|alu_out0_i__0_n_25 -attr @rip O[6] -attr @name alu_out0_i__0_n_25 -pin alu_inst|alu_out0_i__0 O[6] -pin alu_inst|alu_out_i I1[6]
load net alu_inst|alu_out0_i__0_n_26 -attr @rip O[5] -attr @name alu_out0_i__0_n_26 -pin alu_inst|alu_out0_i__0 O[5] -pin alu_inst|alu_out_i I1[5]
load net alu_inst|alu_out0_i__0_n_27 -attr @rip O[4] -attr @name alu_out0_i__0_n_27 -pin alu_inst|alu_out0_i__0 O[4] -pin alu_inst|alu_out_i I1[4]
load net alu_inst|alu_out0_i__0_n_28 -attr @rip O[3] -attr @name alu_out0_i__0_n_28 -pin alu_inst|alu_out0_i__0 O[3] -pin alu_inst|alu_out_i I1[3]
load net alu_inst|alu_out0_i__0_n_29 -attr @rip O[2] -attr @name alu_out0_i__0_n_29 -pin alu_inst|alu_out0_i__0 O[2] -pin alu_inst|alu_out_i I1[2]
load net alu_inst|alu_out0_i__0_n_3 -attr @rip O[28] -attr @name alu_out0_i__0_n_3 -pin alu_inst|alu_out0_i__0 O[28] -pin alu_inst|alu_out_i I1[28]
load net alu_inst|alu_out0_i__0_n_30 -attr @rip O[1] -attr @name alu_out0_i__0_n_30 -pin alu_inst|alu_out0_i__0 O[1] -pin alu_inst|alu_out_i I1[1]
load net alu_inst|alu_out0_i__0_n_31 -attr @rip O[0] -attr @name alu_out0_i__0_n_31 -pin alu_inst|alu_out0_i__0 O[0] -pin alu_inst|alu_out_i I1[0]
load net alu_inst|alu_out0_i__0_n_4 -attr @rip O[27] -attr @name alu_out0_i__0_n_4 -pin alu_inst|alu_out0_i__0 O[27] -pin alu_inst|alu_out_i I1[27]
load net alu_inst|alu_out0_i__0_n_5 -attr @rip O[26] -attr @name alu_out0_i__0_n_5 -pin alu_inst|alu_out0_i__0 O[26] -pin alu_inst|alu_out_i I1[26]
load net alu_inst|alu_out0_i__0_n_6 -attr @rip O[25] -attr @name alu_out0_i__0_n_6 -pin alu_inst|alu_out0_i__0 O[25] -pin alu_inst|alu_out_i I1[25]
load net alu_inst|alu_out0_i__0_n_7 -attr @rip O[24] -attr @name alu_out0_i__0_n_7 -pin alu_inst|alu_out0_i__0 O[24] -pin alu_inst|alu_out_i I1[24]
load net alu_inst|alu_out0_i__0_n_8 -attr @rip O[23] -attr @name alu_out0_i__0_n_8 -pin alu_inst|alu_out0_i__0 O[23] -pin alu_inst|alu_out_i I1[23]
load net alu_inst|alu_out0_i__0_n_9 -attr @rip O[22] -attr @name alu_out0_i__0_n_9 -pin alu_inst|alu_out0_i__0 O[22] -pin alu_inst|alu_out_i I1[22]
load net alu_inst|alu_out0_i__1_n_0 -attr @rip O[31] -attr @name alu_out0_i__1_n_0 -pin alu_inst|alu_out0_i__1 O[31] -pin alu_inst|alu_out_i I2[31]
load net alu_inst|alu_out0_i__1_n_1 -attr @rip O[30] -attr @name alu_out0_i__1_n_1 -pin alu_inst|alu_out0_i__1 O[30] -pin alu_inst|alu_out_i I2[30]
load net alu_inst|alu_out0_i__1_n_10 -attr @rip O[21] -attr @name alu_out0_i__1_n_10 -pin alu_inst|alu_out0_i__1 O[21] -pin alu_inst|alu_out_i I2[21]
load net alu_inst|alu_out0_i__1_n_11 -attr @rip O[20] -attr @name alu_out0_i__1_n_11 -pin alu_inst|alu_out0_i__1 O[20] -pin alu_inst|alu_out_i I2[20]
load net alu_inst|alu_out0_i__1_n_12 -attr @rip O[19] -attr @name alu_out0_i__1_n_12 -pin alu_inst|alu_out0_i__1 O[19] -pin alu_inst|alu_out_i I2[19]
load net alu_inst|alu_out0_i__1_n_13 -attr @rip O[18] -attr @name alu_out0_i__1_n_13 -pin alu_inst|alu_out0_i__1 O[18] -pin alu_inst|alu_out_i I2[18]
load net alu_inst|alu_out0_i__1_n_14 -attr @rip O[17] -attr @name alu_out0_i__1_n_14 -pin alu_inst|alu_out0_i__1 O[17] -pin alu_inst|alu_out_i I2[17]
load net alu_inst|alu_out0_i__1_n_15 -attr @rip O[16] -attr @name alu_out0_i__1_n_15 -pin alu_inst|alu_out0_i__1 O[16] -pin alu_inst|alu_out_i I2[16]
load net alu_inst|alu_out0_i__1_n_16 -attr @rip O[15] -attr @name alu_out0_i__1_n_16 -pin alu_inst|alu_out0_i__1 O[15] -pin alu_inst|alu_out_i I2[15]
load net alu_inst|alu_out0_i__1_n_17 -attr @rip O[14] -attr @name alu_out0_i__1_n_17 -pin alu_inst|alu_out0_i__1 O[14] -pin alu_inst|alu_out_i I2[14]
load net alu_inst|alu_out0_i__1_n_18 -attr @rip O[13] -attr @name alu_out0_i__1_n_18 -pin alu_inst|alu_out0_i__1 O[13] -pin alu_inst|alu_out_i I2[13]
load net alu_inst|alu_out0_i__1_n_19 -attr @rip O[12] -attr @name alu_out0_i__1_n_19 -pin alu_inst|alu_out0_i__1 O[12] -pin alu_inst|alu_out_i I2[12]
load net alu_inst|alu_out0_i__1_n_2 -attr @rip O[29] -attr @name alu_out0_i__1_n_2 -pin alu_inst|alu_out0_i__1 O[29] -pin alu_inst|alu_out_i I2[29]
load net alu_inst|alu_out0_i__1_n_20 -attr @rip O[11] -attr @name alu_out0_i__1_n_20 -pin alu_inst|alu_out0_i__1 O[11] -pin alu_inst|alu_out_i I2[11]
load net alu_inst|alu_out0_i__1_n_21 -attr @rip O[10] -attr @name alu_out0_i__1_n_21 -pin alu_inst|alu_out0_i__1 O[10] -pin alu_inst|alu_out_i I2[10]
load net alu_inst|alu_out0_i__1_n_22 -attr @rip O[9] -attr @name alu_out0_i__1_n_22 -pin alu_inst|alu_out0_i__1 O[9] -pin alu_inst|alu_out_i I2[9]
load net alu_inst|alu_out0_i__1_n_23 -attr @rip O[8] -attr @name alu_out0_i__1_n_23 -pin alu_inst|alu_out0_i__1 O[8] -pin alu_inst|alu_out_i I2[8]
load net alu_inst|alu_out0_i__1_n_24 -attr @rip O[7] -attr @name alu_out0_i__1_n_24 -pin alu_inst|alu_out0_i__1 O[7] -pin alu_inst|alu_out_i I2[7]
load net alu_inst|alu_out0_i__1_n_25 -attr @rip O[6] -attr @name alu_out0_i__1_n_25 -pin alu_inst|alu_out0_i__1 O[6] -pin alu_inst|alu_out_i I2[6]
load net alu_inst|alu_out0_i__1_n_26 -attr @rip O[5] -attr @name alu_out0_i__1_n_26 -pin alu_inst|alu_out0_i__1 O[5] -pin alu_inst|alu_out_i I2[5]
load net alu_inst|alu_out0_i__1_n_27 -attr @rip O[4] -attr @name alu_out0_i__1_n_27 -pin alu_inst|alu_out0_i__1 O[4] -pin alu_inst|alu_out_i I2[4]
load net alu_inst|alu_out0_i__1_n_28 -attr @rip O[3] -attr @name alu_out0_i__1_n_28 -pin alu_inst|alu_out0_i__1 O[3] -pin alu_inst|alu_out_i I2[3]
load net alu_inst|alu_out0_i__1_n_29 -attr @rip O[2] -attr @name alu_out0_i__1_n_29 -pin alu_inst|alu_out0_i__1 O[2] -pin alu_inst|alu_out_i I2[2]
load net alu_inst|alu_out0_i__1_n_3 -attr @rip O[28] -attr @name alu_out0_i__1_n_3 -pin alu_inst|alu_out0_i__1 O[28] -pin alu_inst|alu_out_i I2[28]
load net alu_inst|alu_out0_i__1_n_30 -attr @rip O[1] -attr @name alu_out0_i__1_n_30 -pin alu_inst|alu_out0_i__1 O[1] -pin alu_inst|alu_out_i I2[1]
load net alu_inst|alu_out0_i__1_n_31 -attr @rip O[0] -attr @name alu_out0_i__1_n_31 -pin alu_inst|alu_out0_i__1 O[0] -pin alu_inst|alu_out_i I2[0]
load net alu_inst|alu_out0_i__1_n_4 -attr @rip O[27] -attr @name alu_out0_i__1_n_4 -pin alu_inst|alu_out0_i__1 O[27] -pin alu_inst|alu_out_i I2[27]
load net alu_inst|alu_out0_i__1_n_5 -attr @rip O[26] -attr @name alu_out0_i__1_n_5 -pin alu_inst|alu_out0_i__1 O[26] -pin alu_inst|alu_out_i I2[26]
load net alu_inst|alu_out0_i__1_n_6 -attr @rip O[25] -attr @name alu_out0_i__1_n_6 -pin alu_inst|alu_out0_i__1 O[25] -pin alu_inst|alu_out_i I2[25]
load net alu_inst|alu_out0_i__1_n_7 -attr @rip O[24] -attr @name alu_out0_i__1_n_7 -pin alu_inst|alu_out0_i__1 O[24] -pin alu_inst|alu_out_i I2[24]
load net alu_inst|alu_out0_i__1_n_8 -attr @rip O[23] -attr @name alu_out0_i__1_n_8 -pin alu_inst|alu_out0_i__1 O[23] -pin alu_inst|alu_out_i I2[23]
load net alu_inst|alu_out0_i__1_n_9 -attr @rip O[22] -attr @name alu_out0_i__1_n_9 -pin alu_inst|alu_out0_i__1 O[22] -pin alu_inst|alu_out_i I2[22]
load net alu_inst|alu_out0_i__3_n_0 -attr @rip O[1] -attr @name alu_out0_i__3_n_0 -pin alu_inst|alu_out0_i__3 O[1] -pin alu_inst|alu_out_i I4[1]
load net alu_inst|alu_out0_i__3_n_1 -attr @rip O[0] -attr @name alu_out0_i__3_n_1 -pin alu_inst|alu_out0_i__3 O[0] -pin alu_inst|alu_out_i I4[0]
load net alu_inst|alu_out0_i__4_n_0 -attr @rip O[31] -attr @name alu_out0_i__4_n_0 -pin alu_inst|alu_out0_i__4 O[31] -pin alu_inst|alu_out_i I5[31]
load net alu_inst|alu_out0_i__4_n_1 -attr @rip O[30] -attr @name alu_out0_i__4_n_1 -pin alu_inst|alu_out0_i__4 O[30] -pin alu_inst|alu_out_i I5[30]
load net alu_inst|alu_out0_i__4_n_10 -attr @rip O[21] -attr @name alu_out0_i__4_n_10 -pin alu_inst|alu_out0_i__4 O[21] -pin alu_inst|alu_out_i I5[21]
load net alu_inst|alu_out0_i__4_n_11 -attr @rip O[20] -attr @name alu_out0_i__4_n_11 -pin alu_inst|alu_out0_i__4 O[20] -pin alu_inst|alu_out_i I5[20]
load net alu_inst|alu_out0_i__4_n_12 -attr @rip O[19] -attr @name alu_out0_i__4_n_12 -pin alu_inst|alu_out0_i__4 O[19] -pin alu_inst|alu_out_i I5[19]
load net alu_inst|alu_out0_i__4_n_13 -attr @rip O[18] -attr @name alu_out0_i__4_n_13 -pin alu_inst|alu_out0_i__4 O[18] -pin alu_inst|alu_out_i I5[18]
load net alu_inst|alu_out0_i__4_n_14 -attr @rip O[17] -attr @name alu_out0_i__4_n_14 -pin alu_inst|alu_out0_i__4 O[17] -pin alu_inst|alu_out_i I5[17]
load net alu_inst|alu_out0_i__4_n_15 -attr @rip O[16] -attr @name alu_out0_i__4_n_15 -pin alu_inst|alu_out0_i__4 O[16] -pin alu_inst|alu_out_i I5[16]
load net alu_inst|alu_out0_i__4_n_16 -attr @rip O[15] -attr @name alu_out0_i__4_n_16 -pin alu_inst|alu_out0_i__4 O[15] -pin alu_inst|alu_out_i I5[15]
load net alu_inst|alu_out0_i__4_n_17 -attr @rip O[14] -attr @name alu_out0_i__4_n_17 -pin alu_inst|alu_out0_i__4 O[14] -pin alu_inst|alu_out_i I5[14]
load net alu_inst|alu_out0_i__4_n_18 -attr @rip O[13] -attr @name alu_out0_i__4_n_18 -pin alu_inst|alu_out0_i__4 O[13] -pin alu_inst|alu_out_i I5[13]
load net alu_inst|alu_out0_i__4_n_19 -attr @rip O[12] -attr @name alu_out0_i__4_n_19 -pin alu_inst|alu_out0_i__4 O[12] -pin alu_inst|alu_out_i I5[12]
load net alu_inst|alu_out0_i__4_n_2 -attr @rip O[29] -attr @name alu_out0_i__4_n_2 -pin alu_inst|alu_out0_i__4 O[29] -pin alu_inst|alu_out_i I5[29]
load net alu_inst|alu_out0_i__4_n_20 -attr @rip O[11] -attr @name alu_out0_i__4_n_20 -pin alu_inst|alu_out0_i__4 O[11] -pin alu_inst|alu_out_i I5[11]
load net alu_inst|alu_out0_i__4_n_21 -attr @rip O[10] -attr @name alu_out0_i__4_n_21 -pin alu_inst|alu_out0_i__4 O[10] -pin alu_inst|alu_out_i I5[10]
load net alu_inst|alu_out0_i__4_n_22 -attr @rip O[9] -attr @name alu_out0_i__4_n_22 -pin alu_inst|alu_out0_i__4 O[9] -pin alu_inst|alu_out_i I5[9]
load net alu_inst|alu_out0_i__4_n_23 -attr @rip O[8] -attr @name alu_out0_i__4_n_23 -pin alu_inst|alu_out0_i__4 O[8] -pin alu_inst|alu_out_i I5[8]
load net alu_inst|alu_out0_i__4_n_24 -attr @rip O[7] -attr @name alu_out0_i__4_n_24 -pin alu_inst|alu_out0_i__4 O[7] -pin alu_inst|alu_out_i I5[7]
load net alu_inst|alu_out0_i__4_n_25 -attr @rip O[6] -attr @name alu_out0_i__4_n_25 -pin alu_inst|alu_out0_i__4 O[6] -pin alu_inst|alu_out_i I5[6]
load net alu_inst|alu_out0_i__4_n_26 -attr @rip O[5] -attr @name alu_out0_i__4_n_26 -pin alu_inst|alu_out0_i__4 O[5] -pin alu_inst|alu_out_i I5[5]
load net alu_inst|alu_out0_i__4_n_27 -attr @rip O[4] -attr @name alu_out0_i__4_n_27 -pin alu_inst|alu_out0_i__4 O[4] -pin alu_inst|alu_out_i I5[4]
load net alu_inst|alu_out0_i__4_n_28 -attr @rip O[3] -attr @name alu_out0_i__4_n_28 -pin alu_inst|alu_out0_i__4 O[3] -pin alu_inst|alu_out_i I5[3]
load net alu_inst|alu_out0_i__4_n_29 -attr @rip O[2] -attr @name alu_out0_i__4_n_29 -pin alu_inst|alu_out0_i__4 O[2] -pin alu_inst|alu_out_i I5[2]
load net alu_inst|alu_out0_i__4_n_3 -attr @rip O[28] -attr @name alu_out0_i__4_n_3 -pin alu_inst|alu_out0_i__4 O[28] -pin alu_inst|alu_out_i I5[28]
load net alu_inst|alu_out0_i__4_n_30 -attr @rip O[1] -attr @name alu_out0_i__4_n_30 -pin alu_inst|alu_out0_i__4 O[1] -pin alu_inst|alu_out_i I5[1]
load net alu_inst|alu_out0_i__4_n_31 -attr @rip O[0] -attr @name alu_out0_i__4_n_31 -pin alu_inst|alu_out0_i__4 O[0] -pin alu_inst|alu_out_i I5[0]
load net alu_inst|alu_out0_i__4_n_4 -attr @rip O[27] -attr @name alu_out0_i__4_n_4 -pin alu_inst|alu_out0_i__4 O[27] -pin alu_inst|alu_out_i I5[27]
load net alu_inst|alu_out0_i__4_n_5 -attr @rip O[26] -attr @name alu_out0_i__4_n_5 -pin alu_inst|alu_out0_i__4 O[26] -pin alu_inst|alu_out_i I5[26]
load net alu_inst|alu_out0_i__4_n_6 -attr @rip O[25] -attr @name alu_out0_i__4_n_6 -pin alu_inst|alu_out0_i__4 O[25] -pin alu_inst|alu_out_i I5[25]
load net alu_inst|alu_out0_i__4_n_7 -attr @rip O[24] -attr @name alu_out0_i__4_n_7 -pin alu_inst|alu_out0_i__4 O[24] -pin alu_inst|alu_out_i I5[24]
load net alu_inst|alu_out0_i__4_n_8 -attr @rip O[23] -attr @name alu_out0_i__4_n_8 -pin alu_inst|alu_out0_i__4 O[23] -pin alu_inst|alu_out_i I5[23]
load net alu_inst|alu_out0_i__4_n_9 -attr @rip O[22] -attr @name alu_out0_i__4_n_9 -pin alu_inst|alu_out0_i__4 O[22] -pin alu_inst|alu_out_i I5[22]
load net alu_inst|alu_out0_i__5_n_0 -attr @rip O[31] -attr @name alu_out0_i__5_n_0 -pin alu_inst|alu_out0_i__5 O[31] -pin alu_inst|alu_out_i I6[31]
load net alu_inst|alu_out0_i__5_n_1 -attr @rip O[30] -attr @name alu_out0_i__5_n_1 -pin alu_inst|alu_out0_i__5 O[30] -pin alu_inst|alu_out_i I6[30]
load net alu_inst|alu_out0_i__5_n_10 -attr @rip O[21] -attr @name alu_out0_i__5_n_10 -pin alu_inst|alu_out0_i__5 O[21] -pin alu_inst|alu_out_i I6[21]
load net alu_inst|alu_out0_i__5_n_11 -attr @rip O[20] -attr @name alu_out0_i__5_n_11 -pin alu_inst|alu_out0_i__5 O[20] -pin alu_inst|alu_out_i I6[20]
load net alu_inst|alu_out0_i__5_n_12 -attr @rip O[19] -attr @name alu_out0_i__5_n_12 -pin alu_inst|alu_out0_i__5 O[19] -pin alu_inst|alu_out_i I6[19]
load net alu_inst|alu_out0_i__5_n_13 -attr @rip O[18] -attr @name alu_out0_i__5_n_13 -pin alu_inst|alu_out0_i__5 O[18] -pin alu_inst|alu_out_i I6[18]
load net alu_inst|alu_out0_i__5_n_14 -attr @rip O[17] -attr @name alu_out0_i__5_n_14 -pin alu_inst|alu_out0_i__5 O[17] -pin alu_inst|alu_out_i I6[17]
load net alu_inst|alu_out0_i__5_n_15 -attr @rip O[16] -attr @name alu_out0_i__5_n_15 -pin alu_inst|alu_out0_i__5 O[16] -pin alu_inst|alu_out_i I6[16]
load net alu_inst|alu_out0_i__5_n_16 -attr @rip O[15] -attr @name alu_out0_i__5_n_16 -pin alu_inst|alu_out0_i__5 O[15] -pin alu_inst|alu_out_i I6[15]
load net alu_inst|alu_out0_i__5_n_17 -attr @rip O[14] -attr @name alu_out0_i__5_n_17 -pin alu_inst|alu_out0_i__5 O[14] -pin alu_inst|alu_out_i I6[14]
load net alu_inst|alu_out0_i__5_n_18 -attr @rip O[13] -attr @name alu_out0_i__5_n_18 -pin alu_inst|alu_out0_i__5 O[13] -pin alu_inst|alu_out_i I6[13]
load net alu_inst|alu_out0_i__5_n_19 -attr @rip O[12] -attr @name alu_out0_i__5_n_19 -pin alu_inst|alu_out0_i__5 O[12] -pin alu_inst|alu_out_i I6[12]
load net alu_inst|alu_out0_i__5_n_2 -attr @rip O[29] -attr @name alu_out0_i__5_n_2 -pin alu_inst|alu_out0_i__5 O[29] -pin alu_inst|alu_out_i I6[29]
load net alu_inst|alu_out0_i__5_n_20 -attr @rip O[11] -attr @name alu_out0_i__5_n_20 -pin alu_inst|alu_out0_i__5 O[11] -pin alu_inst|alu_out_i I6[11]
load net alu_inst|alu_out0_i__5_n_21 -attr @rip O[10] -attr @name alu_out0_i__5_n_21 -pin alu_inst|alu_out0_i__5 O[10] -pin alu_inst|alu_out_i I6[10]
load net alu_inst|alu_out0_i__5_n_22 -attr @rip O[9] -attr @name alu_out0_i__5_n_22 -pin alu_inst|alu_out0_i__5 O[9] -pin alu_inst|alu_out_i I6[9]
load net alu_inst|alu_out0_i__5_n_23 -attr @rip O[8] -attr @name alu_out0_i__5_n_23 -pin alu_inst|alu_out0_i__5 O[8] -pin alu_inst|alu_out_i I6[8]
load net alu_inst|alu_out0_i__5_n_24 -attr @rip O[7] -attr @name alu_out0_i__5_n_24 -pin alu_inst|alu_out0_i__5 O[7] -pin alu_inst|alu_out_i I6[7]
load net alu_inst|alu_out0_i__5_n_25 -attr @rip O[6] -attr @name alu_out0_i__5_n_25 -pin alu_inst|alu_out0_i__5 O[6] -pin alu_inst|alu_out_i I6[6]
load net alu_inst|alu_out0_i__5_n_26 -attr @rip O[5] -attr @name alu_out0_i__5_n_26 -pin alu_inst|alu_out0_i__5 O[5] -pin alu_inst|alu_out_i I6[5]
load net alu_inst|alu_out0_i__5_n_27 -attr @rip O[4] -attr @name alu_out0_i__5_n_27 -pin alu_inst|alu_out0_i__5 O[4] -pin alu_inst|alu_out_i I6[4]
load net alu_inst|alu_out0_i__5_n_28 -attr @rip O[3] -attr @name alu_out0_i__5_n_28 -pin alu_inst|alu_out0_i__5 O[3] -pin alu_inst|alu_out_i I6[3]
load net alu_inst|alu_out0_i__5_n_29 -attr @rip O[2] -attr @name alu_out0_i__5_n_29 -pin alu_inst|alu_out0_i__5 O[2] -pin alu_inst|alu_out_i I6[2]
load net alu_inst|alu_out0_i__5_n_3 -attr @rip O[28] -attr @name alu_out0_i__5_n_3 -pin alu_inst|alu_out0_i__5 O[28] -pin alu_inst|alu_out_i I6[28]
load net alu_inst|alu_out0_i__5_n_30 -attr @rip O[1] -attr @name alu_out0_i__5_n_30 -pin alu_inst|alu_out0_i__5 O[1] -pin alu_inst|alu_out_i I6[1]
load net alu_inst|alu_out0_i__5_n_31 -attr @rip O[0] -attr @name alu_out0_i__5_n_31 -pin alu_inst|alu_out0_i__5 O[0] -pin alu_inst|alu_out_i I6[0]
load net alu_inst|alu_out0_i__5_n_4 -attr @rip O[27] -attr @name alu_out0_i__5_n_4 -pin alu_inst|alu_out0_i__5 O[27] -pin alu_inst|alu_out_i I6[27]
load net alu_inst|alu_out0_i__5_n_5 -attr @rip O[26] -attr @name alu_out0_i__5_n_5 -pin alu_inst|alu_out0_i__5 O[26] -pin alu_inst|alu_out_i I6[26]
load net alu_inst|alu_out0_i__5_n_6 -attr @rip O[25] -attr @name alu_out0_i__5_n_6 -pin alu_inst|alu_out0_i__5 O[25] -pin alu_inst|alu_out_i I6[25]
load net alu_inst|alu_out0_i__5_n_7 -attr @rip O[24] -attr @name alu_out0_i__5_n_7 -pin alu_inst|alu_out0_i__5 O[24] -pin alu_inst|alu_out_i I6[24]
load net alu_inst|alu_out0_i__5_n_8 -attr @rip O[23] -attr @name alu_out0_i__5_n_8 -pin alu_inst|alu_out0_i__5 O[23] -pin alu_inst|alu_out_i I6[23]
load net alu_inst|alu_out0_i__5_n_9 -attr @rip O[22] -attr @name alu_out0_i__5_n_9 -pin alu_inst|alu_out0_i__5 O[22] -pin alu_inst|alu_out_i I6[22]
load net alu_inst|alu_out0_i__6_n_0 -attr @rip O[31] -attr @name alu_out0_i__6_n_0 -pin alu_inst|alu_out0_i__6 O[31] -pin alu_inst|alu_out_i I7[31]
load net alu_inst|alu_out0_i__6_n_1 -attr @rip O[30] -attr @name alu_out0_i__6_n_1 -pin alu_inst|alu_out0_i__6 O[30] -pin alu_inst|alu_out_i I7[30]
load net alu_inst|alu_out0_i__6_n_10 -attr @rip O[21] -attr @name alu_out0_i__6_n_10 -pin alu_inst|alu_out0_i__6 O[21] -pin alu_inst|alu_out_i I7[21]
load net alu_inst|alu_out0_i__6_n_11 -attr @rip O[20] -attr @name alu_out0_i__6_n_11 -pin alu_inst|alu_out0_i__6 O[20] -pin alu_inst|alu_out_i I7[20]
load net alu_inst|alu_out0_i__6_n_12 -attr @rip O[19] -attr @name alu_out0_i__6_n_12 -pin alu_inst|alu_out0_i__6 O[19] -pin alu_inst|alu_out_i I7[19]
load net alu_inst|alu_out0_i__6_n_13 -attr @rip O[18] -attr @name alu_out0_i__6_n_13 -pin alu_inst|alu_out0_i__6 O[18] -pin alu_inst|alu_out_i I7[18]
load net alu_inst|alu_out0_i__6_n_14 -attr @rip O[17] -attr @name alu_out0_i__6_n_14 -pin alu_inst|alu_out0_i__6 O[17] -pin alu_inst|alu_out_i I7[17]
load net alu_inst|alu_out0_i__6_n_15 -attr @rip O[16] -attr @name alu_out0_i__6_n_15 -pin alu_inst|alu_out0_i__6 O[16] -pin alu_inst|alu_out_i I7[16]
load net alu_inst|alu_out0_i__6_n_16 -attr @rip O[15] -attr @name alu_out0_i__6_n_16 -pin alu_inst|alu_out0_i__6 O[15] -pin alu_inst|alu_out_i I7[15]
load net alu_inst|alu_out0_i__6_n_17 -attr @rip O[14] -attr @name alu_out0_i__6_n_17 -pin alu_inst|alu_out0_i__6 O[14] -pin alu_inst|alu_out_i I7[14]
load net alu_inst|alu_out0_i__6_n_18 -attr @rip O[13] -attr @name alu_out0_i__6_n_18 -pin alu_inst|alu_out0_i__6 O[13] -pin alu_inst|alu_out_i I7[13]
load net alu_inst|alu_out0_i__6_n_19 -attr @rip O[12] -attr @name alu_out0_i__6_n_19 -pin alu_inst|alu_out0_i__6 O[12] -pin alu_inst|alu_out_i I7[12]
load net alu_inst|alu_out0_i__6_n_2 -attr @rip O[29] -attr @name alu_out0_i__6_n_2 -pin alu_inst|alu_out0_i__6 O[29] -pin alu_inst|alu_out_i I7[29]
load net alu_inst|alu_out0_i__6_n_20 -attr @rip O[11] -attr @name alu_out0_i__6_n_20 -pin alu_inst|alu_out0_i__6 O[11] -pin alu_inst|alu_out_i I7[11]
load net alu_inst|alu_out0_i__6_n_21 -attr @rip O[10] -attr @name alu_out0_i__6_n_21 -pin alu_inst|alu_out0_i__6 O[10] -pin alu_inst|alu_out_i I7[10]
load net alu_inst|alu_out0_i__6_n_22 -attr @rip O[9] -attr @name alu_out0_i__6_n_22 -pin alu_inst|alu_out0_i__6 O[9] -pin alu_inst|alu_out_i I7[9]
load net alu_inst|alu_out0_i__6_n_23 -attr @rip O[8] -attr @name alu_out0_i__6_n_23 -pin alu_inst|alu_out0_i__6 O[8] -pin alu_inst|alu_out_i I7[8]
load net alu_inst|alu_out0_i__6_n_24 -attr @rip O[7] -attr @name alu_out0_i__6_n_24 -pin alu_inst|alu_out0_i__6 O[7] -pin alu_inst|alu_out_i I7[7]
load net alu_inst|alu_out0_i__6_n_25 -attr @rip O[6] -attr @name alu_out0_i__6_n_25 -pin alu_inst|alu_out0_i__6 O[6] -pin alu_inst|alu_out_i I7[6]
load net alu_inst|alu_out0_i__6_n_26 -attr @rip O[5] -attr @name alu_out0_i__6_n_26 -pin alu_inst|alu_out0_i__6 O[5] -pin alu_inst|alu_out_i I7[5]
load net alu_inst|alu_out0_i__6_n_27 -attr @rip O[4] -attr @name alu_out0_i__6_n_27 -pin alu_inst|alu_out0_i__6 O[4] -pin alu_inst|alu_out_i I7[4]
load net alu_inst|alu_out0_i__6_n_28 -attr @rip O[3] -attr @name alu_out0_i__6_n_28 -pin alu_inst|alu_out0_i__6 O[3] -pin alu_inst|alu_out_i I7[3]
load net alu_inst|alu_out0_i__6_n_29 -attr @rip O[2] -attr @name alu_out0_i__6_n_29 -pin alu_inst|alu_out0_i__6 O[2] -pin alu_inst|alu_out_i I7[2]
load net alu_inst|alu_out0_i__6_n_3 -attr @rip O[28] -attr @name alu_out0_i__6_n_3 -pin alu_inst|alu_out0_i__6 O[28] -pin alu_inst|alu_out_i I7[28]
load net alu_inst|alu_out0_i__6_n_30 -attr @rip O[1] -attr @name alu_out0_i__6_n_30 -pin alu_inst|alu_out0_i__6 O[1] -pin alu_inst|alu_out_i I7[1]
load net alu_inst|alu_out0_i__6_n_31 -attr @rip O[0] -attr @name alu_out0_i__6_n_31 -pin alu_inst|alu_out0_i__6 O[0] -pin alu_inst|alu_out_i I7[0]
load net alu_inst|alu_out0_i__6_n_4 -attr @rip O[27] -attr @name alu_out0_i__6_n_4 -pin alu_inst|alu_out0_i__6 O[27] -pin alu_inst|alu_out_i I7[27]
load net alu_inst|alu_out0_i__6_n_5 -attr @rip O[26] -attr @name alu_out0_i__6_n_5 -pin alu_inst|alu_out0_i__6 O[26] -pin alu_inst|alu_out_i I7[26]
load net alu_inst|alu_out0_i__6_n_6 -attr @rip O[25] -attr @name alu_out0_i__6_n_6 -pin alu_inst|alu_out0_i__6 O[25] -pin alu_inst|alu_out_i I7[25]
load net alu_inst|alu_out0_i__6_n_7 -attr @rip O[24] -attr @name alu_out0_i__6_n_7 -pin alu_inst|alu_out0_i__6 O[24] -pin alu_inst|alu_out_i I7[24]
load net alu_inst|alu_out0_i__6_n_8 -attr @rip O[23] -attr @name alu_out0_i__6_n_8 -pin alu_inst|alu_out0_i__6 O[23] -pin alu_inst|alu_out_i I7[23]
load net alu_inst|alu_out0_i__6_n_9 -attr @rip O[22] -attr @name alu_out0_i__6_n_9 -pin alu_inst|alu_out0_i__6 O[22] -pin alu_inst|alu_out_i I7[22]
load net alu_inst|alu_out0_i__7_n_0 -attr @rip O[31] -attr @name alu_out0_i__7_n_0 -pin alu_inst|alu_out0_i__7 O[31] -pin alu_inst|alu_out_i I8[31]
load net alu_inst|alu_out0_i__7_n_1 -attr @rip O[30] -attr @name alu_out0_i__7_n_1 -pin alu_inst|alu_out0_i__7 O[30] -pin alu_inst|alu_out_i I8[30]
load net alu_inst|alu_out0_i__7_n_10 -attr @rip O[21] -attr @name alu_out0_i__7_n_10 -pin alu_inst|alu_out0_i__7 O[21] -pin alu_inst|alu_out_i I8[21]
load net alu_inst|alu_out0_i__7_n_11 -attr @rip O[20] -attr @name alu_out0_i__7_n_11 -pin alu_inst|alu_out0_i__7 O[20] -pin alu_inst|alu_out_i I8[20]
load net alu_inst|alu_out0_i__7_n_12 -attr @rip O[19] -attr @name alu_out0_i__7_n_12 -pin alu_inst|alu_out0_i__7 O[19] -pin alu_inst|alu_out_i I8[19]
load net alu_inst|alu_out0_i__7_n_13 -attr @rip O[18] -attr @name alu_out0_i__7_n_13 -pin alu_inst|alu_out0_i__7 O[18] -pin alu_inst|alu_out_i I8[18]
load net alu_inst|alu_out0_i__7_n_14 -attr @rip O[17] -attr @name alu_out0_i__7_n_14 -pin alu_inst|alu_out0_i__7 O[17] -pin alu_inst|alu_out_i I8[17]
load net alu_inst|alu_out0_i__7_n_15 -attr @rip O[16] -attr @name alu_out0_i__7_n_15 -pin alu_inst|alu_out0_i__7 O[16] -pin alu_inst|alu_out_i I8[16]
load net alu_inst|alu_out0_i__7_n_16 -attr @rip O[15] -attr @name alu_out0_i__7_n_16 -pin alu_inst|alu_out0_i__7 O[15] -pin alu_inst|alu_out_i I8[15]
load net alu_inst|alu_out0_i__7_n_17 -attr @rip O[14] -attr @name alu_out0_i__7_n_17 -pin alu_inst|alu_out0_i__7 O[14] -pin alu_inst|alu_out_i I8[14]
load net alu_inst|alu_out0_i__7_n_18 -attr @rip O[13] -attr @name alu_out0_i__7_n_18 -pin alu_inst|alu_out0_i__7 O[13] -pin alu_inst|alu_out_i I8[13]
load net alu_inst|alu_out0_i__7_n_19 -attr @rip O[12] -attr @name alu_out0_i__7_n_19 -pin alu_inst|alu_out0_i__7 O[12] -pin alu_inst|alu_out_i I8[12]
load net alu_inst|alu_out0_i__7_n_2 -attr @rip O[29] -attr @name alu_out0_i__7_n_2 -pin alu_inst|alu_out0_i__7 O[29] -pin alu_inst|alu_out_i I8[29]
load net alu_inst|alu_out0_i__7_n_20 -attr @rip O[11] -attr @name alu_out0_i__7_n_20 -pin alu_inst|alu_out0_i__7 O[11] -pin alu_inst|alu_out_i I8[11]
load net alu_inst|alu_out0_i__7_n_21 -attr @rip O[10] -attr @name alu_out0_i__7_n_21 -pin alu_inst|alu_out0_i__7 O[10] -pin alu_inst|alu_out_i I8[10]
load net alu_inst|alu_out0_i__7_n_22 -attr @rip O[9] -attr @name alu_out0_i__7_n_22 -pin alu_inst|alu_out0_i__7 O[9] -pin alu_inst|alu_out_i I8[9]
load net alu_inst|alu_out0_i__7_n_23 -attr @rip O[8] -attr @name alu_out0_i__7_n_23 -pin alu_inst|alu_out0_i__7 O[8] -pin alu_inst|alu_out_i I8[8]
load net alu_inst|alu_out0_i__7_n_24 -attr @rip O[7] -attr @name alu_out0_i__7_n_24 -pin alu_inst|alu_out0_i__7 O[7] -pin alu_inst|alu_out_i I8[7]
load net alu_inst|alu_out0_i__7_n_25 -attr @rip O[6] -attr @name alu_out0_i__7_n_25 -pin alu_inst|alu_out0_i__7 O[6] -pin alu_inst|alu_out_i I8[6]
load net alu_inst|alu_out0_i__7_n_26 -attr @rip O[5] -attr @name alu_out0_i__7_n_26 -pin alu_inst|alu_out0_i__7 O[5] -pin alu_inst|alu_out_i I8[5]
load net alu_inst|alu_out0_i__7_n_27 -attr @rip O[4] -attr @name alu_out0_i__7_n_27 -pin alu_inst|alu_out0_i__7 O[4] -pin alu_inst|alu_out_i I8[4]
load net alu_inst|alu_out0_i__7_n_28 -attr @rip O[3] -attr @name alu_out0_i__7_n_28 -pin alu_inst|alu_out0_i__7 O[3] -pin alu_inst|alu_out_i I8[3]
load net alu_inst|alu_out0_i__7_n_29 -attr @rip O[2] -attr @name alu_out0_i__7_n_29 -pin alu_inst|alu_out0_i__7 O[2] -pin alu_inst|alu_out_i I8[2]
load net alu_inst|alu_out0_i__7_n_3 -attr @rip O[28] -attr @name alu_out0_i__7_n_3 -pin alu_inst|alu_out0_i__7 O[28] -pin alu_inst|alu_out_i I8[28]
load net alu_inst|alu_out0_i__7_n_30 -attr @rip O[1] -attr @name alu_out0_i__7_n_30 -pin alu_inst|alu_out0_i__7 O[1] -pin alu_inst|alu_out_i I8[1]
load net alu_inst|alu_out0_i__7_n_31 -attr @rip O[0] -attr @name alu_out0_i__7_n_31 -pin alu_inst|alu_out0_i__7 O[0] -pin alu_inst|alu_out_i I8[0]
load net alu_inst|alu_out0_i__7_n_4 -attr @rip O[27] -attr @name alu_out0_i__7_n_4 -pin alu_inst|alu_out0_i__7 O[27] -pin alu_inst|alu_out_i I8[27]
load net alu_inst|alu_out0_i__7_n_5 -attr @rip O[26] -attr @name alu_out0_i__7_n_5 -pin alu_inst|alu_out0_i__7 O[26] -pin alu_inst|alu_out_i I8[26]
load net alu_inst|alu_out0_i__7_n_6 -attr @rip O[25] -attr @name alu_out0_i__7_n_6 -pin alu_inst|alu_out0_i__7 O[25] -pin alu_inst|alu_out_i I8[25]
load net alu_inst|alu_out0_i__7_n_7 -attr @rip O[24] -attr @name alu_out0_i__7_n_7 -pin alu_inst|alu_out0_i__7 O[24] -pin alu_inst|alu_out_i I8[24]
load net alu_inst|alu_out0_i__7_n_8 -attr @rip O[23] -attr @name alu_out0_i__7_n_8 -pin alu_inst|alu_out0_i__7 O[23] -pin alu_inst|alu_out_i I8[23]
load net alu_inst|alu_out0_i__7_n_9 -attr @rip O[22] -attr @name alu_out0_i__7_n_9 -pin alu_inst|alu_out0_i__7 O[22] -pin alu_inst|alu_out_i I8[22]
load net alu_inst|alu_out0_i__8_n_0 -attr @rip O[31] -attr @name alu_out0_i__8_n_0 -pin alu_inst|alu_out0_i__8 O[31] -pin alu_inst|alu_out_i I9[31]
load net alu_inst|alu_out0_i__8_n_1 -attr @rip O[30] -attr @name alu_out0_i__8_n_1 -pin alu_inst|alu_out0_i__8 O[30] -pin alu_inst|alu_out_i I9[30]
load net alu_inst|alu_out0_i__8_n_10 -attr @rip O[21] -attr @name alu_out0_i__8_n_10 -pin alu_inst|alu_out0_i__8 O[21] -pin alu_inst|alu_out_i I9[21]
load net alu_inst|alu_out0_i__8_n_11 -attr @rip O[20] -attr @name alu_out0_i__8_n_11 -pin alu_inst|alu_out0_i__8 O[20] -pin alu_inst|alu_out_i I9[20]
load net alu_inst|alu_out0_i__8_n_12 -attr @rip O[19] -attr @name alu_out0_i__8_n_12 -pin alu_inst|alu_out0_i__8 O[19] -pin alu_inst|alu_out_i I9[19]
load net alu_inst|alu_out0_i__8_n_13 -attr @rip O[18] -attr @name alu_out0_i__8_n_13 -pin alu_inst|alu_out0_i__8 O[18] -pin alu_inst|alu_out_i I9[18]
load net alu_inst|alu_out0_i__8_n_14 -attr @rip O[17] -attr @name alu_out0_i__8_n_14 -pin alu_inst|alu_out0_i__8 O[17] -pin alu_inst|alu_out_i I9[17]
load net alu_inst|alu_out0_i__8_n_15 -attr @rip O[16] -attr @name alu_out0_i__8_n_15 -pin alu_inst|alu_out0_i__8 O[16] -pin alu_inst|alu_out_i I9[16]
load net alu_inst|alu_out0_i__8_n_16 -attr @rip O[15] -attr @name alu_out0_i__8_n_16 -pin alu_inst|alu_out0_i__8 O[15] -pin alu_inst|alu_out_i I9[15]
load net alu_inst|alu_out0_i__8_n_17 -attr @rip O[14] -attr @name alu_out0_i__8_n_17 -pin alu_inst|alu_out0_i__8 O[14] -pin alu_inst|alu_out_i I9[14]
load net alu_inst|alu_out0_i__8_n_18 -attr @rip O[13] -attr @name alu_out0_i__8_n_18 -pin alu_inst|alu_out0_i__8 O[13] -pin alu_inst|alu_out_i I9[13]
load net alu_inst|alu_out0_i__8_n_19 -attr @rip O[12] -attr @name alu_out0_i__8_n_19 -pin alu_inst|alu_out0_i__8 O[12] -pin alu_inst|alu_out_i I9[12]
load net alu_inst|alu_out0_i__8_n_2 -attr @rip O[29] -attr @name alu_out0_i__8_n_2 -pin alu_inst|alu_out0_i__8 O[29] -pin alu_inst|alu_out_i I9[29]
load net alu_inst|alu_out0_i__8_n_20 -attr @rip O[11] -attr @name alu_out0_i__8_n_20 -pin alu_inst|alu_out0_i__8 O[11] -pin alu_inst|alu_out_i I9[11]
load net alu_inst|alu_out0_i__8_n_21 -attr @rip O[10] -attr @name alu_out0_i__8_n_21 -pin alu_inst|alu_out0_i__8 O[10] -pin alu_inst|alu_out_i I9[10]
load net alu_inst|alu_out0_i__8_n_22 -attr @rip O[9] -attr @name alu_out0_i__8_n_22 -pin alu_inst|alu_out0_i__8 O[9] -pin alu_inst|alu_out_i I9[9]
load net alu_inst|alu_out0_i__8_n_23 -attr @rip O[8] -attr @name alu_out0_i__8_n_23 -pin alu_inst|alu_out0_i__8 O[8] -pin alu_inst|alu_out_i I9[8]
load net alu_inst|alu_out0_i__8_n_24 -attr @rip O[7] -attr @name alu_out0_i__8_n_24 -pin alu_inst|alu_out0_i__8 O[7] -pin alu_inst|alu_out_i I9[7]
load net alu_inst|alu_out0_i__8_n_25 -attr @rip O[6] -attr @name alu_out0_i__8_n_25 -pin alu_inst|alu_out0_i__8 O[6] -pin alu_inst|alu_out_i I9[6]
load net alu_inst|alu_out0_i__8_n_26 -attr @rip O[5] -attr @name alu_out0_i__8_n_26 -pin alu_inst|alu_out0_i__8 O[5] -pin alu_inst|alu_out_i I9[5]
load net alu_inst|alu_out0_i__8_n_27 -attr @rip O[4] -attr @name alu_out0_i__8_n_27 -pin alu_inst|alu_out0_i__8 O[4] -pin alu_inst|alu_out_i I9[4]
load net alu_inst|alu_out0_i__8_n_28 -attr @rip O[3] -attr @name alu_out0_i__8_n_28 -pin alu_inst|alu_out0_i__8 O[3] -pin alu_inst|alu_out_i I9[3]
load net alu_inst|alu_out0_i__8_n_29 -attr @rip O[2] -attr @name alu_out0_i__8_n_29 -pin alu_inst|alu_out0_i__8 O[2] -pin alu_inst|alu_out_i I9[2]
load net alu_inst|alu_out0_i__8_n_3 -attr @rip O[28] -attr @name alu_out0_i__8_n_3 -pin alu_inst|alu_out0_i__8 O[28] -pin alu_inst|alu_out_i I9[28]
load net alu_inst|alu_out0_i__8_n_30 -attr @rip O[1] -attr @name alu_out0_i__8_n_30 -pin alu_inst|alu_out0_i__8 O[1] -pin alu_inst|alu_out_i I9[1]
load net alu_inst|alu_out0_i__8_n_31 -attr @rip O[0] -attr @name alu_out0_i__8_n_31 -pin alu_inst|alu_out0_i__8 O[0] -pin alu_inst|alu_out_i I9[0]
load net alu_inst|alu_out0_i__8_n_4 -attr @rip O[27] -attr @name alu_out0_i__8_n_4 -pin alu_inst|alu_out0_i__8 O[27] -pin alu_inst|alu_out_i I9[27]
load net alu_inst|alu_out0_i__8_n_5 -attr @rip O[26] -attr @name alu_out0_i__8_n_5 -pin alu_inst|alu_out0_i__8 O[26] -pin alu_inst|alu_out_i I9[26]
load net alu_inst|alu_out0_i__8_n_6 -attr @rip O[25] -attr @name alu_out0_i__8_n_6 -pin alu_inst|alu_out0_i__8 O[25] -pin alu_inst|alu_out_i I9[25]
load net alu_inst|alu_out0_i__8_n_7 -attr @rip O[24] -attr @name alu_out0_i__8_n_7 -pin alu_inst|alu_out0_i__8 O[24] -pin alu_inst|alu_out_i I9[24]
load net alu_inst|alu_out0_i__8_n_8 -attr @rip O[23] -attr @name alu_out0_i__8_n_8 -pin alu_inst|alu_out0_i__8 O[23] -pin alu_inst|alu_out_i I9[23]
load net alu_inst|alu_out0_i__8_n_9 -attr @rip O[22] -attr @name alu_out0_i__8_n_9 -pin alu_inst|alu_out0_i__8 O[22] -pin alu_inst|alu_out_i I9[22]
load net alu_inst|alu_out0_i_n_0 -attr @rip O[31] -attr @name alu_out0_i_n_0 -pin alu_inst|alu_out0_i O[31] -pin alu_inst|alu_out_i I0[31]
load net alu_inst|alu_out0_i_n_1 -attr @rip O[30] -attr @name alu_out0_i_n_1 -pin alu_inst|alu_out0_i O[30] -pin alu_inst|alu_out_i I0[30]
load net alu_inst|alu_out0_i_n_10 -attr @rip O[21] -attr @name alu_out0_i_n_10 -pin alu_inst|alu_out0_i O[21] -pin alu_inst|alu_out_i I0[21]
load net alu_inst|alu_out0_i_n_11 -attr @rip O[20] -attr @name alu_out0_i_n_11 -pin alu_inst|alu_out0_i O[20] -pin alu_inst|alu_out_i I0[20]
load net alu_inst|alu_out0_i_n_12 -attr @rip O[19] -attr @name alu_out0_i_n_12 -pin alu_inst|alu_out0_i O[19] -pin alu_inst|alu_out_i I0[19]
load net alu_inst|alu_out0_i_n_13 -attr @rip O[18] -attr @name alu_out0_i_n_13 -pin alu_inst|alu_out0_i O[18] -pin alu_inst|alu_out_i I0[18]
load net alu_inst|alu_out0_i_n_14 -attr @rip O[17] -attr @name alu_out0_i_n_14 -pin alu_inst|alu_out0_i O[17] -pin alu_inst|alu_out_i I0[17]
load net alu_inst|alu_out0_i_n_15 -attr @rip O[16] -attr @name alu_out0_i_n_15 -pin alu_inst|alu_out0_i O[16] -pin alu_inst|alu_out_i I0[16]
load net alu_inst|alu_out0_i_n_16 -attr @rip O[15] -attr @name alu_out0_i_n_16 -pin alu_inst|alu_out0_i O[15] -pin alu_inst|alu_out_i I0[15]
load net alu_inst|alu_out0_i_n_17 -attr @rip O[14] -attr @name alu_out0_i_n_17 -pin alu_inst|alu_out0_i O[14] -pin alu_inst|alu_out_i I0[14]
load net alu_inst|alu_out0_i_n_18 -attr @rip O[13] -attr @name alu_out0_i_n_18 -pin alu_inst|alu_out0_i O[13] -pin alu_inst|alu_out_i I0[13]
load net alu_inst|alu_out0_i_n_19 -attr @rip O[12] -attr @name alu_out0_i_n_19 -pin alu_inst|alu_out0_i O[12] -pin alu_inst|alu_out_i I0[12]
load net alu_inst|alu_out0_i_n_2 -attr @rip O[29] -attr @name alu_out0_i_n_2 -pin alu_inst|alu_out0_i O[29] -pin alu_inst|alu_out_i I0[29]
load net alu_inst|alu_out0_i_n_20 -attr @rip O[11] -attr @name alu_out0_i_n_20 -pin alu_inst|alu_out0_i O[11] -pin alu_inst|alu_out_i I0[11]
load net alu_inst|alu_out0_i_n_21 -attr @rip O[10] -attr @name alu_out0_i_n_21 -pin alu_inst|alu_out0_i O[10] -pin alu_inst|alu_out_i I0[10]
load net alu_inst|alu_out0_i_n_22 -attr @rip O[9] -attr @name alu_out0_i_n_22 -pin alu_inst|alu_out0_i O[9] -pin alu_inst|alu_out_i I0[9]
load net alu_inst|alu_out0_i_n_23 -attr @rip O[8] -attr @name alu_out0_i_n_23 -pin alu_inst|alu_out0_i O[8] -pin alu_inst|alu_out_i I0[8]
load net alu_inst|alu_out0_i_n_24 -attr @rip O[7] -attr @name alu_out0_i_n_24 -pin alu_inst|alu_out0_i O[7] -pin alu_inst|alu_out_i I0[7]
load net alu_inst|alu_out0_i_n_25 -attr @rip O[6] -attr @name alu_out0_i_n_25 -pin alu_inst|alu_out0_i O[6] -pin alu_inst|alu_out_i I0[6]
load net alu_inst|alu_out0_i_n_26 -attr @rip O[5] -attr @name alu_out0_i_n_26 -pin alu_inst|alu_out0_i O[5] -pin alu_inst|alu_out_i I0[5]
load net alu_inst|alu_out0_i_n_27 -attr @rip O[4] -attr @name alu_out0_i_n_27 -pin alu_inst|alu_out0_i O[4] -pin alu_inst|alu_out_i I0[4]
load net alu_inst|alu_out0_i_n_28 -attr @rip O[3] -attr @name alu_out0_i_n_28 -pin alu_inst|alu_out0_i O[3] -pin alu_inst|alu_out_i I0[3]
load net alu_inst|alu_out0_i_n_29 -attr @rip O[2] -attr @name alu_out0_i_n_29 -pin alu_inst|alu_out0_i O[2] -pin alu_inst|alu_out_i I0[2]
load net alu_inst|alu_out0_i_n_3 -attr @rip O[28] -attr @name alu_out0_i_n_3 -pin alu_inst|alu_out0_i O[28] -pin alu_inst|alu_out_i I0[28]
load net alu_inst|alu_out0_i_n_30 -attr @rip O[1] -attr @name alu_out0_i_n_30 -pin alu_inst|alu_out0_i O[1] -pin alu_inst|alu_out_i I0[1]
load net alu_inst|alu_out0_i_n_31 -attr @rip O[0] -attr @name alu_out0_i_n_31 -pin alu_inst|alu_out0_i O[0] -pin alu_inst|alu_out_i I0[0]
load net alu_inst|alu_out0_i_n_4 -attr @rip O[27] -attr @name alu_out0_i_n_4 -pin alu_inst|alu_out0_i O[27] -pin alu_inst|alu_out_i I0[27]
load net alu_inst|alu_out0_i_n_5 -attr @rip O[26] -attr @name alu_out0_i_n_5 -pin alu_inst|alu_out0_i O[26] -pin alu_inst|alu_out_i I0[26]
load net alu_inst|alu_out0_i_n_6 -attr @rip O[25] -attr @name alu_out0_i_n_6 -pin alu_inst|alu_out0_i O[25] -pin alu_inst|alu_out_i I0[25]
load net alu_inst|alu_out0_i_n_7 -attr @rip O[24] -attr @name alu_out0_i_n_7 -pin alu_inst|alu_out0_i O[24] -pin alu_inst|alu_out_i I0[24]
load net alu_inst|alu_out0_i_n_8 -attr @rip O[23] -attr @name alu_out0_i_n_8 -pin alu_inst|alu_out0_i O[23] -pin alu_inst|alu_out_i I0[23]
load net alu_inst|alu_out0_i_n_9 -attr @rip O[22] -attr @name alu_out0_i_n_9 -pin alu_inst|alu_out0_i O[22] -pin alu_inst|alu_out_i I0[22]
load net alu_inst|alu_out2 -attr @name alu_out2 -pin alu_inst|alu_out0_i__2 S -pin alu_inst|alu_out2_i O
netloc alu_inst|alu_out2 1 1 1 1200 1068n
load net alu_inst|alu_out2_i__0_n_0 -attr @name alu_out2_i__0_n_0 -pin alu_inst|alu_out0_i__3 S -pin alu_inst|alu_out2_i__0 O
netloc alu_inst|alu_out2_i__0_n_0 1 1 1 N 1208
load net alu_inst|alu_out[0] -attr @rip O[0] -attr @name alu_out[0] -hierPin alu_inst alu_out[0] -pin alu_inst|alu_out_i O[0]
load net alu_inst|alu_out[10] -attr @rip O[10] -attr @name alu_out[10] -hierPin alu_inst alu_out[10] -pin alu_inst|alu_out_i O[10]
load net alu_inst|alu_out[11] -attr @rip O[11] -attr @name alu_out[11] -hierPin alu_inst alu_out[11] -pin alu_inst|alu_out_i O[11]
load net alu_inst|alu_out[12] -attr @rip O[12] -attr @name alu_out[12] -hierPin alu_inst alu_out[12] -pin alu_inst|alu_out_i O[12]
load net alu_inst|alu_out[13] -attr @rip O[13] -attr @name alu_out[13] -hierPin alu_inst alu_out[13] -pin alu_inst|alu_out_i O[13]
load net alu_inst|alu_out[14] -attr @rip O[14] -attr @name alu_out[14] -hierPin alu_inst alu_out[14] -pin alu_inst|alu_out_i O[14]
load net alu_inst|alu_out[15] -attr @rip O[15] -attr @name alu_out[15] -hierPin alu_inst alu_out[15] -pin alu_inst|alu_out_i O[15]
load net alu_inst|alu_out[16] -attr @rip O[16] -attr @name alu_out[16] -hierPin alu_inst alu_out[16] -pin alu_inst|alu_out_i O[16]
load net alu_inst|alu_out[17] -attr @rip O[17] -attr @name alu_out[17] -hierPin alu_inst alu_out[17] -pin alu_inst|alu_out_i O[17]
load net alu_inst|alu_out[18] -attr @rip O[18] -attr @name alu_out[18] -hierPin alu_inst alu_out[18] -pin alu_inst|alu_out_i O[18]
load net alu_inst|alu_out[19] -attr @rip O[19] -attr @name alu_out[19] -hierPin alu_inst alu_out[19] -pin alu_inst|alu_out_i O[19]
load net alu_inst|alu_out[1] -attr @rip O[1] -attr @name alu_out[1] -hierPin alu_inst alu_out[1] -pin alu_inst|alu_out_i O[1]
load net alu_inst|alu_out[20] -attr @rip O[20] -attr @name alu_out[20] -hierPin alu_inst alu_out[20] -pin alu_inst|alu_out_i O[20]
load net alu_inst|alu_out[21] -attr @rip O[21] -attr @name alu_out[21] -hierPin alu_inst alu_out[21] -pin alu_inst|alu_out_i O[21]
load net alu_inst|alu_out[22] -attr @rip O[22] -attr @name alu_out[22] -hierPin alu_inst alu_out[22] -pin alu_inst|alu_out_i O[22]
load net alu_inst|alu_out[23] -attr @rip O[23] -attr @name alu_out[23] -hierPin alu_inst alu_out[23] -pin alu_inst|alu_out_i O[23]
load net alu_inst|alu_out[24] -attr @rip O[24] -attr @name alu_out[24] -hierPin alu_inst alu_out[24] -pin alu_inst|alu_out_i O[24]
load net alu_inst|alu_out[25] -attr @rip O[25] -attr @name alu_out[25] -hierPin alu_inst alu_out[25] -pin alu_inst|alu_out_i O[25]
load net alu_inst|alu_out[26] -attr @rip O[26] -attr @name alu_out[26] -hierPin alu_inst alu_out[26] -pin alu_inst|alu_out_i O[26]
load net alu_inst|alu_out[27] -attr @rip O[27] -attr @name alu_out[27] -hierPin alu_inst alu_out[27] -pin alu_inst|alu_out_i O[27]
load net alu_inst|alu_out[28] -attr @rip O[28] -attr @name alu_out[28] -hierPin alu_inst alu_out[28] -pin alu_inst|alu_out_i O[28]
load net alu_inst|alu_out[29] -attr @rip O[29] -attr @name alu_out[29] -hierPin alu_inst alu_out[29] -pin alu_inst|alu_out_i O[29]
load net alu_inst|alu_out[2] -attr @rip O[2] -attr @name alu_out[2] -hierPin alu_inst alu_out[2] -pin alu_inst|alu_out_i O[2]
load net alu_inst|alu_out[30] -attr @rip O[30] -attr @name alu_out[30] -hierPin alu_inst alu_out[30] -pin alu_inst|alu_out_i O[30]
load net alu_inst|alu_out[31] -attr @rip O[31] -attr @name alu_out[31] -hierPin alu_inst alu_out[31] -pin alu_inst|alu_out_i O[31]
load net alu_inst|alu_out[3] -attr @rip O[3] -attr @name alu_out[3] -hierPin alu_inst alu_out[3] -pin alu_inst|alu_out_i O[3]
load net alu_inst|alu_out[4] -attr @rip O[4] -attr @name alu_out[4] -hierPin alu_inst alu_out[4] -pin alu_inst|alu_out_i O[4]
load net alu_inst|alu_out[5] -attr @rip O[5] -attr @name alu_out[5] -hierPin alu_inst alu_out[5] -pin alu_inst|alu_out_i O[5]
load net alu_inst|alu_out[6] -attr @rip O[6] -attr @name alu_out[6] -hierPin alu_inst alu_out[6] -pin alu_inst|alu_out_i O[6]
load net alu_inst|alu_out[7] -attr @rip O[7] -attr @name alu_out[7] -hierPin alu_inst alu_out[7] -pin alu_inst|alu_out_i O[7]
load net alu_inst|alu_out[8] -attr @rip O[8] -attr @name alu_out[8] -hierPin alu_inst alu_out[8] -pin alu_inst|alu_out_i O[8]
load net alu_inst|alu_out[9] -attr @rip O[9] -attr @name alu_out[9] -hierPin alu_inst alu_out[9] -pin alu_inst|alu_out_i O[9]
load net alu_inst|b[0] -attr @rip b[0] -attr @name b[0] -hierPin alu_inst b[0] -pin alu_inst|alu_out0_i I1[0] -pin alu_inst|alu_out0_i__0 I1[0] -pin alu_inst|alu_out0_i__1 I1[0] -pin alu_inst|alu_out0_i__4 I1[0] -pin alu_inst|alu_out0_i__5 I1[0] -pin alu_inst|alu_out0_i__6 I1[0] -pin alu_inst|alu_out0_i__7 I1[0] -pin alu_inst|alu_out0_i__8 I1[0] -pin alu_inst|alu_out2_i I1[0] -pin alu_inst|alu_out2_i__0 I1[0] -pin alu_inst|alu_out_i I10[0]
load net alu_inst|b[10] -attr @rip b[10] -attr @name b[10] -hierPin alu_inst b[10] -pin alu_inst|alu_out0_i I1[10] -pin alu_inst|alu_out0_i__0 I1[10] -pin alu_inst|alu_out0_i__4 I1[10] -pin alu_inst|alu_out0_i__7 I1[10] -pin alu_inst|alu_out0_i__8 I1[10] -pin alu_inst|alu_out2_i I1[10] -pin alu_inst|alu_out2_i__0 I1[10] -pin alu_inst|alu_out_i I10[10]
load net alu_inst|b[11] -attr @rip b[11] -attr @name b[11] -hierPin alu_inst b[11] -pin alu_inst|alu_out0_i I1[11] -pin alu_inst|alu_out0_i__0 I1[11] -pin alu_inst|alu_out0_i__4 I1[11] -pin alu_inst|alu_out0_i__7 I1[11] -pin alu_inst|alu_out0_i__8 I1[11] -pin alu_inst|alu_out2_i I1[11] -pin alu_inst|alu_out2_i__0 I1[11] -pin alu_inst|alu_out_i I10[11]
load net alu_inst|b[12] -attr @rip b[12] -attr @name b[12] -hierPin alu_inst b[12] -pin alu_inst|alu_out0_i I1[12] -pin alu_inst|alu_out0_i__0 I1[12] -pin alu_inst|alu_out0_i__4 I1[12] -pin alu_inst|alu_out0_i__7 I1[12] -pin alu_inst|alu_out0_i__8 I1[12] -pin alu_inst|alu_out2_i I1[12] -pin alu_inst|alu_out2_i__0 I1[12] -pin alu_inst|alu_out_i I10[12]
load net alu_inst|b[13] -attr @rip b[13] -attr @name b[13] -hierPin alu_inst b[13] -pin alu_inst|alu_out0_i I1[13] -pin alu_inst|alu_out0_i__0 I1[13] -pin alu_inst|alu_out0_i__4 I1[13] -pin alu_inst|alu_out0_i__7 I1[13] -pin alu_inst|alu_out0_i__8 I1[13] -pin alu_inst|alu_out2_i I1[13] -pin alu_inst|alu_out2_i__0 I1[13] -pin alu_inst|alu_out_i I10[13]
load net alu_inst|b[14] -attr @rip b[14] -attr @name b[14] -hierPin alu_inst b[14] -pin alu_inst|alu_out0_i I1[14] -pin alu_inst|alu_out0_i__0 I1[14] -pin alu_inst|alu_out0_i__4 I1[14] -pin alu_inst|alu_out0_i__7 I1[14] -pin alu_inst|alu_out0_i__8 I1[14] -pin alu_inst|alu_out2_i I1[14] -pin alu_inst|alu_out2_i__0 I1[14] -pin alu_inst|alu_out_i I10[14]
load net alu_inst|b[15] -attr @rip b[15] -attr @name b[15] -hierPin alu_inst b[15] -pin alu_inst|alu_out0_i I1[15] -pin alu_inst|alu_out0_i__0 I1[15] -pin alu_inst|alu_out0_i__4 I1[15] -pin alu_inst|alu_out0_i__7 I1[15] -pin alu_inst|alu_out0_i__8 I1[15] -pin alu_inst|alu_out2_i I1[15] -pin alu_inst|alu_out2_i__0 I1[15] -pin alu_inst|alu_out_i I10[15]
load net alu_inst|b[16] -attr @rip b[16] -attr @name b[16] -hierPin alu_inst b[16] -pin alu_inst|alu_out0_i I1[16] -pin alu_inst|alu_out0_i__0 I1[16] -pin alu_inst|alu_out0_i__4 I1[16] -pin alu_inst|alu_out0_i__7 I1[16] -pin alu_inst|alu_out0_i__8 I1[16] -pin alu_inst|alu_out2_i I1[16] -pin alu_inst|alu_out2_i__0 I1[16] -pin alu_inst|alu_out_i I10[16]
load net alu_inst|b[17] -attr @rip b[17] -attr @name b[17] -hierPin alu_inst b[17] -pin alu_inst|alu_out0_i I1[17] -pin alu_inst|alu_out0_i__0 I1[17] -pin alu_inst|alu_out0_i__4 I1[17] -pin alu_inst|alu_out0_i__7 I1[17] -pin alu_inst|alu_out0_i__8 I1[17] -pin alu_inst|alu_out2_i I1[17] -pin alu_inst|alu_out2_i__0 I1[17] -pin alu_inst|alu_out_i I10[17]
load net alu_inst|b[18] -attr @rip b[18] -attr @name b[18] -hierPin alu_inst b[18] -pin alu_inst|alu_out0_i I1[18] -pin alu_inst|alu_out0_i__0 I1[18] -pin alu_inst|alu_out0_i__4 I1[18] -pin alu_inst|alu_out0_i__7 I1[18] -pin alu_inst|alu_out0_i__8 I1[18] -pin alu_inst|alu_out2_i I1[18] -pin alu_inst|alu_out2_i__0 I1[18] -pin alu_inst|alu_out_i I10[18]
load net alu_inst|b[19] -attr @rip b[19] -attr @name b[19] -hierPin alu_inst b[19] -pin alu_inst|alu_out0_i I1[19] -pin alu_inst|alu_out0_i__0 I1[19] -pin alu_inst|alu_out0_i__4 I1[19] -pin alu_inst|alu_out0_i__7 I1[19] -pin alu_inst|alu_out0_i__8 I1[19] -pin alu_inst|alu_out2_i I1[19] -pin alu_inst|alu_out2_i__0 I1[19] -pin alu_inst|alu_out_i I10[19]
load net alu_inst|b[1] -attr @rip b[1] -attr @name b[1] -hierPin alu_inst b[1] -pin alu_inst|alu_out0_i I1[1] -pin alu_inst|alu_out0_i__0 I1[1] -pin alu_inst|alu_out0_i__1 I1[1] -pin alu_inst|alu_out0_i__4 I1[1] -pin alu_inst|alu_out0_i__5 I1[1] -pin alu_inst|alu_out0_i__6 I1[1] -pin alu_inst|alu_out0_i__7 I1[1] -pin alu_inst|alu_out0_i__8 I1[1] -pin alu_inst|alu_out2_i I1[1] -pin alu_inst|alu_out2_i__0 I1[1] -pin alu_inst|alu_out_i I10[1]
load net alu_inst|b[20] -attr @rip b[20] -attr @name b[20] -hierPin alu_inst b[20] -pin alu_inst|alu_out0_i I1[20] -pin alu_inst|alu_out0_i__0 I1[20] -pin alu_inst|alu_out0_i__4 I1[20] -pin alu_inst|alu_out0_i__7 I1[20] -pin alu_inst|alu_out0_i__8 I1[20] -pin alu_inst|alu_out2_i I1[20] -pin alu_inst|alu_out2_i__0 I1[20] -pin alu_inst|alu_out_i I10[20]
load net alu_inst|b[21] -attr @rip b[21] -attr @name b[21] -hierPin alu_inst b[21] -pin alu_inst|alu_out0_i I1[21] -pin alu_inst|alu_out0_i__0 I1[21] -pin alu_inst|alu_out0_i__4 I1[21] -pin alu_inst|alu_out0_i__7 I1[21] -pin alu_inst|alu_out0_i__8 I1[21] -pin alu_inst|alu_out2_i I1[21] -pin alu_inst|alu_out2_i__0 I1[21] -pin alu_inst|alu_out_i I10[21]
load net alu_inst|b[22] -attr @rip b[22] -attr @name b[22] -hierPin alu_inst b[22] -pin alu_inst|alu_out0_i I1[22] -pin alu_inst|alu_out0_i__0 I1[22] -pin alu_inst|alu_out0_i__4 I1[22] -pin alu_inst|alu_out0_i__7 I1[22] -pin alu_inst|alu_out0_i__8 I1[22] -pin alu_inst|alu_out2_i I1[22] -pin alu_inst|alu_out2_i__0 I1[22] -pin alu_inst|alu_out_i I10[22]
load net alu_inst|b[23] -attr @rip b[23] -attr @name b[23] -hierPin alu_inst b[23] -pin alu_inst|alu_out0_i I1[23] -pin alu_inst|alu_out0_i__0 I1[23] -pin alu_inst|alu_out0_i__4 I1[23] -pin alu_inst|alu_out0_i__7 I1[23] -pin alu_inst|alu_out0_i__8 I1[23] -pin alu_inst|alu_out2_i I1[23] -pin alu_inst|alu_out2_i__0 I1[23] -pin alu_inst|alu_out_i I10[23]
load net alu_inst|b[24] -attr @rip b[24] -attr @name b[24] -hierPin alu_inst b[24] -pin alu_inst|alu_out0_i I1[24] -pin alu_inst|alu_out0_i__0 I1[24] -pin alu_inst|alu_out0_i__4 I1[24] -pin alu_inst|alu_out0_i__7 I1[24] -pin alu_inst|alu_out0_i__8 I1[24] -pin alu_inst|alu_out2_i I1[24] -pin alu_inst|alu_out2_i__0 I1[24] -pin alu_inst|alu_out_i I10[24]
load net alu_inst|b[25] -attr @rip b[25] -attr @name b[25] -hierPin alu_inst b[25] -pin alu_inst|alu_out0_i I1[25] -pin alu_inst|alu_out0_i__0 I1[25] -pin alu_inst|alu_out0_i__4 I1[25] -pin alu_inst|alu_out0_i__7 I1[25] -pin alu_inst|alu_out0_i__8 I1[25] -pin alu_inst|alu_out2_i I1[25] -pin alu_inst|alu_out2_i__0 I1[25] -pin alu_inst|alu_out_i I10[25]
load net alu_inst|b[26] -attr @rip b[26] -attr @name b[26] -hierPin alu_inst b[26] -pin alu_inst|alu_out0_i I1[26] -pin alu_inst|alu_out0_i__0 I1[26] -pin alu_inst|alu_out0_i__4 I1[26] -pin alu_inst|alu_out0_i__7 I1[26] -pin alu_inst|alu_out0_i__8 I1[26] -pin alu_inst|alu_out2_i I1[26] -pin alu_inst|alu_out2_i__0 I1[26] -pin alu_inst|alu_out_i I10[26]
load net alu_inst|b[27] -attr @rip b[27] -attr @name b[27] -hierPin alu_inst b[27] -pin alu_inst|alu_out0_i I1[27] -pin alu_inst|alu_out0_i__0 I1[27] -pin alu_inst|alu_out0_i__4 I1[27] -pin alu_inst|alu_out0_i__7 I1[27] -pin alu_inst|alu_out0_i__8 I1[27] -pin alu_inst|alu_out2_i I1[27] -pin alu_inst|alu_out2_i__0 I1[27] -pin alu_inst|alu_out_i I10[27]
load net alu_inst|b[28] -attr @rip b[28] -attr @name b[28] -hierPin alu_inst b[28] -pin alu_inst|alu_out0_i I1[28] -pin alu_inst|alu_out0_i__0 I1[28] -pin alu_inst|alu_out0_i__4 I1[28] -pin alu_inst|alu_out0_i__7 I1[28] -pin alu_inst|alu_out0_i__8 I1[28] -pin alu_inst|alu_out2_i I1[28] -pin alu_inst|alu_out2_i__0 I1[28] -pin alu_inst|alu_out_i I10[28]
load net alu_inst|b[29] -attr @rip b[29] -attr @name b[29] -hierPin alu_inst b[29] -pin alu_inst|alu_out0_i I1[29] -pin alu_inst|alu_out0_i__0 I1[29] -pin alu_inst|alu_out0_i__4 I1[29] -pin alu_inst|alu_out0_i__7 I1[29] -pin alu_inst|alu_out0_i__8 I1[29] -pin alu_inst|alu_out2_i I1[29] -pin alu_inst|alu_out2_i__0 I1[29] -pin alu_inst|alu_out_i I10[29]
load net alu_inst|b[2] -attr @rip b[2] -attr @name b[2] -hierPin alu_inst b[2] -pin alu_inst|alu_out0_i I1[2] -pin alu_inst|alu_out0_i__0 I1[2] -pin alu_inst|alu_out0_i__1 I1[2] -pin alu_inst|alu_out0_i__4 I1[2] -pin alu_inst|alu_out0_i__5 I1[2] -pin alu_inst|alu_out0_i__6 I1[2] -pin alu_inst|alu_out0_i__7 I1[2] -pin alu_inst|alu_out0_i__8 I1[2] -pin alu_inst|alu_out2_i I1[2] -pin alu_inst|alu_out2_i__0 I1[2] -pin alu_inst|alu_out_i I10[2]
load net alu_inst|b[30] -attr @rip b[30] -attr @name b[30] -hierPin alu_inst b[30] -pin alu_inst|alu_out0_i I1[30] -pin alu_inst|alu_out0_i__0 I1[30] -pin alu_inst|alu_out0_i__4 I1[30] -pin alu_inst|alu_out0_i__7 I1[30] -pin alu_inst|alu_out0_i__8 I1[30] -pin alu_inst|alu_out2_i I1[30] -pin alu_inst|alu_out2_i__0 I1[30] -pin alu_inst|alu_out_i I10[30]
load net alu_inst|b[31] -attr @rip b[31] -attr @name b[31] -hierPin alu_inst b[31] -pin alu_inst|alu_out0_i I1[31] -pin alu_inst|alu_out0_i__0 I1[31] -pin alu_inst|alu_out0_i__4 I1[31] -pin alu_inst|alu_out0_i__7 I1[31] -pin alu_inst|alu_out0_i__8 I1[31] -pin alu_inst|alu_out2_i I1[31] -pin alu_inst|alu_out2_i__0 I1[31] -pin alu_inst|alu_out_i I10[31]
load net alu_inst|b[3] -attr @rip b[3] -attr @name b[3] -hierPin alu_inst b[3] -pin alu_inst|alu_out0_i I1[3] -pin alu_inst|alu_out0_i__0 I1[3] -pin alu_inst|alu_out0_i__1 I1[3] -pin alu_inst|alu_out0_i__4 I1[3] -pin alu_inst|alu_out0_i__5 I1[3] -pin alu_inst|alu_out0_i__6 I1[3] -pin alu_inst|alu_out0_i__7 I1[3] -pin alu_inst|alu_out0_i__8 I1[3] -pin alu_inst|alu_out2_i I1[3] -pin alu_inst|alu_out2_i__0 I1[3] -pin alu_inst|alu_out_i I10[3]
load net alu_inst|b[4] -attr @rip b[4] -attr @name b[4] -hierPin alu_inst b[4] -pin alu_inst|alu_out0_i I1[4] -pin alu_inst|alu_out0_i__0 I1[4] -pin alu_inst|alu_out0_i__1 I1[4] -pin alu_inst|alu_out0_i__4 I1[4] -pin alu_inst|alu_out0_i__5 I1[4] -pin alu_inst|alu_out0_i__6 I1[4] -pin alu_inst|alu_out0_i__7 I1[4] -pin alu_inst|alu_out0_i__8 I1[4] -pin alu_inst|alu_out2_i I1[4] -pin alu_inst|alu_out2_i__0 I1[4] -pin alu_inst|alu_out_i I10[4]
load net alu_inst|b[5] -attr @rip b[5] -attr @name b[5] -hierPin alu_inst b[5] -pin alu_inst|alu_out0_i I1[5] -pin alu_inst|alu_out0_i__0 I1[5] -pin alu_inst|alu_out0_i__4 I1[5] -pin alu_inst|alu_out0_i__7 I1[5] -pin alu_inst|alu_out0_i__8 I1[5] -pin alu_inst|alu_out2_i I1[5] -pin alu_inst|alu_out2_i__0 I1[5] -pin alu_inst|alu_out_i I10[5]
load net alu_inst|b[6] -attr @rip b[6] -attr @name b[6] -hierPin alu_inst b[6] -pin alu_inst|alu_out0_i I1[6] -pin alu_inst|alu_out0_i__0 I1[6] -pin alu_inst|alu_out0_i__4 I1[6] -pin alu_inst|alu_out0_i__7 I1[6] -pin alu_inst|alu_out0_i__8 I1[6] -pin alu_inst|alu_out2_i I1[6] -pin alu_inst|alu_out2_i__0 I1[6] -pin alu_inst|alu_out_i I10[6]
load net alu_inst|b[7] -attr @rip b[7] -attr @name b[7] -hierPin alu_inst b[7] -pin alu_inst|alu_out0_i I1[7] -pin alu_inst|alu_out0_i__0 I1[7] -pin alu_inst|alu_out0_i__4 I1[7] -pin alu_inst|alu_out0_i__7 I1[7] -pin alu_inst|alu_out0_i__8 I1[7] -pin alu_inst|alu_out2_i I1[7] -pin alu_inst|alu_out2_i__0 I1[7] -pin alu_inst|alu_out_i I10[7]
load net alu_inst|b[8] -attr @rip b[8] -attr @name b[8] -hierPin alu_inst b[8] -pin alu_inst|alu_out0_i I1[8] -pin alu_inst|alu_out0_i__0 I1[8] -pin alu_inst|alu_out0_i__4 I1[8] -pin alu_inst|alu_out0_i__7 I1[8] -pin alu_inst|alu_out0_i__8 I1[8] -pin alu_inst|alu_out2_i I1[8] -pin alu_inst|alu_out2_i__0 I1[8] -pin alu_inst|alu_out_i I10[8]
load net alu_inst|b[9] -attr @rip b[9] -attr @name b[9] -hierPin alu_inst b[9] -pin alu_inst|alu_out0_i I1[9] -pin alu_inst|alu_out0_i__0 I1[9] -pin alu_inst|alu_out0_i__4 I1[9] -pin alu_inst|alu_out0_i__7 I1[9] -pin alu_inst|alu_out0_i__8 I1[9] -pin alu_inst|alu_out2_i I1[9] -pin alu_inst|alu_out2_i__0 I1[9] -pin alu_inst|alu_out_i I10[9]
load netBundle @alu_inst|a 32 alu_inst|a[31] alu_inst|a[30] alu_inst|a[29] alu_inst|a[28] alu_inst|a[27] alu_inst|a[26] alu_inst|a[25] alu_inst|a[24] alu_inst|a[23] alu_inst|a[22] alu_inst|a[21] alu_inst|a[20] alu_inst|a[19] alu_inst|a[18] alu_inst|a[17] alu_inst|a[16] alu_inst|a[15] alu_inst|a[14] alu_inst|a[13] alu_inst|a[12] alu_inst|a[11] alu_inst|a[10] alu_inst|a[9] alu_inst|a[8] alu_inst|a[7] alu_inst|a[6] alu_inst|a[5] alu_inst|a[4] alu_inst|a[3] alu_inst|a[2] alu_inst|a[1] alu_inst|a[0] -autobundled
netbloc @alu_inst|a 1 0 2 920 1068 1180
load netBundle @alu_inst|alu_ctrl 4 alu_inst|alu_ctrl[3] alu_inst|alu_ctrl[2] alu_inst|alu_ctrl[1] alu_inst|alu_ctrl[0] -autobundled
netbloc @alu_inst|alu_ctrl 1 0 3 NJ 1428 NJ 1428 1610
load netBundle @alu_inst|b 32 alu_inst|b[31] alu_inst|b[30] alu_inst|b[29] alu_inst|b[28] alu_inst|b[27] alu_inst|b[26] alu_inst|b[25] alu_inst|b[24] alu_inst|b[23] alu_inst|b[22] alu_inst|b[21] alu_inst|b[20] alu_inst|b[19] alu_inst|b[18] alu_inst|b[17] alu_inst|b[16] alu_inst|b[15] alu_inst|b[14] alu_inst|b[13] alu_inst|b[12] alu_inst|b[11] alu_inst|b[10] alu_inst|b[9] alu_inst|b[8] alu_inst|b[7] alu_inst|b[6] alu_inst|b[5] alu_inst|b[4] alu_inst|b[3] alu_inst|b[2] alu_inst|b[1] alu_inst|b[0] -autobundled
netbloc @alu_inst|b 1 0 3 940 1258 1160 1088 N
load netBundle @alu_inst|alu_out0_i_n_ 32 alu_inst|alu_out0_i_n_0 alu_inst|alu_out0_i_n_1 alu_inst|alu_out0_i_n_2 alu_inst|alu_out0_i_n_3 alu_inst|alu_out0_i_n_4 alu_inst|alu_out0_i_n_5 alu_inst|alu_out0_i_n_6 alu_inst|alu_out0_i_n_7 alu_inst|alu_out0_i_n_8 alu_inst|alu_out0_i_n_9 alu_inst|alu_out0_i_n_10 alu_inst|alu_out0_i_n_11 alu_inst|alu_out0_i_n_12 alu_inst|alu_out0_i_n_13 alu_inst|alu_out0_i_n_14 alu_inst|alu_out0_i_n_15 alu_inst|alu_out0_i_n_16 alu_inst|alu_out0_i_n_17 alu_inst|alu_out0_i_n_18 alu_inst|alu_out0_i_n_19 alu_inst|alu_out0_i_n_20 alu_inst|alu_out0_i_n_21 alu_inst|alu_out0_i_n_22 alu_inst|alu_out0_i_n_23 alu_inst|alu_out0_i_n_24 alu_inst|alu_out0_i_n_25 alu_inst|alu_out0_i_n_26 alu_inst|alu_out0_i_n_27 alu_inst|alu_out0_i_n_28 alu_inst|alu_out0_i_n_29 alu_inst|alu_out0_i_n_30 alu_inst|alu_out0_i_n_31 -autobundled
netbloc @alu_inst|alu_out0_i_n_ 1 2 1 1630 898n
load netBundle @alu_inst|alu_out0_i__0_n_ 32 alu_inst|alu_out0_i__0_n_0 alu_inst|alu_out0_i__0_n_1 alu_inst|alu_out0_i__0_n_2 alu_inst|alu_out0_i__0_n_3 alu_inst|alu_out0_i__0_n_4 alu_inst|alu_out0_i__0_n_5 alu_inst|alu_out0_i__0_n_6 alu_inst|alu_out0_i__0_n_7 alu_inst|alu_out0_i__0_n_8 alu_inst|alu_out0_i__0_n_9 alu_inst|alu_out0_i__0_n_10 alu_inst|alu_out0_i__0_n_11 alu_inst|alu_out0_i__0_n_12 alu_inst|alu_out0_i__0_n_13 alu_inst|alu_out0_i__0_n_14 alu_inst|alu_out0_i__0_n_15 alu_inst|alu_out0_i__0_n_16 alu_inst|alu_out0_i__0_n_17 alu_inst|alu_out0_i__0_n_18 alu_inst|alu_out0_i__0_n_19 alu_inst|alu_out0_i__0_n_20 alu_inst|alu_out0_i__0_n_21 alu_inst|alu_out0_i__0_n_22 alu_inst|alu_out0_i__0_n_23 alu_inst|alu_out0_i__0_n_24 alu_inst|alu_out0_i__0_n_25 alu_inst|alu_out0_i__0_n_26 alu_inst|alu_out0_i__0_n_27 alu_inst|alu_out0_i__0_n_28 alu_inst|alu_out0_i__0_n_29 alu_inst|alu_out0_i__0_n_30 alu_inst|alu_out0_i__0_n_31 -autobundled
netbloc @alu_inst|alu_out0_i__0_n_ 1 2 1 1650 708n
load netBundle @alu_inst|alu_out0_i__1_n_ 32 alu_inst|alu_out0_i__1_n_0 alu_inst|alu_out0_i__1_n_1 alu_inst|alu_out0_i__1_n_2 alu_inst|alu_out0_i__1_n_3 alu_inst|alu_out0_i__1_n_4 alu_inst|alu_out0_i__1_n_5 alu_inst|alu_out0_i__1_n_6 alu_inst|alu_out0_i__1_n_7 alu_inst|alu_out0_i__1_n_8 alu_inst|alu_out0_i__1_n_9 alu_inst|alu_out0_i__1_n_10 alu_inst|alu_out0_i__1_n_11 alu_inst|alu_out0_i__1_n_12 alu_inst|alu_out0_i__1_n_13 alu_inst|alu_out0_i__1_n_14 alu_inst|alu_out0_i__1_n_15 alu_inst|alu_out0_i__1_n_16 alu_inst|alu_out0_i__1_n_17 alu_inst|alu_out0_i__1_n_18 alu_inst|alu_out0_i__1_n_19 alu_inst|alu_out0_i__1_n_20 alu_inst|alu_out0_i__1_n_21 alu_inst|alu_out0_i__1_n_22 alu_inst|alu_out0_i__1_n_23 alu_inst|alu_out0_i__1_n_24 alu_inst|alu_out0_i__1_n_25 alu_inst|alu_out0_i__1_n_26 alu_inst|alu_out0_i__1_n_27 alu_inst|alu_out0_i__1_n_28 alu_inst|alu_out0_i__1_n_29 alu_inst|alu_out0_i__1_n_30 alu_inst|alu_out0_i__1_n_31 -autobundled
netbloc @alu_inst|alu_out0_i__1_n_ 1 2 1 1570 808n
load netBundle @alu_inst|alu_out0 2 alu_inst|alu_out0[1] alu_inst|alu_out0[0] -autobundled
netbloc @alu_inst|alu_out0 1 2 1 1550 1008n
load netBundle @alu_inst|alu_out0_i__3_n_ 2 alu_inst|alu_out0_i__3_n_0 alu_inst|alu_out0_i__3_n_1 -autobundled
netbloc @alu_inst|alu_out0_i__3_n_ 1 2 1 1530 1148n
load netBundle @alu_inst|alu_out0_i__4_n_ 32 alu_inst|alu_out0_i__4_n_0 alu_inst|alu_out0_i__4_n_1 alu_inst|alu_out0_i__4_n_2 alu_inst|alu_out0_i__4_n_3 alu_inst|alu_out0_i__4_n_4 alu_inst|alu_out0_i__4_n_5 alu_inst|alu_out0_i__4_n_6 alu_inst|alu_out0_i__4_n_7 alu_inst|alu_out0_i__4_n_8 alu_inst|alu_out0_i__4_n_9 alu_inst|alu_out0_i__4_n_10 alu_inst|alu_out0_i__4_n_11 alu_inst|alu_out0_i__4_n_12 alu_inst|alu_out0_i__4_n_13 alu_inst|alu_out0_i__4_n_14 alu_inst|alu_out0_i__4_n_15 alu_inst|alu_out0_i__4_n_16 alu_inst|alu_out0_i__4_n_17 alu_inst|alu_out0_i__4_n_18 alu_inst|alu_out0_i__4_n_19 alu_inst|alu_out0_i__4_n_20 alu_inst|alu_out0_i__4_n_21 alu_inst|alu_out0_i__4_n_22 alu_inst|alu_out0_i__4_n_23 alu_inst|alu_out0_i__4_n_24 alu_inst|alu_out0_i__4_n_25 alu_inst|alu_out0_i__4_n_26 alu_inst|alu_out0_i__4_n_27 alu_inst|alu_out0_i__4_n_28 alu_inst|alu_out0_i__4_n_29 alu_inst|alu_out0_i__4_n_30 alu_inst|alu_out0_i__4_n_31 -autobundled
netbloc @alu_inst|alu_out0_i__4_n_ 1 2 1 1530 1188n
load netBundle @alu_inst|alu_out0_i__5_n_ 32 alu_inst|alu_out0_i__5_n_0 alu_inst|alu_out0_i__5_n_1 alu_inst|alu_out0_i__5_n_2 alu_inst|alu_out0_i__5_n_3 alu_inst|alu_out0_i__5_n_4 alu_inst|alu_out0_i__5_n_5 alu_inst|alu_out0_i__5_n_6 alu_inst|alu_out0_i__5_n_7 alu_inst|alu_out0_i__5_n_8 alu_inst|alu_out0_i__5_n_9 alu_inst|alu_out0_i__5_n_10 alu_inst|alu_out0_i__5_n_11 alu_inst|alu_out0_i__5_n_12 alu_inst|alu_out0_i__5_n_13 alu_inst|alu_out0_i__5_n_14 alu_inst|alu_out0_i__5_n_15 alu_inst|alu_out0_i__5_n_16 alu_inst|alu_out0_i__5_n_17 alu_inst|alu_out0_i__5_n_18 alu_inst|alu_out0_i__5_n_19 alu_inst|alu_out0_i__5_n_20 alu_inst|alu_out0_i__5_n_21 alu_inst|alu_out0_i__5_n_22 alu_inst|alu_out0_i__5_n_23 alu_inst|alu_out0_i__5_n_24 alu_inst|alu_out0_i__5_n_25 alu_inst|alu_out0_i__5_n_26 alu_inst|alu_out0_i__5_n_27 alu_inst|alu_out0_i__5_n_28 alu_inst|alu_out0_i__5_n_29 alu_inst|alu_out0_i__5_n_30 alu_inst|alu_out0_i__5_n_31 -autobundled
netbloc @alu_inst|alu_out0_i__5_n_ 1 2 1 1550 1208n
load netBundle @alu_inst|alu_out0_i__6_n_ 32 alu_inst|alu_out0_i__6_n_0 alu_inst|alu_out0_i__6_n_1 alu_inst|alu_out0_i__6_n_2 alu_inst|alu_out0_i__6_n_3 alu_inst|alu_out0_i__6_n_4 alu_inst|alu_out0_i__6_n_5 alu_inst|alu_out0_i__6_n_6 alu_inst|alu_out0_i__6_n_7 alu_inst|alu_out0_i__6_n_8 alu_inst|alu_out0_i__6_n_9 alu_inst|alu_out0_i__6_n_10 alu_inst|alu_out0_i__6_n_11 alu_inst|alu_out0_i__6_n_12 alu_inst|alu_out0_i__6_n_13 alu_inst|alu_out0_i__6_n_14 alu_inst|alu_out0_i__6_n_15 alu_inst|alu_out0_i__6_n_16 alu_inst|alu_out0_i__6_n_17 alu_inst|alu_out0_i__6_n_18 alu_inst|alu_out0_i__6_n_19 alu_inst|alu_out0_i__6_n_20 alu_inst|alu_out0_i__6_n_21 alu_inst|alu_out0_i__6_n_22 alu_inst|alu_out0_i__6_n_23 alu_inst|alu_out0_i__6_n_24 alu_inst|alu_out0_i__6_n_25 alu_inst|alu_out0_i__6_n_26 alu_inst|alu_out0_i__6_n_27 alu_inst|alu_out0_i__6_n_28 alu_inst|alu_out0_i__6_n_29 alu_inst|alu_out0_i__6_n_30 alu_inst|alu_out0_i__6_n_31 -autobundled
netbloc @alu_inst|alu_out0_i__6_n_ 1 2 1 1570 1228n
load netBundle @alu_inst|alu_out0_i__7_n_ 32 alu_inst|alu_out0_i__7_n_0 alu_inst|alu_out0_i__7_n_1 alu_inst|alu_out0_i__7_n_2 alu_inst|alu_out0_i__7_n_3 alu_inst|alu_out0_i__7_n_4 alu_inst|alu_out0_i__7_n_5 alu_inst|alu_out0_i__7_n_6 alu_inst|alu_out0_i__7_n_7 alu_inst|alu_out0_i__7_n_8 alu_inst|alu_out0_i__7_n_9 alu_inst|alu_out0_i__7_n_10 alu_inst|alu_out0_i__7_n_11 alu_inst|alu_out0_i__7_n_12 alu_inst|alu_out0_i__7_n_13 alu_inst|alu_out0_i__7_n_14 alu_inst|alu_out0_i__7_n_15 alu_inst|alu_out0_i__7_n_16 alu_inst|alu_out0_i__7_n_17 alu_inst|alu_out0_i__7_n_18 alu_inst|alu_out0_i__7_n_19 alu_inst|alu_out0_i__7_n_20 alu_inst|alu_out0_i__7_n_21 alu_inst|alu_out0_i__7_n_22 alu_inst|alu_out0_i__7_n_23 alu_inst|alu_out0_i__7_n_24 alu_inst|alu_out0_i__7_n_25 alu_inst|alu_out0_i__7_n_26 alu_inst|alu_out0_i__7_n_27 alu_inst|alu_out0_i__7_n_28 alu_inst|alu_out0_i__7_n_29 alu_inst|alu_out0_i__7_n_30 alu_inst|alu_out0_i__7_n_31 -autobundled
netbloc @alu_inst|alu_out0_i__7_n_ 1 2 1 1590 1248n
load netBundle @alu_inst|alu_out0_i__8_n_ 32 alu_inst|alu_out0_i__8_n_0 alu_inst|alu_out0_i__8_n_1 alu_inst|alu_out0_i__8_n_2 alu_inst|alu_out0_i__8_n_3 alu_inst|alu_out0_i__8_n_4 alu_inst|alu_out0_i__8_n_5 alu_inst|alu_out0_i__8_n_6 alu_inst|alu_out0_i__8_n_7 alu_inst|alu_out0_i__8_n_8 alu_inst|alu_out0_i__8_n_9 alu_inst|alu_out0_i__8_n_10 alu_inst|alu_out0_i__8_n_11 alu_inst|alu_out0_i__8_n_12 alu_inst|alu_out0_i__8_n_13 alu_inst|alu_out0_i__8_n_14 alu_inst|alu_out0_i__8_n_15 alu_inst|alu_out0_i__8_n_16 alu_inst|alu_out0_i__8_n_17 alu_inst|alu_out0_i__8_n_18 alu_inst|alu_out0_i__8_n_19 alu_inst|alu_out0_i__8_n_20 alu_inst|alu_out0_i__8_n_21 alu_inst|alu_out0_i__8_n_22 alu_inst|alu_out0_i__8_n_23 alu_inst|alu_out0_i__8_n_24 alu_inst|alu_out0_i__8_n_25 alu_inst|alu_out0_i__8_n_26 alu_inst|alu_out0_i__8_n_27 alu_inst|alu_out0_i__8_n_28 alu_inst|alu_out0_i__8_n_29 alu_inst|alu_out0_i__8_n_30 alu_inst|alu_out0_i__8_n_31 -autobundled
netbloc @alu_inst|alu_out0_i__8_n_ 1 2 1 1630 1268n
load netBundle @alu_inst|alu_out 32 alu_inst|alu_out[31] alu_inst|alu_out[30] alu_inst|alu_out[29] alu_inst|alu_out[28] alu_inst|alu_out[27] alu_inst|alu_out[26] alu_inst|alu_out[25] alu_inst|alu_out[24] alu_inst|alu_out[23] alu_inst|alu_out[22] alu_inst|alu_out[21] alu_inst|alu_out[20] alu_inst|alu_out[19] alu_inst|alu_out[18] alu_inst|alu_out[17] alu_inst|alu_out[16] alu_inst|alu_out[15] alu_inst|alu_out[14] alu_inst|alu_out[13] alu_inst|alu_out[12] alu_inst|alu_out[11] alu_inst|alu_out[10] alu_inst|alu_out[9] alu_inst|alu_out[8] alu_inst|alu_out[7] alu_inst|alu_out[6] alu_inst|alu_out[5] alu_inst|alu_out[4] alu_inst|alu_out[3] alu_inst|alu_out[2] alu_inst|alu_out[1] alu_inst|alu_out[0] -autobundled
netbloc @alu_inst|alu_out 1 3 1 N 1158
load netBundle @EX_MEM_RD_i 5 EX_MEM_RD_i[4] EX_MEM_RD_i[3] EX_MEM_RD_i[2] EX_MEM_RD_i[1] EX_MEM_RD_i[0] -autobundled
netbloc @EX_MEM_RD_i 1 0 5 NJ 20 NJ 20 NJ 20 NJ 20 1660J
load netBundle @EX_MEM_i 32 EX_MEM_i[31] EX_MEM_i[30] EX_MEM_i[29] EX_MEM_i[28] EX_MEM_i[27] EX_MEM_i[26] EX_MEM_i[25] EX_MEM_i[24] EX_MEM_i[23] EX_MEM_i[22] EX_MEM_i[21] EX_MEM_i[20] EX_MEM_i[19] EX_MEM_i[18] EX_MEM_i[17] EX_MEM_i[16] EX_MEM_i[15] EX_MEM_i[14] EX_MEM_i[13] EX_MEM_i[12] EX_MEM_i[11] EX_MEM_i[10] EX_MEM_i[9] EX_MEM_i[8] EX_MEM_i[7] EX_MEM_i[6] EX_MEM_i[5] EX_MEM_i[4] EX_MEM_i[3] EX_MEM_i[2] EX_MEM_i[1] EX_MEM_i[0] -autobundled
netbloc @EX_MEM_i 1 0 5 NJ 80 NJ 80 NJ 80 NJ 80 1600J
load netBundle @ID_EX_RS_i 5 ID_EX_RS_i[4] ID_EX_RS_i[3] ID_EX_RS_i[2] ID_EX_RS_i[1] ID_EX_RS_i[0] -autobundled
netbloc @ID_EX_RS_i 1 0 5 NJ 110 NJ 110 NJ 110 NJ 110 1580J
load netBundle @ID_EX_RT_i 5 ID_EX_RT_i[4] ID_EX_RT_i[3] ID_EX_RT_i[2] ID_EX_RT_i[1] ID_EX_RT_i[0] -autobundled
netbloc @ID_EX_RT_i 1 0 5 NJ 140 NJ 140 NJ 140 NJ 140 NJ
load netBundle @MEM_WB_RD_i 5 MEM_WB_RD_i[4] MEM_WB_RD_i[3] MEM_WB_RD_i[2] MEM_WB_RD_i[1] MEM_WB_RD_i[0] -autobundled
netbloc @MEM_WB_RD_i 1 0 5 NJ 170 NJ 170 NJ 170 NJ 170 1580J
load netBundle @MEM_WB_i 32 MEM_WB_i[31] MEM_WB_i[30] MEM_WB_i[29] MEM_WB_i[28] MEM_WB_i[27] MEM_WB_i[26] MEM_WB_i[25] MEM_WB_i[24] MEM_WB_i[23] MEM_WB_i[22] MEM_WB_i[21] MEM_WB_i[20] MEM_WB_i[19] MEM_WB_i[18] MEM_WB_i[17] MEM_WB_i[16] MEM_WB_i[15] MEM_WB_i[14] MEM_WB_i[13] MEM_WB_i[12] MEM_WB_i[11] MEM_WB_i[10] MEM_WB_i[9] MEM_WB_i[8] MEM_WB_i[7] MEM_WB_i[6] MEM_WB_i[5] MEM_WB_i[4] MEM_WB_i[3] MEM_WB_i[2] MEM_WB_i[1] MEM_WB_i[0] -autobundled
netbloc @MEM_WB_i 1 0 5 NJ 230 290J 220 NJ 220 NJ 220 1620J
load netBundle @PC_ID_EX 32 PC_ID_EX[31] PC_ID_EX[30] PC_ID_EX[29] PC_ID_EX[28] PC_ID_EX[27] PC_ID_EX[26] PC_ID_EX[25] PC_ID_EX[24] PC_ID_EX[23] PC_ID_EX[22] PC_ID_EX[21] PC_ID_EX[20] PC_ID_EX[19] PC_ID_EX[18] PC_ID_EX[17] PC_ID_EX[16] PC_ID_EX[15] PC_ID_EX[14] PC_ID_EX[13] PC_ID_EX[12] PC_ID_EX[11] PC_ID_EX[10] PC_ID_EX[9] PC_ID_EX[8] PC_ID_EX[7] PC_ID_EX[6] PC_ID_EX[5] PC_ID_EX[4] PC_ID_EX[3] PC_ID_EX[2] PC_ID_EX[1] PC_ID_EX[0] -autobundled
netbloc @PC_ID_EX 1 0 4 20 440 NJ 440 NJ 440 1177
load netBundle @alu_op 2 alu_op[1] alu_op[0] -autobundled
netbloc @alu_op 1 0 2 NJ 830 290J
load netBundle @funct3 3 funct3[2] funct3[1] funct3[0] -autobundled
netbloc @funct3 1 0 2 NJ 460 350
load netBundle @funct7 7 funct7[6] funct7[5] funct7[4] funct7[3] funct7[2] funct7[1] funct7[0] -autobundled
netbloc @funct7 1 0 2 NJ 860 330J
load netBundle @immediate_data 32 immediate_data[31] immediate_data[30] immediate_data[29] immediate_data[28] immediate_data[27] immediate_data[26] immediate_data[25] immediate_data[24] immediate_data[23] immediate_data[22] immediate_data[21] immediate_data[20] immediate_data[19] immediate_data[18] immediate_data[17] immediate_data[16] immediate_data[15] immediate_data[14] immediate_data[13] immediate_data[12] immediate_data[11] immediate_data[10] immediate_data[9] immediate_data[8] immediate_data[7] immediate_data[6] immediate_data[5] immediate_data[4] immediate_data[3] immediate_data[2] immediate_data[1] immediate_data[0] -autobundled
netbloc @immediate_data 1 0 4 NJ 490 310 580 NJ 580 1090J
load netBundle @predicted_pc 32 predicted_pc[31] predicted_pc[30] predicted_pc[29] predicted_pc[28] predicted_pc[27] predicted_pc[26] predicted_pc[25] predicted_pc[24] predicted_pc[23] predicted_pc[22] predicted_pc[21] predicted_pc[20] predicted_pc[19] predicted_pc[18] predicted_pc[17] predicted_pc[16] predicted_pc[15] predicted_pc[14] predicted_pc[13] predicted_pc[12] predicted_pc[11] predicted_pc[10] predicted_pc[9] predicted_pc[8] predicted_pc[7] predicted_pc[6] predicted_pc[5] predicted_pc[4] predicted_pc[3] predicted_pc[2] predicted_pc[1] predicted_pc[0] -autobundled
netbloc @predicted_pc 1 0 3 NJ 780 NJ 780 670J
load netBundle @rs1_data 32 rs1_data[31] rs1_data[30] rs1_data[29] rs1_data[28] rs1_data[27] rs1_data[26] rs1_data[25] rs1_data[24] rs1_data[23] rs1_data[22] rs1_data[21] rs1_data[20] rs1_data[19] rs1_data[18] rs1_data[17] rs1_data[16] rs1_data[15] rs1_data[14] rs1_data[13] rs1_data[12] rs1_data[11] rs1_data[10] rs1_data[9] rs1_data[8] rs1_data[7] rs1_data[6] rs1_data[5] rs1_data[4] rs1_data[3] rs1_data[2] rs1_data[1] rs1_data[0] -autobundled
netbloc @rs1_data 1 0 5 NJ 260 310J 240 NJ 240 NJ 240 1660J
load netBundle @rs2_data 32 rs2_data[31] rs2_data[30] rs2_data[29] rs2_data[28] rs2_data[27] rs2_data[26] rs2_data[25] rs2_data[24] rs2_data[23] rs2_data[22] rs2_data[21] rs2_data[20] rs2_data[19] rs2_data[18] rs2_data[17] rs2_data[16] rs2_data[15] rs2_data[14] rs2_data[13] rs2_data[12] rs2_data[11] rs2_data[10] rs2_data[9] rs2_data[8] rs2_data[7] rs2_data[6] rs2_data[5] rs2_data[4] rs2_data[3] rs2_data[2] rs2_data[1] rs2_data[0] -autobundled
netbloc @rs2_data 1 0 5 20J 280 350J 260 NJ 260 NJ 260 1680J
load netBundle @alu_out 32 alu_out[31] alu_out[30] alu_out[29] alu_out[28] alu_out[27] alu_out[26] alu_out[25] alu_out[24] alu_out[23] alu_out[22] alu_out[21] alu_out[20] alu_out[19] alu_out[18] alu_out[17] alu_out[16] alu_out[15] alu_out[14] alu_out[13] alu_out[12] alu_out[11] alu_out[10] alu_out[9] alu_out[8] alu_out[7] alu_out[6] alu_out[5] alu_out[4] alu_out[3] alu_out[2] alu_out[1] alu_out[0] -autobundled
netbloc @alu_out 1 5 1 NJ 440
load netBundle @branch_addr 32 branch_addr[31] branch_addr[30] branch_addr[29] branch_addr[28] branch_addr[27] branch_addr[26] branch_addr[25] branch_addr[24] branch_addr[23] branch_addr[22] branch_addr[21] branch_addr[20] branch_addr[19] branch_addr[18] branch_addr[17] branch_addr[16] branch_addr[15] branch_addr[14] branch_addr[13] branch_addr[12] branch_addr[11] branch_addr[10] branch_addr[9] branch_addr[8] branch_addr[7] branch_addr[6] branch_addr[5] branch_addr[4] branch_addr[3] branch_addr[2] branch_addr[1] branch_addr[0] -autobundled
netbloc @branch_addr 1 2 4 790 790 1090J 800 NJ 800 2080
load netBundle @rs2_mem_data 32 rs2_mem_data[31] rs2_mem_data[30] rs2_mem_data[29] rs2_mem_data[28] rs2_mem_data[27] rs2_mem_data[26] rs2_mem_data[25] rs2_mem_data[24] rs2_mem_data[23] rs2_mem_data[22] rs2_mem_data[21] rs2_mem_data[20] rs2_mem_data[19] rs2_mem_data[18] rs2_mem_data[17] rs2_mem_data[16] rs2_mem_data[15] rs2_mem_data[14] rs2_mem_data[13] rs2_mem_data[12] rs2_mem_data[11] rs2_mem_data[10] rs2_mem_data[9] rs2_mem_data[8] rs2_mem_data[7] rs2_mem_data[6] rs2_mem_data[5] rs2_mem_data[4] rs2_mem_data[3] rs2_mem_data[2] rs2_mem_data[1] rs2_mem_data[0] -autobundled
netbloc @rs2_mem_data 1 1 5 370 280 NJ 280 NJ 280 NJ 280 2080
load netBundle @forwarded_rs1 32 forwarded_rs1[31] forwarded_rs1[30] forwarded_rs1[29] forwarded_rs1[28] forwarded_rs1[27] forwarded_rs1[26] forwarded_rs1[25] forwarded_rs1[24] forwarded_rs1[23] forwarded_rs1[22] forwarded_rs1[21] forwarded_rs1[20] forwarded_rs1[19] forwarded_rs1[18] forwarded_rs1[17] forwarded_rs1[16] forwarded_rs1[15] forwarded_rs1[14] forwarded_rs1[13] forwarded_rs1[12] forwarded_rs1[11] forwarded_rs1[10] forwarded_rs1[9] forwarded_rs1[8] forwarded_rs1[7] forwarded_rs1[6] forwarded_rs1[5] forwarded_rs1[4] forwarded_rs1[3] forwarded_rs1[2] forwarded_rs1[1] forwarded_rs1[0] -autobundled
netbloc @forwarded_rs1 1 0 6 40 300 350 300 NJ 300 NJ 300 NJ 300 2060
load netBundle @PC_plus_4 32 PC_plus_4[31] PC_plus_4[30] PC_plus_4[29] PC_plus_4[28] PC_plus_4[27] PC_plus_4[26] PC_plus_4[25] PC_plus_4[24] PC_plus_4[23] PC_plus_4[22] PC_plus_4[21] PC_plus_4[20] PC_plus_4[19] PC_plus_4[18] PC_plus_4[17] PC_plus_4[16] PC_plus_4[15] PC_plus_4[14] PC_plus_4[13] PC_plus_4[12] PC_plus_4[11] PC_plus_4[10] PC_plus_4[9] PC_plus_4[8] PC_plus_4[7] PC_plus_4[6] PC_plus_4[5] PC_plus_4[4] PC_plus_4[3] PC_plus_4[2] PC_plus_4[1] PC_plus_4[0] -autobundled
netbloc @PC_plus_4 1 4 1 NJ 430
load netBundle @alu_ctrl 4 alu_ctrl[3] alu_ctrl[2] alu_ctrl[1] alu_ctrl[0] -autobundled
netbloc @alu_ctrl 1 2 1 690 710n
load netBundle @raw_alu_out 32 raw_alu_out[31] raw_alu_out[30] raw_alu_out[29] raw_alu_out[28] raw_alu_out[27] raw_alu_out[26] raw_alu_out[25] raw_alu_out[24] raw_alu_out[23] raw_alu_out[22] raw_alu_out[21] raw_alu_out[20] raw_alu_out[19] raw_alu_out[18] raw_alu_out[17] raw_alu_out[16] raw_alu_out[15] raw_alu_out[14] raw_alu_out[13] raw_alu_out[12] raw_alu_out[11] raw_alu_out[10] raw_alu_out[9] raw_alu_out[8] raw_alu_out[7] raw_alu_out[6] raw_alu_out[5] raw_alu_out[4] raw_alu_out[3] raw_alu_out[2] raw_alu_out[1] raw_alu_out[0] -autobundled
netbloc @raw_alu_out 1 3 2 1177 680 1660
load netBundle @branch_addr_comb0 32 branch_addr_comb0[31] branch_addr_comb0[30] branch_addr_comb0[29] branch_addr_comb0[28] branch_addr_comb0[27] branch_addr_comb0[26] branch_addr_comb0[25] branch_addr_comb0[24] branch_addr_comb0[23] branch_addr_comb0[22] branch_addr_comb0[21] branch_addr_comb0[20] branch_addr_comb0[19] branch_addr_comb0[18] branch_addr_comb0[17] branch_addr_comb0[16] branch_addr_comb0[15] branch_addr_comb0[14] branch_addr_comb0[13] branch_addr_comb0[12] branch_addr_comb0[11] branch_addr_comb0[10] branch_addr_comb0[9] branch_addr_comb0[8] branch_addr_comb0[7] branch_addr_comb0[6] branch_addr_comb0[5] branch_addr_comb0[4] branch_addr_comb0[3] branch_addr_comb0[2] branch_addr_comb0[1] branch_addr_comb0[0] -autobundled
netbloc @branch_addr_comb0 1 4 1 1680 590n
load netBundle @branch_addr_comb0_i__0_n_ 32 branch_addr_comb0_i__0_n_0 branch_addr_comb0_i__0_n_1 branch_addr_comb0_i__0_n_2 branch_addr_comb0_i__0_n_3 branch_addr_comb0_i__0_n_4 branch_addr_comb0_i__0_n_5 branch_addr_comb0_i__0_n_6 branch_addr_comb0_i__0_n_7 branch_addr_comb0_i__0_n_8 branch_addr_comb0_i__0_n_9 branch_addr_comb0_i__0_n_10 branch_addr_comb0_i__0_n_11 branch_addr_comb0_i__0_n_12 branch_addr_comb0_i__0_n_13 branch_addr_comb0_i__0_n_14 branch_addr_comb0_i__0_n_15 branch_addr_comb0_i__0_n_16 branch_addr_comb0_i__0_n_17 branch_addr_comb0_i__0_n_18 branch_addr_comb0_i__0_n_19 branch_addr_comb0_i__0_n_20 branch_addr_comb0_i__0_n_21 branch_addr_comb0_i__0_n_22 branch_addr_comb0_i__0_n_23 branch_addr_comb0_i__0_n_24 branch_addr_comb0_i__0_n_25 branch_addr_comb0_i__0_n_26 branch_addr_comb0_i__0_n_27 branch_addr_comb0_i__0_n_28 branch_addr_comb0_i__0_n_29 branch_addr_comb0_i__0_n_30 branch_addr_comb0_i__0_n_31 -autobundled
netbloc @branch_addr_comb0_i__0_n_ 1 4 1 1640 530n
load netBundle @operandA0_i_n_ 32 operandA0_i_n_0 operandA0_i_n_1 operandA0_i_n_2 operandA0_i_n_3 operandA0_i_n_4 operandA0_i_n_5 operandA0_i_n_6 operandA0_i_n_7 operandA0_i_n_8 operandA0_i_n_9 operandA0_i_n_10 operandA0_i_n_11 operandA0_i_n_12 operandA0_i_n_13 operandA0_i_n_14 operandA0_i_n_15 operandA0_i_n_16 operandA0_i_n_17 operandA0_i_n_18 operandA0_i_n_19 operandA0_i_n_20 operandA0_i_n_21 operandA0_i_n_22 operandA0_i_n_23 operandA0_i_n_24 operandA0_i_n_25 operandA0_i_n_26 operandA0_i_n_27 operandA0_i_n_28 operandA0_i_n_29 operandA0_i_n_30 operandA0_i_n_31 -autobundled
netbloc @operandA0_i_n_ 1 1 1 290 360n
load netBundle @operandA 32 operandA[31] operandA[30] operandA[29] operandA[28] operandA[27] operandA[26] operandA[25] operandA[24] operandA[23] operandA[22] operandA[21] operandA[20] operandA[19] operandA[18] operandA[17] operandA[16] operandA[15] operandA[14] operandA[13] operandA[12] operandA[11] operandA[10] operandA[9] operandA[8] operandA[7] operandA[6] operandA[5] operandA[4] operandA[3] operandA[2] operandA[1] operandA[0] -autobundled
netbloc @operandA 1 2 1 N 690
load netBundle @operandB 32 operandB[31] operandB[30] operandB[29] operandB[28] operandB[27] operandB[26] operandB[25] operandB[24] operandB[23] operandB[22] operandB[21] operandB[20] operandB[19] operandB[18] operandB[17] operandB[16] operandB[15] operandB[14] operandB[13] operandB[12] operandB[11] operandB[10] operandB[9] operandB[8] operandB[7] operandB[6] operandB[5] operandB[4] operandB[3] operandB[2] operandB[1] operandB[0] -autobundled
netbloc @operandB 1 2 1 790 500n
levelinfo -pg 1 0 170 500 890 1367 1830 2100
levelinfo -hier alu_inst * 1020 1390 1790 *
pagesize -pg 1 -db -bbox -sgen -190 0 3210 2030
pagesize -hier alu_inst -db -bbox -sgen 890 658 1920 1688
show
fullfit
#
# initialize ictrl to current module ExecutionStage work:ExecutionStage:NOFILE
ictrl init topinfo |
