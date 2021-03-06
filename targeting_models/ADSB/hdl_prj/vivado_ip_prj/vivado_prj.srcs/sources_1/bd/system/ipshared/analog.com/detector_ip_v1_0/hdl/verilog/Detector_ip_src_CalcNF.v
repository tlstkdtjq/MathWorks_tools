// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\ModeS_ADI_Codegen\Detector_ip_src_CalcNF.v
// Created: 2017-07-24 12:12:58
// 
// Generated by MATLAB 9.2 and HDL Coder 3.10
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Detector_ip_src_CalcNF
// Source Path: ModeS_ADI_Codegen/Detector/CalcNF
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Detector_ip_src_CalcNF
          (clk,
           reset,
           enb,
           In1,
           Out1);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] In1;  // sfix16_En15
  output  signed [15:0] Out1;  // sfix16_En16

  wire signed [15:0] NoiseFloor_out1;  // sfix16_En16


  // <S8>/NoiseFloor
  Detector_ip_src_NoiseFloor u_NoiseFloor (.clk(clk),
                                           .reset(reset),
                                           .enb(enb),
                                           .NoiseFloor_in(In1),  // sfix16_En15
                                           .NoiseFloor_out(NoiseFloor_out1)  // sfix16_En16
                                           );

  assign Out1 = NoiseFloor_out1;

endmodule  // Detector_ip_src_CalcNF

