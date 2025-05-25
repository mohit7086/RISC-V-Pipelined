module RISC_V_Top(
    input clk,                            // Clock signal   
    input rst,                            // Reset signal
    output [31:0] current_pc,             // Output current PC for debugging
    output [31:0] instruction,             // Output current instruction
    output [4:0] current_rd 
);

// ========== Wire Declarations ==========
// --- Fetch Stage Inputs (from Execute stage) ---
wire [31:0] branch_addr_IF_in;
wire branch_taken_IF_in;
wire branch_resolve_IF_in;
wire [3:0] ghr_history_IF_in;
wire [31:0] resolved_pc_IF_in;
wire pc_redirect_IF_in;
wire flush_fetch_IF_in;

// --- Fetch Stage Outputs ---
wire [31:0] current_pc_IF;
wire [31:0] instruction_IF;
wire [31:0] predicted_pc_IF;
wire [3:0] ghr_out_IF;
wire prediction_valid_IF;

// --- IF/ID Pipeline Register Outputs ---
wire [31:0] pc_ID_out;
wire [31:0] instruction_ID_out;
wire [31:0] predicted_pc_ID_out;
wire prediction_valid_ID_out;
wire [3:0] ghr_ID_out;

// --- Decode Stage Inputs ---
wire RegWrite_WB_in;
wire [31:0] rd_wb_data;
wire [4:0] rd_wb_in;

// --- Decode Stage Outputs ---
wire [31:0] rs1_data_ID;
wire [31:0] rs2_data_ID;
wire [31:0] imm_ID;
wire [4:0] rs1_ID;
wire [4:0] rs2_ID;
wire [4:0] rd_ID;
wire [1:0] alu_op_ID;
wire alu_src_ID;
wire ALUSrcA_ID;
wire branch_ID;
wire is_jal_ID;
wire is_jalr_ID;
wire is_lui_ID;
wire is_sw_ID;
wire is_lw_ID;
wire MemRead_ID;
wire MemWrite_ID;
wire RegWrite_ID;
wire MemtoReg_ID;
wire [2:0] func3_ID;
wire [6:0] func7_ID;

// --- ID/EX Pipeline Register Outputs ---
wire [31:0] rs1_data_EX_out;
wire [31:0] rs2_data_EX_out;
wire [31:0] imm_EX_out;
wire [4:0] rs1_EX_out;
wire [4:0] rs2_EX_out;
wire [4:0] rd_EX_out;
wire [1:0] alu_op_EX_out;
wire alu_src_EX_out;
wire ALUSrcA_EX_out;
wire branch_EX_out;
wire is_jal_EX_out;
wire is_jalr_EX_out;
wire is_lui_EX_out;
wire is_sw_EX_out;
wire is_lw_EX_out;
wire MemRead_EX_out;
wire MemWrite_EX_out;
wire RegWrite_EX_out;
wire MemtoReg_EX_out;
wire [2:0] func3_EX_out;
wire [6:0] func7_EX_out;
wire [31:0] pc_EX_out;
wire [31:0] predicted_pc_EX_out;
wire prediction_valid_EX_out;
wire [3:0] ghr_out_EX_out;

// --- Execution Stage Outputs ---
wire [31:0] alu_out_EX;
wire [31:0] rs2_data_EX;
wire branch_taken_EX;
wire [31:0] branch_addr_EX;
wire pc_redirect_EX;
wire flush_fetch_EX;
wire branch_resolve_EX;

// --- EX/MEM Pipeline Register Outputs ---
wire [31:0] alu_out_MEM_out;
wire [31:0] rs2_data_MEM_out;
wire MemRead_MEM_out;
wire MemWrite_MEM_out;
wire RegWrite_MEM_out;
wire MemtoReg_MEM_out;
wire [4:0] rd_MEM_out;

// --- Memory Stage Outputs ---
wire [31:0] memData_MEM;

// --- MEM/WB Pipeline Register Outputs ---
wire [31:0] memData_WB_out;
wire [31:0] alu_WB_out;
wire RegWrite_WB_out;
wire MemtoReg_WB_out;
wire [4:0] rd_wb_out;




// ========== Module Instantiations ==========
FetchStage fetch_stage_inst (
    .clk(clk),
    .rst(rst),
    .branchAddress(branch_addr_IF_in),
    .branch_taken(branch_taken_IF_in),
    .branch_resolved(branch_resolve_IF_in),
    .ghr_history(ghr_history_IF_in),
    .resolved_pc(resolved_pc_IF_in),
    .pc_redirect(pc_redirect_IF_in),
    .flush_fetch(flush_fetch_IF_in),
    .current_pc(current_pc_IF),
    .instruction(instruction_IF),
    .predicted_pc(predicted_pc_IF),
    .ghr_out(ghr_out_IF),
    .prediction_valid(prediction_valid_IF)
);

