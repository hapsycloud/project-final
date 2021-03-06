// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_Mat_exit570_pr (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        height,
        width,
        gamma,
        img3_rows_V_out_din,
        img3_rows_V_out_full_n,
        img3_rows_V_out_write,
        img3_cols_V_out_din,
        img3_cols_V_out_full_n,
        img3_cols_V_out_write,
        p_cols_assign_cast_out_out_din,
        p_cols_assign_cast_out_out_full_n,
        p_cols_assign_cast_out_out_write,
        p_rows_assign_cast_out_out_din,
        p_rows_assign_cast_out_out_full_n,
        p_rows_assign_cast_out_out_write,
        gamma_out_din,
        gamma_out_full_n,
        gamma_out_write,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [15:0] height;
input  [15:0] width;
input  [7:0] gamma;
output  [15:0] img3_rows_V_out_din;
input   img3_rows_V_out_full_n;
output   img3_rows_V_out_write;
output  [15:0] img3_cols_V_out_din;
input   img3_cols_V_out_full_n;
output   img3_cols_V_out_write;
output  [11:0] p_cols_assign_cast_out_out_din;
input   p_cols_assign_cast_out_out_full_n;
output   p_cols_assign_cast_out_out_write;
output  [11:0] p_rows_assign_cast_out_out_din;
input   p_rows_assign_cast_out_out_full_n;
output   p_rows_assign_cast_out_out_write;
output  [7:0] gamma_out_din;
input   gamma_out_full_n;
output   gamma_out_write;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg start_write;
reg img3_rows_V_out_write;
reg img3_cols_V_out_write;
reg p_cols_assign_cast_out_out_write;
reg p_rows_assign_cast_out_out_write;
reg gamma_out_write;
reg[15:0] ap_return_0;
reg[15:0] ap_return_1;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    img3_rows_V_out_blk_n;
reg    img3_cols_V_out_blk_n;
reg    p_cols_assign_cast_out_out_blk_n;
reg    p_rows_assign_cast_out_out_blk_n;
reg    gamma_out_blk_n;
reg    ap_block_state1;
reg   [15:0] ap_return_0_preg;
reg   [15:0] ap_return_1_preg;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_return_0_preg = 16'd0;
#0 ap_return_1_preg = 16'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 16'd0;
    end else begin
        if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_0_preg <= height;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 16'd0;
    end else begin
        if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_1_preg <= width;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_0 = height;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_1 = width;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        gamma_out_blk_n = gamma_out_full_n;
    end else begin
        gamma_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        gamma_out_write = 1'b1;
    end else begin
        gamma_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img3_cols_V_out_blk_n = img3_cols_V_out_full_n;
    end else begin
        img3_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img3_cols_V_out_write = 1'b1;
    end else begin
        img3_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        img3_rows_V_out_blk_n = img3_rows_V_out_full_n;
    end else begin
        img3_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img3_rows_V_out_write = 1'b1;
    end else begin
        img3_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_cols_assign_cast_out_out_blk_n = p_cols_assign_cast_out_out_full_n;
    end else begin
        p_cols_assign_cast_out_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_cols_assign_cast_out_out_write = 1'b1;
    end else begin
        p_cols_assign_cast_out_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_rows_assign_cast_out_out_blk_n = p_rows_assign_cast_out_out_full_n;
    end else begin
        p_rows_assign_cast_out_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_rows_assign_cast_out_out_write = 1'b1;
    end else begin
        p_rows_assign_cast_out_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (gamma_out_full_n == 1'b0) | (p_rows_assign_cast_out_out_full_n == 1'b0) | (p_cols_assign_cast_out_out_full_n == 1'b0) | (img3_cols_V_out_full_n == 1'b0) | (img3_rows_V_out_full_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign gamma_out_din = gamma;

assign img3_cols_V_out_din = width;

assign img3_rows_V_out_din = height;

assign p_cols_assign_cast_out_out_din = width[11:0];

assign p_rows_assign_cast_out_out_din = height[11:0];

assign start_out = real_start;

endmodule //Block_Mat_exit570_pr
