# RISC-V 5-Stage Pipelined Processor with Gshare Branch Prediction and Data Forwarding

## Overview

This project implements a 5-stage pipelined RISC-V processor as part of my B.Tech thesis at IIT Tirupati. The processor supports the **RV32I instruction set** and features:

- **Gshare branch predictor** to minimize control hazards
- **Data forwarding unit** to handle data hazards without pipeline stalling
- Instruction scheduling assumed to avoid load-use hazards
- Modular, scalable Verilog design

---

## Pipeline Architecture

The processor follows the standard **5-stage RISC-V pipeline**:

1. **IF (Instruction Fetch)**  
   - Fetches instruction from instruction memory  
   - PC is updated using the predicted target from the Gshare branch predictor

2. **ID (Instruction Decode)**  
   - Decodes the instruction and reads register operands  
   - Calculates branch targets  
   - No explicit hazard detection – assumes well-ordered instructions

3. **EX (Execute)**  
   - Performs arithmetic or logical operations via the ALU  
   - Branch condition evaluation  
   - Forwarding logic resolves RAW data dependencies

4. **MEM (Memory Access)**  
   - Performs memory read/write for load and store instructions

5. **WB (Write Back)**  
   - Writes results back to the register file

---

## Key Features

### ✅ Gshare Branch Predictor
- Implements a 2-bit Gshare branch prediction mechanism  
- Uses **Global History Register (GHR)** XORed with PC index to index a prediction table  
- Mispredicted instructions are flushed and PC is corrected accordingly

### ✅ Data Forwarding Unit
- Resolves RAW (Read After Write) hazards via forwarding  
- Supports forwarding from:
  - EX/MEM stage to EX
  - MEM/WB stage to EX
- Avoids stalls without needing hazard detection logic

### ✅ Flush Logic (for Control Hazards)
- On branch misprediction, instructions in the IF and ID stages are flushed  
- PC is redirected to the correct branch target

---

## Instruction Set Support

Implements the **RV32I Base Integer Instruction Set**, including:

- **Arithmetic**: `ADD`, `SUB`, `ADDI`, etc.  
- **Logical**: `AND`, `OR`, `XOR`, `SLL`, `SRL`, `SRA`  
- **Branch**: `BEQ`, `BNE`, `BLT`, `BGE`, etc.  
- **Load/Store**: `LW`, `SW`  
- **Jump**: `JAL`, `JALR`

## Block Diagram

![RISC-V Pipeline Diagram](RV32I_Pipelined_Architecture.png)