IF_ID pipeline_reg_IF_ID(
    .clk(clk),
    .rst(rst),
    .pc_IF_in(current_pc_IF),
    .instruction_IF_in(instruction_IF),
    .predicted_pc_IF_in(predicted_pc_IF),
    .prediction_valid_IF_in(prediction_valid_IF),
    .ghr_IF_in(ghr_out_IF),
    .pc_ID_out(pc_ID_out),
    .instruction_ID_out(instruction_ID_out),
    .predicted_pc_ID_out(predicted_pc_ID_out),
    .prediction_valid_ID_out(prediction_valid_ID_out),
    .ghr_ID_out(ghr_ID_out)
);

Decode_Stage decode_stage_inst (
    .clk(clk),
    .rst(rst),
    .instruction(instruction_ID_out),
    .RegWrite_WB(RegWrite_WB_in),
    .rd_wb_data(rd_wb_data),
    .rd_wb(rd_wb_in),
    .rs1_data(rs1_data_ID),
    .rs2_data(rs2_data_ID),
    .imm(imm_ID),
    .rs1(rs1_ID),
    .rs2(rs2_ID),
    .rd(rd_ID),
    .alu_op(alu_op_ID),
    .alu_src(alu_src_ID),
    .ALUSrcA(ALUSrcA_ID),
    .branch(branch_ID),
    .is_jal(is_jal_ID),
    .is_jalr(is_jalr_ID),
    .is_lui(is_lui_ID),
    .is_sw(is_sw_ID),
    .is_lw(is_lw_ID),
    .MemRead(MemRead_ID),
    .MemWrite(MemWrite_ID),
    .RegWrite(RegWrite_ID),
    .MemtoReg(MemtoReg_ID),
    .func3(func3_ID),
    .func7(func7_ID)
);

ID_EX id_ex_reg_inst (
    .clk(clk),
    .rst(rst),
    .rs1_data_ID_in(rs1_data_ID),
    .rs2_data_ID_in(rs2_data_ID),
    .imm_ID_in(imm_ID),
    .rs1_ID_in(rs1_ID),
    .rs2_ID_in(rs2_ID),
    .rd_ID_in(rd_ID),
    .alu_op_ID_in(alu_op_ID),
    .alu_src_ID_in(alu_src_ID),
    .ALUSrcA_ID_in(ALUSrcA_ID),
    .branch_ID_in(branch_ID),
    .is_jal_ID_in(is_jal_ID),
    .is_jalr_ID_in(is_jalr_ID),
    .is_lui_ID_in(is_lui_ID),
    .is_sw_ID_in(is_sw_ID),
    .is_lw_ID_in(is_lw_ID),
    .MemRead_ID_in(MemRead_ID),
    .MemWrite_ID_in(MemWrite_ID),
    .RegWrite_ID_in(RegWrite_ID),
    .MemtoReg_ID_in(MemtoReg_ID),
    .func3_ID_in(func3_ID),
    .func7_ID_in(func7_ID),
    .pc_ID_in(pc_ID_out),
    .predicted_pc_ID_in(predicted_pc_ID_out),
    .prediction_valid_ID_in(prediction_valid_ID_out),
    .ghr_out_ID_in(ghr_ID_out),
    .rs1_data_EX_out(rs1_data_EX_out),
    .rs2_data_EX_out(rs2_data_EX_out),
    .imm_EX_out(imm_EX_out),
    .rs1_EX_out(rs1_EX_out),
    .rs2_EX_out(rs2_EX_out),
    .rd_EX_out(rd_EX_out),
    .alu_op_EX_out(alu_op_EX_out),
    .alu_src_EX_out(alu_src_EX_out),
    .ALUSrcA_EX_out(ALUSrcA_EX_out),
    .branch_EX_out(branch_EX_out),
    .is_jal_EX_out(is_jal_EX_out),
    .is_jalr_EX_out(is_jalr_EX_out),
    .is_lui_EX_out(is_lui_EX_out),
    .is_sw_EX_out(is_sw_EX_out),
    .is_lw_EX_out(is_lw_EX_out),
    .MemRead_EX_out(MemRead_EX_out),
    .MemWrite_EX_out(MemWrite_EX_out),
    .RegWrite_EX_out(RegWrite_EX_out),
    .MemtoReg_EX_out(MemtoReg_EX_out),
    .func3_EX_out(func3_EX_out),
    .func7_EX_out(func7_EX_out),
    .pc_EX_out(pc_EX_out),
    .predicted_pc_EX_out(predicted_pc_EX_out),
    .prediction_valid_EX_out(prediction_valid_EX_out),
    .ghr_out_EX_out(ghr_out_EX_out)
);

