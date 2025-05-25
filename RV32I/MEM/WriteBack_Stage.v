module WriteBack_Stage (
    input [31:0] data_in_ex,   // ALU result (from EX/MEM pipeline register)
    input [31:0] data_in_mem,  // Memory read data (from MEM/WB pipeline register)
    input memtoReg,            // Control signal (1 = use memory data, 0 = use ALU result)
    output [31:0] data_out     // Data to write back to the register file and Forwarding Unit in EX
);
    // Combinational multiplexer logic
    assign data_out = (memtoReg) ? data_in_mem : data_in_ex;
endmodule