Execution_Stage execution_stage_inst (
    .clk(clk),
    .rst(rst),
    .EX_MEM_RegWrite_i(RegWrite_MEM_out),
    .MEM_WB_RegWrite_i(RegWrite_WB_in),
    .ID_EX_RS_i(rs1_EX_out),
    .ID_EX_RT_i(rs2_EX_out),
    .EX_MEM_RD_i(rd_MEM_out),
    .MEM_WB_RD_i(rd_wb_in),
    .rs1_data(rs1_data_EX_out),
    .rs2_data(rs2_data_EX_out),
    .EX_MEM_i(alu_out_MEM_out),
    .MEM_WB_i(rd_wb_data),
    .alu_op(alu_op_EX_out),
    .is_sw(is_sw_EX_out),
    .is_lw(is_lw_EX_out),
    .is_lui(is_lui_EX_out),
    .branch(branch_EX_out),
    .is_jal(is_jal_EX_out),
    .funct3(func3_EX_out),
    .funct7(func7_EX_out),
    .prediction_valid(prediction_valid_EX_out),
    .predicted_pc(predicted_pc_EX_out),
    .alu_src(alu_src_EX_out),
    .immediate_data(imm_EX_out),
    .PC_ID_EX(pc_EX_out),
    .ALUSrcA(ALUSrcA_EX_out),
    .is_jalr(is_jalr_EX_out),
    .alu_out(alu_out_EX),
    .rs2_mem_data(rs2_data_EX),
    .branch_taken(branch_taken_EX),
    .branch_addr(branch_addr_EX),
    .pc_redirect(pc_redirect_EX),
    .flush_fetch(flush_fetch_EX),
    .branch_resolve(branch_resolve_EX)
);

EX_MEM ex_mem_reg_inst (
    .clk(clk),
    .rst(rst),
    .alu_EX(alu_out_EX),
    .rs2_mem_data_EX(rs2_data_EX),
    .MemRead_EX(MemRead_EX_out),
    .MemWrite_EX(MemWrite_EX_out),
    .RegWrite_EX(RegWrite_EX_out),
    .MemtoReg_EX(MemtoReg_EX_out),
    .rd_EX(rd_EX_out),
    .alu_MEM(alu_out_MEM_out),
    .rs2_mem_data_MEM(rs2_data_MEM_out),
    .MemRead_MEM(MemRead_MEM_out),
    .MemWrite_MEM(MemWrite_MEM_out),
    .RegWrite_MEM(RegWrite_MEM_out),
    .MemtoReg_MEM(MemtoReg_MEM_out),
    .rd_MEM(rd_MEM_out)
);

Mem_Stage mem_stage_inst (
    .clk(clk),
    .reset(rst),
    .alu_result(alu_out_MEM_out),
    .rs2_data(rs2_data_MEM_out),
    .MemRead(MemRead_MEM_out),
    .MemWrite(MemWrite_MEM_out),
    .memData(memData_MEM)
);

MEM_WB mem_wb_reg_inst (
    .clk(clk),
    .rst(rst),
    .mem_data_MEM_in(memData_MEM),
    .alu_MEM_in(alu_out_MEM_out),
    .RegWrite_MEM_in(RegWrite_MEM_out),
    .MemtoReg_MEM_in(MemtoReg_MEM_out),
    .rd_MEM_in(rd_MEM_out),
    .mem_data_WB_out(memData_WB_out),
    .alu_WB_out(alu_WB_out),
    .RegWrite_WB_out(RegWrite_WB_out),
    .MemtoReg_WB_out(MemtoReg_WB_out),
    .rd_WB_out(rd_wb_out)
);

WriteBack_Stage write_back_stage_inst (
    .data_in_ex(alu_WB_out),
    .data_in_mem(memData_WB_out),
    .memtoReg(MemtoReg_WB_out),
    .data_out(rd_wb_data)
);

// ========== Wire Assignments ==========
assign branch_addr_IF_in = branch_addr_EX;
assign branch_taken_IF_in = branch_taken_EX;
assign branch_resolve_IF_in = branch_resolve_EX;
assign ghr_history_IF_in = ghr_out_EX_out;
assign resolved_pc_IF_in = pc_EX_out;
assign pc_redirect_IF_in = pc_redirect_EX;
assign flush_fetch_IF_in = flush_fetch_EX;

assign RegWrite_WB_in = RegWrite_WB_out;
assign rd_wb_in = rd_wb_out;


// Inside RISC_V_Top module
assign current_pc = current_pc_IF;    // From Fetch Stage
assign instruction = instruction_IF;  // From Fetch Stage

endmodule